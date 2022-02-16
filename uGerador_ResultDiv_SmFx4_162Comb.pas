unit uGerador_ResultDiv_SmFx4_162Comb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, DB, strutils,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, IdBaseComponent, IdComponent, IdIPWatch ;

type
  T_F_Gerador_ResDiv_SmFx4 = class(TForm)
    PA_RemoveuRepetidos: TPanel;
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
    BBT_RemoveuRepetidos: TBitBtn;
    PA_Inicial: TPanel;
    Label55: TLabel;
    BTN_NovaSimulacao: TButton;
    BTN_Reajustar: TButton;
    BTN_Sair: TButton;
    BBT_Cancelar: TBitBtn;
    MEM_Combinacoes_Todas: TMemo;
    PA_Topo: TPanel;
    LA_Titulo: TLabel;
    BBT_Close: TImage;
    BBT_Recomecar: TBitBtn;
    PA_Resultado: TPanel;
    STGR_Comb15: TStringGrid;
    STGR_Todos_Numeros: TStringGrid;
    PA_ExecutarFiltro: TPanel;
    BBT_PrepararMenu: TBitBtn;
    BBT_GerarMenu: TBitBtn;
    PANEL_Titulo_Simulacao: TPanel;
    LA_Gerar_Comb: TLabel;
    LA_Total_Comb: TLabel;
    PGBR_GerarComb0: TProgressBar;
    PA_Gerar: TPanel;
    Panel2: TPanel;
    Label63: TLabel;
    BBT_Gerar: TBitBtn;
    BBT_Gerar_Sair: TBitBtn;
    PA_Preparar: TPanel;
    Panel1: TPanel;
    Label2: TLabel;
    BBT_Preparar1: TBitBtn;
    BBT_Gerar_Voltar: TBitBtn;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBQ_Combinacoes: TIBQuery;
    BBT_CancelarSair: TBitBtn;
    SCBX_Gabarito: TScrollBox;
    Label7: TLabel;
    STGR_Base: TStringGrid;
    STGR_Base10: TStringGrid;
    PA_Fixos: TPanel;
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
    BBT_BlocoNotas: TBitBtn;
    SCBX_dados: TScrollBox;
    STGR_Comb08_I: TStringGrid;
    STGR_Comb07_P: TStringGrid;
    STGR_Comb05_I: TStringGrid;
    STGR_Comb05_P: TStringGrid;
    STGR_Comb15_8I7P: TStringGrid;
    LA_rTOTAL_100REPET: TLabel;
    Label50: TLabel;
    STGR_Comb15_7i8p: TStringGrid;
    BTN_BlocoDeNotas1: TButton;
    STGR_Comb03_I: TStringGrid;
    STGR_Comb03I_Excluidos: TStringGrid;
    STGR_Comb02_P: TStringGrid;
    STGR_Comb03P_Excluidos: TStringGrid;
    STGR_Comb02_col1: TStringGrid;
    STGR_COMB02_PSobras: TStringGrid;
    ED_FIXOS_03_8i7p: TEdit;
    Label40: TLabel;
    CB_SomaTotal_15n: TComboBox;
    btn_Carregar: TButton;
    STGR_Comb02_col2: TStringGrid;
    STGR_Comb02_col3: TStringGrid;
    STGR_Comb03_Sobras: TStringGrid;
    STGR_Comb03_I_Sobras: TStringGrid;
    STGR_Comb02_P_Sobras: TStringGrid;
    Bevel1: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    STGR_Comb05_I_b: TStringGrid;
    STGR_Comb05_P_b: TStringGrid;
    Bevel2: TBevel;
    Label10: TLabel;
    Label11: TLabel;
    Bevel3: TBevel;
    Label12: TLabel;
    STGR_Comb02_Fase3: TStringGrid;
    Label13: TLabel;
    procedure BBT_Preparar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BBT_CloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBT_PrepararMenuClick(Sender: TObject);
    procedure BTN_NovaSimulacaoClick(Sender: TObject);
    procedure BBT_Gerar_VoltarClick(Sender: TObject);
    procedure BTN_SairClick(Sender: TObject);
    procedure BBT_CancelarClick(Sender: TObject);
    procedure BBT_GerarClick(Sender: TObject);
    procedure BBT_GerarMenuClick(Sender: TObject);
    procedure BBT_RemoveuRepetidosClick(Sender: TObject);
    procedure BTN_ReajustarClick(Sender: TObject);
    procedure BBT_CARREGARClick(Sender: TObject);
    procedure BBT_Gerar_SairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BBT_BlocoNotasClick(Sender: TObject);
    procedure btn_CarregarClick(Sender: TObject);
  private
    F_MODALIDADE: STRING;
    { Private declarations }
    procedure Set_MODALIDADE(const Value: STRING);
    PROCEDURE PR_ZERAR_VALIDA_ETAPA_1;
    FUNCTION FN_VALIDAR_ETAPA_2(vi_Linha: Integer) :Boolean;
    FUNCTION FN_VALIDAR_ETAPA_3(vi_Linha: Integer) :Boolean;
    FUNCTION FN_VALIDAR_ETAPA_6(vi_Linha: Integer):Boolean;      
    FUNCTION FN_VALIDAR_ETAPA_8(vi_Linha: Integer):Boolean;
  public
    { Public declarations }
     PROPERTY _MODALIDADE : STRING  read F_MODALIDADE write Set_MODALIDADE;
  end;

var
  _F_Gerador_ResDiv_SmFx4: T_F_Gerador_ResDiv_SmFx4;

implementation

{$R *.dfm}


procedure T_F_Gerador_ResDiv_SmFx4.Set_MODALIDADE(const Value: STRING);
begin
  F_MODALIDADE := Value;
end;





procedure T_F_Gerador_ResDiv_SmFx4.FormCreate(Sender: TObject);
begin
     SELF.ClientWidth  := 1495;
     SELF.ClientHeight := 660;
     SELF.Top  := 59;
     SELF.Left := 9;
   //  SELF.Visible := TRUE;
     bbt_close.Left := SELF.ClientWidth-35;
          PA_RemoveuRepetidos.Left := 5000;
     PA_Preparar.Left := 5000;
     PA_Gerar.Left := 5000;
     SCBX_Gabarito.Visible := false;
     PA_Resultado.Visible := false;
     PA_Inicial.Enabled := TRUE;
     PA_Inicial.Left := 520;
     PA_Inicial.Top := 160;
    PA_ExecutarFiltro.Enabled := false;
    BBT_CancelarSair.Visible := false;
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIV_SMFX4_DEF SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
end;



procedure T_F_Gerador_ResDiv_SmFx4.FormActivate(Sender: TObject);
begin
      IF (SELF._MODALIDADE ='GERADOR') THEN
      begin
          LA_Titulo.Caption             := 'GERADOR Resultados Diversos a Partir das Somas Fixas 4 - Somas 194/196 [Cj 162] modelo 2';
      END ELSE
      BEGIN
          LA_Titulo.Caption             := 'SIMULAR modelo 6 - Resultados Diversos a Partir das Somas Fixas 4 - Somas 194/196 [Cj 162] modelo 2';
          BTN_NovaSimulacao.Click;
      end;
      LA_Titulo.Repaint;
end;



procedure T_F_Gerador_ResDiv_SmFx4.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     TRY
          BEGIN
          IBQ_Combinacoes.Close;
          IBDatabase1.Close;
          END
     EXCEPT
     //
     END; // TRY
end;


procedure T_F_Gerador_ResDiv_SmFx4.BBT_CloseClick(Sender: TObject);
begin
     SELF.Close;
end;




procedure T_F_Gerador_ResDiv_SmFx4.BTN_NovaSimulacaoClick(Sender: TObject);
begin
     PA_Resultado.Enabled := TRUE;
  //   RB_RESULTADOS.SetFocus;
  //   RB_RES_GABARITOS.SetFocus;
     SCBX_Gabarito.Visible := TRUE;
     SCBX_Gabarito.Enabled := TRUE;
     PA_Resultado.Visible := TRUE;
     PA_Resultado.Enabled := TRUE;
     PA_ExecutarFiltro.Enabled := TRUE;
     BBT_PrepararMenu.Enabled := TRUE;
     BBT_GerarMenu.Enabled := false;
     BBT_GerarMenu.Enabled := false;
     BBT_CancelarSair.Visible := false;     
     PA_Inicial.Enabled := false;
     PA_Inicial.Left := 2198;
     SCBX_Gabarito.Top:=247;
     SCBX_Gabarito.Repaint;
end;


procedure T_F_Gerador_ResDiv_SmFx4.BTN_SairClick(Sender: TObject);
begin
     SELF.Close;
end;



procedure T_F_Gerador_ResDiv_SmFx4.BBT_CancelarClick(Sender: TObject);
begin
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIV_SMFX4_DEF SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('COMMIT;')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
          SELF.Close;
end;





PROCEDURE T_F_Gerador_ResDiv_SmFx4.PR_ZERAR_VALIDA_ETAPA_1;
BEGIN
//     FreeAndNil(STGR_E1_04P_Nsorteados) ;
     sleep(100);
{
     WITH STGR_E1_04P_Nsorteados DO
     begin
          Left := 673                    ;
          Top := 1                        ;
          Width := 180                    ;
          Height := 333                   ;
          TabStop := False                ;
          Color := 13098688               ;
          Ctl3D := True                   ;
          DefaultColWidth := 27           ;
          DefaultRowHeight := 27          ;
          FixedColor := clMedGray         ;
          RowCount := 8                   ;
          Font.Charset := DEFAULT_CHARSET ;
          Font.Color := clWindowText      ;
          Font.Height := -16              ;
          Font.Name := 'Times New Roman'  ;
          Font.Style := []                ;
          GridLineWidth := 0              ;
          Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
          ParentCtl3D := False            ;
          ParentFont := False             ;
          TabOrder := 17                  ;
     end;
     }
END;



