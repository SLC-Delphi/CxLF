unit Gerador_Resultados3268760_194_196;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, DB, strutils,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, IdBaseComponent, IdComponent, IdIPWatch ;

type
  T_F_Gerador_Resultados3268760_194_196 = class(TForm)
    PA_REMOVEUREPET: TPanel;
    Label44: TLabel;
    Label45: TLabel;
    Label58: TLabel;
    LA_gINICIO_100REPET: TLabel;
    Label60: TLabel;
    Label49: TLabel;
    LA_gFIM_100REPET: TLabel;
    LA_gFIM_GERAR: TLabel;
    BBT_PA_REMOVEUREPET: TBitBtn;
    PA_INICIAL: TPanel;
    Label55: TLabel;
    BT_NOVA_SIMULACAO: TButton;
    BT_BLOCO_DE_NOTAS1: TButton;
    BBT_SAIR: TButton;
    BBT_CARREGAR: TButton;
    BBT_CANCELAR: TBitBtn;
    MEM_COMBINACOES_TODAS: TMemo;
    PA_TOPO: TPanel;
    LA_TITULO: TLabel;
    BBT_CLOSE: TImage;
    BBT_RECOMECAR: TBitBtn;
    PA_RESULTADO: TPanel;
    STRGR_TODOS_NUMEROS: TStringGrid;
    PA_EXECUTAR_FILTRO: TPanel;
    BBT_PREPARAR_MENU: TBitBtn;
    BBT_GERAR_MENU: TBitBtn;
    PANEL_TITULO_SIMULACAO: TPanel;
    LA_GERAR_COMB: TLabel;
    LA_TOTAL_COMB: TLabel;
    PGBR_GERARCOMB0: TProgressBar;
    PA_GERAR: TPanel;
    Panel2: TPanel;
    Label63: TLabel;
    BBT_GERAR: TBitBtn;
    BBT_GERAR_SAIR: TBitBtn;
    PA_PREPARAR: TPanel;
    Panel1: TPanel;
    Label2: TLabel;
    BBT_PREPARAR1: TBitBtn;
    BBT_GERAR_VOLTAR: TBitBtn;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBQ_COMBINACOES: TIBQuery;
    BBT_CANCELAR_SAIR: TBitBtn;
    CB_Sequencia: TComboBox;
    BBT_BLOCO_NOTAS: TBitBtn;
    STGR_SOBRAS_12: TStringGrid;
    LA_QTD_100REP: TLabel;
    Label7: TLabel;
    PA_FIXOS: TPanel;
    Label1: TLabel;
    ED_FIXOS_01_7i8p: TEdit;
    ED_FIXOS_02_7i8p: TEdit;
    Panel6: TPanel;
    Label6: TLabel;
    ED_FIXOS_01_8i7p: TEdit;
    ED_FIXOS_02_8i7p: TEdit;
    Panel7: TPanel;
    Label8: TLabel;
    ED_FIXOS_01_6i9p: TEdit;
    ED_FIXOS_02_6i9p: TEdit;
    Panel8: TPanel;
    Label9: TLabel;
    ED_FIXOS_01_9i6p: TEdit;
    ED_FIXOS_02_9i6p: TEdit;
    STGR_BASE: TStringGrid;
    STGR_COMB15: TStringGrid;
    STGR_COMB15_8I7P: TStringGrid;
    IBQ_GRAVAR: TIBQuery;
    IBTransaction2: TIBTransaction;
    procedure BBT_PREPARAR1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BBT_CLOSEClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBT_PREPARAR_MENUClick(Sender: TObject);
    procedure BT_NOVA_SIMULACAOClick(Sender: TObject);
    procedure BBT_GERAR_VOLTARClick(Sender: TObject);
    procedure BBT_SAIRClick(Sender: TObject);
    procedure BBT_CANCELARClick(Sender: TObject);
    procedure BBT_GERARClick(Sender: TObject);
    procedure BBT_GERAR_MENUClick(Sender: TObject);
    procedure BBT_PA_REMOVEUREPETClick(Sender: TObject);
    procedure BT_BLOCO_DE_NOTAS1Click(Sender: TObject);
    procedure BBT_CARREGARClick(Sender: TObject);
    procedure BBT_GERAR_SAIRClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BBT_BLOCO_NOTASClick(Sender: TObject);
  private
    F_MODALIDADE: STRING;
    { Private declarations }
    procedure Set_MODALIDADE(const Value: STRING);
    PROCEDURE PR_CRIA_STGR_BASE ();
  public
    { Public declarations }
     PROPERTY _MODALIDADE : STRING  read F_MODALIDADE write Set_MODALIDADE;
  end;

var
  _F_Gerador_Resultados3268760_194_196: T_F_Gerador_Resultados3268760_194_196;

implementation

{$R *.dfm}


procedure T_F_Gerador_Resultados3268760_194_196.Set_MODALIDADE(const Value: STRING);
begin
  F_MODALIDADE := Value;
end;



PROCEDURE T_F_Gerador_Resultados3268760_194_196.PR_CRIA_STGR_BASE ();
var
     vi_ContaSel1 : smallint;
