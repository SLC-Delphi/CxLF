unit uGerador_ResultadosDiversos_SmFx2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, DB, strutils,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, IdBaseComponent, IdComponent, IdIPWatch ;

type
  T_F_Gerador_ResDiv_SmFx2 = class(TForm)
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
    BBT_PA_REMOVEUREPET: TBitBtn;
    PA_INICIAL: TPanel;
    Label55: TLabel;
    BT_NOVA_SIMULACAO: TButton;
    BT_REAJUSTAR: TButton;
    BBT_SAIR: TButton;
    BBT_CANCELAR: TBitBtn;
    MEM_COMBINACOES_TODAS: TMemo;
    PA_TOPO: TPanel;
    LA_TITULO: TLabel;
    BBT_CLOSE: TImage;
    BBT_RECOMECAR: TBitBtn;
    PA_RESULTADO: TPanel;
    STGR_COMB15: TStringGrid;
    STRGR_TODOS_NUMEROS: TStringGrid;
    PA_EXECUTAR_FILTRO: TPanel;
    BBT_PREPARAR_MENU: TBitBtn;
    BBT_GERAR_MENU: TBitBtn;
    PANEL_TITULO_SIMULACAO: TPanel;
    LA_GERAR_COMB: TLabel;
    LA_TOTAL_COMB: TLabel;
    PGBR_GERARCOMB0: TProgressBar;
    STGR_COMB13: TStringGrid;
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
    SCBX_GABARITO: TScrollBox;
    Label7: TLabel;
    LA_BASE_17_100REP: TLabel;
    STGR_BASE: TStringGrid;
    STGR_BASE10: TStringGrid;
    PA_COLUNA1: TPanel;
    Label56: TLabel;
    ED_SOMAS_12N_INI: TEdit;
    TRB_SOMA_12N: TTrackBar;
    Panel5: TPanel;
    Label5: TLabel;
    ED_SOMAS_10N_INI: TEdit;
    TRB_SOMAS_10N: TTrackBar;
    CB_Sequencia: TComboBox;
    Label40: TLabel;
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
    BBT_BLOCO_NOTAS: TBitBtn;
    ScrollBox1: TScrollBox;
    STGR_COMB08_I: TStringGrid;
    STGR_COMB07_P: TStringGrid;
    STGR_COMB05_I: TStringGrid;
    STGR_COMB05_P: TStringGrid;
    STGR_COMB06_I: TStringGrid;
    STGR_COMB06_P: TStringGrid;
    STGR_COMB02_Sobras: TStringGrid;
    STGR_COMB05s_I: TStringGrid;
    STGR_COMB05s_P: TStringGrid;
    STGR_COMB02s_Sobras: TStringGrid;
    STGR_COMB01s_Sobras: TStringGrid;
    STGR_COMB15_8I7P: TStringGrid;
    LA_rTOTAL_100REPET: TLabel;
    Label50: TLabel;
    STGR_COMB15_7I8P: TStringGrid;
    BT_BLOCO_DE_NOTAS1: TButton;
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
    procedure BT_REAJUSTARClick(Sender: TObject);
    procedure BBT_CARREGARClick(Sender: TObject);
    procedure BBT_GERAR_SAIRClick(Sender: TObject);
    procedure TRB_SOMA_12NChange(Sender: TObject);
    procedure TRB_SOMAS_10NChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BBT_BLOCO_NOTASClick(Sender: TObject);
  private
    F_MODALIDADE: STRING;
    { Private declarations }
    procedure Set_MODALIDADE(const Value: STRING);
  public
    { Public declarations }
     PROPERTY _MODALIDADE : STRING  read F_MODALIDADE write Set_MODALIDADE;
  end;

var
  _F_Gerador_ResDiv_SmFx2: T_F_Gerador_ResDiv_SmFx2;

implementation

{$R *.dfm}


procedure T_F_Gerador_ResDiv_SmFx2.Set_MODALIDADE(const Value: STRING);
begin
  F_MODALIDADE := Value;
end;





procedure T_F_Gerador_ResDiv_SmFx2.FormCreate(Sender: TObject);
begin
     SELF.ClientWidth  := 1495;
     SELF.ClientHeight := 660;
     SELF.Top  := 59;
     SELF.Left := 9;
   //  SELF.Visible := TRUE;
     bbt_close.Left := SELF.ClientWidth-35;
          PA_REMOVEUREPET.Left := 5000;
     PA_PREPARAR.Left := 5000;
     PA_GERAR.Left := 5000;
     SCBX_GABARITO.Visible := false;
     PA_RESULTADO.Visible := false;
     PA_INICIAL.Enabled := TRUE;
     PA_INICIAL.Left := 520;
     PA_INICIAL.Top := 160;
    PA_EXECUTAR_FILTRO.Enabled := false;
    BBT_CANCELAR_SAIR.Visible := false;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE GERADOR_RESULT_DIV_SMFX2_DEF SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
end;



procedure T_F_Gerador_ResDiv_SmFx2.FormActivate(Sender: TObject);
begin

{
      IF (SELF._MODALIDADE ='GERADOR') THEN
      begin
          LA_TITULO.Caption             := 'GERADOR Resultados Diversos a Partir das Somas Fixas 2 - 8I/7p';
      END ELSE
      BEGIN
          LA_TITULO.Caption             := 'GERADOR Resultados Diversos a Partir das Somas Fixas 2          ';
          BT_NOVA_SIMULACAO.Click;
      end;
      LA_TITULO.Repaint;
      }
end;