FUNCTION T_F_Gerador_ResDiv_SmFx4.FN_VALIDAR_ETAPA_2(vi_Linha: Integer):Boolean;
VAR
     vi_Comb3si_1, vi_Comb3si_2, vi_Comb3si_3  : INTEGER;
     vi_Comb3sp_1, vi_Comb3sp_2, vi_Comb3sp_3  : INTEGER;
     vi_Comb3i_1, vi_Comb3i_2, vi_Comb3i_3  : INTEGER;
     vi_Comb3p_1, vi_Comb3p_2, vi_Comb3p_3  : INTEGER;
     vi_Linhas06p, vi_Soma10i, vi_Soma10_2, vi_Contar, vi_ContaSel1 : INTEGER;
     vs_NumerosPrincipais, vs_NumerosPrincipaiNs : STRING;
BEGIN
     vi_Linhas06p := 1;
END;




FUNCTION T_F_Gerador_ResDiv_SmFx4.FN_VALIDAR_ETAPA_8(vi_Linha: Integer):Boolean;
VAR
     vi_Comb3i_1, vi_Comb3i_2, vi_Comb3i_3  : INTEGER;
     vi_Comb3p_1, vi_Comb3p_2, vi_Comb3p_3  : INTEGER;
     vi_Linhas06p, vi_Soma10i, vi_Soma10_2, vi_Contar, vi_ContaSel1 : INTEGER;
     vs_NumerosPrincipais, vs_NumerosPrincipaiNs : STRING;
BEGIN
{
     STGR_E8_05I_sorteados.ColWidths [0]:= 55 ;
     STGR_E8_05P_sorteados.ColWidths [0]:= 55 ;
     STGR_E8_03I_Nsorteados.ColWidths [0]:= 55;
     STGR_E8_03P_Nsorteados.ColWidths [0]:= 49;
     STGR_E8_05I_sorteados.RowCount := 2;
     STGR_E8_05P_sorteados.RowCount := 2;
     STGR_E8_03I_Nsorteados.RowCount := 2;
     STGR_E8_03P_Nsorteados.RowCount := 2;
     }
//     STGR_E8_05I_sorteados.DefaultDrawing := false;
//     STGR_E8_05P_sorteados.DefaultDrawing := false;
//     STGR_E8_03I_Nsorteados.DefaultDrawing := false;
//     STGR_E8_03P_Nsorteados.DefaultDrawing := false;
     vi_Linhas06p := 1;
 {
     STGR_E8_05P_sorteados.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
     vi_Soma10i  :=  STRtoINT(STGR_Comb03_ISobras.Cells[2,vi_Linha])
        + STRtoINT(STGR_Comb03_ISobras.Cells[3,vi_Linha])+ STRtoINT(STGR_Comb03_ISobras.Cells[4,vi_Linha])
        + STRtoINT(STGR_Comb03_ISobras.Cells[5,vi_Linha])+ STRtoINT(STGR_Comb03_ISobras.Cells[6,vi_Linha])
        + STRtoINT(STGR_Comb02_PSobras.Cells[1,1] )
        + STRtoINT(STGR_Comb02_PSobras.Cells[2,1]) + STRtoINT(STGR_Comb02_PSobras.Cells[3,1])
        + STRtoINT(STGR_Comb02_PSobras.Cells[4,1]) + STRtoINT(STGR_Comb02_PSobras.Cells[5,1])
        ;
     STGR_E8_05I_sorteados.Cells[2,vi_Linhas06p]  := INTtoSTR(vi_Soma10i) ;
     }
     Result := False;
END;



FUNCTION T_F_Gerador_ResDiv_SmFx4.FN_VALIDAR_ETAPA_3(vi_Linha: Integer):Boolean;
VAR
     vi_Comb3i_1, vi_Comb3i_2, vi_Comb3i_3, vi_Comb3i_4, vi_Comb3i_5 : INTEGER;
     vi_Comb3p_1, vi_Comb3p_2, vi_Comb3p_3  : INTEGER;
     vi_Linhas06p, vi_Soma10_2, vi_Contar, vi_ContaSel1 : INTEGER;
     vs_NumerosPrincipais, vs_NumerosPrincipaiNs : STRING;
BEGIN
{
     STGR_E3_04I_sorteados.ColWidths [0]:= 55 ;
     STGR_E3_03P_sorteados.ColWidths [0]:= 55 ;
     STGR_E3_04I_sorteados.RowCount := 2;
     STGR_E3_03P_sorteados.RowCount := 2;
     }
//     STGR_E3_04I_sorteados.DefaultDrawing := false;
//     STGR_E3_03P_sorteados.DefaultDrawing := false;
     vi_Linhas06p := 1;

     Result := False;
END;




FUNCTION T_F_Gerador_ResDiv_SmFx4.FN_VALIDAR_ETAPA_6(vi_Linha: Integer):Boolean;
VAR
     vi_Comb3i_1, vi_Comb3i_2, vi_Comb3i_3  : INTEGER;
     vi_Comb3p_1, vi_Comb3p_2, vi_Comb3p_3, vi_Comb3p_4  : INTEGER;
     vi_Linhas06p, vi_Soma10_2, vi_Contar, vi_ContaSel1 : INTEGER;
     vs_NumerosPrincipais, vs_NumerosPrincipaiNs : STRING;
BEGIN
{
     STGR_E6_03I_sorteados.ColWidths [0]:= 55 ;
     STGR_E6_04P_sorteados.ColWidths [0]:= 55 ;
     STGR_E6_03I_sorteados.RowCount := 2;
     STGR_E6_04P_sorteados.RowCount := 2;
     }
//     STGR_E3_04I_sorteados.DefaultDrawing := false;
//     STGR_E3_03P_sorteados.DefaultDrawing := false;
     vi_Linhas06p := 1;

     Result := False;
END;



procedure T_F_Gerador_ResDiv_SmFx4.BBT_PrepararMenuClick(Sender: TObject);
begin
     PA_Preparar.Visible := TRUE;
     PA_Preparar.Enabled := TRUE;
     PA_Preparar.Top  := 245;
     PA_Preparar.Left := 460;
     PA_Preparar.Repaint;
end;



procedure T_F_Gerador_ResDiv_SmFx4.BBT_Gerar_VoltarClick(Sender: TObject);
begin
     PA_Preparar.Visible := false;
     PA_Preparar.Enabled := false;
     PA_Preparar.Left := 4500;
     PA_Preparar.Repaint;
end;


procedure T_F_Gerador_ResDiv_SmFx4.BBT_Preparar1Click(Sender: TObject);
VAR
     vi_Contador1, vi_ContarCelulas, vi_Contar, vi_Soma : integer;