BEGIN
  //   STGR_BASE.CleanupInstance;
  //   STGR_BASE.Free;
     FreeAndNil(STGR_BASE);
     sleep(5);
     STGR_BASE := TStringGrid.Create (Self);
     STGR_BASE.Parent := PA_RESULTADO;
       STGR_BASE.Left := 142            ;
       STGR_BASE.Top := 71              ;
       STGR_BASE.Width := 640           ;
       STGR_BASE.Height := 566          ;
       STGR_BASE.TabStop := False       ;
       STGR_BASE.BorderStyle := bsNone  ;
       STGR_BASE.Color := 14017159      ;
       STGR_BASE.ColCount := 16         ;
       STGR_BASE.DefaultColWidth := 36  ;
       STGR_BASE.DefaultRowHeight := 23 ;
       STGR_BASE.FixedColor := clMedGray;
       STGR_BASE.RowCount := 2          ;
       STGR_BASE.Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect];
       STGR_BASE.TabOrder := 4            ;
     STGR_BASE.ColWidths [0]:= 46;
     FOR vi_ContaSel1 := 1 TO 15 DO
     BEGIN
        STGR_BASE.Cells [vi_ContaSel1+1,0] := '-'+INTtoSTR(vi_ContaSel1)+'-';
        STGR_BASE.Cells [vi_ContaSel1,1] := '00';
     END;
     STGR_BASE.Repaint;
END;




procedure T_F_Gerador_Resultados3268760_194_196.FormCreate(Sender: TObject);
begin
     SELF.ClientWidth  := 1495;
     SELF.ClientHeight := 690;
     SELF.Top  := 59;
     SELF.Left := 9;
   //  SELF.Visible := TRUE;
     bbt_close.Left := SELF.ClientWidth-35;
          PA_REMOVEUREPET.Left := 5000;
     PA_PREPARAR.Left := 5000;
     PA_GERAR.Left := 5000;
     PA_RESULTADO.Visible := false;
     PA_INICIAL.Enabled := TRUE;
     PA_INICIAL.Left := 520;
     PA_INICIAL.Top := 160;
    PA_EXECUTAR_FILTRO.Enabled := false;
    BBT_CANCELAR_SAIR.Visible := false;
    {
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE GERADOR_RESULT_DIV_SMFX_DEF SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            }
end;



procedure T_F_Gerador_Resultados3268760_194_196.FormActivate(Sender: TObject);
begin
      IF (SELF._MODALIDADE ='ETAPA 2') THEN
      begin
             PA_RESULTADO.Enabled := TRUE;
             PA_RESULTADO.Visible := TRUE;
             PA_RESULTADO.Enabled := TRUE;
             PA_EXECUTAR_FILTRO.Enabled := TRUE;
             BBT_CANCELAR_SAIR.Visible := false;
             PA_INICIAL.Enabled := false;
             PA_INICIAL.Left := 2198;
             PA_PREPARAR.Visible := false;
             PA_PREPARAR.Enabled := false;
             PA_PREPARAR.Left := 4500;
             PA_PREPARAR.Repaint;
             BBT_PREPARAR_MENU.Enabled := TRUE;
             BBT_GERAR_MENU.Enabled := TRUE;
             BBT_GERAR_MENU.Enabled := TRUE;
             PA_GERAR.Visible := TRUE;
             PA_GERAR.Enabled := TRUE;
             PA_GERAR.Top  := 245;
             PA_GERAR.Left := 460;
             PA_GERAR.Repaint;
           PA_INICIAL.Left := 5200;
           BBT_GERAR.Click;
      END ;
end;