procedure T_F_Gerador_ResDiv_SmFx2.FormClose(Sender: TObject;
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


procedure T_F_Gerador_ResDiv_SmFx2.BBT_CLOSEClick(Sender: TObject);
begin
     SELF.Close;
end;




procedure T_F_Gerador_ResDiv_SmFx2.BT_NOVA_SIMULACAOClick(Sender: TObject);
begin
     PA_RESULTADO.Enabled := TRUE;
  //   RB_RESULTADOS.SetFocus;
  //   RB_RES_GABARITOS.SetFocus;
     SCBX_GABARITO.Visible := TRUE;
     SCBX_GABARITO.Enabled := TRUE;
     PA_RESULTADO.Visible := TRUE;
     PA_RESULTADO.Enabled := TRUE;
     PA_EXECUTAR_FILTRO.Enabled := TRUE;
     BBT_PREPARAR_MENU.Enabled := TRUE;
     BBT_GERAR_MENU.Enabled := false;
     BBT_GERAR_MENU.Enabled := false;
     BBT_CANCELAR_SAIR.Visible := false;     
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 2198;
     SCBX_GABARITO.Top:=247;
     SCBX_GABARITO.Repaint;
end;


procedure T_F_Gerador_ResDiv_SmFx2.BBT_SAIRClick(Sender: TObject);
begin
     SELF.Close;
end;



procedure T_F_Gerador_ResDiv_SmFx2.BBT_CANCELARClick(Sender: TObject);
begin
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE GERADOR_RESULT_DIV_SMFX2_DEF SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT;')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
          SELF.Close;
end;



procedure T_F_Gerador_ResDiv_SmFx2.BBT_PREPARAR_MENUClick(Sender: TObject);
begin
     PA_PREPARAR.Visible := TRUE;
     PA_PREPARAR.Enabled := TRUE;
     PA_PREPARAR.Top  := 245;
     PA_PREPARAR.Left := 460;
     PA_PREPARAR.Repaint;
end;



procedure T_F_Gerador_ResDiv_SmFx2.BBT_GERAR_VOLTARClick(Sender: TObject);
begin
     PA_PREPARAR.Visible := false;
     PA_PREPARAR.Enabled := false;
     PA_PREPARAR.Left := 4500;
     PA_PREPARAR.Repaint;
end;


procedure T_F_Gerador_ResDiv_SmFx2.BBT_PREPARAR1Click(Sender: TObject);
VAR
     vi_Contador1, vi_ContarCelulas, vi_Contar, vi_Soma : integer;
begin
     FOR vi_Contador1 := 1 TO 25 DO
     BEGIN
          STRGR_TODOS_NUMEROS.Cells[vi_Contador1,0] := INTtoSTR(vi_Contador1);
     END;
     FOR vi_Contador1 := 2 TO 16 DO
     BEGIN
          STGR_BASE.Cells[vi_Contador1,0] := INTtoSTR(vi_Contador1-1);
     END;
     FOR vi_Contador1 := 2 TO 11 DO
     BEGIN
          STGR_BASE10.Cells[vi_Contador1,0] := INTtoSTR(vi_Contador1-1);
     END;
     IBQ_COMBINACOES.SQL.Clear;
     IBQ_COMBINACOES.SQL.Add('SELECT * FROM RESULTADO_GERADOS_SMFX ') ;
     IBQ_COMBINACOES.Prepare;
     IBQ_COMBINACOES.Open;
     IBQ_COMBINACOES.First;
     vi_Contador1 := 1  ;
     WHILE NOT(IBQ_COMBINACOES.Eof) DO
     BEGIN
          STGR_BASE.Cells[0,vi_Contador1] := INTtoSTR(vi_Contador1);
          STGR_BASE.Cells[02,vi_Contador1] := COPY(IBQ_COMBINACOES.FIELDbyNAME('DADOS').AsString,1,2);
          STGR_BASE.Cells[03,vi_Contador1] := COPY(IBQ_COMBINACOES.FIELDbyNAME('DADOS').AsString,4,2);
          STGR_BASE.Cells[04,vi_Contador1] := COPY(IBQ_COMBINACOES.FIELDbyNAME('DADOS').AsString,7,2);
          STGR_BASE.Cells[05,vi_Contador1] := COPY(IBQ_COMBINACOES.FIELDbyNAME('DADOS').AsString,10,2);
          STGR_BASE.Cells[06,vi_Contador1] := COPY(IBQ_COMBINACOES.FIELDbyNAME('DADOS').AsString,13,2);
          STGR_BASE.Cells[07,vi_Contador1] := COPY(IBQ_COMBINACOES.FIELDbyNAME('DADOS').AsString,16,2);
          STGR_BASE.Cells[08,vi_Contador1] := COPY(IBQ_COMBINACOES.FIELDbyNAME('DADOS').AsString,19,2);
          STGR_BASE.Cells[09,vi_Contador1] := COPY(IBQ_COMBINACOES.FIELDbyNAME('DADOS').AsString,22,2);
          STGR_BASE.Cells[10,vi_Contador1] := COPY(IBQ_COMBINACOES.FIELDbyNAME('DADOS').AsString,25,2);
          STGR_BASE.Cells[11,vi_Contador1] := COPY(IBQ_COMBINACOES.FIELDbyNAME('DADOS').AsString,28,2);
          STGR_BASE.Cells[12,vi_Contador1] := COPY(IBQ_COMBINACOES.FIELDbyNAME('DADOS').AsString,31,2);
          STGR_BASE.Cells[13,vi_Contador1] := COPY(IBQ_COMBINACOES.FIELDbyNAME('DADOS').AsString,34,2);
          STGR_BASE.Cells[14,vi_Contador1] := COPY(IBQ_COMBINACOES.FIELDbyNAME('DADOS').AsString,37,2);
          STGR_BASE.Cells[15,vi_Contador1] := COPY(IBQ_COMBINACOES.FIELDbyNAME('DADOS').AsString,40,2);
          STGR_BASE.Cells[16,vi_Contador1] := COPY(IBQ_COMBINACOES.FIELDbyNAME('DADOS').AsString,43,2);
          STGR_BASE10.Cells[0,vi_Contador1] := INTtoSTR(vi_Contador1);
          STGR_BASE10.Cells[01,vi_Contador1] := 'V';
               FOR VI_CONTAR :=1 TO 25 DO
               BEGIN
                    STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
               END; // FOR VI_CONTAR
               // ----> MONTADO E VERIFICANDO TODOS OS 23 DÍGITOS
               FOR VI_CONTAR :=2 TO 16 DO
               BEGIN
                    STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_BASE.Cells[VI_CONTAR,vi_Contador1])) ,1]:='V';
               END; // FOR vi_Contador1
               vi_ContarCelulas := 2;
               FOR VI_CONTAR :=1 TO 25 DO
               BEGIN
                    IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='F') THEN
                    BEGIN
                         STGR_BASE10.Cells [vi_ContarCelulas, vi_Contador1] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                         vi_ContarCelulas := vi_ContarCelulas + 1;
                    END; // IF (STRGR_TODOS_NUMEROS
               END; // FOR VI_CONTAR
          // --> Classificando os sorteados
          {           
          vi_Soma  :=  STRtoINT(STGR_BASE.Cells[2,vi_Contador1])
             + STRtoINT(STGR_BASE.Cells[3,vi_Contador1])+ STRtoINT(STGR_BASE.Cells[4,vi_Contador1])
             + STRtoINT(STGR_BASE.Cells[5,vi_Contador1])+ STRtoINT(STGR_BASE.Cells[6,vi_Contador1])
             + STRtoINT(STGR_BASE.Cells[7,vi_Contador1])+ STRtoINT(STGR_BASE.Cells[8,vi_Contador1])
             + STRtoINT(STGR_BASE.Cells[9,vi_Contador1])+ STRtoINT(STGR_BASE.Cells[10,vi_Contador1])
             + STRtoINT(STGR_BASE.Cells[11,vi_Contador1])+ STRtoINT(STGR_BASE.Cells[12,vi_Contador1])
             + STRtoINT(STGR_BASE.Cells[13,vi_Contador1])+ STRtoINT(STGR_BASE.Cells[14,vi_Contador1])
             + STRtoINT(STGR_BASE.Cells[15,vi_Contador1])+ STRtoINT(STGR_BASE.Cells[16,vi_Contador1])
          ;
          IF (vi_Soma >= STRtoINT(ED_SOMAS_15N_INI.Text)) AND (vi_Soma <= STRtoINT(ED_SOMAS_15N_INI.Text)) THEN
               STGR_BASE.Cells[01,vi_Contador1] := 'V'
          else
               STGR_BASE.Cells[01,vi_Contador1] := 'F';
          // --> Classificando os excluídos
          vi_Soma  :=  STRtoINT(STGR_BASE10.Cells[2,vi_Contador1])
             + STRtoINT(STGR_BASE10.Cells[3,vi_Contador1])+ STRtoINT(STGR_BASE10.Cells[4,vi_Contador1])
             + STRtoINT(STGR_BASE10.Cells[5,vi_Contador1])+ STRtoINT(STGR_BASE10.Cells[6,vi_Contador1])
             + STRtoINT(STGR_BASE10.Cells[7,vi_Contador1])+ STRtoINT(STGR_BASE10.Cells[8,vi_Contador1])
             + STRtoINT(STGR_BASE10.Cells[9,vi_Contador1])+ STRtoINT(STGR_BASE10.Cells[10,vi_Contador1])
             + STRtoINT(STGR_BASE10.Cells[11,vi_Contador1])
          ;
          IF (vi_Soma >= STRtoINT(ED_SOMAS_10N_INI.Text)) AND (vi_Soma <= STRtoINT(ED_SOMAS_10N_INI.Text)) THEN
               STGR_BASE10.Cells[01,vi_Contador1] := 'V'
          else
               STGR_BASE10.Cells[01,vi_Contador1] := 'F';
          }
          //-->
          vi_Contador1 := vi_Contador1 +1;
          IBQ_COMBINACOES.Next;
     END; // WHILE NOT
     STGR_BASE.RowCount := vi_Contador1 ;
     STGR_BASE10.RowCount := vi_Contador1 ; 

     SELF.IBQ_COMBINACOES.Close;
     SELF.IBQ_COMBINACOES.Open;
     IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM GERADOR_RESULT_DIV_SMFX2_DEF')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM GERADOR_RESULT_DIV_SMFX2_7I8P')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM GERADOR_RESULT_DIV_SMFX2_8I7P')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM GERADOR_RESULT_DIV_SMFX2_DEF; ')  ;
     SELF.IBQ_COMBINACOES.Open;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('insert INTO GERADOR_RESULT_DIV_SMFX2_DEF (FLAG_FILTRAR,FLAG_GRAVAR) values (''N'',''N'');')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
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