begin
     FOR vi_Contador1 := 1 TO 25 DO
     BEGIN
          STGR_Todos_Numeros.Cells[vi_Contador1,0] := INTtoSTR(vi_Contador1);
     END;
     FOR vi_Contador1 := 2 TO 16 DO
     BEGIN
          STGR_Base.Cells[vi_Contador1,0] := INTtoSTR(vi_Contador1-1);
     END;
     FOR vi_Contador1 := 2 TO 11 DO
     BEGIN
          STGR_Base10.Cells[vi_Contador1,0] := INTtoSTR(vi_Contador1-1);
     END;
     IBQ_Combinacoes.SQL.Clear;
     IF CB_SomaTotal_15n.ItemIndex =0 then
          IBQ_Combinacoes.SQL.Add('SELECT * FROM RESULTADO_GERADOS_162comb where soma_15=194')
     else
          IBQ_Combinacoes.SQL.Add('SELECT * FROM RESULTADO_GERADOS_162comb where soma_15=196');     
     IBQ_Combinacoes.Prepare;
     IBQ_Combinacoes.Open;
     IBQ_Combinacoes.First;
     vi_Contador1 := 1  ;
     WHILE NOT(IBQ_Combinacoes.Eof) DO
     BEGIN
          STGR_Base.Cells[0,vi_Contador1] := INTtoSTR(vi_Contador1);
          STGR_Base.Cells[01,vi_Contador1] := IBQ_Combinacoes.FIELDbyNAME('SOMA_15').AsString;          
          STGR_Base.Cells[02,vi_Contador1] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,1,2);
          STGR_Base.Cells[03,vi_Contador1] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,4,2);
          STGR_Base.Cells[04,vi_Contador1] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,7,2);
          STGR_Base.Cells[05,vi_Contador1] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,10,2);
          STGR_Base.Cells[06,vi_Contador1] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,13,2);
          STGR_Base.Cells[07,vi_Contador1] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,16,2);
          STGR_Base.Cells[08,vi_Contador1] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,19,2);
          STGR_Base.Cells[09,vi_Contador1] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,22,2);
          STGR_Base.Cells[10,vi_Contador1] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,25,2);
          STGR_Base.Cells[11,vi_Contador1] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,28,2);
          STGR_Base.Cells[12,vi_Contador1] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,31,2);
          STGR_Base.Cells[13,vi_Contador1] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,34,2);
          STGR_Base.Cells[14,vi_Contador1] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,37,2);
          STGR_Base.Cells[15,vi_Contador1] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,40,2);
          STGR_Base.Cells[16,vi_Contador1] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,43,2);
          STGR_Base10.Cells[0,vi_Contador1] := INTtoSTR(vi_Contador1);
               FOR VI_CONTAR :=1 TO 25 DO
               BEGIN
                    STGR_Todos_Numeros.Cells[VI_CONTAR,1] :='F';
               END; // FOR VI_CONTAR
               // ----> MONTADO E VERIFICANDO TODOS OS 23 DÍGITOS
               FOR VI_CONTAR :=2 TO 16 DO
               BEGIN
                    STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Base.Cells[VI_CONTAR,vi_Contador1])) ,1]:='V';
               END; // FOR vi_Contador1
               vi_ContarCelulas := 2;
               FOR VI_CONTAR :=1 TO 25 DO
               BEGIN
                    IF (STGR_Todos_Numeros.Cells[VI_CONTAR,1]='F') THEN
                    BEGIN
                         STGR_Base10.Cells [vi_ContarCelulas, vi_Contador1] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[VI_CONTAR,0]),2) ;
                         vi_ContarCelulas := vi_ContarCelulas + 1;
                    END; // IF (STGR_Todos_Numeros
               END; // FOR VI_CONTAR
          // --> Classificando os sorteados
          {           
          vi_Soma  :=  STRtoINT(STGR_Base.Cells[2,vi_Contador1])
             + STRtoINT(STGR_Base.Cells[3,vi_Contador1])+ STRtoINT(STGR_Base.Cells[4,vi_Contador1])
             + STRtoINT(STGR_Base.Cells[5,vi_Contador1])+ STRtoINT(STGR_Base.Cells[6,vi_Contador1])
             + STRtoINT(STGR_Base.Cells[7,vi_Contador1])+ STRtoINT(STGR_Base.Cells[8,vi_Contador1])
             + STRtoINT(STGR_Base.Cells[9,vi_Contador1])+ STRtoINT(STGR_Base.Cells[10,vi_Contador1])
             + STRtoINT(STGR_Base.Cells[11,vi_Contador1])+ STRtoINT(STGR_Base.Cells[12,vi_Contador1])
             + STRtoINT(STGR_Base.Cells[13,vi_Contador1])+ STRtoINT(STGR_Base.Cells[14,vi_Contador1])
             + STRtoINT(STGR_Base.Cells[15,vi_Contador1])+ STRtoINT(STGR_Base.Cells[16,vi_Contador1])
          ;
          IF (vi_Soma >= STRtoINT(ED_SOMAS_15N_INI.Text)) AND (vi_Soma <= STRtoINT(ED_SOMAS_15N_INI.Text)) THEN
               STGR_Base.Cells[01,vi_Contador1] := 'V'
          else
               STGR_Base.Cells[01,vi_Contador1] := 'F';
          // --> Classificando os excluídos
          vi_Soma  :=  STRtoINT(STGR_Base10.Cells[2,vi_Contador1])
             + STRtoINT(STGR_Base10.Cells[3,vi_Contador1])+ STRtoINT(STGR_Base10.Cells[4,vi_Contador1])
             + STRtoINT(STGR_Base10.Cells[5,vi_Contador1])+ STRtoINT(STGR_Base10.Cells[6,vi_Contador1])
             + STRtoINT(STGR_Base10.Cells[7,vi_Contador1])+ STRtoINT(STGR_Base10.Cells[8,vi_Contador1])
             + STRtoINT(STGR_Base10.Cells[9,vi_Contador1])+ STRtoINT(STGR_Base10.Cells[10,vi_Contador1])
             + STRtoINT(STGR_Base10.Cells[11,vi_Contador1])
          ;
          IF (vi_Soma >= STRtoINT(ED_SOMAS_10N_INI.Text)) AND (vi_Soma <= STRtoINT(ED_SOMAS_10N_INI.Text)) THEN
               STGR_Base10.Cells[01,vi_Contador1] := 'V'
          else
               STGR_Base10.Cells[01,vi_Contador1] := 'F';
          }
          //-->
          vi_Contador1 := vi_Contador1 +1;
          IBQ_Combinacoes.Next;
     END; // WHILE NOT
     STGR_Base.RowCount := vi_Contador1 ;
     STGR_Base10.RowCount := vi_Contador1 ; 

     SELF.IBQ_Combinacoes.Close;
     SELF.IBQ_Combinacoes.Open;
     IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_DIV_SMFX4_DEF')  ;
     SELF.IBQ_Combinacoes.ExecSQL;

     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_DIV_SMFX4_8I7P')  ;
     SELF.IBQ_Combinacoes.ExecSQL;

     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
     SELF.IBQ_Combinacoes.ExecSQL;
     SELF.IBQ_Combinacoes.SQL.Clear;

     SELF.IBQ_Combinacoes.SQL.Add('SELECT * FROM GERADOR_RESULT_DIV_SMFX4_DEF; ')  ;
     SELF.IBQ_Combinacoes.Prepare;
     SELF.IBQ_Combinacoes.Open;

     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('insert INTO GERADOR_RESULT_DIV_SMFX4_DEF (FLAG_FILTRAR,FLAG_GRAVAR) values (''N'',''N'');')  ;
     SELF.IBQ_Combinacoes.ExecSQL;
     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
     SELF.IBQ_Combinacoes.ExecSQL;
     SELF.Repaint;

     PA_Preparar.Visible := false;
     PA_Preparar.Enabled := false;
     PA_Preparar.Left := 4500;
     PA_Preparar.Repaint;

     BBT_PrepararMenu.Enabled := TRUE;
     BBT_GerarMenu.Enabled := TRUE;
     BBT_GerarMenu.Enabled := TRUE;
     SHOWMESSAGE('OK');
end;




procedure T_F_Gerador_ResDiv_SmFx4.BBT_GerarMenuClick(Sender: TObject);
begin
     PA_Gerar.Visible := TRUE;
     PA_Gerar.Enabled := TRUE;
     PA_Gerar.Top  := 245;
     PA_Gerar.Left := 460;
     PA_Gerar.Repaint;
end;







procedure T_F_Gerador_ResDiv_SmFx4.BBT_GerarClick(Sender: TObject);


    PROCEDURE PR_Ordenar_Simulacao_15_8i7p (VI_LINHAS9: INTEGER);
    var
        vi_Contar, vi_CntCelulas: INTEGER;
    begin
          // ************************
      	// **  Ordena os dados   **
	     // ************************
        FOR vi_Contar :=1 TO 25 DO
        BEGIN
            STGR_Todos_Numeros.Cells[vi_Contar,1] :='F';
        END; // FOR vi_Contar
        // ----> MONTADO E VERIFICANDO TODOS OS DÍGITOS
        FOR vi_Contar :=1 TO 15 DO
        BEGIN
            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Comb15_8I7P.Cells[vi_Contar,VI_LINHAS9])) ,1]:='V';
        END; // FOR vi_Contar1
        vi_CntCelulas := 1;
        FOR vi_Contar :=1 TO 25 DO
        BEGIN
            IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') THEN
            BEGIN
                STGR_Comb15_8I7P.Cells[vi_CntCelulas, VI_LINHAS9] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) ;
                vi_CntCelulas := vi_CntCelulas + 1;
            END; // IF (STGR_Todos_Numeros
        END; // FOR vi_Contar
    end; // PROCEDURE ORDENAR_SIMULACAO_12


     FUNCTION Numeros_Fixos1 (vi_Linhas1 : integer) : BOOLEAN;
     VAR
          vi_ContaSel1, vi_Primeiro, vi_NumeroCelula  : INTEGER;
          vb_Retorno : boolean  ;
     begin
          vi_Primeiro := strTOint(ED_FIXOS_01_8i7p.Text);
          IF (vi_Primeiro >0) and (vi_Primeiro<=25)  THEN
          BEGIN
               vb_Retorno := False;
               FOR vi_ContaSel1 := 1 TO 15 DO
               BEGIN
                    vi_NumeroCelula:=  STRtoINT(STGR_Comb15_8I7P.Cells[vi_ContaSel1,vi_Linhas1]);
                    IF (vi_NumeroCelula=vi_Primeiro) THEN
                    begin
                         vb_Retorno := True;
                    end;
               END; // FOR vi_ContaSel1
               Result :=  vb_Retorno;
          END ELSE
          BEGIN
               Result := True;
          END;// IF
     end; // function


     FUNCTION Numeros_Fixos2 (vi_Linhas1 : Integer) : boolean;
     VAR
          vi_ContaSel1, vi_Segundo, vi_NumeroCelula  : INTEGER;
          vb_Retorno : boolean  ;
     begin
          vi_Segundo := strTOint(ED_FIXOS_02_8i7p.Text);
          IF (vi_Segundo >0) and (vi_Segundo<=25)  THEN
          BEGIN
               vb_Retorno := False;
               FOR vi_ContaSel1 := 1 TO 15 DO
               BEGIN
                    vi_NumeroCelula:=  STRtoINT(STGR_Comb15_8I7P.Cells[vi_ContaSel1,vi_Linhas1]);
                    IF (vi_NumeroCelula=vi_Segundo) THEN
                    begin
                         vb_Retorno := True;
                    end;
               END; // FOR vi_ContaSel1
               Result :=  vb_Retorno;
          END ELSE
          BEGIN
               Result := True;
          END;// IF
     end; // function


     FUNCTION Numeros_Fixos3 (vi_Linhas1 : Integer) : boolean;
     VAR
          vi_ContaSel1, vi_Segundo, vi_NumeroCelula  : INTEGER;
          vb_Retorno : boolean  ;
     begin
          vi_Segundo := strTOint(ED_FIXOS_03_8i7p.Text);
          IF (vi_Segundo >0) and (vi_Segundo<=25)  THEN
          BEGIN
               vb_Retorno := False;
               FOR vi_ContaSel1 := 1 TO 15 DO
               BEGIN
                    vi_NumeroCelula:=  STRtoINT(STGR_Comb15_8I7P.Cells[vi_ContaSel1,vi_Linhas1]);
                    IF (vi_NumeroCelula=vi_Segundo) THEN
                    begin
                         vb_Retorno := True;
                    end;
               END; // FOR vi_ContaSel1
               Result :=  vb_Retorno;
          END ELSE
          BEGIN
               Result := True;
          END;// IF
     end; // function

    PROCEDURE PR_GRAVAR_DADOS_SMFX (vi_Soma_Origem:Integer);
    VAR
        VI_AN_Comb1, vi_ContarCelulas, vi_Contar, vi_ContarStgGrid : INTEGER;
        vc_QUERY, vc_Nome_Tabela : STRING;
        vc_Combinacoes10, vc_Combinacoes15, vc_Contador_da_Tabela : STRING;
    BEGIN
        //VI_TOTALGERADO := STGR_Comb10.RowCount-1;
          // ************************
          // **   BANCO DE DADOS   **
          // ************************
          SELF.Repaint;
          // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
          vi_ContarStgGrid := TRUNC((STGR_Comb15_8I7P.RowCount-1)/1);
       FOR VI_AN_Comb1:= 1 TO vi_ContarStgGrid DO
       BEGIN
           vc_Combinacoes15 :='';
           FOR vi_ContarCelulas := 1 TO 25 DO
           BEGIN
                STGR_Todos_Numeros.Cells [vi_ContarCelulas ,1]:='F';
           end;
           FOR vi_ContarCelulas := 1 TO 15 DO
           BEGIN
               vc_Combinacoes15 := vc_Combinacoes15 + TRIM(STGR_Comb15_8I7P.Cells[vi_ContarCelulas,VI_AN_Comb1]) +' ';
               STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Comb15_8I7P.Cells[vi_ContarCelulas,VI_AN_Comb1])) ,1]:='V';
               vc_Contador_da_Tabela :=  STGR_Comb15_8I7P.Cells[0,VI_AN_Comb1] ;
           END; // FOR vi_ContarCelulas
          vc_Nome_Tabela := ' GERADOR_RESULT_DIV_SMFX4_8I7P';
               // -------------------------------
               // --  MONTANDO AS 10 SOBRAS   ---
               // -------------------------------
                  vi_ContarCelulas := 1;
                  vc_Combinacoes10 := '';
                  FOR vi_Contar :=1 TO 25 DO
                  BEGIN
                      // SOBRAS
                      IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='F') THEN
                      BEGIN
                          vc_Combinacoes10 := vc_Combinacoes10 + RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) +' ' ;
                          vi_ContarCelulas := vi_ContarCelulas + 1;
                      END; // IF (STGR_Todos_Numeros
                  END; // FOR vi_Contar
           vc_QUERY  := 'INSERT INTO ' +vc_Nome_Tabela+ ' (QTD, DADOS, DADOS_NS, SOMA_2_ORIGINAL_15) VALUES(' +#39+ vc_Contador_da_Tabela + #39 +','
                 +#39+  TRIM(vc_Combinacoes15) + #39 +','+#39+TRIM(vc_Combinacoes10)  + #39 +','+#39+TRIM(intTOstr(vi_Soma_Origem))
                 +#39+ ');';
           SELF.IBQ_Combinacoes.SQL.Clear;
           SELF.IBQ_Combinacoes.SQL.Add(vc_QUERY)  ;
           SELF.IBQ_Combinacoes.ExecSQL;
       END; // FOR VI_AN_Comb1
    SELF.IBQ_Combinacoes.SQL.Clear;
    SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
    SELF.IBQ_Combinacoes.ExecSQL;
    SLEEP(19);
    SELF.IBQ_Combinacoes.SQL.Clear;
    END; // PROCEDURE GRAVAR_DADOS