procedure T_F_Gerador_Resultados3268760_194_196.FormClose(Sender: TObject;
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


procedure T_F_Gerador_Resultados3268760_194_196.BBT_CLOSEClick(Sender: TObject);
begin
     SELF.Close;
end;




procedure T_F_Gerador_Resultados3268760_194_196.BT_NOVA_SIMULACAOClick(Sender: TObject);
begin
     PA_RESULTADO.Enabled := TRUE;
  //   RB_RESULTADOS.SetFocus;
  //   RB_RES_GABARITOS.SetFocus;
     PA_RESULTADO.Visible := TRUE;
     PA_RESULTADO.Enabled := TRUE;
     PA_EXECUTAR_FILTRO.Enabled := TRUE;
     BBT_PREPARAR_MENU.Enabled := TRUE;
     BBT_GERAR_MENU.Enabled := false;
     BBT_GERAR_MENU.Enabled := false;
     BBT_CANCELAR_SAIR.Visible := false;     
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 2198;
end;


procedure T_F_Gerador_Resultados3268760_194_196.BBT_SAIRClick(Sender: TObject);
begin
     SELF.Close;
end;



procedure T_F_Gerador_Resultados3268760_194_196.BBT_CANCELARClick(Sender: TObject);
begin       {
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE GERADOR_RESULT_DIV_SMFX_DEF SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT;')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            }
          SELF.Close;
end;



procedure T_F_Gerador_Resultados3268760_194_196.BBT_PREPARAR_MENUClick(Sender: TObject);
begin
     PA_PREPARAR.Visible := TRUE;
     PA_PREPARAR.Enabled := TRUE;
     PA_PREPARAR.Top  := 245;
     PA_PREPARAR.Left := 460;
     PA_PREPARAR.Repaint;
end;



procedure T_F_Gerador_Resultados3268760_194_196.BBT_GERAR_VOLTARClick(Sender: TObject);
begin
     PA_PREPARAR.Visible := false;
     PA_PREPARAR.Enabled := false;
     PA_PREPARAR.Left := 4500;
     PA_PREPARAR.Repaint;
end;


procedure T_F_Gerador_Resultados3268760_194_196.BBT_PREPARAR1Click(Sender: TObject);
VAR
     vi_Contador1, vi_ContarCelulas, vi_Contar : integer;
begin
     SELF.IBQ_COMBINACOES.Close;
     IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM GERADOR_3268760_8I7P')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
        SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('SELECT FIRST 10 * FROM RESULTADO_3268760_LTF; ')  ;
     SELF.IBQ_COMBINACOES.Open;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     {
     SELF.IBQ_COMBINACOES.SQL.Add('insert INTO GERADOR_RESULT_DIV_SMFX_DEF (FLAG_FILTRAR,FLAG_GRAVAR) values (''N'',''N'');')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     }
     SELF.Repaint;

     PA_PREPARAR.Visible := false;
     PA_PREPARAR.Enabled := false;
     PA_PREPARAR.Left := 4500;
     PA_PREPARAR.Repaint;

     BBT_PREPARAR_MENU.Enabled := TRUE;
     BBT_GERAR_MENU.Enabled := TRUE;
     BBT_GERAR_MENU.Enabled := TRUE;
     showmessage('OK');
end;




procedure T_F_Gerador_Resultados3268760_194_196.BBT_GERAR_MENUClick(Sender: TObject);
begin
     PA_GERAR.Visible := TRUE;
     PA_GERAR.Enabled := TRUE;
     PA_GERAR.Top  := 245;
     PA_GERAR.Left := 460;
     PA_GERAR.Repaint;
end;







procedure T_F_Gerador_Resultados3268760_194_196.BBT_GERARClick(Sender: TObject);


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
        // ----> MONTADO E VERIFICANDO TODOS OS DÍGITOS
        FOR VI_CONTAR :=2 TO 16 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB15.Cells[VI_CONTAR,VI_LINHAS9])) ,1]:='V';
        END; // FOR VI_CONTAR1
        VI_CNTCELULAS := 2;
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
            BEGIN
                STGR_COMB15.Cells[VI_CNTCELULAS, VI_LINHAS9] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                VI_CNTCELULAS := VI_CNTCELULAS + 1;
            END; // IF (STRGR_TODOS_NUMEROS
        END; // FOR VI_CONTAR
    end; // PROCEDURE ORDENAR_SIMULACAO_12


     FUNCTION NUMEROS_FIXOS1 (vi_Linhas1,vc_qtd_pares:Integer) : INTEGER;
     VAR
          vi_ContaSel1, vi_Primeiro, vi_NumeroCelula  : INTEGER;
          vc_Retorno : string  ;
     begin
          CASE vc_qtd_pares OF
               6: vi_Primeiro := strTOint(ED_FIXOS_01_9i6p.Text);
               7: vi_Primeiro := strTOint(ED_FIXOS_01_8i7p.Text);
               8: vi_Primeiro := strTOint(ED_FIXOS_01_7i8p.Text);
               9: vi_Primeiro := strTOint(ED_FIXOS_01_6i9p.Text);
          end; // CASE
          IF (vi_Primeiro >0) and (vi_Primeiro<=25)  THEN
          BEGIN
               vc_Retorno := '0';
               FOR vi_ContaSel1 := 2 TO 16 DO
               BEGIN
                    vi_NumeroCelula:=  STRtoINT(STGR_COMB15.Cells[vi_ContaSel1,vi_Linhas1]);
                    IF (vi_NumeroCelula=vi_Primeiro) THEN
                    begin
                         vc_Retorno := '1';
                    end;
               END; // FOR vi_ContaSel1
               Result :=  strTOint(vc_Retorno);
          END ELSE
          BEGIN
               Result := 1;
          END;// IF
     end; // function

     FUNCTION NUMEROS_FIXOS2 (vi_Linhas1,vc_qtd_pares:Integer) : INTEGER;
     VAR
          vi_ContaSel1, vi_Segundo, vi_NumeroCelula  : INTEGER;
          vc_Retorno : string  ;
     begin
          CASE vc_qtd_pares OF
               6: vi_Segundo := strTOint(ED_FIXOS_02_9i6p.Text);
               7: vi_Segundo := strTOint(ED_FIXOS_02_8i7p.Text);
               8: vi_Segundo := strTOint(ED_FIXOS_02_7i8p.Text);
               9: vi_Segundo := strTOint(ED_FIXOS_02_6i9p.Text);
          end; // CASE
          IF (vi_Segundo >0) and (vi_Segundo<=25)  THEN
          BEGIN
               vc_Retorno := '0';
               FOR vi_ContaSel1 := 2 TO 16 DO
               BEGIN
                    vi_NumeroCelula:=  STRtoINT(STGR_COMB15.Cells[vi_ContaSel1,vi_Linhas1]);
                    IF (vi_NumeroCelula=vi_Segundo) THEN
                    begin
                         vc_Retorno := '1';
                    end;
               END; // FOR vi_ContaSel1
               Result :=  strTOint(vc_Retorno);
          END ELSE
          BEGIN
               Result := 1;
          END;// IF
     end; // function


    PROCEDURE PR_GRAVAR_DADOS (vc_qtd_pares:Integer);
    VAR
        VI_AN_COMB1, vi_ContarCelulas, vi_Contar, vi_ContarStgGrid : INTEGER;
        VC_QUERY, vc_Nome_Tabela : STRING;
        VC_COMBINACOES10, VC_COMBINACOES15, VC_SOMA_TOTAL, VC_SOMA_PARES, VC_SOMA_IMPARES, vc_Contador_da_Tabela : STRING;
    BEGIN
        //VI_TOTALGERADO := STGR_COMB10.RowCount-1;
            // ************************
            // **   BANCO DE DADOS   **
            // ************************
            Self.Repaint;
           // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
          CASE vc_qtd_pares OF
               7: vi_ContarStgGrid := TRUNC((STGR_COMB15_8I7P.RowCount-1)/1);
            //   6: vi_ContarStgGrid := TRUNC((STGR_COMB15_9I6P.RowCount-1)/1);
          end; // case
       FOR VI_AN_COMB1:= 1 TO vi_ContarStgGrid DO
       BEGIN
           VC_COMBINACOES15 :='';
           FOR vi_ContarCelulas := 1 TO 25 DO
           BEGIN
                STRGR_TODOS_NUMEROS.Cells [vi_ContarCelulas ,1]:='F';
           end;
           FOR vi_ContarCelulas := 4 TO 18 DO
           BEGIN
               CASE vc_qtd_pares OF
                    7:
                    BEGIN
                         VC_COMBINACOES15 := VC_COMBINACOES15 + TRIM(STGR_COMB15_8I7P.Cells[vi_ContarCelulas,VI_AN_COMB1]) +' ';
                         STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB15_8I7P.Cells[vi_ContarCelulas,VI_AN_COMB1])) ,1]:='V';
                         vc_Nome_Tabela := 'GERADOR_3268760_8I7P';
                         vc_Contador_da_Tabela :=  STGR_COMB15_8I7P.Cells[0,VI_AN_COMB1] ;
                         VC_SOMA_TOTAL :=  STGR_COMB15_8I7P.Cells[1,VI_AN_COMB1] ;
                         VC_SOMA_IMPARES :=  STGR_COMB15_8I7P.Cells[2,VI_AN_COMB1] ;
                         VC_SOMA_PARES :=  STGR_COMB15_8I7P.Cells[3,VI_AN_COMB1] ;
                    END; // 7
               END; //CASE
           END; // FOR vi_ContarCelulas
               // -------------------------------
               // --  MONTANDO AS 10 SOBRAS   ---
               // -------------------------------
                  vi_ContarCelulas := 1;
                  VC_COMBINACOES10 := '';
                  FOR vi_Contar :=1 TO 25 DO
                  BEGIN
                      // SOBRAS
                      IF (STRGR_TODOS_NUMEROS.Cells[vi_Contar,1]='F') THEN
                      BEGIN
                          VC_COMBINACOES10 := VC_COMBINACOES10 + RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[vi_Contar,0]),2) +' ' ;
                          vi_ContarCelulas := vi_ContarCelulas + 1;
                      END; // IF (STRGR_TODOS_NUMEROS
                  END; // FOR VI_CONTAR
           VC_QUERY  := 'INSERT INTO ' +vc_Nome_Tabela+ ' (QTD, SOMA_TOTAL, SOMA_IMPARES, SOMA_PARES, DADOS, DADOS_NS ) VALUES(' +#39+ vc_Contador_da_Tabela
                 + #39 +',' +#39+  TRIM(VC_SOMA_TOTAL) + #39 +','+#39+TRIM(VC_SOMA_IMPARES) + #39 +','+#39+TRIM(VC_SOMA_PARES)
                 + #39 +',' +#39+  TRIM(VC_COMBINACOES15) + #39 +','+#39+TRIM(VC_COMBINACOES10)
                 +#39+ ');';
           IF NOT(SELF.IBTransaction2.Active) THEN SELF.IBTransaction2.StartTransaction;
           SELF.IBQ_GRAVAR.SQL.Clear;
           SELF.IBQ_GRAVAR.SQL.Add(VC_QUERY)  ;
           SELF.IBQ_GRAVAR.ExecSQL;
       END; // FOR VI_AN_COMB1
    SELF.IBQ_GRAVAR.SQL.Clear;
    SELF.IBQ_GRAVAR.SQL.Add('COMMIT')  ;
    SELF.IBQ_GRAVAR.ExecSQL;
    SLEEP(40);
    SELF.IBQ_GRAVAR.SQL.Clear;
    END; // PROCEDURE GRAVAR_DADOS


