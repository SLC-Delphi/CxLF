unit Gerador_ResultadosDiversos_SmFx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, DB, strutils,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, IdBaseComponent, IdComponent, IdIPWatch ;

type
  T_F_Gerador_ResDiv_SmFx1 = class(TForm)
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
    BBT_CARREGAR: TButton;
    BBT_CANCELAR: TBitBtn;
    MEM_COMBINACOES_TODAS: TMemo;
    LA_rTOT_PROCESSAMENTO: TLabel;
    LA_rATRIBUICAO_DADOS: TLabel;
    LA_rLogic_Comp: TLabel;
    LA_rTOT_CALC: TLabel;
    Label39: TLabel;
    Label41: TLabel;
    Label43: TLabel;
    Label42: TLabel;
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
    STGR_COMB12: TStringGrid;
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
    STGR_Comb02_05: TStringGrid;
    STGR_SOBRAS_12: TStringGrid;
    STGR_BASE10: TStringGrid;
    PA_COLUNA1: TPanel;
    Label56: TLabel;
    ED_SOMAS_12N_INI: TEdit;
    TRB_SOMA_12N: TTrackBar;
    Panel3: TPanel;
    Label3: TLabel;
    ED_SOMAS_03N_INI: TEdit;
    TRB_SOMA_03N: TTrackBar;
    Panel4: TPanel;
    Label4: TLabel;
    ED_SOMAS_05N2_INI: TEdit;
    TRB_SOMAS_05N2: TTrackBar;
    Panel5: TPanel;
    Label5: TLabel;
    ED_SOMAS_05N1_INI: TEdit;
    TRB_SOMAS_05N1: TTrackBar;
    STGR_COMB12_S3: TStringGrid;
    STGR_COMB05: TStringGrid;
    STGR_COMB15_8I7P: TStringGrid;
    CB_Sequencia: TComboBox;
    Label40: TLabel;
    STGR_COMB15_7i8p: TStringGrid;
    STGR_COMB15_9I6P: TStringGrid;
    STGR_COMB15_6I9P: TStringGrid;
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
    Button6: TButton;
    Label10: TLabel;
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
    procedure TRB_SOMA_03NChange(Sender: TObject);
    procedure TRB_SOMAS_05N1Change(Sender: TObject);
    procedure TRB_SOMAS_05N2Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BBT_BLOCO_NOTASClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    F_MODALIDADE: STRING;
    { Private declarations }
     PROCEDURE PR_SIMULAR_RECUPERANDODADOS(VC_TIPO: STRING);
    procedure Set_MODALIDADE(const Value: STRING);
  public
    { Public declarations }
     PROPERTY _MODALIDADE : STRING  read F_MODALIDADE write Set_MODALIDADE;
  end;

var
  _F_Gerador_ResDiv_SmFx1: T_F_Gerador_ResDiv_SmFx1;

implementation

{$R *.dfm}


procedure T_F_Gerador_ResDiv_SmFx1.Set_MODALIDADE(const Value: STRING);
begin
  F_MODALIDADE := Value;
end;





procedure T_F_Gerador_ResDiv_SmFx1.FormCreate(Sender: TObject);
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
     SCBX_GABARITO.Visible := false;
     PA_RESULTADO.Visible := false;
     PA_INICIAL.Enabled := TRUE;
     PA_INICIAL.Left := 520;
     PA_INICIAL.Top := 160;
    PA_EXECUTAR_FILTRO.Enabled := false;
    BBT_CANCELAR_SAIR.Visible := false;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE GERADOR_RESULT_DIV_SMFX_DEF SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
end;



procedure T_F_Gerador_ResDiv_SmFx1.FormActivate(Sender: TObject);
begin
      IF (SELF._MODALIDADE ='GERADOR') THEN
      begin
          LA_TITULO.Caption             := 'GERADOR Resultados Diversos a Partir das Somas Fixas - 8I/7p';
      END ELSE
      BEGIN
          LA_TITULO.Caption             := 'GERADOR Resultados Diversos a Partir das Somas Fixas           ';
          BT_NOVA_SIMULACAO.Click;
      end;
      LA_TITULO.Repaint;
end;



procedure T_F_Gerador_ResDiv_SmFx1.FormClose(Sender: TObject;
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


procedure T_F_Gerador_ResDiv_SmFx1.BBT_CLOSEClick(Sender: TObject);
begin
     SELF.Close;
end;




procedure T_F_Gerador_ResDiv_SmFx1.BT_NOVA_SIMULACAOClick(Sender: TObject);
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


procedure T_F_Gerador_ResDiv_SmFx1.BBT_SAIRClick(Sender: TObject);
begin
     SELF.Close;
end;



procedure T_F_Gerador_ResDiv_SmFx1.BBT_CANCELARClick(Sender: TObject);
begin
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE GERADOR_RESULT_DIV_SMFX_DEF SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT;')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
          SELF.Close;
end;



procedure T_F_Gerador_ResDiv_SmFx1.BBT_PREPARAR_MENUClick(Sender: TObject);
begin
     PA_PREPARAR.Visible := TRUE;
     PA_PREPARAR.Enabled := TRUE;
     PA_PREPARAR.Top  := 245;
     PA_PREPARAR.Left := 460;
     PA_PREPARAR.Repaint;
end;



procedure T_F_Gerador_ResDiv_SmFx1.BBT_GERAR_VOLTARClick(Sender: TObject);
begin
     PA_PREPARAR.Visible := false;
     PA_PREPARAR.Enabled := false;
     PA_PREPARAR.Left := 4500;
     PA_PREPARAR.Repaint;
end;


procedure T_F_Gerador_ResDiv_SmFx1.BBT_PREPARAR1Click(Sender: TObject);
VAR
     vi_Contador1, vi_ContarCelulas, vi_Contar : integer;
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
          STGR_BASE.Cells[01,vi_Contador1] := 'V';
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
          vi_Contador1 := vi_Contador1 +1;
          IBQ_COMBINACOES.Next;
     END; // WHILE NOT
     STGR_BASE.RowCount := vi_Contador1 ;
     STGR_BASE10.RowCount := vi_Contador1 ; 

     SELF.IBQ_COMBINACOES.Close;
     SELF.IBQ_COMBINACOES.Open;
     IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM GERADOR_RESULT_DIV_SMFX_DEF')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM GERADOR_RESULT_DIV_SMFX_7I8P')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM GERADOR_RESULT_DIV_SMFX_8I7P')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM GERADOR_RESULT_DIV_SMFX_9I6P')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM GERADOR_RESULT_DIV_SMFX_6I9P')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM GERADOR_RESULT_DIV_SMFX_TD')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM GERADOR_RESULT_DIV_SMFX_DEF; ')  ;
     SELF.IBQ_COMBINACOES.Open;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('insert INTO GERADOR_RESULT_DIV_SMFX_DEF (FLAG_FILTRAR,FLAG_GRAVAR) values (''N'',''N'');')  ;
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




procedure T_F_Gerador_ResDiv_SmFx1.BBT_GERAR_MENUClick(Sender: TObject);
begin
     PA_GERAR.Visible := TRUE;
     PA_GERAR.Enabled := TRUE;
     PA_GERAR.Top  := 245;
     PA_GERAR.Left := 460;
     PA_GERAR.Repaint;
end;