var
     vi_Combinacoes1, vi_Contador, vi_Contar: integer;
     vi_Total_Comb1,  vi_ContaSel1: integer;
     vi_Comb3i_1, vi_Comb3i_2, vi_Comb3i_3 : INTEGER;
     vi_Comb2p_1, vi_Comb2p_2 : INTEGER;
     vi_Comb03I_Excluidos_1, vi_Comb03I_Excluidos_2, vi_Comb03I_Excluidos_3 : INTEGER;
     vi_Comb03P_Excluidos_1, vi_Comb03P_Excluidos_2, vi_Comb03P_Excluidos_3 : INTEGER;
     vi_Comb02_col1_1, vi_Comb02_col1_2, vi_Comb02_col2_1, vi_Comb02_col2_2, vi_Comb02_col3_1, vi_Comb02_col3_2 : INTEGER;

     vi_FixoPar, vi_FixoImpar: SMALLINT;
     vi_Contar_Comb1, vi_Linhas2, vi_Linhas03Exc, vi_Linhas06p: INTEGER;
     vs_NumerosPrincipais, vs_NumerosPrincipaiNs : STRING;
     vb_Linhas2 : Boolean;
begin
{ TODO 2 -oSilvão -cMarcador : Aqui começa }
     LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
     STGR_Comb05_I_b.ColWidths [0]:= 55 ;
     STGR_Comb05_P_b.ColWidths [0]:= 55 ;
     STGR_Comb02_P.ColWidths [0]:= 55 ;
     STGR_Comb02_P_Sobras.ColWidths [0]:= 55 ;
     STGR_Comb03_I.ColWidths [0]:= 55 ;
     STGR_Comb03I_Excluidos.ColWidths [0]:= 55;
     STGR_Comb03I_Excluidos.ColWidths [1]:= 55;     
     STGR_Comb03_I_Sobras.ColWidths [0]:= 55 ;
     STGR_Comb03P_Excluidos.ColWidths [0]:= 45 ;
     STGR_Comb03P_Excluidos.ColWidths [1]:= 45 ;

     STGR_Comb02_col1.ColWidths [0]:= 45 ;
     STGR_Comb02_col1.ColWidths [1]:= 45 ;
     STGR_Comb02_col2.ColWidths [0]:= 60 ;
     STGR_Comb02_col3.ColWidths [0]:= 60 ;
     STGR_Comb02_Fase3.ColWidths [0]:= 60 ;
     STGR_Comb02_Fase3.ColWidths [1]:= 45 ;
     STGR_Comb03_Sobras.ColWidths [0]:= 60 ;
     STGR_Comb03_Sobras.ColWidths [1]:= 45 ;


     STGR_Comb15.ColWidths [0]:= 49;
     STGR_Comb15_7i8p.RowCount := 2;
     STGR_Comb15_8i7p.RowCount := 2;
     STGR_Comb15_8I7P.ColWidths [0]:= 49;
     STGR_Comb15_7I8P.ColWidths [0]:= 49;
     STGR_Comb15_7i8p.Cells[0,0] := '{7i/8P}';
     STGR_Comb15_8i7p.Cells[0,0] := '{8i/7P}';
     FOR vi_ContaSel1 := 1 TO 15 DO
     BEGIN
        STGR_Comb15.Cells [vi_ContaSel1,0] := '-'+INTtoSTR(vi_ContaSel1)+'-';
        STGR_Comb15.Cells [vi_ContaSel1,1] := '00';
        STGR_Comb15_7i8p.Cells [vi_ContaSel1,1] := '00';
        STGR_Comb15_8i7p.Cells [vi_ContaSel1,1] := '00';
     END;
     //STGR_Comb15.ColWidths [2]:= 55;
     STGR_Comb15.RowCount := 2;
     STGR_Comb15.Repaint;
     STGR_Comb15_8I7P.RowCount := 2;
     STGR_Comb15_8I7P.Repaint;

     PGBR_GerarComb0.Position :=0 ;
     PGBR_GerarComb0.Repaint;
     LA_Total_Comb.Caption := 'GERAR:               ';
     LA_Gerar_Comb.Caption := '#:                   ';
     LA_Total_Comb.Repaint;
     LA_Gerar_Comb.Repaint;
     PA_Gerar.Enabled := false;
     PA_Gerar.Left := 4500;
     // =====================================
     // ||||=============================||||
     // |||| 	GERANDO AS COMBINAÇÕES   ||||
     // ||||=============================||||
     // =====================================
     LA_rTOTAL_Comb.Caption  := INTtoSTR(STGR_Base.RowCount-1);

     //PR_GRAVAR_DADOS ('INICIO',vi_Linhas_01_01, 1, TRUNC(STGR_Base.RowCount-1));
     vi_Combinacoes1 := 1  ;
     vi_Contar_Comb1 :=1;
     vi_Linhas06p := 1;
     vi_Linhas03Exc := 1;     
     vi_Linhas2 := 1;
      IF (strTOint(RIGHTSTR(CB_SomaTotal_15n.Text,3)))=196 THEN
          vi_FixoPar := 41 ELSE vi_FixoPar :=39;
      IF (strTOint(RIGHTSTR(CB_SomaTotal_15n.Text,3)))=196 THEN
          vi_FixoImpar := 38 ELSE vi_FixoImpar :=40;


     WHILE vi_Combinacoes1 <= (TRUNC((STGR_Base.RowCount-1)/1)) do
     BEGIN
          // separando ímpares e pares
          vi_Contar :=0;
          FOR vi_Contador := 2 TO 16 DO
          BEGIN
               IF (strTOint(STGR_Base.Cells[vi_Contador,vi_Combinacoes1]) MOD 2 = 0) THEN
               BEGIN
                    vi_Contar := vi_Contar +1;
                        STGR_Comb07_P.Cells[vi_Contar,1] := STGR_Base.Cells[vi_Contador,vi_Combinacoes1];
               END;
          END; // FOR vi_Contador
          vi_Contar :=0;
          vs_NumerosPrincipais := '';
          FOR vi_Contador := 2 TO 16 dO
          BEGIN
               IF (strTOint(STGR_Base.Cells[vi_Contador,vi_Combinacoes1]) MOD 2 = 1) THEN
               BEGIN
                    vi_Contar := vi_Contar +1;
                    STGR_Comb08_I.Cells[vi_Contar,1] := STGR_Base.Cells[vi_Contador,vi_Combinacoes1];
                    vs_NumerosPrincipais := vs_NumerosPrincipais + RIGHTSTR('0'+STGR_Base.Cells[vi_Contador,vi_Combinacoes1],2) +' ';
               END;
          end;
           // separando ímpares e pares
           vi_Contar :=0;
           FOR vi_Contador := 2 TO 11 DO
           BEGIN
                IF (strTOint(STGR_Base10.Cells[vi_Contador,vi_Combinacoes1]) MOD 2 = 0) THEN
                BEGIN
                     vi_Contar := vi_Contar +1;
                         STGR_Comb05_P.Cells[vi_Contar,1] := STGR_Base10.Cells[vi_Contador,vi_Combinacoes1];
                END;
           END; // FOR vi_Contador
           vi_Contar :=0;
           vs_NumerosPrincipaiNs := '';
           FOR vi_Contador := 2 TO 11 DO
           BEGIN
                IF (strTOint(STGR_Base10.Cells[vi_Contador,vi_Combinacoes1]) MOD 2 = 1) THEN
                BEGIN
                     vi_Contar := vi_Contar +1;
                     STGR_Comb05_I.Cells[vi_Contar,1] := STGR_Base10.Cells[vi_Contador,vi_Combinacoes1];
                     vs_NumerosPrincipaiNs := vs_NumerosPrincipais + RIGHTSTR('0'+STGR_Base10.Cells[vi_Contador,vi_Combinacoes1],2) +' ';
                END;
           end;
          STGR_Comb07_P.Repaint;
          STGR_Comb08_I.Repaint;
          STGR_Comb05_P.Repaint;
          STGR_Comb05_I.Repaint;
          // --> Primeiro Bloco
          FOR vi_Comb3i_1 := 1{2} TO  06 DO
          BEGIN
               FOR vi_Comb3i_2 := vi_Comb3i_1+1{2} TO  07 DO
               BEGIN
                    FOR vi_Comb3i_3 := vi_Comb3i_2+1 TO  08 DO
                    BEGIN
                         // --> Bloco dos pares
                         FOR vi_Comb2p_1 := 1 TO  06 DO
                         BEGIN
                              FOR vi_Comb2p_2 := vi_Comb2p_1+1 TO  07 DO
                              BEGIN
                              //
                              // BASE B
                              //
                                   STGR_Comb05_I_b.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                   STGR_Comb05_I_b.Cells[1,vi_Linhas06p]  :=  STGR_Comb05_I.Cells[1,1] ;
                                   STGR_Comb05_I_b.Cells[2,vi_Linhas06p]  :=  STGR_Comb05_I.Cells[2,1] ;
                                   STGR_Comb05_I_b.Cells[3,vi_Linhas06p]  :=  STGR_Comb05_I.Cells[3,1] ;
                                   STGR_Comb05_I_b.Cells[4,vi_Linhas06p]  :=  STGR_Comb05_I.Cells[4,1] ;
                                   STGR_Comb05_I_b.Cells[5,vi_Linhas06p]  :=  STGR_Comb05_I.Cells[5,1] ;
                                   STGR_Comb05_P_b.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                   STGR_Comb05_P_b.Cells[1,vi_Linhas06p]  :=  STGR_Comb05_P.Cells[1,1] ;
                                   STGR_Comb05_P_b.Cells[2,vi_Linhas06p]  :=  STGR_Comb05_P.Cells[2,1] ;
                                   STGR_Comb05_P_b.Cells[3,vi_Linhas06p]  :=  STGR_Comb05_P.Cells[3,1] ;
                                   STGR_Comb05_P_b.Cells[4,vi_Linhas06p]  :=  STGR_Comb05_P.Cells[4,1] ;
                                   STGR_Comb05_P_b.Cells[5,vi_Linhas06p]  :=  STGR_Comb05_P.Cells[5,1] ;
                              //
                              // BASE A
                              //
                                   // --> Gerando os Ímpares
                                   STGR_Comb03_I.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                   STGR_Comb03_I.Cells[1,vi_Linhas06p]  := 'F';
                                   STGR_Comb03_I.Cells[2,vi_Linhas06p]  :=  STGR_Comb08_I.Cells[vi_Comb3i_1,1] ;
                                   STGR_Comb03_I.Cells[3,vi_Linhas06p]  :=  STGR_Comb08_I.Cells[Vi_Comb3i_2,1] ;
                                   STGR_Comb03_I.Cells[4,vi_Linhas06p]  :=  STGR_Comb08_I.Cells[Vi_Comb3i_3,1] ;
                                   STGR_Comb03_I_Sobras.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                   // --> Capturando os números ímpares que sobraram
                                   FOR vi_Contar :=1 TO 25 DO
                                   BEGIN
                                     STGR_Todos_Numeros.Cells[vi_Contar,1] :='F';
                                     STGR_Todos_Numeros.Cells[vi_Contar,2] :='F';
                                   END; // FOR vi_Contar
                                   FOR vi_Contar :=1 TO 8 DO
                                   BEGIN
                                     STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Comb08_I.Cells[vi_Contar,1])) ,1]:='V';
                                   END; // FOR vi_Contar1
                                   FOR vi_Contar :=2 TO 4 DO
                                   BEGIN
                                     STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Comb03_I.Cells[vi_Contar,vi_Linhas06p])) ,2]:='V';
                                   END; // FOR vi_Contar1
                                   vi_ContaSel1 := 2;
                                   FOR vi_Contar :=1 TO 25 DO
                                   BEGIN
                                        IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,2]='F')  THEN
                                        BEGIN
                                             STGR_Comb03_I_Sobras.Cells[vi_ContaSel1, vi_Linhas06p] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) ;
                                             vi_ContaSel1 := vi_ContaSel1 + 1;
                                        END; // IF (STGR_Todos_Numeros
                                   END; // FOR vi_Contar

                                   // --> Gerando os pares
                                   STGR_Comb02_P.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                   STGR_Comb02_P.Cells[1,vi_Linhas06p]  := 'F';
                                   STGR_Comb02_P.Cells[2,vi_Linhas06p]  :=  STGR_Comb07_P.Cells[vi_Comb2p_1,1] ;
                                   STGR_Comb02_P.Cells[3,vi_Linhas06p]  :=  STGR_Comb07_P.Cells[vi_Comb2p_2,1] ;
                                   STGR_Comb02_P_Sobras.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                   // --> Capturando os números ímpares que sobraram
                                   FOR vi_Contar :=1 TO 25 DO
                                   BEGIN
                                     STGR_Todos_Numeros.Cells[vi_Contar,1] :='F';
                                     STGR_Todos_Numeros.Cells[vi_Contar,2] :='F';
                                   END; // FOR vi_Contar
                                   FOR vi_Contar :=1 TO 7 DO
                                   BEGIN
                                     STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Comb07_P.Cells[vi_Contar,1])) ,1]:='V';
                                   END; // FOR vi_Contar1
                                   FOR vi_Contar :=2 TO 3 DO
                                   BEGIN
                                     STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Comb02_P.Cells[vi_Contar,vi_Linhas06p])) ,2]:='V';
                                   END; // FOR vi_Contar1
                                   vi_ContaSel1 := 2;
                                   FOR vi_Contar :=1 TO 25 DO
                                   BEGIN
                                        IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,2]='F')  THEN
                                        BEGIN
                                             STGR_Comb02_P_Sobras.Cells[vi_ContaSel1, vi_Linhas06p] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) ;
                                             vi_ContaSel1 := vi_ContaSel1 + 1;
                                        END; // IF (STGR_Todos_Numeros
                                   END; // FOR vi_Contar
                                   // bloco sobras dos ímpares
                                   FOR vi_Comb03I_Excluidos_1 := 2 TO  04 DO
                                   BEGIN
                                        FOR vi_Comb03I_Excluidos_2 := vi_Comb03I_Excluidos_1+1 TO  05 DO
                                        BEGIN
                                             FOR vi_Comb03I_Excluidos_3 := vi_Comb03I_Excluidos_2+1 TO  06 DO
                                             BEGIN
                                                   // bloco sobras dos pares
                                                   FOR vi_Comb03P_Excluidos_1 := 2 TO  04 DO
                                                   BEGIN
                                                        FOR vi_Comb03P_Excluidos_2 := vi_Comb03P_Excluidos_1+1 TO  05 DO
                                                        BEGIN
                                                             FOR vi_Comb03P_Excluidos_3 := vi_Comb03P_Excluidos_2+1 TO  06 DO
                                                             BEGIN
                                                                vb_Linhas2 := False;
                                                                IF ((STRtoINT(STGR_Comb03_I_Sobras.Cells[vi_Comb03I_Excluidos_1,vi_Linhas06p]) + STRtoINT(STGR_Comb03_I_Sobras.Cells[vi_Comb03I_Excluidos_2,vi_Linhas06p]) + STRtoINT(STGR_Comb03_I_Sobras.Cells[vi_Comb03I_Excluidos_3,vi_Linhas06p]) ) =  vi_FixoPar)
                                                                   and ((STRtoINT(STGR_Comb02_P_Sobras.Cells[vi_Comb03P_Excluidos_1,vi_Linhas06p]) + STRtoINT(STGR_Comb02_P_Sobras.Cells[vi_Comb03P_Excluidos_2,vi_Linhas06p]) + STRtoINT(STGR_Comb02_P_Sobras.Cells[vi_Comb03P_Excluidos_3,vi_Linhas06p]) ) =  vi_FixoImpar)THEN
                                                                BEGIN
                                                                     STGR_Comb03I_Excluidos.Cells[0,vi_Linhas03Exc]  := INTtoSTR( vi_Linhas03Exc ) ;
                                                                     STGR_Comb03I_Excluidos.Cells[1,vi_Linhas03Exc]  := '.'+INTtoSTR( vi_Linhas06p ) ;
                                                                     STGR_Comb03_I.Cells[1,vi_Linhas06p]  := 'V';
                                                                     STGR_Comb02_P.Cells[1,vi_Linhas06p]  := 'V';
                                                                     STGR_Comb03I_Excluidos.Cells[2,vi_Linhas03Exc]  :=  STGR_Comb03_I_Sobras.Cells[vi_Comb03I_Excluidos_1,vi_Linhas06p] ;
                                                                     STGR_Comb03I_Excluidos.Cells[3,vi_Linhas03Exc]  :=  STGR_Comb03_I_Sobras.Cells[vi_Comb03I_Excluidos_2,vi_Linhas06p] ;
                                                                     STGR_Comb03I_Excluidos.Cells[4,vi_Linhas03Exc]  :=  STGR_Comb03_I_Sobras.Cells[vi_Comb03I_Excluidos_3,vi_Linhas06p] ;
                                                                     STGR_Comb03P_Excluidos.Cells[0,vi_Linhas03Exc]  := INTtoSTR( vi_Linhas03Exc ) ;
                                                                     STGR_Comb03P_Excluidos.Cells[1,vi_Linhas03Exc]  := '.'+INTtoSTR( vi_Linhas06p ) ;
                                                                     STGR_Comb03P_Excluidos.Cells[2,vi_Linhas03Exc]  :=  STGR_Comb02_P_Sobras.Cells[vi_Comb03P_Excluidos_1,vi_Linhas06p] ;
                                                                     STGR_Comb03P_Excluidos.Cells[3,vi_Linhas03Exc]  :=  STGR_Comb02_P_Sobras.Cells[vi_Comb03P_Excluidos_2,vi_Linhas06p] ;
                                                                     STGR_Comb03P_Excluidos.Cells[4,vi_Linhas03Exc]  :=  STGR_Comb02_P_Sobras.Cells[vi_Comb03P_Excluidos_3,vi_Linhas06p] ;
                                                                     vb_Linhas2 := True;
                                                                     vi_Linhas03Exc := vi_Linhas03Exc +1;
                                                                END; // IF
                                                                IF vb_Linhas2 THEN
                                                                BEGIN
                                                                       //-------------------------------------
                                                                       // bloco coluna1
                                                                       FOR vi_Comb02_col1_1 := 2 TO  04 DO
                                                                       BEGIN
                                                                            FOR vi_Comb02_col1_2 := 2 TO  06 DO
                                                                            BEGIN
                                                                                IF ( (STRtoINT(STGR_Comb03_I.Cells[vi_Comb02_col1_1,vi_Linhas06p])+STRtoINT (STGR_Comb02_P_Sobras.Cells[vi_Comb02_col1_2,vi_Linhas06p]))>= 23)
                                                                                    AND ( (STRtoINT(STGR_Comb03_I.Cells[vi_Comb02_col1_1,vi_Linhas06p])+STRtoINT (STGR_Comb02_P_Sobras.Cells[vi_Comb02_col1_2,vi_Linhas06p]))<= 29)  //27
                                                                                    THEN
                                                                                BEGIN
                                                                                     // bloco coluna2
                                                                                     FOR vi_Comb02_col2_1 := 2 TO  06 DO
                                                                                     BEGIN
                                                                                         FOR vi_Comb02_col2_2 := 2 TO  03 DO
                                                                                         BEGIN
                                                                                               // bloco coluna3
                                                                                               FOR vi_Comb02_col3_1 := 2 TO  06 DO
                                                                                               BEGIN
                                                                                                    FOR vi_Comb02_col3_2 := 2 TO  06 DO
                                                                                                    BEGIN
                                                                                                        IF ( (STRtoINT(STGR_Comb03_I_Sobras.Cells[vi_Comb02_col2_1,vi_Linhas06p])+STRtoINT (STGR_Comb02_P.Cells[vi_Comb02_col2_2,vi_Linhas06p]))>= 23 )  //25
                                                                                                            AND ( (STRtoINT(STGR_Comb03_I_Sobras.Cells[vi_Comb02_col2_1,vi_Linhas06p])+STRtoINT (STGR_Comb02_P.Cells[vi_Comb02_col2_2,vi_Linhas06p]))<= 29 ) //27
                                                                                                            AND ( (STRtoINT(STGR_Comb03_I_Sobras.Cells[vi_Comb02_col3_1,vi_Linhas06p])+STRtoINT (STGR_Comb02_P_Sobras.Cells[vi_Comb02_col3_2,vi_Linhas06p]))>= 23 )
                                                                                                            AND ( (STRtoINT(STGR_Comb03_I_Sobras.Cells[vi_Comb02_col3_1,vi_Linhas06p])+STRtoINT (STGR_Comb02_P_Sobras.Cells[vi_Comb02_col3_2,vi_Linhas06p]))<= 29 ) //27
                                                                                                            THEN
                                                                                                        BEGIN
                                                                                                            // Evita a repetição do mesmo número nas colunas 1 e 3 e também na 2 e 3
                                                                                                            IF ( TRIM(STGR_Comb02_P_Sobras.Cells[vi_Comb02_col1_2,vi_Linhas06p])=TRIM(STGR_Comb02_P_Sobras.Cells[vi_Comb02_col3_2,vi_Linhas06p]) )
                                                                                                               OR ( TRIM(STGR_Comb03_I_Sobras.Cells[vi_Comb02_col2_1,vi_Linhas06p])=TRIM(STGR_Comb03_I_Sobras.Cells[vi_Comb02_col3_1,vi_Linhas06p]) )
                                                                                                            THEN
                                                                                                                CONTINUE;
                                                                                                            // Anula as repetições uma embaixo da outra
                                                                                                            IF (vi_Linhas2 >1) THEN
                                                                                                                IF  ( TRIM(STGR_Comb02_col1.Cells[2,vi_Linhas2-1]) =  TRIM(STGR_Comb03_I.Cells[vi_Comb02_col1_1,vi_Linhas06p]) )
                                                                                                                    AND ( TRIM(STGR_Comb02_col2.Cells[2,vi_Linhas2-1]) =  TRIM(STGR_Comb02_P.Cells[vi_Comb02_col2_2,vi_Linhas06p]) )
                                                                                                                    AND  ( TRIM(STGR_Comb02_col1.Cells[1,vi_Linhas2-1]) = TRIM (INTtoSTR( vi_Linhas06p )) )
                                                                                                                THEN
                                                                                                                    CONTINUE;
                                                                                                            // Anula as repetições
                                                                                                            IF (vi_Linhas2 >2) THEN
                                                                                                                IF  ( TRIM(STGR_Comb02_col1.Cells[2,vi_Linhas2-2]) =  TRIM(STGR_Comb03_I.Cells[vi_Comb02_col1_1,vi_Linhas06p]) )
                                                                                                                    AND ( TRIM(STGR_Comb02_col2.Cells[2,vi_Linhas2-2]) =  TRIM(STGR_Comb02_P.Cells[vi_Comb02_col2_2,vi_Linhas06p]) )
                                                                                                                    AND  ( TRIM(STGR_Comb02_col1.Cells[1,vi_Linhas2-2]) = TRIM (INTtoSTR( vi_Linhas06p )) )
                                                                                                                THEN
                                                                                                                    CONTINUE;
                                                                                                           // Anula as repetições
                                                                                                           IF (vi_Linhas2 >6) THEN
                                                                                                                IF  ( TRIM(STGR_Comb02_col1.Cells[2,vi_Linhas2-6]) =  TRIM(STGR_Comb03_I.Cells[vi_Comb02_col1_1,vi_Linhas06p]) )
                                                                                                                    AND ( TRIM(STGR_Comb02_col2.Cells[2,vi_Linhas2-6]) =  TRIM(STGR_Comb02_P.Cells[vi_Comb02_col2_2,vi_Linhas06p]) )
                                                                                                                    AND  ( TRIM(STGR_Comb02_col1.Cells[1,vi_Linhas2-6]) = TRIM (INTtoSTR( vi_Linhas06p )) )
                                                                                                                THEN
                                                                                                                    CONTINUE;
                                                                                                            IF (vi_Linhas2 >5) THEN
                                                                                                                IF  ( TRIM(STGR_Comb02_col1.Cells[2,vi_Linhas2-5]) =  TRIM(STGR_Comb03_I.Cells[vi_Comb02_col1_1,vi_Linhas06p]) )
                                                                                                                    AND ( TRIM(STGR_Comb02_col2.Cells[2,vi_Linhas2-5]) =  TRIM(STGR_Comb02_P.Cells[vi_Comb02_col2_2,vi_Linhas06p]) )
                                                                                                                    AND  ( TRIM(STGR_Comb02_col1.Cells[1,vi_Linhas2-5]) = TRIM (INTtoSTR( vi_Linhas06p )) )
                                                                                                                THEN
                                                                                                                    CONTINUE;
                                                                                                            // Anula as repetições
                                                                                                            IF (vi_Linhas2 >4) THEN
                                                                                                                IF  ( TRIM(STGR_Comb02_col1.Cells[2,vi_Linhas2-4]) =  TRIM(STGR_Comb03_I.Cells[vi_Comb02_col1_1,vi_Linhas06p]) )
                                                                                                                    AND ( TRIM(STGR_Comb02_col2.Cells[2,vi_Linhas2-4]) =  TRIM(STGR_Comb02_P.Cells[vi_Comb02_col2_2,vi_Linhas06p]) )
                                                                                                                    AND  ( TRIM(STGR_Comb02_col1.Cells[1,vi_Linhas2-4]) = TRIM (INTtoSTR( vi_Linhas06p )) )
                                                                                                                THEN
                                                                                                                    CONTINUE;                                                                                                                                                                                                                                       
                                                                                                            // Anula as repetições
                                                                                                            IF (vi_Linhas2 >3) THEN
                                                                                                                IF  ( TRIM(STGR_Comb02_col1.Cells[2,vi_Linhas2-3]) =  TRIM(STGR_Comb03_I.Cells[vi_Comb02_col1_1,vi_Linhas06p]) )
                                                                                                                    AND ( TRIM(STGR_Comb02_col2.Cells[2,vi_Linhas2-3]) =  TRIM(STGR_Comb02_P.Cells[vi_Comb02_col2_2,vi_Linhas06p]) )
                                                                                                                    AND  ( TRIM(STGR_Comb02_col1.Cells[1,vi_Linhas2-3]) = TRIM (INTtoSTR( vi_Linhas06p )) )
                                                                                                                THEN
                                                                                                                    CONTINUE;

                                                                                                            STGR_Comb02_col1.Cells[0,vi_Linhas2] := INTtoSTR( vi_Linhas2 ) ; // INTtoSTR( (STRtoINT(STGR_Comb03_I.Cells[vi_Comb02_col1_1,vi_Linhas06p])+STRtoINT (STGR_Comb02_P_Sobras.Cells[vi_Comb02_col1_2,vi_Linhas06p])) ) ;
                                                                                                            STGR_Comb02_col1.Cells[1,vi_Linhas2] := INTtoSTR( vi_Linhas06p ) ;
                                                                                                            STGR_Comb02_col2.Cells[0,vi_Linhas2] := INTtoSTR( vi_Linhas2 ) ; //INTtoSTR( (STRtoINT(STGR_Comb03_I_Sobras.Cells[vi_Comb02_col2_1,vi_Linhas06p])+STRtoINT (STGR_Comb02_P.Cells[vi_Comb02_col2_2,vi_Linhas06p]))  ) ;
                                                                                                            STGR_Comb02_col3.Cells[0,vi_Linhas2] := INTtoSTR( vi_Linhas2 ) ;
                                                                                                            STGR_Comb02_Fase3.Cells[0,vi_Linhas2] := INTtoSTR( vi_Linhas2 ) ;
                                                                                                            STGR_Comb02_Fase3.Cells[1,vi_Linhas2] := INTtoSTR( vi_Linhas06p ) ;
                                                                                                            STGR_Comb02_col1.Cells[2,vi_Linhas2] :=  STGR_Comb03_I.Cells[vi_Comb02_col1_1,vi_Linhas06p];
                                                                                                            STGR_Comb02_col1.Cells[3,vi_Linhas2] :=  STGR_Comb02_P_Sobras.Cells[vi_Comb02_col1_2,vi_Linhas06p];
                                                                                                            STGR_Comb02_col2.Cells[1,vi_Linhas2] :=  STGR_Comb03_I_Sobras.Cells[vi_Comb02_col2_1,vi_Linhas06p];
                                                                                                            STGR_Comb02_col2.Cells[2,vi_Linhas2] :=  STGR_Comb02_P.Cells[vi_Comb02_col2_2,vi_Linhas06p];
                                                                                                            STGR_Comb02_col3.Cells[1,vi_Linhas2] :=  STGR_Comb03_I_Sobras.Cells[vi_Comb02_col3_1,vi_Linhas06p];
                                                                                                            STGR_Comb02_col3.Cells[2,vi_Linhas2] :=  STGR_Comb02_P_Sobras.Cells[vi_Comb02_col3_2,vi_Linhas06p];
                                                                                                            STGR_Comb02_Fase3.Cells[0,vi_Linhas2] := INTtoSTR( vi_Linhas2 ) ;
                                                                                                            STGR_Comb02_Fase3.Cells[1,vi_Linhas2] := INTtoSTR( vi_Linhas06p ) ;
                                                                                                            STGR_Comb02_Fase3.Cells[2,vi_Linhas2] := STGR_Comb02_col1.Cells[2,vi_Linhas2] ;
                                                                                                            STGR_Comb02_Fase3.Cells[3,vi_Linhas2] := STGR_Comb02_col2.Cells[2,vi_Linhas2] ;
                                                                                                            // montando as sobras
                                                                                                            STGR_Comb03_Sobras.Cells[0,vi_Linhas2] := INTtoSTR( vi_Linhas2 ) ;
                                                                                                            STGR_Comb03_Sobras.Cells[1,vi_Linhas2] := INTtoSTR( vi_Linhas06p ) ;
                                                                                                            IF TRIM(STGR_Comb03_I.Cells[2,vi_Linhas06p]) = TRIM(STGR_Comb02_Fase3.Cells[2,vi_Linhas2]) THEN
                                                                                                            BEGIN
                                                                                                                STGR_Comb03_Sobras.Cells[2,vi_Linhas2] := STGR_Comb03_I.Cells[3,vi_Linhas06p];
                                                                                                                STGR_Comb03_Sobras.Cells[3,vi_Linhas2] := STGR_Comb03_I.Cells[4,vi_Linhas06p];
                                                                                                            END ELSE
                                                                                                            IF TRIM(STGR_Comb03_I.Cells[3,vi_Linhas06p]) = TRIM(STGR_Comb02_Fase3.Cells[2,vi_Linhas2]) THEN
                                                                                                            BEGIN
                                                                                                                STGR_Comb03_Sobras.Cells[2,vi_Linhas2] := STGR_Comb03_I.Cells[2,vi_Linhas06p];
                                                                                                                STGR_Comb03_Sobras.Cells[3,vi_Linhas2] := STGR_Comb03_I.Cells[4,vi_Linhas06p];
                                                                                                            END ELSE
                                                                                                            IF  TRIM(STGR_Comb03_I.Cells[4,vi_Linhas06p]) = TRIM(STGR_Comb02_Fase3.Cells[2,vi_Linhas2]) THEN
                                                                                                            BEGIN
                                                                                                                STGR_Comb03_Sobras.Cells[2,vi_Linhas2] := STGR_Comb03_I.Cells[2,vi_Linhas06p];
                                                                                                                STGR_Comb03_Sobras.Cells[3,vi_Linhas2] := STGR_Comb03_I.Cells[3,vi_Linhas06p];
                                                                                                            END; // IF  IF TRIM(STGR_Comb03_I.Cells[2,
                                                                                                            IF TRIM(STGR_Comb02_P .Cells[2,vi_Linhas06p]) = TRIM(STGR_Comb02_Fase3.Cells[3,vi_Linhas2]) THEN
                                                                                                            BEGIN
                                                                                                                STGR_Comb03_Sobras.Cells[4,vi_Linhas2] := STGR_Comb02_P .Cells[3,vi_Linhas06p];
                                                                                                            END ELSE
                                                                                                            IF TRIM(STGR_Comb02_P .Cells[3,vi_Linhas06p]) = TRIM(STGR_Comb02_Fase3.Cells[3,vi_Linhas2]) THEN
                                                                                                            BEGIN
                                                                                                                STGR_Comb03_Sobras.Cells[4,vi_Linhas2] := STGR_Comb02_P .Cells[2,vi_Linhas06p];
                                                                                                            END ; // IF TRIM(STGR_Comb02_P

                                                                                                            STGR_Comb15_8I7P.Cells[00,vi_Linhas2] := INTtoSTR( vi_Linhas2 ) ;
                                                                                                            STGR_Comb15_8I7P.Cells[01,vi_Linhas2] := STGR_Comb03_Sobras.Cells[2,vi_Linhas2] ;
                                                                                                            STGR_Comb15_8I7P.Cells[02,vi_Linhas2] := STGR_Comb03_Sobras.Cells[3,vi_Linhas2] ;
                                                                                                            STGR_Comb15_8I7P.Cells[03,vi_Linhas2] := STGR_Comb03_Sobras.Cells[4,vi_Linhas2] ;
                                                                                                            STGR_Comb15_8I7P.Cells[04,vi_Linhas2] := STGR_Comb02_Fase3.Cells[2,vi_Linhas2] ;
                                                                                                            STGR_Comb15_8I7P.Cells[05,vi_Linhas2] := STGR_Comb02_Fase3.Cells[3,vi_Linhas2] ;
                                                                                                            STGR_Comb15_8I7P.Cells[06,vi_Linhas2] := STGR_Comb05_I_b.Cells[1,vi_Linhas06p] ;
                                                                                                            STGR_Comb15_8I7P.Cells[07,vi_Linhas2] := STGR_Comb05_I_b.Cells[2,vi_Linhas06p] ;
                                                                                                            STGR_Comb15_8I7P.Cells[08,vi_Linhas2] := STGR_Comb05_I_b.Cells[3,vi_Linhas06p] ;
                                                                                                            STGR_Comb15_8I7P.Cells[09,vi_Linhas2] := STGR_Comb05_I_b.Cells[4,vi_Linhas06p] ;
                                                                                                            STGR_Comb15_8I7P.Cells[10,vi_Linhas2] := STGR_Comb05_I_b.Cells[5,vi_Linhas06p] ;
                                                                                                            STGR_Comb15_8I7P.Cells[11,vi_Linhas2] := STGR_Comb05_P_b.Cells[1,vi_Linhas06p] ;
                                                                                                            STGR_Comb15_8I7P.Cells[12,vi_Linhas2] := STGR_Comb05_P_b.Cells[2,vi_Linhas06p] ;
                                                                                                            STGR_Comb15_8I7P.Cells[13,vi_Linhas2] := STGR_Comb05_P_b.Cells[3,vi_Linhas06p] ;
                                                                                                            STGR_Comb15_8I7P.Cells[14,vi_Linhas2] := STGR_Comb05_P_b.Cells[4,vi_Linhas06p] ;
                                                                                                            STGR_Comb15_8I7P.Cells[15,vi_Linhas2] := STGR_Comb05_P_b.Cells[5,vi_Linhas06p] ;
                                                                                                            IF (NUMEROS_FIXOS1(vi_Linhas2)) and (NUMEROS_FIXOS2(vi_Linhas2)) and (NUMEROS_FIXOS3(vi_Linhas2))  then
                                                                                                            BEGIN
                                                                                                                PR_Ordenar_Simulacao_15_8i7p (vi_Linhas2);
                                                                                                                IF  ((STRtoINT(STGR_Comb03_Sobras.Cells[2,vi_Linhas2])+ STRtoINT(STGR_Comb03_Sobras.Cells[3,vi_Linhas2])+ STRtoINT(STGR_Comb03_Sobras.Cells[4,vi_Linhas2]) ) >=36)
                                                                                                                    AND ((STRtoINT(STGR_Comb03_Sobras.Cells[2,vi_Linhas2])+ STRtoINT(STGR_Comb03_Sobras.Cells[3,vi_Linhas2])+ STRtoINT(STGR_Comb03_Sobras.Cells[4,vi_Linhas2]) ) <=42)
                                                                                                                THEN
                                                                                                                    vi_Linhas2 := vi_Linhas2 +1;
                                                                                                            END; // IF
                                                                                                        END; // IF  IF ( (STRtoINT(STGR_Comb
                                                                                                    END;   //FOR vi_Comb02_col3_2
                                                                                               END;   //FOR vi_Comb02_col3_1
                                                                                         END;   //FOR vi_Comb02_col2_2
                                                                                     END;   //FOR vi_Comb02_col2_1
                                                                                END; //IF
                                                                           END;    //FOR vi_Comb02_col1_2
                                                                       END;    //FOR vi_Comb02_col1_1
                                                                       //-----------------------------------
                                                                END; // IF vb_Linhas2
                                                             END;  //FOR vi_Comb03P_Excluidos_3
                                                        END; //FOR vi_Comb03P_Excluidos_2
                                                   END; //FOR vi_Comb03P_Excluidos_1
                                             END;  //FOR vi_Comb03I_Excluidos_3
                                        END; //FOR vi_Comb03I_Excluidos_2
                                   END; //FOR vi_Comb03I_Excluidos_1
                                   vi_Linhas06p := vi_Linhas06p +1;
                                   STGR_Comb02_col1.Repaint;
                              END; // FOR vi_Comb2p_2
                         END; // FOR vi_Comb2p_1

                         LA_Total_Comb.Caption := 'TOTAL PROCESSADOS: '+INTtoSTR(vi_Combinacoes1)+'   ';
                         LA_Total_Comb.Repaint;
                         LA_Total_Comb.Repaint;
                    END; // FOR vi_Comb3i_3
                    STGR_Comb05_I_b.RowCount := vi_Linhas06p;
                    STGR_Comb05_P_b.RowCount := vi_Linhas06p;
                    STGR_Comb02_P.RowCount := vi_Linhas06p;
                    STGR_Comb02_P_Sobras.RowCount := vi_Linhas06p;
                    STGR_Comb03_I.RowCount := vi_Linhas06p;
                    STGR_Comb03_I_Sobras.RowCount := vi_Linhas06p;
                    STGR_Comb03I_Excluidos.RowCount := vi_Linhas03Exc;
                    STGR_Comb03P_Excluidos.RowCount := vi_Linhas03Exc;
                    STGR_Comb02_col1.RowCount := vi_Linhas2;
                    STGR_Comb02_col2.RowCount := vi_Linhas2;
                    STGR_Comb02_col3.RowCount := vi_Linhas2;
                    STGR_Comb02_Fase3.RowCount := vi_Linhas2;
                    STGR_Comb02_Fase3.RowCount := vi_Linhas2;
                    STGR_Comb03_Sobras.RowCount := vi_Linhas2;
                    STGR_Comb15_8I7P.RowCount := vi_Linhas2;

                         STGR_Comb02_P.Repaint;
                         STGR_Comb03_I.Repaint;