var
     vi_Combinacoes1, vi_Combinacoes2, vi_Contador1, vi_Contar_Comb1, vi_Contar_Base: cardinal;
     vi_Total_Comb1,  vi_ContaSel1: cardinal;
     vi_Comb15_1, vi_Comb15_2 : cardinal;
     vi_Flag1, vi_Flag2 : SMALLINT;
     vi_Linhas1, vi_Linhas2, vi_Linhas22, vi_Linhas11, vi_Soma15, vi_Soma_Pares, vi_Soma_Impares: cardinal;
     vs_NumerosPrincipais: STRING;
begin
     LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
     STGR_BASE.ColWidths [0]:= 54;
     STGR_COMB15_8i7p.RowCount := 2;
     STGR_COMB15_8I7P.ColWidths [0]:= 49;
     STGR_COMB15_8i7p.Cells[0,0] := '{8i/7P}';
     FOR vi_ContaSel1 := 1 TO 25 DO
     BEGIN
          STRGR_TODOS_NUMEROS.Cells[vi_ContaSel1,0] := INTtoSTR(vi_ContaSel1);
     END;
     FOR vi_ContaSel1 := 1 TO 15 DO
     BEGIN
        STGR_Comb15.Cells [vi_ContaSel1,0] := '-'+INTtoSTR(vi_ContaSel1)+'-';
        STGR_Comb15.Cells [vi_ContaSel1,1] := '00';
        STGR_BASE.Cells [vi_ContaSel1+1,0] := '-'+INTtoSTR(vi_ContaSel1)+'-';
        STGR_BASE.Cells [vi_ContaSel1,1] := '00';
        STGR_COMB15_8i7p.Cells [vi_ContaSel1+3,0] := '-'+INTtoSTR(vi_ContaSel1)+'-';
        STGR_COMB15_8i7p.Cells [vi_ContaSel1,1] := '00';
     END;
     //STGR_Comb15.ColWidths [2]:= 55;
     STGR_Comb15.RowCount := 2;
     STGR_Comb15.Repaint;
     STGR_BASE.RowCount := 2;
     STGR_BASE.Repaint;
     STGR_COMB15_8i7p.Repaint;

     PGBR_GERARCOMB0.Position :=0 ;
     PGBR_GERARCOMB0.Repaint;
     LA_TOTAL_Comb.Caption := 'GERAR:               ';
     LA_GERAR_Comb.Caption := '#:                   ';
     LA_TOTAL_Comb.Repaint;
     LA_GERAR_Comb.Repaint;
     PA_GERAR.Enabled := false;
     PA_GERAR.Left := 4500;
     // =====================================
     // ||||=============================||||
     // |||| 	GERANDO AS COMBINAÇÕES   ||||
     // ||||=============================||||
     // =====================================
     //PR_GRAVAR_DADOS ('INICIO',vi_Linhas7, 1, TRUNC(STGR_BASE.RowCount-1));
     vi_Linhas11 := 1;
     vi_Linhas22 := 1;
     vi_Linhas2 := 1;
     vi_Linhas1 := 1;
     vi_Combinacoes1 := 1  ;
    //IF (CB_Sequencia.ItemIndex=2) then
          vi_Combinacoes1 := 1  ;
     vi_Contar_Comb1 :=1;
     IBQ_GRAVAR.SQL.Clear;
     IBQ_GRAVAR.SQL.Add('SELECT FIRST 1 * FROM RESULTADO_3268760_LTF ') ;
     IBQ_GRAVAR.Prepare;
     IBQ_GRAVAR.Open;
     IBQ_GRAVAR.First;
     IBQ_COMBINACOES.SQL.Clear;
     IF (SELF._MODALIDADE = 'ETAPA 2') THEN
        IBQ_COMBINACOES.SQL.Add('SELECT * FROM RESULTADO_3268760_LTF WHERE QTD>=2042075')
        // IBQ_COMBINACOES.SQL.Add('SELECT * FROM RESULTADO_3268760_LTF WHERE QTD>=400000')
     ELSE
        IBQ_COMBINACOES.SQL.Add('SELECT * FROM RESULTADO_3268760_LTF WHERE QTD <=2042975');
        // IBQ_COMBINACOES.SQL.Add('SELECT * FROM RESULTADO_3268760_LTF WHERE QTD <=401000');
     IBQ_COMBINACOES.Prepare;
     IBQ_COMBINACOES.Open;
     IBQ_COMBINACOES.First;
     vi_Contador1 := 1  ;
     WHILE NOT(IBQ_COMBINACOES.Eof) DO
     BEGIN
          self.PR_CRIA_STGR_BASE;
          vi_Contar_Base :=1;
          FOR vi_ContaSel1 :=1 to 40858 do
          begin
               //STGR_BASE.Cells[0,vi_ContaSel1] := INTtoSTR(vi_Contador1);
               STGR_BASE.Cells[0,vi_ContaSel1] := IBQ_COMBINACOES.FIELDbyNAME('QTD').AsString;
               STGR_BASE.Cells[01,vi_ContaSel1] := COPY(IBQ_COMBINACOES.FIELDbyNAME('DADOS').AsString,1,2);
               STGR_BASE.Cells[02,vi_ContaSel1] := COPY(IBQ_COMBINACOES.FIELDbyNAME('DADOS').AsString,4,2);
               STGR_BASE.Cells[03,vi_ContaSel1] := COPY(IBQ_COMBINACOES.FIELDbyNAME('DADOS').AsString,7,2);
               STGR_BASE.Cells[04,vi_ContaSel1] := COPY(IBQ_COMBINACOES.FIELDbyNAME('DADOS').AsString,10,2);
               STGR_BASE.Cells[05,vi_ContaSel1] := COPY(IBQ_COMBINACOES.FIELDbyNAME('DADOS').AsString,13,2);
               STGR_BASE.Cells[06,vi_ContaSel1] := COPY(IBQ_COMBINACOES.FIELDbyNAME('DADOS').AsString,16,2);
               STGR_BASE.Cells[07,vi_ContaSel1] := COPY(IBQ_COMBINACOES.FIELDbyNAME('DADOS').AsString,19,2);
               STGR_BASE.Cells[08,vi_ContaSel1] := COPY(IBQ_COMBINACOES.FIELDbyNAME('DADOS').AsString,22,2);
               STGR_BASE.Cells[09,vi_ContaSel1] := COPY(IBQ_COMBINACOES.FIELDbyNAME('DADOS').AsString,25,2);
               STGR_BASE.Cells[10,vi_ContaSel1] := COPY(IBQ_COMBINACOES.FIELDbyNAME('DADOS').AsString,28,2);
               STGR_BASE.Cells[11,vi_ContaSel1] := COPY(IBQ_COMBINACOES.FIELDbyNAME('DADOS').AsString,31,2);
               STGR_BASE.Cells[12,vi_ContaSel1] := COPY(IBQ_COMBINACOES.FIELDbyNAME('DADOS').AsString,34,2);
               STGR_BASE.Cells[13,vi_ContaSel1] := COPY(IBQ_COMBINACOES.FIELDbyNAME('DADOS').AsString,37,2);
               STGR_BASE.Cells[14,vi_ContaSel1] := COPY(IBQ_COMBINACOES.FIELDbyNAME('DADOS').AsString,40,2);
               STGR_BASE.Cells[15,vi_ContaSel1] := COPY(IBQ_COMBINACOES.FIELDbyNAME('DADOS').AsString,43,2);
               vi_Contador1 := vi_Contador1 +1;
               vi_Contar_Base := vi_Contar_Base +1;
               IBQ_COMBINACOES.Next;
               if (IBQ_COMBINACOES.Eof) then
                    break;
          end; // for iv_contador
          STGR_BASE.RowCount := vi_Contar_Base;
          STGR_BASE.Repaint;
          vi_Linhas1 := 1;
          vi_Linhas2 := 1;
          STGR_COMB15.RowCount := vi_Linhas1;
          STGR_COMB15_8I7P.RowCount := vi_Linhas2;
          vi_Combinacoes1 := 1;
          WHILE vi_Combinacoes1 <= (TRUNC((STGR_BASE.RowCount-1)/1)) do
          BEGIN
               vi_Soma15  :=  STRtoINT(STGR_BASE.Cells[01,vi_Combinacoes1])
                  + STRtoINT(STGR_BASE.Cells[02,vi_Combinacoes1])+ STRtoINT(STGR_BASE.Cells[03,vi_Combinacoes1])
                  + STRtoINT(STGR_BASE.Cells[04,vi_Combinacoes1])+ STRtoINT(STGR_BASE.Cells[05,vi_Combinacoes1])
                  + STRtoINT(STGR_BASE.Cells[06,vi_Combinacoes1])+ STRtoINT(STGR_BASE.Cells[07,vi_Combinacoes1])
                  + STRtoINT(STGR_BASE.Cells[08,vi_Combinacoes1])+ STRtoINT(STGR_BASE.Cells[09,vi_Combinacoes1])
                  + STRtoINT(STGR_BASE.Cells[10,vi_Combinacoes1])+ STRtoINT(STGR_BASE.Cells[11,vi_Combinacoes1])
                  + STRtoINT(STGR_BASE.Cells[12,vi_Combinacoes1])+ STRtoINT(STGR_BASE.Cells[13,vi_Combinacoes1])
                  + STRtoINT(STGR_BASE.Cells[14,vi_Combinacoes1])+ STRtoINT(STGR_BASE.Cells[15,vi_Combinacoes1])
                  ;
               vi_Flag1 :=0;
               IF (vi_Soma15 >= 194) AND (vi_Soma15 <= 196) THEN
                    vi_Flag1 :=1;
               IF (vi_Flag1 = 0) THEN
               begin
                    vi_Combinacoes1 := vi_Combinacoes1 +1;
                    IBQ_COMBINACOES.Next;
                    CONTINUE;
               end;
               // montado o segundo GRID
               STGR_COMB15.Cells[0,vi_Linhas1] := intTOstr(vi_Linhas11);
               STGR_COMB15.Cells[1,vi_Linhas1] := intTOstr(vi_Soma15);
               for vi_Combinacoes2:=1 to 15 do
               begin
                    STGR_COMB15.Cells[vi_Combinacoes2+1,vi_Linhas1] := STGR_BASE.Cells[vi_Combinacoes2,vi_Combinacoes1] ;
               END; // FOR
               // contando a quantidade de pares
               vi_ContaSel1:= 0;
               for vi_Combinacoes2:=2 to 16 do
               begin
                    IF (STRtoINT(STGR_COMB15.Cells[vi_Combinacoes2,vi_Linhas1]) MOD 2)=0 THEN
                    BEGIN
                         vi_ContaSel1:= vi_ContaSel1 +1;
                    END;// IF
               END; // FOR
               vi_Flag1 := 0;
               STGR_Comb15.Repaint;
               Case vi_Contasel1 OF
               7:
                    begin
                         STGR_COMB15_8I7P.RowCount := vi_Linhas2;
                         STGR_COMB15_8I7P.Repaint;
                         // somando os pares
                         vi_Soma_Pares := 0;
                         vi_Soma_Impares := 0;
                         for vi_Combinacoes2:=2 to 16 do
                         begin
                              IF (STRtoINT(STGR_COMB15.Cells[vi_Combinacoes2,vi_Linhas1]) MOD 2)=0 THEN
                              BEGIN
                                   vi_Soma_Pares := vi_Soma_Pares + STRtoINT(STGR_COMB15.Cells[vi_Combinacoes2,vi_Linhas1]);
                              END ELSE
                                   vi_Soma_Impares := vi_Soma_Impares + STRtoINT(STGR_COMB15.Cells[vi_Combinacoes2,vi_Linhas1]);
                              BEGIN
                              END;
                         END; // FOR
                         vi_Flag1 :=0;
                         IF ((vi_Soma_Pares >= 90) AND (vi_Soma_Pares <= 92)) and (vi_Soma_Impares = 104) THEN
                              vi_Flag1 :=1;
                         IF (vi_Flag1 = 0) THEN
                         begin
                              vi_Combinacoes1 := vi_Combinacoes1 +1;
                              IBQ_COMBINACOES.Next;
                              CONTINUE;
                         end;
                         // montado o segundo GRID
                         for vi_Combinacoes2:=2 to 16 do
                         begin
                              STGR_COMB15_8I7P.Cells[vi_Combinacoes2+2,vi_Linhas2] := STGR_COMB15.Cells[vi_Combinacoes2,vi_Linhas1] ;
                         END; // FOR
                         STGR_COMB15_8I7P.Cells[0,vi_Linhas2] := intTOstr(vi_Linhas22);
                         STGR_COMB15_8I7P.Cells[1,vi_Linhas2] := intTOstr(vi_Soma15);
                         STGR_COMB15_8I7P.Cells[2,vi_Linhas2] := '104';
                         STGR_COMB15_8I7P.Cells[3,vi_Linhas2] := intTOstr(vi_Soma_Pares);
                         vi_Linhas2 := vi_Linhas2 + 1;
                         vi_Linhas22 := vi_Linhas22 + 1;
                    end; // 8:
               end ;// case
               vi_Linhas1 := vi_Linhas1 + 1;
               vi_Linhas11 := vi_Linhas11 + 1;
               STGR_COMB15.RowCount := vi_Linhas1;
               STGR_COMB15_8I7P.RowCount := vi_Linhas2;
               STGR_BASE.Repaint;
               STGR_COMB15.Repaint;
               PGBR_GERARCOMB0.Position :=  TRUNC(vi_Combinacoes1/(STGR_BASE.RowCount-1)*100);
               sleep(4);
               if  (vi_Combinacoes1 MOD 160 = 0) then
               BEGIN
                   Self.WindowState := wsMinimized;
                   Self.WindowState :=  wsNormal;
                   SELF.Repaint;
               END; // IF
               case CB_Sequencia.ItemIndex of
                    0: vi_Combinacoes1 := vi_Combinacoes1 + 1;
                    1: vi_Combinacoes1 := vi_Combinacoes1 + 2;
                    2: vi_Combinacoes1 := vi_Combinacoes1 + 2;
                    3: vi_Combinacoes1 := vi_Combinacoes1 + 3;
                    4: vi_Combinacoes1 := vi_Combinacoes1 + 4;
               end; // case
               vi_Contar_Comb1 := vi_Contar_Comb1 +1;
               vi_Combinacoes1 := vi_Combinacoes1 +1;
               IBQ_COMBINACOES.Next;
          END; //  while
          vi_Contador1 := vi_Contador1 +1;
          STGR_COMB15.RowCount := vi_Linhas1;
          STGR_COMB15_8I7P.RowCount := vi_Linhas2;
          LA_QTD_100REP.Caption := vi_Linhas22.ToString()+ ' /// ' + vi_Linhas2.ToString() ;
          LA_QTD_100REP.Repaint;
          PR_GRAVAR_DADOS (7);
          STGR_BASE.Repaint;
          STGR_COMB15.Repaint;
          STGR_COMB15_8I7P.Repaint;
          IBQ_COMBINACOES.Next;
     END; // WHILE NOT
     STGR_COMB15.RowCount := vi_Linhas1;
     STGR_COMB15_8I7P.RowCount := vi_Linhas2;
     LA_QTD_100REP.Caption := vi_Linhas2.ToString() ;
     LA_QTD_100REP.Repaint;
     STGR_BASE.Repaint;
     STGR_COMB15.Repaint;
     STGR_COMB15_8I7P.Repaint;
     // encerrando as gravações
          STGR_COMB15_8I7P.RowCount := vi_Linhas2;
          PR_GRAVAR_DADOS (7);
     TRY
           STGR_BASE.FixedRows := 1;
           STGR_COMB15.FixedRows := 1;
           STGR_COMB15_8I7P.FixedRows := 1 ;
     EXCEPT
          //
     END; // TRY
     STGR_BASE.Repaint;
     STGR_COMB15.Repaint;
     STGR_COMB15_8I7P.Repaint;
  // PR_GRAVAR_DADOS ('FIM', vi_Linhas7, vi_Combinacoes1, TRUNC(STGR_BASE.RowCount-1));

     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;
     IF (SELF._MODALIDADE = 'ETAPA 2') THEN
     BEGIN
         PGBR_GERARCOMB0.Position :=  100;
         LA_gFIM_GERAR.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
         // ==> ACERTANDO O PAINEL DE ENCERRAMENTO
         BBT_RECOMECAR.Enabled := false;
         BBT_PREPARAR_MENU.Enabled := false;
     END
     ELSE
     BEGIN
        SHOWMESSAGE('FIM DA PRIMEIRA ETAPA.');
     END;

     IF NOT(SELF.IBTransaction2.Active) THEN SELF.IBTransaction2.StartTransaction;
     SELF.IBQ_GRAVAR.Transaction.Commit;
     SELF.IBQ_GRAVAR.Close;
     IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
     SELF.IBQ_COMBINACOES.Transaction.Commit;
     SELF.IBQ_COMBINACOES.Close;
     PA_REMOVEUREPET.Left := 1100;