procedure T_F_Gerador_ResDiv_SmFx1.BBT_GERARClick(Sender: TObject);


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
            STGR_COMB05.Repaint;
            Self.Repaint;
           // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
          CASE vc_qtd_pares OF
               9: vi_ContarStgGrid := TRUNC((STGR_COMB15_6I9P.RowCount-1)/1);
               8: vi_ContarStgGrid := TRUNC((STGR_COMB15_7I8P.RowCount-1)/1);
               7: vi_ContarStgGrid := TRUNC((STGR_COMB15_8I7P.RowCount-1)/1);
               6: vi_ContarStgGrid := TRUNC((STGR_COMB15_9I6P.RowCount-1)/1);
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
                    9:
                    BEGIN
                         VC_COMBINACOES15 := VC_COMBINACOES15 + TRIM(STGR_COMB15_6I9P.Cells[vi_ContarCelulas,VI_AN_COMB1]) +' ';
                         STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB15_6I9P.Cells[vi_ContarCelulas,VI_AN_COMB1])) ,1]:='V';
                         vc_Nome_Tabela := 'GERADOR_RESULT_DIV_SMFX_6I9P';
                         vc_Contador_da_Tabela :=  STGR_COMB15_6I9P.Cells[0,VI_AN_COMB1] ;
                    END; // 9               
                    8:
                    BEGIN
                         VC_COMBINACOES15 := VC_COMBINACOES15 + TRIM(STGR_COMB15_7I8P.Cells[vi_ContarCelulas,VI_AN_COMB1]) +' ';
                         STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB15_7I8P.Cells[vi_ContarCelulas,VI_AN_COMB1])) ,1]:='V';
                         vc_Nome_Tabela := 'GERADOR_RESULT_DIV_SMFX_7I8P';
                         vc_Contador_da_Tabela :=  STGR_COMB15_7I8P.Cells[0,VI_AN_COMB1] ;                         
                    END; // 6
                    7:
                    BEGIN
                         VC_COMBINACOES15 := VC_COMBINACOES15 + TRIM(STGR_COMB15_8I7P.Cells[vi_ContarCelulas,VI_AN_COMB1]) +' ';
                         STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB15_8I7P.Cells[vi_ContarCelulas,VI_AN_COMB1])) ,1]:='V';
                         vc_Nome_Tabela := 'GERADOR_RESULT_DIV_SMFX_8I7P';
                         vc_Contador_da_Tabela :=  STGR_COMB15_8I7P.Cells[0,VI_AN_COMB1] ;
                    END; // 7
                    6:
                    BEGIN
                         VC_COMBINACOES15 := VC_COMBINACOES15 + TRIM(STGR_COMB15_9I6P.Cells[vi_ContarCelulas,VI_AN_COMB1]) +' ';
                         STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB15_9I6P.Cells[vi_ContarCelulas,VI_AN_COMB1])) ,1]:='V';
                         vc_Nome_Tabela := 'GERADOR_RESULT_DIV_SMFX_9I6P';
                         vc_Contador_da_Tabela :=  STGR_COMB15_9I6P.Cells[0,VI_AN_COMB1] ;
                    END; // 8
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


var
     vi_Combinacoes1, vi_Combinacoes2, vi_Contador, vi_Contar: integer;
     vi_Total_Comb1,  vi_ContaSel1: SMALLINT;
     vi_Comb12_1, vi_Comb12_2, vi_Comb12_3, vi_Comb12_4, vi_Comb12_5, vi_Comb12_6, vi_Comb12_7, vi_Comb12_8, vi_Comb12_9 : INTEGER;
     vi_Comb12_A, vi_Comb12_B, vi_Comb12_C : INTEGER;
     vi_Comb15_1, vi_Comb15_2 : INTEGER;
     vi_Comb10_1, vi_Comb10_2, vi_Comb10_3, vi_Comb10_4, vi_Comb10_5 : integer;
     vi_Comb02_1, vi_Comb02_2 : integer;     
     vi_Flag1, vi_Flag2 : SMALLINT;
     vi_Contar_Comb1, vi_Linhas1, vi_Linhas2, vi_Linhas3, vi_Linhas7, vi_Linhas26, vi_Linhas16, vi_Linhas27, vi_Linhas17, vi_Linhas28, vi_Linhas18, vi_Linhas29, vi_Linhas19, vi_Soma05, vi_Soma12: INTEGER;
     vs_NumerosPrincipais: STRING;