//-                         STGR_Comb03_ISobras.Repaint;
               END; // FOR vi_Comb3i_2
               PGBR_GerarComb0.Position :=  TRUNC(vi_Combinacoes1/(STGR_Base.RowCount-1)*100);
               sleep(11);
               if  (vi_Comb3i_1 MOD 3 = 0) then
               BEGIN
                   SELF.WindowState := wsMinimized;
                   SELF.WindowState :=  wsNormal;
                   SELF.Repaint;
               END;//IF
          END; // FOR vi_Combi3_1
          vi_Combinacoes1 := vi_Combinacoes1 + 1;
          vi_Contar_Comb1 := vi_Contar_Comb1 +1;
     END; //  while
    STGR_Comb02_col1.RowCount := vi_Linhas2;
    STGR_Comb02_col2.RowCount := vi_Linhas2;
    STGR_Comb02_col3.RowCount := vi_Linhas2;
    STGR_Comb02_Fase3.RowCount := vi_Linhas2;
    STGR_Comb02_Fase3.RowCount := vi_Linhas2;
    STGR_Comb03_Sobras.RowCount := vi_Linhas2;
    STGR_Comb15_8I7P.RowCount := vi_Linhas2;
    STGR_Comb15_8I7P.Repaint;
     STGR_Comb02_P.Repaint;
     STGR_Comb03_I.Repaint;
     // -->  encerrando as gravações
          PR_GRAVAR_DADOS_SMFX ( strTOint(RIGHTSTR(CB_SomaTotal_15n.Text,3)) );
     PGBR_GerarComb0.Position :=  100;
     LA_rTOTAL_Comb.Caption:= INTtoSTR(vi_Contar_Comb1-1)+'     ';

     SELF.WindowState := wsMinimized;
     SELF.WindowState :=  wsNormal;
     SELF.Repaint;
     LA_gFIM_GERAR.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
     // ==> ACERTANDO O PAINEL DE ENCERRAMENTO
     BBT_RECOMECAR.Enabled := false;
     BBT_PrepararMenu.Enabled := false;
     LA_rQTD_Comb.Caption    :=  INTtoSTR(vi_Linhas2-1);

            SELF.IBQ_Combinacoes.SQL.Clear;                                                
            SELF.IBQ_Combinacoes.SQL.Add('SELECT COUNT(DISTINCT(dados)) AS SOMADADOS  FROM GERADOR_RESULT_DIV_SMFX4_8I7P;')  ;
            SELF.IBQ_Combinacoes.Open;
            IBQ_Combinacoes.First;
     LA_rTOTAL_100REPET.Caption := IBQ_Combinacoes.FIELDBYNAME('SOMADADOS').AsString;

            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIV_SMFX4_DEF SET HORA_TERMINO ='''+FORMATDATETIME('h:n:s',time())+''', QTD_DADOS= ''' +INTtoSTR(vi_Contar_Comb1)+ ''';')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
     LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIV_SMFX4_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
            SELF.IBQ_Combinacoes.ExecSQL;   
     PA_RemoveuRepetidos.Left := 1000;