end;




procedure T_F_Gerador_Resultados3268760_194_196.BBT_PA_REMOVEUREPETClick(Sender: TObject);
begin
     PA_REMOVEUREPET.Left := 5000;
     BBT_RECOMECAR.Enabled := false;
     BBT_PREPARAR_MENU.Enabled := false;
     BBT_GERAR_MENU.Enabled := false;
     PA_INICIAL.Enabled := TRUE;
     BT_NOVA_SIMULACAO.Enabled := false;
     BT_BLOCO_DE_NOTAS1.Enabled := TRUE;
     BBT_CARREGAR.Enabled := false;
     PA_INICIAL.Left := 520;
end;



procedure T_F_Gerador_Resultados3268760_194_196.BT_BLOCO_DE_NOTAS1Click(Sender: TObject);
begin
     PA_RESULTADO.Visible := TRUE;
     PA_RESULTADO.Enabled := TRUE;
     BBT_PREPARAR_MENU.Enabled := TRUE;
     BBT_GERAR_MENU.Enabled := false;
     BBT_CANCELAR_SAIR.Visible := false;     
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 2198;
end;



procedure T_F_Gerador_Resultados3268760_194_196.BBT_CARREGARClick(Sender: TObject);
begin
    BBT_CANCELAR_SAIR.Visible := TRUE;
            STGR_BASE.RowCount := 2;
            STGR_COMB15.RowCount := 2;
            STGR_COMB15_8I7P.RowCount := 2;            
     PA_RESULTADO.Visible := TRUE;
     PA_RESULTADO.Enabled := TRUE;
     PA_EXECUTAR_FILTRO.Enabled := TRUE;

     BBT_PREPARAR_MENU.Enabled := false;
     BBT_GERAR_MENU.Enabled := false;
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 2198;
     PGBR_GERARCOMB0.Position := 100;
     LA_TOTAL_Comb.Visible := false;
     LA_GERAR_Comb.Visible := false;
     {
            SELF.IBQ_CombINACOES.SQL.Clear;
            SELF.IBQ_CombINACOES.SQL.Add('UPDATE GERADOR_RESULT_DIV_SMFX_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_CombINACOES.ExecSQL;
            SELF.IBQ_CombINACOES.SQL.Clear;
            SELF.IBQ_CombINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_CombINACOES.ExecSQL;

     SELF.PR_SIMULAR_RECUPERANDODADOS('');
     }
end;



procedure T_F_Gerador_Resultados3268760_194_196.BBT_GERAR_SAIRClick(Sender: TObject);
begin
     PA_GERAR.Enabled := false;
     PA_GERAR.Left := 4500;    ;
     PA_GERAR.Repaint;
end;



procedure T_F_Gerador_Resultados3268760_194_196.BBT_BLOCO_NOTASClick(Sender: TObject);
var
    vi_Contar, vc_qtd_pares : INTEGER;
    vc_Nome_Tabela, VC_COMBINACOES2, vcTitulo : string;
begin
     for vc_qtd_pares := 1 to 2 do
     begin
          CASE vc_qtd_pares OF
               1:  vc_Nome_Tabela := '194';
               2:  vc_Nome_Tabela := '196';
          END; //CASE
          MEM_COMBINACOES_TODAS.Clear;
          SELF.IBQ_GRAVAR.Close;
          SELF.IBQ_GRAVAR.SQL.Clear;
          SELF.IBQ_GRAVAR.SQL.Add('SELECT COUNT(distinct(DADOS)) AS SOMADADOS FROM GERADOR_3268760_8I7P WHERE SOMA_TOTAL= ' +vc_Nome_Tabela+ ';')  ;
          SELF.IBQ_GRAVAR.Prepare;
          SELF.IBQ_GRAVAR.Open;
          vi_Contar := SELF.IBQ_GRAVAR.FIELDBYNAME('SOMADADOS').AsInteger;
          CASE vc_qtd_pares OF
               1:  vcTitulo := 'Resultados soma 194 (104Ímpares e 90 pares) de todos as 3.268.760 combinações possíveis sendo 8Impares e 7Pares.';
               2:  vcTitulo := 'Resultados soma 196 (104Ímpares e 92 pares) de todos as 3.268.760 combinações possíveis sendo 8Impares e 7Pares.';
          END; //CASE
          MEM_COMBINACOES_TODAS.Lines.Add(vcTitulo) ;
          MEM_COMBINACOES_TODAS.Lines.Add('TOTAL: ' + INTtoSTR(vi_Contar)) ;
          MEM_COMBINACOES_TODAS.Lines.Add('----------------------------') ;
          SELF.IBQ_GRAVAR.SQL.Clear;
          SELF.IBQ_GRAVAR.SQL.Add('SELECT distinct(DADOS)  FROM GERADOR_3268760_8I7P WHERE SOMA_TOTAL= ' +vc_Nome_Tabela+ ' ORDER BY DADOS;')  ;
          SELF.IBQ_GRAVAR.Prepare;
          SELF.IBQ_GRAVAR.Open;
          SELF.IBQ_GRAVAR.First;
          WHILE (NOT(SELF.IBQ_GRAVAR.Eof)) DO
          BEGIN
               VC_COMBINACOES2 := '';
                VC_COMBINACOES2 := trim(IBQ_GRAVAR.FIELDBYNAME('DADOS').AsString);
                    MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES2) ;
               IBQ_GRAVAR.Next;
         END; // FOR vi_Contar
         MEM_COMBINACOES_TODAS.Repaint;
         //MEM_COMBINACOES_TODAS.SelectAll;
         //MEM_COMBINACOES_TODAS.CopyToClipboard;
         //MEM_COMBINACOES_TODAS.Repaint;
         MEM_COMBINACOES_TODAS.Lines.SaveToFile('C:\CXLOTOFACIL\gerador_8i7p_soma_'+vc_Nome_Tabela+'_3268760.TXT');
     END; // For
    winExec('Notepad.exe C:\CXLOTOFACIL\gerador_8i7p_soma_194_3268760', sw_shownormal);
    winExec('Notepad.exe C:\CXLOTOFACIL\gerador_8i7p_soma_196_3268760', sw_shownormal);
   showmessage('BLOCO DE NOTAS GERADO');
end;



end.