begin
     LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
     FOR vi_ContaSel1 := 2 TO 6 DO
     BEGIN
        STGR_Comb05.Cells [vi_ContaSel1,0] := '-'+INTtoSTR(vi_ContaSel1-1)+'-';
        STGR_Comb05.Cells [vi_ContaSel1,1] := '00';
     END;
     FOR vi_ContaSel1 := 1 TO 3 DO
     BEGIN
        STGR_Comb02_05.Cells [vi_ContaSel1,0] := '-'+INTtoSTR(vi_ContaSel1-1)+'-';
        STGR_Comb02_05.Cells [vi_ContaSel1,1] := '00';
     end;
     //STGR_Comb05.ColWidths [2]:= 55;
     STGR_Comb05.RowCount := 2;
     STGR_Comb05.Repaint;
     //STGR_SOBRAS05.ColWidths [2]:= 55;
     STGR_Comb02_05.RowCount := 2;
     STGR_Comb02_05.Repaint;
     FOR vi_ContaSel1 := 3 TO 14 DO
     BEGIN
        STGR_Comb12.Cells [vi_ContaSel1,0] := '-'+INTtoSTR(vi_ContaSel1-2)+'-';
        STGR_Comb12.Cells [vi_ContaSel1,1] := '00';
     END;
     STGR_Comb12.ColWidths [0]:= 37;
     STGR_Comb12.ColWidths [1]:= 20;     
     STGR_Comb12.ColWidths [2]:= 37;
     STGR_COMB15.ColWidths [0]:= 49;
     STGR_COMB15_7i8p.RowCount := 2;
     STGR_COMB15_8i7p.RowCount := 2;
     STGR_COMB15_6i9p.RowCount := 2;
     STGR_COMB15_9i6p.RowCount := 2;
     STGR_COMB15_8I7P.ColWidths [0]:= 49;
     STGR_COMB15_7I8P.ColWidths [0]:= 49;
     STGR_COMB15_9I6P.ColWidths [0]:= 44;
     STGR_COMB15_6I9P.ColWidths [0]:= 44;
     STGR_COMB15_7i8p.Cells[0,0] := '{7i/8P}';
     STGR_COMB15_8i7p.Cells[0,0] := '{8i/7P}';
     STGR_COMB15_6i9p.Cells[0,0] := '{6i/9P}';
     STGR_COMB15_9i6p.Cells[0,0] := '{9i/6P}';
     STGR_Comb12.RowCount := 2;
     STGR_Comb12.Repaint;
     FOR vi_ContaSel1 := 1 TO 15 DO
     BEGIN
        STGR_Comb15.Cells [vi_ContaSel1,0] := '-'+INTtoSTR(vi_ContaSel1)+'-';
        STGR_Comb15.Cells [vi_ContaSel1,1] := '00';
        STGR_COMB15_7i8p.Cells [vi_ContaSel1,1] := '00';
        STGR_COMB15_8i7p.Cells [vi_ContaSel1,1] := '00';
        STGR_COMB15_6i9p.Cells [vi_ContaSel1,1] := '00';
        STGR_COMB15_9i6p.Cells [vi_ContaSel1,1] := '00';
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

     //PR_GRAVAR_DADOS ('INICIO',vi_Linhas7, 1, TRUNC(STGR_BASE.RowCount-1));
     vi_Linhas19 := 1;
          vi_Linhas29 := 1;
     vi_Linhas18 := 1;
          vi_Linhas28 := 1;
     vi_Linhas17 := 1;
     vi_Linhas27 := 1;     
     vi_Linhas16 := 1;
     vi_Linhas26 := 1;
     vi_Linhas7 := 1;
     vi_Linhas3 := 1;
     vi_Linhas2 := 1;
     vi_Linhas1 := 1;
     vi_Combinacoes1 := 1  ;
     if (CB_Sequencia.ItemIndex=2) then
          vi_Combinacoes1 := 2  ;
     vi_Contar_Comb1 :=1;
     WHILE vi_Combinacoes1 <= (TRUNC((STGR_BASE.RowCount-1)/1)) do
     BEGIN
          FOR vi_Comb12_1 := 2 TO  05 DO
          BEGIN
               FOR vi_Comb12_2 := vi_Comb12_1+1 TO  06 DO
               BEGIN
                    FOR vi_Comb12_3 := vi_Comb12_2+1 TO  07 DO
                    BEGIN
                         FOR vi_Comb12_4 := vi_Comb12_3+1  TO  08 DO
                         BEGIN
                              FOR vi_Comb12_5 := vi_Comb12_4+1 TO  09 DO
                              BEGIN
                                   FOR vi_Comb12_6 := vi_Comb12_5+1 TO  10 DO
                                   BEGIN
                                        FOR vi_Comb12_7 := vi_Comb12_6+1 TO  11 DO
                                        BEGIN
                                             FOR vi_Comb12_8 := vi_Comb12_7+1 TO  12 DO
                                             BEGIN
                                                  FOR vi_Comb12_9 := vi_Comb12_8+1  TO  13 DO
                                                  BEGIN
                                                       FOR vi_Comb12_A := vi_Comb12_9+1 TO  14 DO
                                                       BEGIN
                                                            FOR vi_Comb12_B := vi_Comb12_A+1 TO  15 DO
                                                            BEGIN
                                                                 FOR vi_Comb12_C := vi_Comb12_B+1 TO  16 DO
                                                                 BEGIN
                                                                      vi_Soma12  :=  STRtoINT(STGR_BASE.Cells[vi_Comb12_1,vi_Combinacoes1])
                                                                         + STRtoINT(STGR_BASE.Cells[vi_Comb12_2,vi_Combinacoes1])+ STRtoINT(STGR_BASE.Cells[vi_Comb12_3,vi_Combinacoes1])
                                                                         + STRtoINT(STGR_BASE.Cells[vi_Comb12_4,vi_Combinacoes1])+ STRtoINT(STGR_BASE.Cells[vi_Comb12_5,vi_Combinacoes1])
                                                                         + STRtoINT(STGR_BASE.Cells[vi_Comb12_6,vi_Combinacoes1])+ STRtoINT(STGR_BASE.Cells[vi_Comb12_7,vi_Combinacoes1])
                                                                         + STRtoINT(STGR_BASE.Cells[vi_Comb12_8,vi_Combinacoes1])+ STRtoINT(STGR_BASE.Cells[vi_Comb12_9,vi_Combinacoes1])
                                                                         + STRtoINT(STGR_BASE.Cells[vi_Comb12_A,vi_Combinacoes1])+ STRtoINT(STGR_BASE.Cells[vi_Comb12_B,vi_Combinacoes1])
                                                                         + STRtoINT(STGR_BASE.Cells[vi_Comb12_C,vi_Combinacoes1]);
                                                                      vi_Flag1 :=0;
                                                                      IF (vi_Soma12 >= STRtoINT(ED_SOMAS_12N_INI.Text)) AND (vi_Soma12 <= STRtoINT(ED_SOMAS_12N_INI.Text)) THEN
                                                                           vi_Flag1 :=1;
                                                                      IF (vi_Flag1 = 0) THEN
                                                                           CONTINUE;
                                                                      STGR_Comb12.Cells[0,vi_Linhas7]  := INTtoSTR(vi_Linhas7) ;
                                                                      STGR_Comb12.Cells[1,vi_Linhas7]  := 'F';
                                                                      STGR_Comb12.Cells[2,vi_Linhas7]  := INTtoSTR(vi_Soma12);
                                                                      STGR_Comb12.Cells[3,vi_Linhas7]  :=  STGR_BASE.Cells[Vi_Comb12_1,vi_Combinacoes1] ;
                                                                      STGR_Comb12.Cells[4,vi_Linhas7]  :=  STGR_BASE.Cells[Vi_Comb12_2,vi_Combinacoes1] ;
                                                                      STGR_Comb12.Cells[5,vi_Linhas7]  :=  STGR_BASE.Cells[Vi_Comb12_3,vi_Combinacoes1] ;
                                                                      STGR_Comb12.Cells[6,vi_Linhas7]  :=  STGR_BASE.Cells[Vi_Comb12_4,vi_Combinacoes1] ;
                                                                      STGR_Comb12.Cells[7,vi_Linhas7]  :=  STGR_BASE.Cells[Vi_Comb12_5,vi_Combinacoes1] ;
                                                                      STGR_Comb12.Cells[8,vi_Linhas7]  :=  STGR_BASE.Cells[Vi_Comb12_6,vi_Combinacoes1] ;
                                                                      STGR_Comb12.Cells[9,vi_Linhas7]  :=  STGR_BASE.Cells[Vi_Comb12_7,vi_Combinacoes1] ;
                                                                      STGR_Comb12.Cells[10,vi_Linhas7]  :=  STGR_BASE.Cells[Vi_Comb12_8,vi_Combinacoes1] ;
                                                                      STGR_Comb12.Cells[11,vi_Linhas7]  :=  STGR_BASE.Cells[Vi_Comb12_9,vi_Combinacoes1] ;
                                                                      STGR_Comb12.Cells[12,vi_Linhas7]  :=  STGR_BASE.Cells[Vi_Comb12_A,vi_Combinacoes1] ;
                                                                      STGR_Comb12.Cells[13,vi_Linhas7]  :=  STGR_BASE.Cells[Vi_Comb12_B,vi_Combinacoes1] ;
                                                                      STGR_Comb12.Cells[14,vi_Linhas7]  :=  STGR_BASE.Cells[Vi_Comb12_C,vi_Combinacoes1] ;

                                                                      // ----------------------------------------------
                                                                      // --  MONTANDO AS 03 SOBRAS DO CONJUNTO DE 15 --
                                                                      // ----------------------------------------------
                                                                      STGR_COMB12.Cells[0,VI_LINHAS7] := INTtoSTR(vi_Linhas7);
                                                                      vs_NumerosPrincipais:= STGR_BASE.Cells[Vi_Comb12_1,vi_Combinacoes1] + '-' +
                                                                      STGR_BASE.Cells[Vi_Comb12_2,vi_Combinacoes1]+ '-' +
                                                                      STGR_BASE.Cells[Vi_Comb12_3,vi_Combinacoes1]+ '-' +
                                                                      STGR_BASE.Cells[Vi_Comb12_4,vi_Combinacoes1]+ '-' +
                                                                      STGR_BASE.Cells[Vi_Comb12_5,vi_Combinacoes1]+ '-' +
                                                                      STGR_BASE.Cells[Vi_Comb12_6,vi_Combinacoes1] + '-' +
                                                                      STGR_BASE.Cells[Vi_Comb12_7,vi_Combinacoes1] + '-' +
                                                                      STGR_BASE.Cells[Vi_Comb12_8,vi_Combinacoes1] + '-' +
                                                                      STGR_BASE.Cells[Vi_Comb12_9,vi_Combinacoes1] + '-' +
                                                                      STGR_BASE.Cells[Vi_Comb12_A,vi_Combinacoes1] + '-' +
                                                                      STGR_BASE.Cells[Vi_Comb12_B,vi_Combinacoes1] + '-' +
                                                                      STGR_BASE.Cells[Vi_Comb12_C,vi_Combinacoes1] + '-';
                                                                      STGR_COMB12_S3.Cells[0,1] := INTtoSTR(vi_Linhas7);
                                                                           // pega o primeiro numero que sobrou
                                                                           VI_CONTAR :=0;
                                                                           FOR VI_CONTADOR := 2 TO 16 DO
                                                                           BEGIN
                                                                                IF (POS(STGR_BASE.Cells[VI_CONTADOR,VI_COMBINACOES1], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                                                BEGIN
                                                                                     VI_CONTAR := VI_CONTAR +1;
                                                                                     IF (VI_CONTAR=1) THEN
                                                                                     begin
                                                                                         STGR_COMB12_S3.Cells[1,1] := STGR_BASE.Cells[VI_CONTADOR,VI_COMBINACOES1];
                                                                                          VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                                               STGR_BASE.Cells[VI_CONTADOR,VI_COMBINACOES1];
                                                                                     end; // if
                                                                                END;
                                                                           END; // FOR VI_CONTADOR
                                                                           // pega o segundo numero que sobrou
                                                                           VI_CONTAR :=0;
                                                                           FOR VI_CONTADOR := 2 TO 16 DO
                                                                           BEGIN
                                                                                IF (POS(STGR_BASE.Cells[VI_CONTADOR,VI_COMBINACOES1], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                                                BEGIN
                                                                                     VI_CONTAR := VI_CONTAR +1;
                                                                                     IF (VI_CONTAR=1) THEN
                                                                                     begin
                                                                                          STGR_COMB12_S3.Cells[2,1] := STGR_BASE.Cells[VI_CONTADOR,VI_COMBINACOES1];
                                                                                          VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                                               STGR_BASE.Cells[VI_CONTADOR,VI_COMBINACOES1];
                                                                                     end; // if
                                                                                END;
                                                                           END; // FOR VI_CONTADOR
                                                                           // pega o terceiro numero que sobrou
                                                                           VI_CONTAR :=0;
                                                                           FOR VI_CONTADOR := 2 TO 16 DO
                                                                           BEGIN
                                                                                IF (POS(STGR_BASE.Cells[VI_CONTADOR,VI_COMBINACOES1], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                                                BEGIN
                                                                                     VI_CONTAR := VI_CONTAR +1;
                                                                                     IF (VI_CONTAR=1) THEN
                                                                                     begin
                                                                                          STGR_COMB12_S3.Cells[3,1] := STGR_BASE.Cells[VI_CONTADOR,VI_COMBINACOES1];
                                                                                          VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                                               STGR_BASE.Cells[VI_CONTADOR,VI_COMBINACOES1];
                                                                                     end;
                                                                                END;
                                                                           END; // FOR VI_CONTADOR
                                                                           // ------------------------
                                                                           // --  Bloco das sobras  --
                                                                           // ------------------------
                                                                           vi_Linhas1 := 1;
                                                                           STGR_COMB05.RowCount := vi_Linhas1;
                                                                           FOR vi_Comb10_1 := 2 TO  07 DO
                                                                           BEGIN
                                                                                FOR vi_Comb10_2 := vi_Comb10_1+1 TO  08 DO
                                                                                BEGIN
                                                                                     FOR vi_Comb10_3 := vi_Comb10_2+1 TO  09 DO
                                                                                     BEGIN
                                                                                          FOR vi_Comb10_4 := vi_Comb10_3+1  TO  10 DO
                                                                                          BEGIN
                                                                                               FOR vi_Comb10_5 := vi_Comb10_4+1 TO  11 DO
                                                                                               BEGIN
                                                                                                    vi_Soma12  :=  STRtoINT(STGR_BASE10.Cells[vi_Comb10_1,vi_Combinacoes1])
                                                                                                       + STRtoINT(STGR_BASE10.Cells[vi_Comb10_2,vi_Combinacoes1])+ STRtoINT(STGR_BASE10.Cells[vi_Comb10_3,vi_Combinacoes1])
                                                                                                       + STRtoINT(STGR_BASE10.Cells[vi_Comb10_4,vi_Combinacoes1])+ STRtoINT(STGR_BASE10.Cells[vi_Comb10_5,vi_Combinacoes1]);
                                                                                                    vi_Flag1 :=0;
                                                                                                    IF (vi_Soma12 >= STRtoINT(ED_SOMAS_05N1_INI.Text)) AND (vi_Soma12 <= STRtoINT(ED_SOMAS_05N1_INI.Text)) THEN
                                                                                                         vi_Flag1 :=1;
                                                                                                    IF (vi_Flag1 = 0) THEN
                                                                                                         CONTINUE;
                                                                                                    STGR_COMB05.Cells[0,vi_Linhas1]  := INTtoSTR(vi_Linhas7) ;
                                                                                                    STGR_COMB05.Cells[1,vi_Linhas1]  := INTtoSTR(vi_Soma12);
                                                                                                    STGR_COMB05.Cells[2,vi_Linhas1]  :=  STGR_BASE10.Cells[Vi_Comb10_1,vi_Combinacoes1] ;
                                                                                                    STGR_COMB05.Cells[3,vi_Linhas1]  :=  STGR_BASE10.Cells[Vi_Comb10_2,vi_Combinacoes1] ;
                                                                                                    STGR_COMB05.Cells[4,vi_Linhas1]  :=  STGR_BASE10.Cells[Vi_Comb10_3,vi_Combinacoes1] ;
                                                                                                    STGR_COMB05.Cells[5,vi_Linhas1]  :=  STGR_BASE10.Cells[Vi_Comb10_4,vi_Combinacoes1] ;
                                                                                                    STGR_COMB05.Cells[6,vi_Linhas1]  :=  STGR_BASE10.Cells[Vi_Comb10_5,vi_Combinacoes1] ;
                                                                                                    vi_Linhas2 := 1;
                                                                                                    STGR_Comb02_05.RowCount := vi_Linhas2;
                                                                                                    STGR_Comb02_05.Repaint;
                                                                                                    STGR_COMB05.RowCount := vi_Linhas1;
                                                                                                    STGR_COMB05.Repaint;
                                                                                                    FOR vi_Comb02_1 := 2 TO  05 DO
                                                                                                    BEGIN
                                                                                                         FOR vi_Comb02_2 := vi_Comb02_1+1 TO  06 DO
                                                                                                         BEGIN
                                                                                                              STGR_Comb02_05.Cells[0,vi_Linhas2]  := INTtoSTR(vi_Linhas7) ;
                                                                                                              STGR_Comb02_05.Cells[1,vi_Linhas2]  :=  STGR_COMB05.Cells[Vi_Comb02_1,vi_Linhas1] ;
                                                                                                              STGR_Comb02_05.Cells[2,vi_Linhas2]  :=  STGR_COMB05.Cells[Vi_Comb02_2,vi_Linhas1] ;
                                                                                                              STGR_Comb02_05.Repaint;
                                                                                                              for vi_Comb15_2:=1 to 3 do
                                                                                                              begin
                                                                                                                   for vi_Comb15_1:=1 to 12 do
                                                                                                                   begin
                                                                                                                        STGR_COMB15.Cells[0,vi_Linhas3]  := INTtoSTR(vi_Linhas3) ;
                                                                                                                        STGR_COMB15.Cells[vi_Comb15_1,vi_Linhas3]  := STGR_Comb12.Cells[vi_Comb15_1+2,vi_Linhas7];
                                                                                                                        STGR_COMB15.Cells[13,vi_Linhas3] := STGR_Comb12_S3.Cells[vi_Comb15_2,1];
                                                                                                                   end; // for
                                                                                                                   STGR_COMB15.Cells[14,vi_Linhas3] := STGR_Comb02_05.Cells[1,vi_Linhas2];
                                                                                                                   STGR_COMB15.Cells[15,vi_Linhas3] := STGR_Comb02_05.Cells[2,vi_Linhas2];
                                                                                                                   vi_ContaSel1 := 0;
                                                                                                                   // CONTANDO  QUANTIDADE DE PARES
                                                                                                                   for vi_Comb15_1:=1 to 15 do
                                                                                                                   begin
                                                                                                                        IF (STRtoINT(STGR_COMB15.Cells[vi_Comb15_1,vi_Linhas3]) MOD 2)=0 THEN
                                                                                                                        BEGIN
                                                                                                                             vi_ContaSel1:= vi_ContaSel1 +1;
                                                                                                                        END;// IF
                                                                                                                   END; // FOR
                                                                                                                   vi_Flag1 := 0;
                                                                                                                   STGR_Comb02_05.Repaint;
                                                                                                                   Case vi_Contasel1 OF
                                                                                                                   9:
                                                                                                                        BEGIN
                                                                                                                             IF ((NUMEROS_FIXOS1(vi_Linhas3,9)) = 1) AND ((NUMEROS_FIXOS2(vi_Linhas3,9)) = 1) THEN
                                                                                                                             BEGIN
                                                                                                                                  PR_ORDENAR_SIMULACAO_15 (vi_Linhas3);
                                                                                                                                  vi_Flag1 := 1;
                                                                                                                                  for vi_Comb15_1:=1 to 15 do
                                                                                                                                  begin
                                                                                                                                       STGR_COMB15_6i9p.Cells[vi_Comb15_1,vi_Linhas29] :=  STGR_COMB15.Cells[vi_Comb15_1,vi_Linhas3] ;
                                                                                                                                  end; // for
                                                                                                                                  STGR_COMB15_6i9p.Cells[0,vi_Linhas29]  := INTtoSTR(vi_Linhas19) ;
                                                                                                                                      vi_Linhas19 := vi_Linhas19 +1;
                                                                                                                                      vi_Linhas29 := vi_Linhas29 +1;
                                                                                                                                      STGR_COMB15_6i9p.RowCount := vi_Linhas29;
                                                                                                                                      //STGR_COMB15_6i9p.Repaint;
                                                                                                                                  if (vi_Linhas29 mod 9) =0 then
                                                                                                                                  begin
                                                                                                                                       STGR_COMB15_6i9p.Repaint;
                                                                                                                                       PR_GRAVAR_DADOS_SMFX (9);
                                                                                                                                       vi_Linhas29 := 1;
                                                                                                                                  end; // if
                                                                                                                             END; // IF (NUMEROS_FIXOS1
                                                                                                                        END; //9
                                                                                                                   8:
                                                                                                                        BEGIN
                                                                                                                             PR_ORDENAR_SIMULACAO_15 (vi_Linhas3);
                                                                                                                             IF ((NUMEROS_FIXOS1(vi_Linhas3,8)) = 1) AND ((NUMEROS_FIXOS2(vi_Linhas3,8)) = 1) THEN
                                                                                                                             BEGIN
                                                                                                                                  vi_Flag1 := 1;
                                                                                                                                  for vi_Comb15_1:=1 to 15 do
                                                                                                                                  begin
                                                                                                                                       STGR_COMB15_7i8p.Cells[vi_Comb15_1,vi_Linhas26] :=  STGR_COMB15.Cells[vi_Comb15_1,vi_Linhas3] ;
                                                                                                                                  end; // for
                                                                                                                                  STGR_COMB15_7i8p.Cells[0,vi_Linhas26]  := INTtoSTR(vi_Linhas16) ;
                                                                                                                                      vi_Linhas16 := vi_Linhas16 +1;
                                                                                                                                      vi_Linhas26 := vi_Linhas26 +1;
                                                                                                                                      STGR_COMB15_7i8p.RowCount := vi_Linhas26;
                                                                                                                                      //STGR_COMB15_7i8p.Repaint;
                                                                                                                                  if (vi_Linhas26 mod 9) =0 then
                                                                                                                                  begin
                                                                                                                                       STGR_COMB15_7i8p.Repaint;
                                                                                                                                       PR_GRAVAR_DADOS_SMFX (8);
                                                                                                                                       vi_Linhas26 := 1;
                                                                                                                                  end; // if
                                                                                                                             end; // IF (NUMEROS_FIXOS1
                                                                                                                        END; //6
                                                                                                                   7:
                                                                                                                        BEGIN
                                                                                                                             PR_ORDENAR_SIMULACAO_15 (vi_Linhas3);
                                                                                                                             IF ((NUMEROS_FIXOS1(vi_Linhas3,7)) = 1) AND ((NUMEROS_FIXOS2(vi_Linhas3,7)) = 1) THEN
                                                                                                                             BEGIN
                                                                                                                                  vi_Flag1 := 1;
                                                                                                                                  for vi_Comb15_1:=1 to 15 do
                                                                                                                                  begin
                                                                                                                                       STGR_COMB15_8I7P.Cells[vi_Comb15_1,vi_Linhas27] :=  STGR_COMB15.Cells[vi_Comb15_1,vi_Linhas3] ;
                                                                                                                                  end; // for
                                                                                                                                  STGR_COMB15_8I7P.Cells[0,vi_Linhas27]  := INTtoSTR(vi_Linhas17) ;
                                                                                                                                      vi_Linhas17 := vi_Linhas17 +1;
                                                                                                                                      vi_Linhas27 := vi_Linhas27 +1;
                                                                                                                                      STGR_COMB15_8I7P.RowCount := vi_Linhas27;
                                                                                                                                      //STGR_COMB15_8I7P.Repaint;
                                                                                                                                  if (vi_Linhas27 mod 9) =0 then
                                                                                                                                  begin
                                                                                                                                       STGR_COMB15_8I7P.Repaint;
                                                                                                                                       PR_GRAVAR_DADOS_SMFX (7);
                                                                                                                                       vi_Linhas27 := 1;
                                                                                                                                  end; // if
                                                                                                                             END; // IF (NUMEROS_FIXOS1
                                                                                                                        END; //7
                                                                                                                   6:
                                                                                                                        BEGIN
                                                                                                                             PR_ORDENAR_SIMULACAO_15 (vi_Linhas3);
                                                                                                                             IF ((NUMEROS_FIXOS1(vi_Linhas3,6)) = 1) AND ((NUMEROS_FIXOS2(vi_Linhas3,6)) = 1) THEN
                                                                                                                             BEGIN
                                                                                                                                  vi_Flag1 := 1;
                                                                                                                                  for vi_Comb15_1:=1 to 15 do
                                                                                                                                  begin
                                                                                                                                       STGR_COMB15_9i6p.Cells[vi_Comb15_1,vi_Linhas28] :=  STGR_COMB15.Cells[vi_Comb15_1,vi_Linhas3] ;
                                                                                                                                  end; // for
                                                                                                                                  STGR_COMB15_9i6p.Cells[0,vi_Linhas28]  := INTtoSTR(vi_Linhas18) ;
                                                                                                                                      vi_Linhas18 := vi_Linhas18 +1;
                                                                                                                                      vi_Linhas28 := vi_Linhas28 +1;
                                                                                                                                      STGR_COMB15_9i6p.RowCount := vi_Linhas28;
                                                                                                                                      //STGR_COMB15_9i6p.Repaint;
                                                                                                                                  if (vi_Linhas28 mod 9) =0 then
                                                                                                                                  begin
                                                                                                                                       STGR_COMB15_9i6p.Repaint;
                                                                                                                                       PR_GRAVAR_DADOS_SMFX (6);
                                                                                                                                       vi_Linhas28 := 1;
                                                                                                                                  end; // if
                                                                                                                             END; // IF (NUMEROS_FIXOS1
                                                                                                                        END; //8
                                                                                                                   END; // CASE                                                                                                                        

                                                                                                                  { if (vi_Flag1 =1) then
                                                                                                                        VI_LINHAS3 := VI_LINHAS3 + 1;
                                                                                                                  STGR_COMB15.RowCount := VI_LINHAS3;   }
                                                                                                                   STGR_Comb02_05.Repaint;
                                                                                                              END; // FOR
                                                                                                              VI_LINHAS2 := VI_LINHAS2 + 1;
                                                                                                         END; // FOR vi_Comb02_2
                                                                                                    END; // FOR vi_Comb02_1
                                                                                                    VI_LINHAS1 := VI_LINHAS1 +1;
                                                                                               END; // FOR vi_Comb10_5
                                                                                          END; // FOR vi_Comb10_4
                                                                                     END; // FOR vi_Comb10_3
                                                                                END; // FOR vi_Comb10_2
                                                                           END; // FOR vi_Comb10_1
                                                                                                             // STGR_COMB15_8I7P.RowCount := vi_Linhas17;
                                                                                                             STGR_COMB15.RowCount := 2;//VI_LINHAS3;
                                                                                                              STGR_COMB15_8I7P.Repaint;
                                                                                                             //TGR_COMB15.Repaint;

                                                                                                         STGR_Comb02_05.RowCount := vi_Linhas2;
                                                                                                         STGR_Comb02_05.Repaint;
                                                                                                         STGR_COMB05.RowCount := vi_Linhas1;
                                                                                                         STGR_COMB05.Repaint;
                                                                                                         STGR_COMB12_S3.Repaint;
                                                                                                         STGR_COMB12.Repaint;
                                                                                                         sleep(10);
                                                                      VI_LINHAS7 := VI_LINHAS7 +1;
                                                                      STGR_COMB12.RowCount := VI_LINHAS7;
                                                                      //PR_GRAVAR_DADOS ('NAO', VI_LINHAS7, VI_COMBINACOES1, TRUNC(STGR_BASE_17.RowCount-1));
                                                                 END; // FOR vi_Comb12_C
                                                            END; // FOR vi_Comb12_B
                                                       END; // FOR vi_Comb12_A
                                                  END; // FOR vi_Comb12_9
                                             END; // FOR vi_Comb12_8
                                        END; // FOR vi_Comb12_7
                                        LA_TOTAL_Comb.Caption := 'TOTAL PROCESSADOS: '+INTtoSTR(vi_Combinacoes1)+'   ';
                                        LA_TOTAL_Comb.Repaint;
                                        LA_TOTAL_Comb.Repaint;
                                        LA_TOTAL_Comb.Repaint;
                                   END; // FOR vi_Comb12_6
                              END; // FOR vi_Comb12_5
                         END; // FOR vi_Comb12_4
                    END; // FOR vi_Comb12_3
               END; // FOR vi_Comb12_2
               STGR_Comb05.Repaint;
               STGR_Comb12.Repaint;
               STGR_Comb02_05.Repaint;
               PGBR_GERARCOMB0.Position :=  TRUNC(vi_Combinacoes1/(STGR_BASE.RowCount-1)*100);
               sleep(12);
               if  (vi_Combinacoes1 MOD 2 = 0) then
               BEGIN
                   Self.WindowState := wsMinimized;
                   Self.WindowState :=  wsNormal;
                   SELF.Repaint;
               END; // IF
          END; // FOR vi_Comb12_1
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
          STGR_COMB15_8I7P.RowCount := vi_Linhas26;
          PR_GRAVAR_DADOS_SMFX (7);
          STGR_COMB15_7I8P.RowCount := vi_Linhas27;
          PR_GRAVAR_DADOS_SMFX (8);
          STGR_COMB15_6I9P.RowCount := vi_Linhas29;
          PR_GRAVAR_DADOS_SMFX (9);
          STGR_COMB15_9I6P.RowCount := vi_Linhas28;
          PR_GRAVAR_DADOS_SMFX (6);
     //
     STGR_Comb05.RowCount := vi_Linhas1;
     STGR_Comb12.RowCount := vi_Linhas7;
     STGR_Comb02_05.RowCount := vi_Linhas2;
     TRY
           STGR_Comb12.FixedRows := 1;
           STGR_Comb05.FixedRows := 1;
           STGR_Comb02_05.FixedRows := 1 ;
     EXCEPT
          //
     END; // TRY
     STGR_Comb05.Repaint;
     STGR_Comb12.Repaint;
     STGR_Comb02_05.Repaint ;
     PGBR_GERARCOMB0.Position :=  100;
  // PR_GRAVAR_DADOS ('FIM', vi_Linhas7, vi_Combinacoes1, TRUNC(STGR_BASE.RowCount-1));

     LA_rTOTAL_Comb.Caption:= INTtoSTR(vi_Contar_Comb1-1)+'     ';
     LA_rTOT_CALC.Caption  := INTtoSTR(vi_Linhas17*17);
     LA_rLogic_Comp.Caption:= INTtoSTR(vi_Linhas17*8);
     LA_rATRIBUICAO_DADOS.Caption  := INTtoSTR(vi_Linhas17*50);
     LA_rTOT_PROCESSAMENTO.Caption := INTtoSTR( (vi_Linhas16-1+vi_Linhas17-1+vi_Linhas18-1+vi_Linhas19-1)+((vi_Linhas16-1+vi_Linhas17-1+vi_Linhas18-1+vi_Linhas19-1)*17)+((vi_Linhas16-1+vi_Linhas17-1+vi_Linhas18-1+vi_Linhas19-1)*8)+((vi_Linhas16-1+vi_Linhas17-1+vi_Linhas18-1+vi_Linhas19-1)*50) );

     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;
     LA_gFIM_GERAR.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
     // ==> ACERTANDO O PAINEL DE ENCERRAMENTO
     BBT_RECOMECAR.Enabled := false;
     BBT_PREPARAR_MENU.Enabled := false;
     LA_rQTD_Comb.Caption    :=  INTtoSTR(vi_Linhas16-1+vi_Linhas17-1+vi_Linhas18-1+vi_Linhas19-1);

 //  SELF.PR_SIMULAR_RECUPERANDODADOS('');
 //                SELF.IBQ_CombINACOES.SQL.Clear;
 //            SELF.IBQ_CombINACOES.SQL.Add('SELECT COUNT(distinct(dADOS_05 || '' '' || DADOS_12)) AS SOMADADOS FROM FILTRO_19d15_1_DADOS_GR;')  ;
 //            SELF.IBQ_CombINACOES.Open;
 //            IBQ_CombINACOES.First;
//             vi_Contar_Comb1 := IBQ_CombINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
            SELF.IBQ_CombINACOES.SQL.Clear;
            SELF.IBQ_CombINACOES.SQL.Add('UPDATE GERADOR_RESULT_DIV_SMFX_DEF SET HORA_TERMINO ='''+FORMATDATETIME('h:n:s',time())+''', QTD_DADOS= ''' +INTtoSTR(vi_Contar_Comb1)+ ''';')  ;
            SELF.IBQ_CombINACOES.ExecSQL;
            SELF.IBQ_CombINACOES.SQL.Clear;
            SELF.IBQ_CombINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_CombINACOES.ExecSQL;
     LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
            SELF.IBQ_CombINACOES.SQL.Clear;
            SELF.IBQ_CombINACOES.SQL.Add('UPDATE GERADOR_RESULT_DIV_SMFX_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_CombINACOES.ExecSQL;
            SELF.IBQ_CombINACOES.SQL.Clear;
            SELF.IBQ_CombINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_CombINACOES.ExecSQL;   
     PA_REMOVEUREPET.Left := 1100;

end;




procedure T_F_Gerador_ResDiv_SmFx1.BBT_PA_REMOVEUREPETClick(Sender: TObject);
begin
     PA_REMOVEUREPET.Left := 5000;
     BBT_RECOMECAR.Enabled := false;
     BBT_PREPARAR_MENU.Enabled := false;
     BBT_GERAR_MENU.Enabled := false;
     PA_INICIAL.Enabled := TRUE;
     BT_NOVA_SIMULACAO.Enabled := false;
     BT_REAJUSTAR.Enabled := TRUE;
     BBT_CARREGAR.Enabled := false;
     PA_INICIAL.Left := 520;
end;




PROCEDURE T_F_Gerador_ResDiv_SmFx1.PR_SIMULAR_RECUPERANDODADOS(VC_TIPO: STRING);
VAR
     VI_AN_Comb1, vi_Contar : INTEGER;
BEGIN
            STGR_Comb05.RowCount := 2;
            STGR_Comb12.RowCount := 2;
//       SELF.PR_LIMPAR_GRID10();
       IF (VC_TIPO='SIMULACAO') THEN SHOWMESSAGE('DADOS-2 - Retirando os repetidos');
       SELF.IBQ_CombINACOES.Close;
       SELF.IBQ_CombINACOES.SQL.Clear;
       SELF.IBQ_CombINACOES.SQL.Add('SELECT COUNT(distinct(dADOS_05 || '' '' || DADOS_12)) AS SOMADADOS FROM FILTRO_19d15_1_DADOS_GR;')  ;
       SELF.IBQ_CombINACOES.Open;
       vi_Contar := SELF.IBQ_CombINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
       SELF.IBQ_CombINACOES.SQL.Clear;
       SELF.IBQ_CombINACOES.SQL.Add('SELECT DADOS_05, DADOS_12, DADOS_NS, NS01, NS02, NS03, NS04, NS05, NS06, NS07, NS08, N_1, N_2, N_3, N_4, N_5 FROM FILTRO_19d15_1_DADOS_GR  ORDER BY DADOS_05;')  ;
       SELF.IBQ_CombINACOES.Open;
           IF (VC_TIPO='SIMULACAO') THEN SHOWMESSAGE('Recuperando os dados');
       // ********************
       // **   ENCERRANDO   **
       // ********************
           Self.Repaint;
           Self.WindowState := wsMinimized;
           Self.WindowState :=  wsNormal;
           Self.Repaint;
       SELF.IBQ_CombINACOES.First;
       FOR VI_AN_Comb1:= 1 TO  vi_Contar DO
       BEGIN
           STGR_Comb05.Cells [0, VI_AN_Comb1] := INTtoSTR(VI_AN_Comb1);
           STGR_Comb05.Cells [3, VI_AN_Comb1] :=  IBQ_CombINACOES.FIELDBYNAME('N_1').AsString;
           STGR_Comb05.Cells [4, VI_AN_Comb1] :=  IBQ_CombINACOES.FIELDBYNAME('N_2').AsString;
           STGR_Comb05.Cells [5, VI_AN_Comb1] :=  IBQ_CombINACOES.FIELDBYNAME('N_3').AsString;
           STGR_Comb05.Cells [6, VI_AN_Comb1] :=  IBQ_CombINACOES.FIELDBYNAME('N_4').AsString;
           STGR_Comb05.Cells [7, VI_AN_Comb1] :=  IBQ_CombINACOES.FIELDBYNAME('N_5').AsString;


                STGR_Comb12.Cells [0, VI_AN_Comb1] := INTtoSTR(VI_AN_Comb1);
                STGR_Comb12.Cells [1, VI_AN_Comb1] := COPY(SELF.IBQ_CombINACOES.FIELDBYNAME('DADOS_12').AsString,1,2);
                STGR_Comb12.Cells [2, VI_AN_Comb1] := COPY(SELF.IBQ_CombINACOES.FIELDBYNAME('DADOS_12').AsString,4,2);
                STGR_Comb12.Cells [3, VI_AN_Comb1] := COPY(SELF.IBQ_CombINACOES.FIELDBYNAME('DADOS_12').AsString,7,2);
                STGR_Comb12.Cells [4, VI_AN_Comb1] := COPY(SELF.IBQ_CombINACOES.FIELDBYNAME('DADOS_12').AsString,10,2);
                STGR_Comb12.Cells [5, VI_AN_Comb1] := COPY(SELF.IBQ_CombINACOES.FIELDBYNAME('DADOS_12').AsString,13,2);
                STGR_Comb12.Cells [6, VI_AN_Comb1] := COPY(SELF.IBQ_CombINACOES.FIELDBYNAME('DADOS_12').AsString,16,2);
                STGR_Comb12.Cells [7, VI_AN_Comb1] := COPY(SELF.IBQ_CombINACOES.FIELDBYNAME('DADOS_12').AsString,19,2);
                STGR_Comb12.Cells [8, VI_AN_Comb1] := COPY(SELF.IBQ_CombINACOES.FIELDBYNAME('DADOS_12').AsString,22,2);
                STGR_Comb12.Cells [9, VI_AN_Comb1] := COPY(SELF.IBQ_CombINACOES.FIELDBYNAME('DADOS_12').AsString,25,2);
                STGR_Comb12.Cells [10, VI_AN_Comb1] := COPY(SELF.IBQ_CombINACOES.FIELDBYNAME('DADOS_12').AsString,28,2);
                STGR_Comb12.Cells [11, VI_AN_Comb1] := COPY(SELF.IBQ_CombINACOES.FIELDBYNAME('DADOS_12').AsString,31,2);
                STGR_Comb12.Cells [12, VI_AN_Comb1] := COPY(SELF.IBQ_CombINACOES.FIELDBYNAME('DADOS_12').AsString,34,2);

           STGR_Comb12.RowCount := VI_AN_Comb1;
           STGR_Comb05.RowCount := VI_AN_Comb1;
           SELF.IBQ_CombINACOES.Next;
       END; // FOR VI_AN_Comb1
           STGR_Comb12.RowCount := VI_AN_Comb1;
           STGR_Comb05.RowCount := VI_AN_Comb1;
           STGR_Comb12.FixedRows := 1;
           STGR_Comb05.FixedRows := 1;
       SELF.IBQ_CombINACOES.SQL.Clear;
       SELF.IBQ_CombINACOES.SQL.Add('SELECT * FROM FILTRO_19d15_1_DADOS_GR;')  ;
       SELF.IBQ_CombINACOES.Open;
           Self.Repaint;
           Self.WindowState := wsMinimized;
           Self.WindowState :=  wsNormal;
           Self.Repaint;
     SHOWMESSAGE('DADOS CARREGADOS');           
END; //    PROCEDCURE SIMULAR_RECUPERANDODADOS();



procedure T_F_Gerador_ResDiv_SmFx1.BT_REAJUSTARClick(Sender: TObject);
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



procedure T_F_Gerador_ResDiv_SmFx1.BBT_CARREGARClick(Sender: TObject);
begin
    BBT_CANCELAR_SAIR.Visible := TRUE;
            STGR_Comb05.RowCount := 2;
            STGR_Comb12.RowCount := 2;
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
            SELF.IBQ_CombINACOES.SQL.Add('UPDATE GERADOR_RESULT_DIV_SMFX_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_CombINACOES.ExecSQL;
            SELF.IBQ_CombINACOES.SQL.Clear;
            SELF.IBQ_CombINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_CombINACOES.ExecSQL;
     SELF.PR_SIMULAR_RECUPERANDODADOS('');
end;



procedure T_F_Gerador_ResDiv_SmFx1.BBT_GERAR_SAIRClick(Sender: TObject);
begin
     PA_GERAR.Enabled := false;
     PA_GERAR.Left := 4500;    ;
     PA_GERAR.Repaint;
end;



procedure T_F_Gerador_ResDiv_SmFx1.TRB_SOMA_12NChange(Sender: TObject);
begin
     IF TRB_SOMA_12N.Position = 1 THEN
          ED_SOMAS_12N_INI.Text := '155';
     IF TRB_SOMA_12N.Position = 2 THEN
          ED_SOMAS_12N_INI.Text := '156';
     IF TRB_SOMA_12N.Position = 3 THEN
          ED_SOMAS_12N_INI.Text := '157';

     IF TRB_SOMA_12N.Position = 1 THEN
          TRB_SOMA_03N.Position :=3;
     IF TRB_SOMA_12N.Position = 2 THEN
          TRB_SOMA_03N.Position :=2;
     IF TRB_SOMA_12N.Position = 3 THEN
          TRB_SOMA_03N.Position :=1;
end;


procedure T_F_Gerador_ResDiv_SmFx1.TRB_SOMA_03NChange(Sender: TObject);
begin
     IF TRB_SOMA_03N.Position = 1 THEN
          ED_SOMAS_03N_INI.Text := '39';
     IF TRB_SOMA_03N.Position = 2 THEN
          ED_SOMAS_03N_INI.Text := '40';
     IF TRB_SOMA_03N.Position = 3 THEN
          ED_SOMAS_03N_INI.Text := '41';
end;


procedure T_F_Gerador_ResDiv_SmFx1.TRB_SOMAS_05N1Change(Sender: TObject);
begin
     IF TRB_SOMAS_05N1.Position = 1 THEN
          ED_SOMAS_05N1_INI.Text := '64';
     IF TRB_SOMAS_05N1.Position = 2 THEN
          ED_SOMAS_05N1_INI.Text := '65';
     IF TRB_SOMAS_05N1.Position = 3 THEN
          ED_SOMAS_05N1_INI.Text := '66';

     IF TRB_SOMAS_05N1.Position = 1 THEN
          TRB_SOMAS_05N2.Position := 3;
     IF TRB_SOMAS_05N1.Position = 2 THEN
          TRB_SOMAS_05N2.Position := 2;
     IF TRB_SOMAS_05N1.Position = 3 THEN
          TRB_SOMAS_05N2.Position := 1;
end;


procedure T_F_Gerador_ResDiv_SmFx1.TRB_SOMAS_05N2Change(Sender: TObject);
begin
     IF TRB_SOMAS_05N2.Position = 1 THEN
          ED_SOMAS_05N2_INI.Text := '63';
     IF TRB_SOMAS_05N2.Position = 2 THEN
          ED_SOMAS_05N2_INI.Text := '64';
     IF TRB_SOMAS_05N2.Position = 3 THEN
          ED_SOMAS_05N2_INI.Text := '65';
end;




procedure T_F_Gerador_ResDiv_SmFx1.BBT_BLOCO_NOTASClick(Sender: TObject);
var
    vi_Contar, vc_qtd_pares : INTEGER;
    vc_Nome_Tabela, VC_COMBINACOES2, vcTitulo : string;
begin
     for vc_qtd_pares := 6 to 9 do
     begin
          CASE vc_qtd_pares OF
               9:  vc_Nome_Tabela := 'GERADOR_RESULT_DIV_SMFX_6I9P';
               8:  vc_Nome_Tabela := 'GERADOR_RESULT_DIV_SMFX_7I8P';
               7:  vc_Nome_Tabela := 'GERADOR_RESULT_DIV_SMFX_8I7P';
               6:  vc_Nome_Tabela := 'GERADOR_RESULT_DIV_SMFX_9I6P';
          END; //CASE
          MEM_COMBINACOES_TODAS.Clear;
          SELF.IBQ_CombINACOES.Close;
          SELF.IBQ_CombINACOES.SQL.Clear;
          SELF.IBQ_CombINACOES.SQL.Add('SELECT COUNT(distinct(DADOS)) AS SOMADADOS FROM ' +vc_Nome_Tabela+ ';')  ;
          SELF.IBQ_CombINACOES.Prepare;
          SELF.IBQ_CombINACOES.Open;
          vi_Contar := SELF.IBQ_CombINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
          CASE vc_qtd_pares OF
               9:  vcTitulo := 'GERADOR 6Impares e 9Pares';
               8:  vcTitulo := 'GERADOR 7Impares e 8Pares';
               7:  vcTitulo := 'GERADOR 8Impares e 7Pares';
               6:  vcTitulo := 'GERADOR 9Impares e 6Pares';
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
    winExec('Notepad.exe C:\CXLOTOFACIL\GERADOR_RESULT_DIV_SMFX_6I9P.TXT', sw_shownormal);
    winExec('Notepad.exe C:\CXLOTOFACIL\GERADOR_RESULT_DIV_SMFX_7I8P.TXT', sw_shownormal);
    winExec('Notepad.exe C:\CXLOTOFACIL\GERADOR_RESULT_DIV_SMFX_8I7P.TXT', sw_shownormal);
    winExec('Notepad.exe C:\CXLOTOFACIL\GERADOR_RESULT_DIV_SMFX_9I6P.TXT', sw_shownormal);
   showmessage('BLOCO DE NOTAS GERADO');
end;

procedure T_F_Gerador_ResDiv_SmFx1.Button6Click(Sender: TObject);
var
r : TIdIPWatch;
begin
 r := TIdIPWatch.Create(nil);
 Label10.Caption := r.LocalIP;
 Label10.Repaint;
 r.free;
end;

end.