end;



procedure T_F_Gerador_ResDiv_SmFx4.BBT_RemoveuRepetidosClick(Sender: TObject);
begin
     PA_RemoveuRepetidos.Left := 5000;
     BBT_RECOMECAR.Enabled := false;
     BBT_PrepararMenu.Enabled := false;
     BBT_GerarMenu.Enabled := false;
     PA_Inicial.Enabled := TRUE;
     BTN_NovaSimulacao.Enabled := false;
     BTN_Reajustar.Enabled := TRUE;
//     BBT_CARREGAR.Enabled := false;
     PA_Inicial.Left := 1060;
     PA_Inicial.Top := 5;
end;




procedure T_F_Gerador_ResDiv_SmFx4.BTN_ReajustarClick(Sender: TObject);
begin
     SCBX_Gabarito.Visible := TRUE;
     SCBX_Gabarito.Enabled := TRUE;
     PA_Resultado.Visible := TRUE;
     PA_Resultado.Enabled := TRUE;
     BBT_PrepararMenu.Enabled := TRUE;
     BBT_GerarMenu.Enabled := false;
     BBT_CancelarSair.Visible := false;
     PA_Inicial.Enabled := false;
     PA_Inicial.Left := 2198;
     SCBX_Gabarito.Top:=247;
     SCBX_Gabarito.Repaint;