procedure T_F_Gerador_ResDiv_SmFx2.BBT_GERAR_MENUClick(Sender: TObject);
begin
     PA_GERAR.Visible := TRUE;
     PA_GERAR.Enabled := TRUE;
     PA_GERAR.Top  := 245;
     PA_GERAR.Left := 460;
     PA_GERAR.Repaint;
end;







procedure T_F_Gerador_ResDiv_SmFx2.BBT_GERARClick(Sender: TObject);


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
        FOR VI_CONTAR :=1 TO 15 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB15.Cells[VI_CONTAR,VI_LINHAS9])) ,1]:='V';
        END; // FOR VI_CONTAR1
        VI_CNTCELULAS := 1;
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
               FOR vi_ContaSel1 := 1 TO 15 DO
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
               FOR vi_ContaSel1 := 1 TO 15 DO
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


    PROCEDURE PR_GRAVAR_DADOS_SMFX (vc_qtd_pares:Integer);
    VAR
        VI_AN_COMB1, vi_ContarCelulas, vi_Contar, vi_ContarStgGrid : INTEGER;
        VC_QUERY, vc_Nome_Tabela : STRING;
        VC_COMBINACOES10, VC_COMBINACOES15, vc_Contador_da_Tabela : STRING;
    BEGIN
        //VI_TOTALGERADO := STGR_COMB10.RowCount-1;
            // ************************
            // **   BANCO DE DADOS   **
            // ************************
            Self.Repaint;
           // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
          CASE vc_qtd_pares OF
               7: vi_ContarStgGrid := TRUNC((STGR_COMB15_7I8P.RowCount-1)/1);
               8: vi_ContarStgGrid := TRUNC((STGR_COMB15_8I7P.RowCount-1)/1);
          end; // case
       FOR VI_AN_COMB1:= 1 TO vi_ContarStgGrid DO
       BEGIN
           VC_COMBINACOES15 :='';
           FOR vi_ContarCelulas := 1 TO 25 DO
           BEGIN
                STRGR_TODOS_NUMEROS.Cells [vi_ContarCelulas ,1]:='F';                
           end;
           FOR vi_ContarCelulas := 1 TO 15 DO
           BEGIN
               CASE vc_qtd_pares OF
                    7:
                    BEGIN
                         VC_COMBINACOES15 := VC_COMBINACOES15 + TRIM(STGR_COMB15_7I8P.Cells[vi_ContarCelulas,VI_AN_COMB1]) +' ';
                         STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB15_7I8P.Cells[vi_ContarCelulas,VI_AN_COMB1])) ,1]:='V';
                         vc_Nome_Tabela := ' GERADOR_RESULT_DIV_SMFX2_7I8P';
                         vc_Contador_da_Tabela :=  STGR_COMB15_7I8P.Cells[0,VI_AN_COMB1] ;                         
                    END; // 8
                    8:
                    BEGIN
                         VC_COMBINACOES15 := VC_COMBINACOES15 + TRIM(STGR_COMB15_8I7P.Cells[vi_ContarCelulas,VI_AN_COMB1]) +' ';
                         STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB15_8I7P.Cells[vi_ContarCelulas,VI_AN_COMB1])) ,1]:='V';
                         vc_Nome_Tabela := ' GERADOR_RESULT_DIV_SMFX2_8I7P';
                         vc_Contador_da_Tabela :=  STGR_COMB15_8I7P.Cells[0,VI_AN_COMB1] ;
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
           VC_QUERY  := 'INSERT INTO ' +vc_Nome_Tabela+ ' (QTD, DADOS, DADOS_NS ) VALUES(' +#39+ vc_Contador_da_Tabela + #39 +','
                 +#39+  TRIM(VC_COMBINACOES15) + #39 +','+#39+TRIM(VC_COMBINACOES10)
                 +#39+ ');';
           SELF.IBQ_COMBINACOES.SQL.Clear;
           SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
           SELF.IBQ_COMBINACOES.ExecSQL;
       END; // FOR VI_AN_COMB1
    SELF.IBQ_COMBINACOES.SQL.Clear;
    SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
    SELF.IBQ_COMBINACOES.ExecSQL;
    SLEEP(19);
    SELF.IBQ_COMBINACOES.SQL.Clear;
    END; // PROCEDURE GRAVAR_DADOS

     PROCEDURE PR_GERA_COMB15_8I7P (vi_Linhas15, vi_Linhas06p: INTEGER);

         PROCEDURE PR_ORDENAR_SIMULACAO_15_8I7P (VI_LINHAS9: INTEGER);
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
             FOR VI_CONTAR :=1 TO 15 DO
             BEGIN
                 STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB15_8I7P.Cells[VI_CONTAR,VI_LINHAS9])) ,1]:='V';
             END; // FOR VI_CONTAR1
             VI_CNTCELULAS := 1;
             FOR VI_CONTAR :=1 TO 25 DO
             BEGIN
                 IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
                 BEGIN
                     STGR_COMB15_8I7P.Cells[VI_CNTCELULAS, VI_LINHAS9] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                     VI_CNTCELULAS := VI_CNTCELULAS + 1;
                 END; // IF (STRGR_TODOS_NUMEROS
             END; // FOR VI_CONTAR
         end; // PROCEDURE ORDENAR_SIMULACAO_12
     begin
          // PRIMEIRO
          STGR_COMB15_8I7P.Cells[0,vi_Linhas15] := INTtoSTR(vi_Linhas15);
          STGR_COMB15_8I7P.Cells[01,vi_Linhas15] := STGR_COMB06_I.Cells[3,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[02,vi_Linhas15] := STGR_COMB06_I.Cells[4,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[03,vi_Linhas15] := STGR_COMB06_I.Cells[5,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[04,vi_Linhas15] := STGR_COMB06_I.Cells[6,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[05,vi_Linhas15] := STGR_COMB06_I.Cells[7,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[06,vi_Linhas15] := STGR_COMB06_I.Cells[8,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[07,vi_Linhas15] := STGR_COMB06_p.Cells[2,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[08,vi_Linhas15] := STGR_COMB06_p.Cells[3,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[09,vi_Linhas15] := STGR_COMB06_p.Cells[4,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[10,vi_Linhas15] := STGR_COMB06_p.Cells[5,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[11,vi_Linhas15] := STGR_COMB06_p.Cells[6,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[12,vi_Linhas15] := STGR_COMB06_p.Cells[7,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[13,vi_Linhas15] := STGR_COMB02_Sobras.Cells[1,vi_Linhas06p];
          STGR_COMB15_8I7P.Cells[14,vi_Linhas15] := STGR_COMB02s_Sobras.Cells[1,vi_Linhas06p];
          STGR_COMB15_8I7P.Cells[15,vi_Linhas15] := STGR_COMB01s_Sobras.Cells[1,vi_Linhas06p];
          PR_ORDENAR_SIMULACAO_15_8I7P (vi_Linhas15) ;
          // SEGUNDO
          vi_Linhas15 := vi_Linhas15 +1;
          STGR_COMB15_8I7P.Cells[0,vi_Linhas15] := INTtoSTR(vi_Linhas15);
          STGR_COMB15_8I7P.Cells[01,vi_Linhas15] := STGR_COMB06_I.Cells[3,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[02,vi_Linhas15] := STGR_COMB06_I.Cells[4,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[03,vi_Linhas15] := STGR_COMB06_I.Cells[5,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[04,vi_Linhas15] := STGR_COMB06_I.Cells[6,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[05,vi_Linhas15] := STGR_COMB06_I.Cells[7,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[06,vi_Linhas15] := STGR_COMB06_I.Cells[8,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[07,vi_Linhas15] := STGR_COMB06_p.Cells[2,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[08,vi_Linhas15] := STGR_COMB06_p.Cells[3,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[09,vi_Linhas15] := STGR_COMB06_p.Cells[4,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[10,vi_Linhas15] := STGR_COMB06_p.Cells[5,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[11,vi_Linhas15] := STGR_COMB06_p.Cells[6,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[12,vi_Linhas15] := STGR_COMB06_p.Cells[7,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[13,vi_Linhas15] := STGR_COMB02_Sobras.Cells[1,vi_Linhas06p];
          STGR_COMB15_8I7P.Cells[14,vi_Linhas15] := STGR_COMB02s_Sobras.Cells[2,vi_Linhas06p];
          STGR_COMB15_8I7P.Cells[15,vi_Linhas15] := STGR_COMB01s_Sobras.Cells[1,vi_Linhas06p];
          PR_ORDENAR_SIMULACAO_15_8I7P (vi_Linhas15) ;
          // TERCEIRO
          vi_Linhas15 := vi_Linhas15 +1;
          STGR_COMB15_8I7P.Cells[0,vi_Linhas15] := INTtoSTR(vi_Linhas15);
          STGR_COMB15_8I7P.Cells[01,vi_Linhas15] := STGR_COMB06_I.Cells[3,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[02,vi_Linhas15] := STGR_COMB06_I.Cells[4,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[03,vi_Linhas15] := STGR_COMB06_I.Cells[5,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[04,vi_Linhas15] := STGR_COMB06_I.Cells[6,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[05,vi_Linhas15] := STGR_COMB06_I.Cells[7,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[06,vi_Linhas15] := STGR_COMB06_I.Cells[8,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[07,vi_Linhas15] := STGR_COMB06_p.Cells[2,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[08,vi_Linhas15] := STGR_COMB06_p.Cells[3,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[09,vi_Linhas15] := STGR_COMB06_p.Cells[4,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[10,vi_Linhas15] := STGR_COMB06_p.Cells[5,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[11,vi_Linhas15] := STGR_COMB06_p.Cells[6,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[12,vi_Linhas15] := STGR_COMB06_p.Cells[7,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[13,vi_Linhas15] := STGR_COMB02_Sobras.Cells[2,vi_Linhas06p];
          STGR_COMB15_8I7P.Cells[14,vi_Linhas15] := STGR_COMB02s_Sobras.Cells[1,vi_Linhas06p];
          STGR_COMB15_8I7P.Cells[15,vi_Linhas15] := STGR_COMB01s_Sobras.Cells[1,vi_Linhas06p];
          PR_ORDENAR_SIMULACAO_15_8I7P (vi_Linhas15) ;
          // QUARTO
          vi_Linhas15 := vi_Linhas15 +1;
          STGR_COMB15_8I7P.Cells[0,vi_Linhas15] := INTtoSTR(vi_Linhas15);
          STGR_COMB15_8I7P.Cells[01,vi_Linhas15] := STGR_COMB06_I.Cells[3,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[02,vi_Linhas15] := STGR_COMB06_I.Cells[4,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[03,vi_Linhas15] := STGR_COMB06_I.Cells[5,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[04,vi_Linhas15] := STGR_COMB06_I.Cells[6,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[05,vi_Linhas15] := STGR_COMB06_I.Cells[7,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[06,vi_Linhas15] := STGR_COMB06_I.Cells[8,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[07,vi_Linhas15] := STGR_COMB06_p.Cells[2,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[08,vi_Linhas15] := STGR_COMB06_p.Cells[3,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[09,vi_Linhas15] := STGR_COMB06_p.Cells[4,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[10,vi_Linhas15] := STGR_COMB06_p.Cells[5,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[11,vi_Linhas15] := STGR_COMB06_p.Cells[6,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[12,vi_Linhas15] := STGR_COMB06_p.Cells[7,vi_Linhas06p] ;
          STGR_COMB15_8I7P.Cells[13,vi_Linhas15] := STGR_COMB02_Sobras.Cells[2,vi_Linhas06p];
          STGR_COMB15_8I7P.Cells[14,vi_Linhas15] := STGR_COMB02s_Sobras.Cells[2,vi_Linhas06p];
          STGR_COMB15_8I7P.Cells[15,vi_Linhas15] := STGR_COMB01s_Sobras.Cells[1,vi_Linhas06p];
          PR_ORDENAR_SIMULACAO_15_8I7P (vi_Linhas15) ;
     end;


var
     vi_Combinacoes1, vi_Contador, vi_Contar: integer;
     vi_Total_Comb1,  vi_ContaSel1: SMALLINT;
     vi_Comb6i_1, vi_Comb6i_2, vi_Comb6i_3, vi_Comb6i_4, vi_Comb6i_5, vi_Comb6i_6 : INTEGER;
     vi_Comb6p_1, vi_Comb6p_2, vi_Comb6p_3, vi_Comb6p_4, vi_Comb6p_5, vi_Comb6p_6 : INTEGER;
     vi_Comb5i_1, vi_Comb5i_2, vi_Comb5i_3 : INTEGER;
     vi_Comb5p_1, vi_Comb5p_2, vi_Comb5p_3, vi_Comb5p_4 : INTEGER;
     vi_Flag1, vi_Flag2 : SMALLINT;
     vi_Contar_Comb1, vi_Linhas15, vi_Linhas06i, vi_Linhas06p, vi_Soma06i, vi_Soma06p, vi_Soma05i, vi_Soma05p: INTEGER;
     vs_NumerosPrincipais, vs_NumerosPrincipaiNs : STRING;
begin
     LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
     FOR vi_ContaSel1 := 3 TO 14 DO
     BEGIN
        STGR_Comb13.Cells [vi_ContaSel1,0] := '-'+INTtoSTR(vi_ContaSel1-2)+'-';
        STGR_Comb13.Cells [vi_ContaSel1,1] := '00';
     END;
     STGR_Comb13.ColWidths [0]:= 37;
     STGR_Comb13.ColWidths [1]:= 20;     
     STGR_Comb13.ColWidths [2]:= 37;
     STGR_COMB15.ColWidths [0]:= 49;
     STGR_COMB15_7i8p.RowCount := 2;
     STGR_COMB15_8i7p.RowCount := 2;
     STGR_COMB15_8I7P.ColWidths [0]:= 49;
     STGR_COMB15_7I8P.ColWidths [0]:= 49;
     STGR_COMB15_7i8p.Cells[0,0] := '{7i/8P}';
     STGR_COMB15_8i7p.Cells[0,0] := '{8i/7P}';
     STGR_Comb13.RowCount := 2;
     STGR_Comb13.Repaint;
     STGR_COMB06_I.RowCount := 2;
     STGR_COMB06_I.Repaint;
     STGR_COMB06_p.RowCount := 2;
     STGR_COMB06_p.Repaint;
     STGR_COMB02_Sobras.RowCount := 2;
     STGR_COMB02_Sobras.Repaint;
     FOR vi_ContaSel1 := 1 TO 15 DO
     BEGIN
        STGR_Comb15.Cells [vi_ContaSel1,0] := '-'+INTtoSTR(vi_ContaSel1)+'-';
        STGR_Comb15.Cells [vi_ContaSel1,1] := '00';
        STGR_COMB15_7i8p.Cells [vi_ContaSel1,1] := '00';
        STGR_COMB15_8i7p.Cells [vi_ContaSel1,1] := '00';
     END;
     //STGR_Comb15.ColWidths [2]:= 55;
     STGR_Comb15.RowCount := 2;
     STGR_Comb15.Repaint;

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
     LA_rTOTAL_Comb.Caption  := INTtoSTR(STGR_BASE.RowCount-1);

     //PR_GRAVAR_DADOS ('INICIO',vi_Linhas_01_01, 1, TRUNC(STGR_BASE.RowCount-1));
     vi_Linhas06i := 1;
     vi_Combinacoes1 := 1  ;
     if (CB_Sequencia.ItemIndex=2) then
          vi_Combinacoes1 := 2  ;
     vi_Contar_Comb1 :=1;
     vi_Linhas06p := 1;
     vi_Linhas15 := 1;      
     WHILE vi_Combinacoes1 <= (TRUNC((STGR_BASE.RowCount-1)/1)) do
     BEGIN
          // separando ímpares e pares
          VI_CONTAR :=0;
          FOR VI_CONTADOR := 2 TO 16 DO
          BEGIN
               IF (strTOint(STGR_BASE.Cells[VI_CONTADOR,vi_Combinacoes1]) MOD 2 = 0) THEN
               BEGIN
                    VI_CONTAR := VI_CONTAR +1;
                        STGR_COMB07_P.Cells[VI_CONTAR,1] := STGR_BASE.Cells[VI_CONTADOR,vi_Combinacoes1];
               END;
          END; // FOR VI_CONTADOR
          VI_CONTAR :=0;
          VS_NUMEROSPRINCIPAIS := '';
          FOR VI_CONTADOR := 2 TO 16 dO
          BEGIN
               IF (strTOint(STGR_BASE.Cells[VI_CONTADOR,vi_Combinacoes1]) MOD 2 = 1) THEN
               BEGIN
                    VI_CONTAR := VI_CONTAR +1;
                    STGR_COMB08_I.Cells[VI_CONTAR,1] := STGR_BASE.Cells[VI_CONTADOR,vi_Combinacoes1];
                    VS_NUMEROSPRINCIPAIS := VS_NUMEROSPRINCIPAIS + RIGHTSTR('0'+STGR_BASE.Cells[VI_CONTADOR,vi_Combinacoes1],2) +' ';
               END;
          end;
               // separando ímpares e pares
               VI_CONTAR :=0;
               FOR VI_CONTADOR := 2 TO 11 DO
               BEGIN
                    IF (strTOint(STGR_BASE10.Cells[VI_CONTADOR,vi_Combinacoes1]) MOD 2 = 0) THEN
                    BEGIN
                         VI_CONTAR := VI_CONTAR +1;
                             STGR_COMB05_P.Cells[VI_CONTAR,1] := STGR_BASE10.Cells[VI_CONTADOR,vi_Combinacoes1];
                    END;
               END; // FOR VI_CONTADOR
               VI_CONTAR :=0;
               VS_NUMEROSPRINCIPAInS := '';
               FOR VI_CONTADOR := 2 TO 11 DO
               BEGIN
                    IF (strTOint(STGR_BASE10.Cells[VI_CONTADOR,vi_Combinacoes1]) MOD 2 = 1) THEN
                    BEGIN
                         VI_CONTAR := VI_CONTAR +1;
                         STGR_COMB05_I.Cells[VI_CONTAR,1] := STGR_BASE10.Cells[VI_CONTADOR,vi_Combinacoes1];
                         VS_NUMEROSPRINCIPAInS := VS_NUMEROSPRINCIPAIS + RIGHTSTR('0'+STGR_BASE10.Cells[VI_CONTADOR,vi_Combinacoes1],2) +' ';
                    END;
               end;
          STGR_Comb13.Repaint;
          STGR_COMB07_P.Repaint;
          STGR_COMB08_I.Repaint;
          STGR_COMB05_P.Repaint;
          STGR_COMB05_I.Repaint;
          vi_Linhas06i := 1;
          // --> Bloco dos impares
          FOR vi_Comb6i_1 := 1 TO  03 DO
          BEGIN
               FOR vi_Comb6i_2 := vi_Comb6i_1+1 TO  04 DO
               BEGIN
                    FOR vi_Comb6i_3 := vi_Comb6i_2+1 TO  05 DO
                    BEGIN
                         FOR vi_Comb6i_4 := vi_Comb6i_3+1  TO  06 DO
                         BEGIN
                              FOR vi_Comb6i_5 := vi_Comb6i_4+1 TO  07 DO
                              BEGIN
                                   FOR vi_Comb6i_6 := vi_Comb6i_5+1 TO  08 DO
                                   BEGIN
                                        // --> Bloco dos pares
                                        FOR vi_Comb6p_1 := 1 TO  02 DO
                                        BEGIN
                                             FOR vi_Comb6p_2 := vi_Comb6p_1+1 TO  03 DO
                                             BEGIN
                                                  FOR vi_Comb6p_3 := vi_Comb6p_2+1 TO  04 DO
                                                  BEGIN
                                                       FOR vi_Comb6p_4 := vi_Comb6p_3+1  TO  05 DO
                                                       BEGIN
                                                            FOR vi_Comb6p_5 := vi_Comb6p_4+1 TO  06 DO
                                                            BEGIN
                                                                 FOR vi_Comb6p_6 := vi_Comb6p_5+1 TO  07 DO
                                                                 BEGIN
                                                                      vi_Soma06i  :=  STRtoINT(STGR_COMB08_I.Cells[vi_Comb6i_1,1])
                                                                         + STRtoINT(STGR_COMB08_I.Cells[vi_Comb6i_2,1])+ STRtoINT(STGR_COMB08_I.Cells[vi_Comb6i_3,1])
                                                                         + STRtoINT(STGR_COMB08_I.Cells[vi_Comb6i_4,1])+ STRtoINT(STGR_COMB08_I.Cells[vi_Comb6i_5,1])
                                                                         + STRtoINT(STGR_COMB08_I.Cells[vi_Comb6i_6,1])
                                                                         ;

                                                                      vi_Soma06p  :=  STRtoINT(STGR_COMB07_p.Cells[vi_Comb6p_1,1])
                                                                         + STRtoINT(STGR_COMB07_p.Cells[vi_Comb6p_2,1])+ STRtoINT(STGR_COMB07_p.Cells[vi_Comb6p_3,1])
                                                                         + STRtoINT(STGR_COMB07_p.Cells[vi_Comb6p_4,1])+ STRtoINT(STGR_COMB07_p.Cells[vi_Comb6p_5,1])
                                                                         + STRtoINT(STGR_COMB07_p.Cells[vi_Comb6p_6,1])
                                                                         ;

                                                                      IF ((vi_Soma06i+vi_Soma06p) >= STRtoINT(ED_SOMAS_12N_INI.Text)) AND ((vi_Soma06i+vi_Soma06p) <= STRtoINT(ED_SOMAS_12N_INI.Text)) THEN
                                                                      begin
                                                                           FOR vi_Comb5i_1 := 1 TO  03 DO
                                                                           BEGIN
                                                                                FOR vi_Comb5i_2 := vi_Comb5i_1+1 TO  04 DO
                                                                                BEGIN
                                                                                     FOR vi_Comb5i_3 := vi_Comb5i_2+1 TO  05 DO
                                                                                     BEGIN
                                                                                          // --> Bloco dos pares
                                                                                          FOR vi_Comb5p_1 := 1 TO  02 DO
                                                                                          BEGIN
                                                                                               FOR vi_Comb5p_2 := vi_Comb5p_1+1 TO  03 DO
                                                                                               BEGIN
                                                                                                    FOR vi_Comb5p_3 := vi_Comb5p_2+1 TO  04 DO
                                                                                                    BEGIN
                                                                                                         FOR vi_Comb5p_4 := vi_Comb5p_3+1  TO  05 DO
                                                                                                         BEGIN
                                                                                                              STGR_COMB06_I.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                                                                                              STGR_COMB06_I.Cells[1,vi_Linhas06p]  := 'F';
                                                                                                              STGR_COMB06_I.Cells[3,vi_Linhas06p]  :=  STGR_COMB08_I.Cells[vi_Comb6i_1,1] ;
                                                                                                              STGR_COMB06_I.Cells[4,vi_Linhas06p]  :=  STGR_COMB08_I.Cells[Vi_Comb6i_2,1] ;
                                                                                                              STGR_COMB06_I.Cells[5,vi_Linhas06p]  :=  STGR_COMB08_I.Cells[Vi_Comb6i_3,1] ;
                                                                                                              STGR_COMB06_I.Cells[6,vi_Linhas06p]  :=  STGR_COMB08_I.Cells[Vi_Comb6i_4,1] ;
                                                                                                              STGR_COMB06_I.Cells[7,vi_Linhas06p]  :=  STGR_COMB08_I.Cells[Vi_Comb6i_5,1] ;
                                                                                                              STGR_COMB06_I.Cells[8,vi_Linhas06p]  :=  STGR_COMB08_I.Cells[Vi_Comb6i_6,1] ;
                                                                                                              STGR_COMB06_I.Cells[2,vi_Linhas06p]  := INTtoSTR(vi_Soma06i);

                                                                                                              STGR_COMB06_p.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                                                                                              STGR_COMB06_p.Cells[2,vi_Linhas06p]  :=  STGR_COMB07_p.Cells[vi_Comb6p_1,1] ;
                                                                                                              STGR_COMB06_p.Cells[3,vi_Linhas06p]  :=  STGR_COMB07_p.Cells[Vi_Comb6p_2,1] ;
                                                                                                              STGR_COMB06_p.Cells[4,vi_Linhas06p]  :=  STGR_COMB07_p.Cells[Vi_Comb6p_3,1] ;
                                                                                                              STGR_COMB06_p.Cells[5,vi_Linhas06p]  :=  STGR_COMB07_p.Cells[Vi_Comb6p_4,1] ;
                                                                                                              STGR_COMB06_p.Cells[6,vi_Linhas06p]  :=  STGR_COMB07_p.Cells[Vi_Comb6p_5,1] ;
                                                                                                              STGR_COMB06_p.Cells[7,vi_Linhas06p]  :=  STGR_COMB07_p.Cells[Vi_Comb6p_6,1] ;
                                                                                                              STGR_COMB06_p.Cells[1,vi_Linhas06p]  := INTtoSTR(vi_Soma06p);

                                                                                                                 // --> Capturando os números que sobram
                                                                                                                 FOR VI_CONTAR :=1 TO 25 DO
                                                                                                                 BEGIN
                                                                                                                     STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
                                                                                                                     STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,2] :='F';
                                                                                                                 END; // FOR VI_CONTAR
                                                                                                                 // ----> MONTADO E VERIFICANDO TODOS OS DÍGITOS
                                                                                                                 FOR vi_Contar :=1 TO 8 DO
                                                                                                                 BEGIN
                                                                                                                     STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB08_I.Cells[vi_Contar,1])) ,1]:='V';
                                                                                                                 END; // FOR VI_CONTAR1
                                                                                                                 FOR vi_Contar :=3 TO 8 DO
                                                                                                                 BEGIN
                                                                                                                     STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB06_I.Cells[vi_Contar,vi_Linhas06p])) ,2]:='V';
                                                                                                                 END; // FOR VI_CONTAR1
                                                                                                                 vi_ContaSel1 := 1;
                                                                                                                 FOR vi_Contar :=1 TO 25 DO
                                                                                                                 BEGIN
                                                                                                                     IF (STRGR_TODOS_NUMEROS.Cells[vi_Contar,1]='V') and (STRGR_TODOS_NUMEROS.Cells[vi_Contar,2]='F')  THEN
                                                                                                                     BEGIN
                                                                                                                         STGR_COMB02_Sobras.Cells[vi_ContaSel1, vi_Linhas06p] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[vi_Contar,0]),2) ;
                                                                                                                         vi_ContaSel1 := vi_ContaSel1 + 1;
                                                                                                                     END; // IF (STRGR_TODOS_NUMEROS
                                                                                                                 END; // FOR VI_CONTAR
                                                                                                                   STGR_COMB02_Sobras.Cells[0, vi_Linhas06p] :=  INTtoSTR(vi_Combinacoes1) ;

                                                                                                              STGR_COMB05s_I.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                                                                                              STGR_COMB05s_I.Cells[1,vi_Linhas06p]  := 'F';
                                                                                                              STGR_COMB05s_I.Cells[3,vi_Linhas06p]  :=  STGR_COMB05_I.Cells[vi_Comb5i_1,1] ;
                                                                                                              STGR_COMB05s_I.Cells[4,vi_Linhas06p]  :=  STGR_COMB05_I.Cells[Vi_Comb5i_2,1] ;
                                                                                                              STGR_COMB05s_I.Cells[5,vi_Linhas06p]  :=  STGR_COMB05_I.Cells[Vi_Comb5i_3,1] ;
                                                                                                              vi_Soma05i  :=  STRtoINT(STGR_COMB05_I.Cells[vi_Comb5i_1,1])
                                                                                                                 + STRtoINT(STGR_COMB05_I.Cells[vi_Comb5i_2,1])+ STRtoINT(STGR_COMB05_I.Cells[vi_Comb5i_3,1])
                                                                                                                 ;
                                                                                                              STGR_COMB05s_I.Cells[2,vi_Linhas06p]  := INTtoSTR(vi_Soma05i);

                                                                                                              STGR_COMB05s_p.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                                                                                              STGR_COMB05s_p.Cells[2,vi_Linhas06p]  :=  STGR_COMB05_p.Cells[vi_Comb5p_1,1] ;
                                                                                                              STGR_COMB05s_p.Cells[3,vi_Linhas06p]  :=  STGR_COMB05_p.Cells[Vi_Comb5p_2,1] ;
                                                                                                              STGR_COMB05s_p.Cells[4,vi_Linhas06p]  :=  STGR_COMB05_p.Cells[Vi_Comb5p_3,1] ;
                                                                                                              STGR_COMB05s_p.Cells[5,vi_Linhas06p]  :=  STGR_COMB05_p.Cells[Vi_Comb5p_4,1] ;
                                                                                                              vi_Soma05p  :=  STRtoINT(STGR_COMB05_p.Cells[vi_Comb5p_1,1])
                                                                                                                 + STRtoINT(STGR_COMB05_p.Cells[vi_Comb5p_2,1])+ STRtoINT(STGR_COMB05_p.Cells[vi_Comb5p_3,1])
                                                                                                                 + STRtoINT(STGR_COMB05_p.Cells[vi_Comb5p_4,1])
                                                                                                                 ;
                                                                                                              STGR_COMB05s_p.Cells[1,vi_Linhas06p]  := INTtoSTR(vi_Soma05p);
                                                                                                              STGR_COMB05s_I.Cells[1,vi_Linhas06p]  := 'V';
                                                                                                              IF ((vi_Soma05i+vi_Soma05p) >= STRtoINT(ED_SOMAS_10N_INI.Text)) AND ((vi_Soma05i+vi_Soma05p) <= STRtoINT(ED_SOMAS_10N_INI.Text)) THEN
                                                                                                              begin
                                                                                                                   // --> Capturando os números que sobram
                                                                                                                      FOR VI_CONTAR :=1 TO 25 DO
                                                                                                                      BEGIN
                                                                                                                          STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
                                                                                                                          STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,2] :='F';
                                                                                                                      END; // FOR VI_CONTAR
                                                                                                                      // ----> MONTADO E VERIFICANDO TODOS OS DÍGITOS
                                                                                                                      FOR vi_Contar :=1 TO 5 DO
                                                                                                                      BEGIN
                                                                                                                          STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB05_I.Cells[vi_Contar,1])) ,1]:='V';
                                                                                                                      END; // FOR VI_CONTAR1
                                                                                                                      FOR vi_Contar :=3 TO 5 DO
                                                                                                                      BEGIN
                                                                                                                          STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB05s_I.Cells[vi_Contar,vi_Linhas06p])) ,2]:='V';
                                                                                                                      END; // FOR VI_CONTAR1
                                                                                                                      vi_ContaSel1 := 1;
                                                                                                                      FOR vi_Contar :=1 TO 25 DO
                                                                                                                      BEGIN
                                                                                                                          IF (STRGR_TODOS_NUMEROS.Cells[vi_Contar,1]='V') and (STRGR_TODOS_NUMEROS.Cells[vi_Contar,2]='F')  THEN
                                                                                                                          BEGIN
                                                                                                                              STGR_COMB02s_Sobras.Cells[vi_ContaSel1, vi_Linhas06p] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[vi_Contar,0]),2) ;
                                                                                                                              vi_ContaSel1 := vi_ContaSel1 + 1;
                                                                                                                          END; // IF (STRGR_TODOS_NUMEROS
                                                                                                                      END; // FOR VI_CONTAR
                                                                                                              // --> Capturando os números que sobram
                                                                                                                 FOR VI_CONTAR :=1 TO 25 DO
                                                                                                                 BEGIN
                                                                                                                     STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
                                                                                                                     STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,2] :='F';
                                                                                                                 END; // FOR VI_CONTAR
                                                                                                                 // ----> MONTADO E VERIFICANDO TODOS OS DÍGITOS
                                                                                                                 FOR vi_Contar :=1 TO 5 DO
                                                                                                                 BEGIN
                                                                                                                     STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB05_P.Cells[vi_Contar,1])) ,1]:='V';
                                                                                                                 END; // FOR VI_CONTAR1
                                                                                                                 FOR vi_Contar :=2 TO 5 DO
                                                                                                                 BEGIN
                                                                                                                     STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB05s_P.Cells[vi_Contar,vi_Linhas06p])) ,2]:='V';
                                                                                                                 END; // FOR VI_CONTAR1
                                                                                                                 vi_ContaSel1 := 1;
                                                                                                                 FOR vi_Contar :=1 TO 25 DO
                                                                                                                 BEGIN
                                                                                                                     IF (STRGR_TODOS_NUMEROS.Cells[vi_Contar,1]='V') and (STRGR_TODOS_NUMEROS.Cells[vi_Contar,2]='F')  THEN
                                                                                                                     BEGIN
                                                                                                                         STGR_COMB01s_Sobras.Cells[vi_ContaSel1, vi_Linhas06p] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[vi_Contar,0]),2) ;
                                                                                                                         vi_ContaSel1 := vi_ContaSel1 + 1;
                                                                                                                     END; // IF (STRGR_TODOS_NUMEROS
                                                                                                                 END; // FOR VI_CONTAR
                                                                                                                 //
                                                                                                                 // ---> Montando os 15 números.
                                                                                                                 //
                                                                                                                 PR_GERA_COMB15_8I7P (vi_Linhas15, vi_Linhas06p);
                                                                                                                      vi_Linhas15 := vi_Linhas15 +4;
                                                                                                                      vi_Linhas06p := vi_Linhas06p +1;
                                                                                                                      STGR_COMB06_I.Repaint;
                                                                                                                      STGR_COMB06_p.Repaint;                                                                              
                                                                                                                       STGR_COMB05s_p.Repaint;
                                                                                                              END; // IF
                                                                                                         END; // FOR vi_Comb5p_4
                                                                                                    END; // FOR vi_Comb5p_3
                                                                                               END; // FOR vi_Comb5p_2
                                                                                          END; // FOR vi_Comb5p_1
                                                                                     END; // FOR vi_Comb5i_3
                                                                                END; // FOR vi_Comb5i_2
                                                                           END; // FOR vi_Comb5i_1
                                                                      end; // IF
                                                                 END; // FOR vi_Comb6p_C
                                                            END; // FOR vi_Comb6p_B
                                                       END; // FOR vi_Comb6p_A
                                                  END; // FOR vi_Comb6p_9
                                             END; // FOR vi_Comb6p_8
                                        END; // FOR vi_Comb6p_7
                                        STGR_COMB05s_I.RowCount := vi_Linhas06p;
                                        STGR_COMB05s_p.RowCount := vi_Linhas06p;
                                        STGR_COMB02s_Sobras.RowCount := vi_Linhas06p;
                                        STGR_COMB01s_Sobras.RowCount := vi_Linhas06p;
                                        STGR_COMB06_I.RowCount := vi_Linhas06p;
                                        STGR_COMB06_p.RowCount := vi_Linhas06p;
                                        STGR_COMB02_Sobras.RowCount := vi_Linhas06p;
                                        STGR_COMB15_8I7P.RowCount := vi_Linhas15;
                                         STGR_COMB06_I.Repaint;
                                        STGR_COMB06_I.Repaint;
                                        STGR_COMB02_Sobras.Repaint;
                                        STGR_COMB05s_I.Repaint;
                                        STGR_COMB05s_p.Repaint;
                                        STGR_COMB02s_Sobras.Repaint;
                                        STGR_COMB01s_Sobras.Repaint;
                                        STGR_COMB15_8I7P.Repaint;
                                        vi_Linhas06i := vi_Linhas06i +1;
                                      
                                        LA_TOTAL_Comb.Caption := 'TOTAL PROCESSADOS: '+INTtoSTR(vi_Combinacoes1)+'   ';
                                        LA_TOTAL_Comb.Repaint;
                                        LA_TOTAL_Comb.Repaint;
                                        LA_TOTAL_Comb.Repaint;
                                   END; // FOR vi_Comb6i_6
                              END; // FOR vi_Comb6i_5
                         END; // FOR vi_Comb6i_4
                    END; // FOR vi_Comb6i_3
               END; // FOR vi_Comb6i_2
               STGR_Comb13.Repaint;
               PGBR_GERARCOMB0.Position :=  TRUNC(vi_Combinacoes1/(STGR_BASE.RowCount-1)*100);
               sleep(12);
               if  (vi_Combinacoes1 MOD 4 = 0) then
               BEGIN
                   Self.WindowState := wsMinimized;
                   Self.WindowState :=  wsNormal;
                   SELF.Repaint;
               END; // IF
          END; // FOR vi_Combi6_1
          case CB_Sequencia.ItemIndex of
               0: vi_Combinacoes1 := vi_Combinacoes1 + 1;
               1: vi_Combinacoes1 := vi_Combinacoes1 + 2;
               2: vi_Combinacoes1 := vi_Combinacoes1 + 2;
               3: vi_Combinacoes1 := vi_Combinacoes1 + 3;
               4: vi_Combinacoes1 := vi_Combinacoes1 + 4;               
          end; // case
          vi_Contar_Comb1 := vi_Contar_Comb1 +1;
     END; //  while
     // encerrando as gravações
          //PR_GRAVAR_DADOS_SMFX (7);
          PR_GRAVAR_DADOS_SMFX (8);
     //
     PGBR_GERARCOMB0.Position :=  100;
     LA_rTOTAL_Comb.Caption:= INTtoSTR(vi_Contar_Comb1-1)+'     ';

     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;
     LA_gFIM_GERAR.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
     // ==> ACERTANDO O PAINEL DE ENCERRAMENTO
     BBT_RECOMECAR.Enabled := false;
     BBT_PREPARAR_MENU.Enabled := false;
     LA_rQTD_Comb.Caption    :=  INTtoSTR(vi_Linhas15-1);

            SELF.IBQ_CombINACOES.SQL.Clear;
            SELF.IBQ_CombINACOES.SQL.Add('SELECT COUNT(DISTINCT(dados)) AS SOMADADOS  FROM GERADOR_RESULT_DIV_SMFX2_8I7P;')  ;
            SELF.IBQ_CombINACOES.Open;
            IBQ_CombINACOES.First;
     LA_rTOTAL_100REPET.Caption := IBQ_CombINACOES.FIELDBYNAME('SOMADADOS').AsString;

            SELF.IBQ_CombINACOES.SQL.Clear;
            SELF.IBQ_CombINACOES.SQL.Add('UPDATE GERADOR_RESULT_DIV_SMFX2_DEF SET HORA_TERMINO ='''+FORMATDATETIME('h:n:s',time())+''', QTD_DADOS= ''' +INTtoSTR(vi_Contar_Comb1)+ ''';')  ;
            SELF.IBQ_CombINACOES.ExecSQL;
            SELF.IBQ_CombINACOES.SQL.Clear;
            SELF.IBQ_CombINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_CombINACOES.ExecSQL;
     LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
            SELF.IBQ_CombINACOES.SQL.Clear;
            SELF.IBQ_CombINACOES.SQL.Add('UPDATE GERADOR_RESULT_DIV_SMFX2_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_CombINACOES.ExecSQL;
            SELF.IBQ_CombINACOES.SQL.Clear;
            SELF.IBQ_CombINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_CombINACOES.ExecSQL;   
     PA_REMOVEUREPET.Left := 1100;
end;


procedure T_F_Gerador_ResDiv_SmFx2.BBT_PA_REMOVEUREPETClick(Sender: TObject);
begin
     PA_REMOVEUREPET.Left := 5000;
     BBT_RECOMECAR.Enabled := false;
     BBT_PREPARAR_MENU.Enabled := false;
     BBT_GERAR_MENU.Enabled := false;
     PA_INICIAL.Enabled := TRUE;
     BT_NOVA_SIMULACAO.Enabled := false;
     BT_REAJUSTAR.Enabled := TRUE;
//     BBT_CARREGAR.Enabled := false;
     PA_INICIAL.Left := 1160;
     PA_INICIAL.Top := 5;
end;




procedure T_F_Gerador_ResDiv_SmFx2.BT_REAJUSTARClick(Sender: TObject);
begin
     SCBX_GABARITO.Visible := TRUE;
     SCBX_GABARITO.Enabled := TRUE;
     PA_RESULTADO.Visible := TRUE;
     PA_RESULTADO.Enabled := TRUE;
     BBT_PREPARAR_MENU.Enabled := TRUE;
     BBT_GERAR_MENU.Enabled := false;
     BBT_CANCELAR_SAIR.Visible := false;     
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 2198;
     SCBX_GABARITO.Top:=247;
     SCBX_GABARITO.Repaint;
end;



procedure T_F_Gerador_ResDiv_SmFx2.BBT_CARREGARClick(Sender: TObject);
begin
    BBT_CANCELAR_SAIR.Visible := TRUE;
            STGR_Comb13.RowCount := 2;
//       SELF.PR_LIMPAR_GRID10();
     SCBX_GABARITO.Visible := TRUE;
     SCBX_GABARITO.Enabled := TRUE;
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
            SELF.IBQ_CombINACOES.SQL.Clear;
            SELF.IBQ_CombINACOES.SQL.Add('UPDATE GERADOR_RESULT_DIV_SMFX2_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_CombINACOES.ExecSQL;
            SELF.IBQ_CombINACOES.SQL.Clear;
            SELF.IBQ_CombINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_CombINACOES.ExecSQL;
end;



procedure T_F_Gerador_ResDiv_SmFx2.BBT_GERAR_SAIRClick(Sender: TObject);
begin
     PA_GERAR.Enabled := false;
     PA_GERAR.Left := 4500;    ;
     PA_GERAR.Repaint;
end;



procedure T_F_Gerador_ResDiv_SmFx2.TRB_SOMA_12NChange(Sender: TObject);
begin
     IF TRB_SOMA_12N.Position = 1 THEN
          ED_SOMAS_12N_INI.Text := '152';
     IF TRB_SOMA_12N.Position = 2 THEN
          ED_SOMAS_12N_INI.Text := '154';
     IF TRB_SOMA_12N.Position = 3 THEN
          ED_SOMAS_12N_INI.Text := '156';
     IF TRB_SOMA_12N.Position = 4 THEN
          ED_SOMAS_12N_INI.Text := '158';
     IF TRB_SOMA_12N.Position = 5 THEN
          ED_SOMAS_12N_INI.Text := '160';


     IF TRB_SOMA_12N.Position = 1 THEN
          TRB_SOMAS_10N.Position :=5;
     IF TRB_SOMA_12N.Position = 2 THEN
          TRB_SOMAS_10N.Position :=4;
     IF TRB_SOMA_12N.Position = 3 THEN
          TRB_SOMAS_10N.Position :=3;
     IF TRB_SOMA_12N.Position = 4 THEN
          TRB_SOMAS_10N.Position :=2;
     IF TRB_SOMA_12N.Position = 5 THEN
          TRB_SOMAS_10N.Position :=1;
end;


procedure T_F_Gerador_ResDiv_SmFx2.TRB_SOMAS_10NChange(Sender: TObject);
begin
     IF TRB_SOMAS_10N.Position = 1 THEN
          ED_SOMAS_10N_INI.Text := '87';
     IF TRB_SOMAS_10N.Position = 2 THEN
          ED_SOMAS_10N_INI.Text := '89';
     IF TRB_SOMAS_10N.Position = 3 THEN
          ED_SOMAS_10N_INI.Text := '91';
     IF TRB_SOMAS_10N.Position = 4 THEN
          ED_SOMAS_10N_INI.Text := '93';
     IF TRB_SOMAS_10N.Position = 5 THEN
          ED_SOMAS_10N_INI.Text := '95';
end;


procedure T_F_Gerador_ResDiv_SmFx2.BBT_BLOCO_NOTASClick(Sender: TObject);
var
    vi_Contar, vc_qtd_pares : INTEGER;
    vc_Nome_Tabela, VC_COMBINACOES2, vcTitulo : string;
begin
     for vc_qtd_pares := 8 to 8 do
     begin
          CASE vc_qtd_pares OF
               8:  vc_Nome_Tabela := 'GERADOR_RESULT_DIV_SMFX2_8I7P';
               7:  vc_Nome_Tabela := 'GERADOR_RESULT_DIV_SMFX2_7I8P';
          END; //CASE
          MEM_COMBINACOES_TODAS.Clear;
          SELF.IBQ_CombINACOES.Close;
          SELF.IBQ_CombINACOES.SQL.Clear;
          SELF.IBQ_CombINACOES.SQL.Add('SELECT COUNT(distinct(DADOS)) AS SOMADADOS FROM ' +vc_Nome_Tabela+ ';')  ;
          SELF.IBQ_CombINACOES.Prepare;
          SELF.IBQ_CombINACOES.Open;
          vi_Contar := SELF.IBQ_CombINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
          CASE vc_qtd_pares OF
               7:  vcTitulo := 'GERADOR 7Impares e 8Pares MODELO 2';
               8:  vcTitulo := 'GERADOR 8Impares e 7Pares MODELO 2';
          END; //CASE
          MEM_COMBINACOES_TODAS.Lines.Add(vcTitulo) ;
          MEM_COMBINACOES_TODAS.Lines.Add('TOTAL: ' + INTtoSTR(vi_Contar)) ;
          MEM_COMBINACOES_TODAS.Lines.Add('----------------------------') ;
          SELF.IBQ_CombINACOES.SQL.Clear;
          SELF.IBQ_CombINACOES.SQL.Add('SELECT distinct(DADOS) FROM ' +vc_Nome_Tabela+ ' ORDER BY DADOS;')  ;
          SELF.IBQ_CombINACOES.Prepare;
          SELF.IBQ_CombINACOES.Open;
          SELF.IBQ_CombINACOES.First;
          WHILE (NOT(SELF.IBQ_COMBINACOES.Eof)) DO
          BEGIN
               VC_COMBINACOES2 := '';
                VC_COMBINACOES2 := trim(IBQ_CombINACOES.FIELDBYNAME('DADOS').AsString);
                    MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES2) ;
               IBQ_COMBINACOES.Next;
         END; // FOR vi_Contar
         MEM_COMBINACOES_TODAS.Repaint;
         //MEM_COMBINACOES_TODAS.SelectAll;
         //MEM_COMBINACOES_TODAS.CopyToClipboard;
         //MEM_COMBINACOES_TODAS.Repaint;
         MEM_COMBINACOES_TODAS.Lines.SaveToFile('C:\CXLOTOFACIL\'+vc_Nome_Tabela+'.TXT');
     END; // For
    winExec('Notepad.exe C:\CXLOTOFACIL\GERADOR_RESULT_DIV_SMFX2_8I7P.TXT', sw_shownormal);
   showmessage('BLOCO DE NOTAS GERADO');
end;

end.