end;



procedure T_F_Gerador_ResDiv_SmFx4.BBT_CARREGARClick(Sender: TObject);
begin
    BBT_CancelarSair.Visible := TRUE;
//       SELF.PR_LIMPAR_GRID10();
     SCBX_Gabarito.Visible := TRUE;
     SCBX_Gabarito.Enabled := TRUE;
     PA_Resultado.Visible := TRUE;
     PA_Resultado.Enabled := TRUE;
     PA_ExecutarFiltro.Enabled := TRUE;

     BBT_PrepararMenu.Enabled := false;
     BBT_GerarMenu.Enabled := false;
     PA_Inicial.Enabled := false;
     PA_Inicial.Left := 2198;
     PGBR_GerarComb0.Position := 100;
     LA_Total_Comb.Visible := false;
     LA_Gerar_Comb.Visible := false;
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIV_SMFX4_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
end;



procedure T_F_Gerador_ResDiv_SmFx4.BBT_Gerar_SairClick(Sender: TObject);
begin
     PA_Gerar.Enabled := false;
     PA_Gerar.Left := 4500;    ;
     PA_Gerar.Repaint;
end;



procedure T_F_Gerador_ResDiv_SmFx4.BBT_BlocoNotasClick(Sender: TObject);
var
    vi_Contar, vc_qtd_pares : INTEGER;
    vc_Nome_Tabela, vc_Combinacoes2, vcTitulo : string;
begin
     for vc_qtd_pares := 8 to 8 do
     begin
          CASE vc_qtd_pares OF
               8:  vc_Nome_Tabela := 'GERADOR_RESULT_DIV_SMFX4_8I7P';
               7:  vc_Nome_Tabela := 'GERADOR_RESULT_DIV_SMFX4_7I8P';
          END; //CASE
          MEM_Combinacoes_Todas.Clear;
          SELF.IBQ_Combinacoes.Close;
          SELF.IBQ_Combinacoes.SQL.Clear;
          SELF.IBQ_Combinacoes.SQL.Add('SELECT COUNT(distinct(DADOS)) AS SOMADADOS FROM ' +vc_Nome_Tabela+ ';')  ;
          SELF.IBQ_Combinacoes.Prepare;
          SELF.IBQ_Combinacoes.Open;
          vi_Contar := SELF.IBQ_Combinacoes.FIELDBYNAME('SOMADADOS').AsInteger;
          CASE vc_qtd_pares OF
               7:  vcTitulo := 'GERADOR 7Impares e 8Pares MODELO 3';
               8:  vcTitulo := 'GERADOR 8Impares e 7Pares MODELO 3';
          END; //CASE
          MEM_Combinacoes_Todas.Lines.Add(vcTitulo) ;
          MEM_Combinacoes_Todas.Lines.Add('TOTAL: ' + INTtoSTR(vi_Contar)) ;
          MEM_Combinacoes_Todas.Lines.Add('----------------------------') ;
          SELF.IBQ_Combinacoes.SQL.Clear;
          SELF.IBQ_Combinacoes.SQL.Add('SELECT distinct(DADOS) FROM ' +vc_Nome_Tabela+ ' ORDER BY DADOS;')  ;
          SELF.IBQ_Combinacoes.Prepare;
          SELF.IBQ_Combinacoes.Open;
          SELF.IBQ_Combinacoes.First;
          WHILE (NOT(SELF.IBQ_Combinacoes.Eof)) DO
          BEGIN
               vc_Combinacoes2 := '';
                vc_Combinacoes2 := trim(IBQ_Combinacoes.FIELDBYNAME('DADOS').AsString);
                    MEM_Combinacoes_Todas.Lines.Add(vc_Combinacoes2) ;
               IBQ_Combinacoes.Next;
         END; // FOR vi_Contar
         MEM_Combinacoes_Todas.Repaint;
         //MEM_Combinacoes_Todas.SelectAll;
         //MEM_Combinacoes_Todas.CopyToClipboard;
         //MEM_Combinacoes_Todas.Repaint;
         MEM_Combinacoes_Todas.Lines.SaveToFile('C:\CXLOTOFACIL\'+vc_Nome_Tabela+'.TXT');
     END; // For
    winExec('Notepad.exe C:\CXLOTOFACIL\GERADOR_RESULT_DIV_SMFX4_8I7P.TXT', sw_shownormal);
   SHOWMESSAGE('BLOCO DE NOTAS GERADO');
end;



procedure T_F_Gerador_ResDiv_SmFx4.btn_CarregarClick(Sender: TObject);
begin
     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIV_SMFX4_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
     SELF.IBQ_Combinacoes.ExecSQL;
     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
     SELF.IBQ_Combinacoes.ExecSQL;
     SHOWMESSAGE('OK');
     SELF.Close;
end;



end.
