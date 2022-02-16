unit uGerador_ResultDiv_SmFx5_235Comb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, RzBmpBtn, DB, strutils,
  IBCustomDataSet, IBQuery, IBDatabase, IdBaseComponent, IdComponent, IdIPWatch ;

type
  T_F_Gerador_ResDiv_SmFx5 = class(TForm)
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
    PGBR_Etapa_01: TProgressBar;
    PA_Gerar: TPanel;
    Panel2: TPanel;
    Label63: TLabel;
    BBT_Etapa01: TBitBtn;
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
    STGR_Comb15_final: TStringGrid;
    LA_rTOTAL_100REPET: TLabel;
    Label50: TLabel;
    STGR_Comb15_7i8p: TStringGrid;
    BTN_BlocoDeNotas1: TButton;
    STGR_Comb08_p1: TStringGrid;
    STGR_Comb06_p2: TStringGrid;
    STGR_COMB02_PSobras: TStringGrid;
    ED_FIXOS_03_8i7p: TEdit;
    btn_Carregar: TButton;
    STGR_Comb07_p1_Sobras: TStringGrid;
    STGR_Comb04_p3_Sobras: TStringGrid;
    Bevel1: TBevel;
    Label3: TLabel;
    Bevel2: TBevel;
    Label10: TLabel;
    STGR_Comb12_p3: TStringGrid;
    Bevel4: TBevel;
    Label14: TLabel;
    Label15: TLabel;
    BitBtn1: TBitBtn;
    BBT_Etapa02: TBitBtn;
    STGR_Comb12_p4: TStringGrid;
    Bevel5: TBevel;
    Label4: TLabel;
    STGR_Comb12_p4_sobras: TStringGrid;
    STGR_Comb15_p5: TStringGrid;
    Bevel3: TBevel;
    Label5: TLabel;
    Label11: TLabel;
    Bevel6: TBevel;
    Label12: TLabel;
    STGR_Comb10_p6: TStringGrid;
    BBT_Etapa03: TBitBtn;
    STGR_Comb02_p6: TStringGrid;
    STGR_Comb04_p6: TStringGrid;
    PGBR_Etapa_02: TProgressBar;
    PGBR_Etapa_03: TProgressBar;
    PGBR_Etapa_04: TProgressBar;
    Label13: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    BBT_Etapa04: TBitBtn;
    CB_Tipo: TComboBox;
    LA_Tipo: TLabel;
    IBQ_Combin_02: TIBQuery;
    procedure BBT_Preparar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BBT_CloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBT_PrepararMenuClick(Sender: TObject);
    procedure BTN_NovaSimulacaoClick(Sender: TObject);
    procedure BBT_Gerar_VoltarClick(Sender: TObject);
    procedure BTN_SairClick(Sender: TObject);
    procedure BBT_CancelarClick(Sender: TObject);
    procedure BBT_Etapa01Click(Sender: TObject);
    procedure BBT_GerarMenuClick(Sender: TObject);
    procedure BBT_RemoveuRepetidosClick(Sender: TObject);
    procedure BTN_ReajustarClick(Sender: TObject);
    procedure BBT_CARREGARClick(Sender: TObject);
    procedure BBT_Gerar_SairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BBT_BlocoNotasClick(Sender: TObject);
    procedure btn_CarregarClick(Sender: TObject);
    procedure BBT_Etapa02Click(Sender: TObject);
    procedure BBT_Etapa03Click(Sender: TObject);
    procedure BBT_Etapa04Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
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
  _F_Gerador_ResDiv_SmFx5: T_F_Gerador_ResDiv_SmFx5;

implementation

{$R *.dfm}


procedure T_F_Gerador_ResDiv_SmFx5.Set_MODALIDADE(const Value: STRING);
begin
  F_MODALIDADE := Value;
end;





procedure T_F_Gerador_ResDiv_SmFx5.FormCreate(Sender: TObject);
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
            SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIV_SmFx5_DEF SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
end;



procedure T_F_Gerador_ResDiv_SmFx5.FormActivate(Sender: TObject);
begin
      IF (SELF._MODALIDADE ='GERADOR') THEN
      begin
          LA_Titulo.Caption             := 'GERADOR Resultados Diversos a Partir das Somas Fixas 5';
          CB_Tipo.ItemIndex := 2;
          CB_Tipo.Enabled := false;
      END ELSE
      BEGIN
          LA_Titulo.Caption             := 'SIMULAR modelo 7 - Resultados Diversos a Partir das Somas Fixas 5';
          CB_Tipo.Enabled := True;
          BTN_NovaSimulacao.Click;
      end;
      LA_Titulo.Repaint;
end;



procedure T_F_Gerador_ResDiv_SmFx5.FormClose(Sender: TObject;
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


procedure T_F_Gerador_ResDiv_SmFx5.BBT_CloseClick(Sender: TObject);
begin
     SELF.Close;
end;








procedure T_F_Gerador_ResDiv_SmFx5.BTN_NovaSimulacaoClick(Sender: TObject);
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


procedure T_F_Gerador_ResDiv_SmFx5.BTN_SairClick(Sender: TObject);
begin
     SELF.Close;
end;



procedure T_F_Gerador_ResDiv_SmFx5.BBT_CancelarClick(Sender: TObject);
begin
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIV_SmFx5_DEF SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('COMMIT;')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
          SELF.Close;
end;





PROCEDURE T_F_Gerador_ResDiv_SmFx5.PR_ZERAR_VALIDA_ETAPA_1;
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



FUNCTION T_F_Gerador_ResDiv_SmFx5.FN_VALIDAR_ETAPA_2(vi_Linha: Integer):Boolean;
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




FUNCTION T_F_Gerador_ResDiv_SmFx5.FN_VALIDAR_ETAPA_8(vi_Linha: Integer):Boolean;
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



FUNCTION T_F_Gerador_ResDiv_SmFx5.FN_VALIDAR_ETAPA_3(vi_Linha: Integer):Boolean;
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




FUNCTION T_F_Gerador_ResDiv_SmFx5.FN_VALIDAR_ETAPA_6(vi_Linha: Integer):Boolean;
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



procedure T_F_Gerador_ResDiv_SmFx5.BBT_PrepararMenuClick(Sender: TObject);
begin
     PA_Preparar.Visible := TRUE;
     PA_Preparar.Enabled := TRUE;
     PA_Preparar.Top  := 245;
     PA_Preparar.Left := 460;
     PA_Preparar.Repaint;
end;



procedure T_F_Gerador_ResDiv_SmFx5.BBT_Gerar_VoltarClick(Sender: TObject);
begin
     PA_Preparar.Visible := false;
     PA_Preparar.Enabled := false;
     PA_Preparar.Left := 4500;
     PA_Preparar.Repaint;
end;


procedure T_F_Gerador_ResDiv_SmFx5.BBT_Preparar1Click(Sender: TObject);
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
     IBQ_Combinacoes.SQL.Add('SELECT * FROM RESULTADO_GERADOS_235comb ORDER BY n') ;
     IBQ_Combinacoes.Prepare;
     IBQ_Combinacoes.Open;
     IBQ_Combinacoes.First;
     vi_Contador1 := 1  ;
     WHILE NOT(IBQ_Combinacoes.Eof) DO
     BEGIN
          STGR_Base.Cells[0,vi_Contador1] := INTtoSTR(vi_Contador1);
          STGR_Base.Cells[01,vi_Contador1] := '';
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
     SELF.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_DIV_SmFx5_DEF')  ;
     SELF.IBQ_Combinacoes.ExecSQL;

     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_DIV_SmFx5_8I7P')  ;
     SELF.IBQ_Combinacoes.ExecSQL;

     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_DIV_SMFX5_ETAPA1')  ;
     SELF.IBQ_Combinacoes.ExecSQL;

     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_DIV_SMFX5_ETAPA3')  ;
     SELF.IBQ_Combinacoes.ExecSQL;

     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_DIV_SMFX5_FINAL')  ;
     SELF.IBQ_Combinacoes.ExecSQL;

     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_DIV_SMFX5_FINAL2')  ;
     SELF.IBQ_Combinacoes.ExecSQL;

     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
     SELF.IBQ_Combinacoes.ExecSQL;

     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('SELECT * FROM GERADOR_RESULT_DIV_SmFx5_DEF; ')  ;
     SELF.IBQ_Combinacoes.Prepare;
     SELF.IBQ_Combinacoes.Open;

     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('insert INTO GERADOR_RESULT_DIV_SmFx5_DEF (FLAG_FILTRAR,FLAG_GRAVAR) values (''N'',''N'');')  ;
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




procedure T_F_Gerador_ResDiv_SmFx5.BBT_GerarMenuClick(Sender: TObject);
begin
     PA_Gerar.Visible := TRUE;
     PA_Gerar.Enabled := TRUE;
     PA_Gerar.Top  := 245;
     PA_Gerar.Left := 460;
     PA_Gerar.Repaint;
end;







procedure T_F_Gerador_ResDiv_SmFx5.BBT_Etapa01Click(Sender: TObject);


     PROCEDURE PR_Ordenar_Comb12 (VI_LINHAS9: INTEGER);
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
        FOR vi_Contar :=2 TO 13 DO
        BEGIN
            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Comb12_p3.Cells[vi_Contar,VI_LINHAS9])) ,1]:='V';
        END; // FOR vi_Contar1
        vi_CntCelulas := 2;
        FOR vi_Contar :=1 TO 25 DO
        BEGIN
            IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') THEN
            BEGIN
                STGR_Comb12_p3.Cells[vi_CntCelulas, VI_LINHAS9] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) ;
                vi_CntCelulas := vi_CntCelulas + 1;
            END; // IF (STGR_Todos_Numeros
        END; // FOR vi_Contar
    end; // PROCEDURE PR_Ordenar_Comb12


var
     vi_Combinacoes1, vi_Contar_Comb1, vi_Contador, vi_Contar: integer;
     vi_Total_Comb1,  vi_ContaSel1: integer;
     vi_Comb08i_1, vi_Comb08i_2, vi_Comb08i_3, vi_Comb08i_4, vi_Comb08i_5, vi_Comb08i_6, vi_Comb08i_7, vi_Comb08i_8 : INTEGER;
     vi_Comb06i_1, vi_Comb06i_2, vi_Comb06i_3, vi_Comb06i_4, vi_Comb06i_5, vi_Comb06i_6 : INTEGER;     
     vi_Linhas2, vi_Linhas08 : integer;

     vs_NumerosPrincipais, vs_NumerosPrincipaiNs : STRING;
begin
    LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
    STGR_Comb06_p2.ColWidths [0]:= 55 ;
    STGR_Comb04_p3_Sobras.ColWidths [0]:= 55 ;
    STGR_Comb08_p1.ColWidths [0]:= 55 ;
    STGR_Comb07_p1_Sobras.ColWidths [0]:= 55 ;
    STGR_Comb12_p3.ColWidths [0]:= 55 ;



    STGR_Comb15.ColWidths [0]:= 49;
    STGR_Comb15_7i8p.RowCount := 2;
    STGR_Comb15_Final.RowCount := 2;
    STGR_Comb15_Final.ColWidths [0]:= 49;
    STGR_Comb15_7I8P.ColWidths [0]:= 49;
    STGR_Comb15_7i8p.Cells[0,0] := '{7i/8P}';
    STGR_Comb15_Final.Cells[0,0] := '{8i/7P}';

    PGBR_Etapa_01.Position :=0 ;
    PGBR_Etapa_01.Repaint;
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
        SCBX_dados.HorzScrollBar.Position := 1;
        SCBX_dados.Repaint;
    LA_rTOTAL_Comb.Caption  := INTtoSTR(STGR_Base.RowCount-1);

    //PR_GRAVAR_DADOS ('INICIO',vi_Linhas_01_01, 1, TRUNC(STGR_Base.RowCount-1));
    PGBR_Etapa_01.Position := 0;
    PGBR_Etapa_01.Repaint;
    vi_Combinacoes1 := 1 ;
    vi_Linhas2 := 1  ;
    vi_Linhas08 := 1  ;

    WHILE vi_Combinacoes1 <= (TRUNC((STGR_Base.RowCount-1)/1)) do
    BEGIN
        for  vi_Comb08i_1 := 2  to 09  do
        begin
            for  vi_Comb08i_2 := vi_Comb08i_1 +1  to 10 do
            begin
                for  vi_Comb08i_3 := vi_Comb08i_2 +1  to  11 do
                begin
                    for  vi_Comb08i_4 := vi_Comb08i_3 +1 to  12 do
                    begin
                        for  vi_Comb08i_5 := vi_Comb08i_4 +1 to 13  do
                        begin
                            for  vi_Comb08i_6 := vi_Comb08i_5 +1  to 14 do
                            begin
                                for  vi_Comb08i_7 := vi_Comb08i_6 +1  to  15 do
                                begin
                                    for  vi_Comb08i_8 := vi_Comb08i_7 +1 to  16 do
                                    begin
                                        if  ((
                                            STRtoINT(STGR_Base.Cells[vi_Comb08i_1,vi_Combinacoes1]) +
                                            STRtoINT(STGR_Base.Cells[vi_Comb08i_2,vi_Combinacoes1]) +
                                            STRtoINT(STGR_Base.Cells[vi_Comb08i_3,vi_Combinacoes1]) +
                                            STRtoINT(STGR_Base.Cells[vi_Comb08i_4,vi_Combinacoes1]) +
                                            STRtoINT(STGR_Base.Cells[vi_Comb08i_5,vi_Combinacoes1]) +
                                            STRtoINT(STGR_Base.Cells[vi_Comb08i_6,vi_Combinacoes1]) +
                                            STRtoINT(STGR_Base.Cells[vi_Comb08i_7,vi_Combinacoes1]) +
                                            STRtoINT(STGR_Base.Cells[vi_Comb08i_8,vi_Combinacoes1])
                                            )= 110 )
                                        then
                                        begin
                                            for  vi_Comb06i_1 := 2  to 07  do
                                            begin
                                                for  vi_Comb06i_2 := vi_Comb06i_1 +1  to 08 do
                                                begin
                                                    for  vi_Comb06i_3 := vi_Comb06i_2 +1  to  09 do
                                                    begin
                                                        for  vi_Comb06i_4 := vi_Comb06i_3 +1 to  09 do
                                                        begin
                                                            for  vi_Comb06i_5 := vi_Comb06i_4 +1 to 10  do
                                                            begin
                                                                for  vi_Comb06i_6 := vi_Comb06i_5 +1  to 11 do
                                                                begin
                                                                    if  ((
                                                                        STRtoINT(STGR_Base10.Cells[vi_Comb06i_1,vi_Combinacoes1] ) +
                                                                        STRtoINT(STGR_Base10.Cells[vi_Comb06i_2,vi_Combinacoes1] ) +
                                                                        STRtoINT(STGR_Base10.Cells[vi_Comb06i_3,vi_Combinacoes1] ) +
                                                                        STRtoINT(STGR_Base10.Cells[vi_Comb06i_4,vi_Combinacoes1] ) +
                                                                        STRtoINT(STGR_Base10.Cells[vi_Comb06i_5,vi_Combinacoes1] ) +
                                                                        STRtoINT(STGR_Base10.Cells[vi_Comb06i_6,vi_Combinacoes1] )
                                                                        )= 72 ) then
                                                                    begin
                                                                        // passo1
                                                                        STGR_Comb08_p1.Cells[00,vi_Linhas08] := INTtoSTR( vi_Linhas08 ) ;
                                                                        STGR_Comb08_p1.Cells[01,vi_Linhas08] := '+' + INTtoSTR( vi_Combinacoes1 ) + '' ;
                                                                        STGR_Comb08_p1.Cells[02,vi_Linhas08] := STGR_Base.Cells[vi_Comb08i_1,vi_Combinacoes1] ;
                                                                        STGR_Comb08_p1.Cells[03,vi_Linhas08] := STGR_Base.Cells[vi_Comb08i_2,vi_Combinacoes1] ;
                                                                        STGR_Comb08_p1.Cells[04,vi_Linhas08] := STGR_Base.Cells[vi_Comb08i_3,vi_Combinacoes1] ;
                                                                        STGR_Comb08_p1.Cells[05,vi_Linhas08] := STGR_Base.Cells[vi_Comb08i_4,vi_Combinacoes1] ;
                                                                        STGR_Comb08_p1.Cells[06,vi_Linhas08] := STGR_Base.Cells[vi_Comb08i_5,vi_Combinacoes1] ;
                                                                        STGR_Comb08_p1.Cells[07,vi_Linhas08] := STGR_Base.Cells[vi_Comb08i_6,vi_Combinacoes1] ;
                                                                        STGR_Comb08_p1.Cells[08,vi_Linhas08] := STGR_Base.Cells[vi_Comb08i_7,vi_Combinacoes1] ;
                                                                        STGR_Comb08_p1.Cells[09,vi_Linhas08] := STGR_Base.Cells[vi_Comb08i_8,vi_Combinacoes1] ;
                                                                            STGR_Comb12_p3.Cells[00,vi_Linhas08] := INTtoSTR( vi_Linhas08 ) ;
                                                                            STGR_Comb12_p3.Cells[01,vi_Linhas08] := '+' + INTtoSTR( vi_Combinacoes1 ) + '' ;
                                                                            STGR_Comb12_p3.Cells[02,vi_Linhas08] := STGR_Base.Cells[vi_Comb08i_1,vi_Combinacoes1] ;
                                                                            STGR_Comb12_p3.Cells[03,vi_Linhas08] := STGR_Base.Cells[vi_Comb08i_2,vi_Combinacoes1] ;
                                                                            STGR_Comb12_p3.Cells[04,vi_Linhas08] := STGR_Base.Cells[vi_Comb08i_3,vi_Combinacoes1] ;
                                                                            STGR_Comb12_p3.Cells[05,vi_Linhas08] := STGR_Base.Cells[vi_Comb08i_4,vi_Combinacoes1] ;
                                                                            STGR_Comb12_p3.Cells[06,vi_Linhas08] := STGR_Base.Cells[vi_Comb08i_5,vi_Combinacoes1] ;
                                                                            STGR_Comb12_p3.Cells[07,vi_Linhas08] := STGR_Base.Cells[vi_Comb08i_6,vi_Combinacoes1] ;
                                                                            STGR_Comb12_p3.Cells[08,vi_Linhas08] := STGR_Base.Cells[vi_Comb08i_7,vi_Combinacoes1] ;
                                                                            STGR_Comb12_p3.Cells[09,vi_Linhas08] := STGR_Base.Cells[vi_Comb08i_8,vi_Combinacoes1] ;
                                                                        STGR_Comb07_p1_Sobras.Cells[0,vi_Linhas08]  := INTtoSTR(vi_Linhas08) ;
                                                                        // --> Capturando os números ímpares que sobraram
                                                                        FOR vi_Contar :=1 TO 25 DO
                                                                        BEGIN
                                                                            STGR_Todos_Numeros.Cells[vi_Contar,1] :='F';
                                                                            STGR_Todos_Numeros.Cells[vi_Contar,2] :='F';
                                                                        END; // FOR vi_Contar
                                                                        FOR vi_Contar :=2 TO 16 DO
                                                                        BEGIN
                                                                            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Base.Cells[vi_Contar,vi_Combinacoes1])) ,1]:='V';
                                                                        END; // FOR vi_Contar1
                                                                        FOR vi_Contar :=2 TO 09 DO
                                                                        BEGIN
                                                                            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Comb08_p1.Cells[vi_Contar,vi_Linhas08])) ,2]:='V';
                                                                        END; // FOR vi_Contar1
                                                                        vi_ContaSel1 := 2;
                                                                        FOR vi_Contar :=1 TO 25 DO
                                                                        BEGIN
                                                                            IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,2]='F')  THEN
                                                                            BEGIN
                                                                                STGR_Comb07_p1_Sobras.Cells[vi_ContaSel1, vi_Linhas08] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) ;
                                                                                vi_ContaSel1 := vi_ContaSel1 + 1;
                                                                            END; // IF (STGR_Todos_Numeros
                                                                        END; // FOR vi_Contar
                                                                        // passo2
                                                                        STGR_Comb06_p2.Cells[00,vi_Linhas08] := INTtoSTR( vi_Linhas08 ) ;
                                                                        STGR_Comb06_p2.Cells[01,vi_Linhas08] := '+' + INTtoSTR( vi_Combinacoes1 ) + '' ;
                                                                        STGR_Comb06_p2.Cells[02,vi_Linhas08] := STGR_Base10.Cells[vi_Comb06i_1,vi_Combinacoes1] ;
                                                                        STGR_Comb06_p2.Cells[03,vi_Linhas08] := STGR_Base10.Cells[vi_Comb06i_2,vi_Combinacoes1] ;
                                                                        STGR_Comb06_p2.Cells[04,vi_Linhas08] := STGR_Base10.Cells[vi_Comb06i_3,vi_Combinacoes1] ;
                                                                        STGR_Comb06_p2.Cells[05,vi_Linhas08] := STGR_Base10.Cells[vi_Comb06i_4,vi_Combinacoes1] ;
                                                                        STGR_Comb06_p2.Cells[06,vi_Linhas08] := STGR_Base10.Cells[vi_Comb06i_5,vi_Combinacoes1] ;
                                                                        STGR_Comb06_p2.Cells[07,vi_Linhas08] := STGR_Base10.Cells[vi_Comb06i_6,vi_Combinacoes1] ;
                                                                        // passo3
                                                                        STGR_Comb04_p3_Sobras.Cells[0,vi_Linhas08]  := INTtoSTR(vi_Linhas08) ;
                                                                        STGR_Comb04_p3_Sobras.Cells[1,vi_Linhas08]  := '+' + INTtoSTR( vi_Combinacoes1 ) + '' ;
                                                                        // --> Capturando os números ímpares que sobraram
                                                                        FOR vi_Contar :=1 TO 25 DO
                                                                        BEGIN
                                                                            STGR_Todos_Numeros.Cells[vi_Contar,1] :='F';
                                                                            STGR_Todos_Numeros.Cells[vi_Contar,2] :='F';
                                                                        END; // FOR vi_Contar
                                                                        FOR vi_Contar :=2 TO 11 DO
                                                                        BEGIN
                                                                            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Base10.Cells[vi_Contar,vi_Combinacoes1])) ,1]:='V';
                                                                        END; // FOR vi_Contar1
                                                                        FOR vi_Contar :=2 TO 07 DO
                                                                        BEGIN
                                                                            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Comb06_p2.Cells[vi_Contar,vi_Linhas08])) ,2]:='V';
                                                                        END; // FOR vi_Contar1
                                                                        vi_ContaSel1 := 2;
                                                                        FOR vi_Contar :=1 TO 25 DO
                                                                        BEGIN
                                                                            IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,2]='F')  THEN
                                                                            BEGIN
                                                                                STGR_Comb04_p3_Sobras.Cells[vi_ContaSel1, vi_Linhas08] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) ;
                                                                                vi_ContaSel1 := vi_ContaSel1 + 1;
                                                                            END; // IF (STGR_Todos_Numeros
                                                                        END; // FOR vi_Contar
                                                                        STGR_Comb12_p3.Cells[10,vi_Linhas08] := STGR_Comb04_p3_Sobras.Cells[2,vi_Linhas08] ;
                                                                        STGR_Comb12_p3.Cells[11,vi_Linhas08] := STGR_Comb04_p3_Sobras.Cells[3,vi_Linhas08] ;
                                                                        STGR_Comb12_p3.Cells[12,vi_Linhas08] := STGR_Comb04_p3_Sobras.Cells[4,vi_Linhas08] ;
                                                                        STGR_Comb12_p3.Cells[13,vi_Linhas08] := STGR_Comb04_p3_Sobras.Cells[5,vi_Linhas08] ;
                                                                        PR_Ordenar_Comb12 (vi_Linhas08);
                                                                        vi_Linhas08 := vi_Linhas08 +1  ;
                                                                    end; ///if
                                                                end; //for vi_Comb06i_6
                                                            end; //for vi_Comb06i_5
                                                            STGR_Comb06_p2.RowCount := vi_Linhas08;
                                                        end; //for vi_Comb06i_4
                                                    end; //for vi_Comb06i_3
                                                end; //for vi_Comb06i_2
                                            end; //for vi_Comb06i_1

                                        end; /// if

                                    end; //for vi_Comb08i_8
                                end; //for vi_Comb08i_7
                            end; //for vi_Comb08i_6
                        end; //for vi_Comb08i_5
                        STGR_Comb08_p1.RowCount := vi_Linhas08;
                        STGR_Comb07_p1_Sobras.RowCount := vi_Linhas08;
                    end; //for vi_Comb08i_4
                end; //for vi_Comb08i_3
            end; //for vi_Comb08i_2
        end; //for vi_Comb08i_1
        STGR_Comb08_p1.RowCount := vi_Linhas08;
        STGR_Comb07_p1_Sobras.RowCount := vi_Linhas08;
        STGR_Comb06_p2.RowCount := vi_Linhas08;
        STGR_Comb04_p3_Sobras.RowCount := vi_Linhas08;
        STGR_Comb12_p3.RowCount := vi_Linhas08;
        vi_Combinacoes1 := vi_Combinacoes1 + 1;
        vi_Contar_Comb1 := vi_Contar_Comb1 + 1;
        PGBR_Etapa_01.Position := TRUNC (vi_Combinacoes1/(STGR_Base.RowCount-1)*100);
        PGBR_Etapa_01.Repaint;
    END; ///  while

    STGR_Comb15_Final.RowCount := vi_Linhas2;
    STGR_Comb15_Final.Repaint;
    STGR_Comb06_p2.Repaint;
    STGR_Comb08_p1.Repaint;
    PGBR_Etapa_01.Position := 100;
    PGBR_Etapa_01.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
     PA_Gerar.Left := 460;
     PA_Gerar.Enabled := True ;
end;





procedure T_F_Gerador_ResDiv_SmFx5.BBT_Etapa02Click(Sender: TObject);

     PROCEDURE PR_Ordenar_Comb12 (VI_LINHAS9: INTEGER);
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
        FOR vi_Contar :=2 TO 13 DO
        BEGIN
            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Comb12_p4.Cells[vi_Contar,VI_LINHAS9])) ,1]:='V';
        END; // FOR vi_Contar1
        vi_CntCelulas := 2;
        FOR vi_Contar :=1 TO 25 DO
        BEGIN
            IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') THEN
            BEGIN
                STGR_Comb12_p4.Cells[vi_CntCelulas, VI_LINHAS9] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) ;
                vi_CntCelulas := vi_CntCelulas + 1;
            END; // IF (STGR_Todos_Numeros
        END; // FOR vi_Contar
    end; // PROCEDURE PR_Ordenar_Comb12


    PROCEDURE PR_Ordenar_Comb15 (VI_LINHAS9: INTEGER);
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
            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Comb15_p5.Cells[vi_Contar,VI_LINHAS9])) ,1]:='V';
        END; // FOR vi_Contar1
        vi_CntCelulas := 1;
        FOR vi_Contar :=1 TO 25 DO
        BEGIN
            IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') THEN
            BEGIN
                STGR_Comb15_p5.Cells[vi_CntCelulas, VI_LINHAS9] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) ;
                vi_CntCelulas := vi_CntCelulas + 1;
            END; // IF (STGR_Todos_Numeros
        END; // FOR vi_Contar
    end; // PROCEDURE PR_Ordenar_Simulacao_15_8i7p


     FUNCTION NumerosFixos1 (vi_Linhas1 : integer) : BOOLEAN;
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
                    vi_NumeroCelula:=  STRtoINT(STGR_Comb15_p5.Cells[vi_ContaSel1,vi_Linhas1]);
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


     FUNCTION NumerosFixos2 (vi_Linhas1 : Integer) : boolean;
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
                    vi_NumeroCelula:=  STRtoINT(STGR_Comb15_p5.Cells[vi_ContaSel1,vi_Linhas1]);
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


     FUNCTION NumerosFixos3 (vi_Linhas1 : Integer) : boolean;
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
                    vi_NumeroCelula:=  STRtoINT(STGR_Comb15_p5.Cells[vi_ContaSel1,vi_Linhas1]);
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


    PROCEDURE PR_Gravar_Dados_etapa1 ();
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
          vi_ContarStgGrid := TRUNC((STGR_Comb15_p5.RowCount-1)/1);
       FOR VI_AN_Comb1:= 1 TO vi_ContarStgGrid DO
       BEGIN
           vc_Combinacoes15 :='';
           FOR vi_ContarCelulas := 1 TO 25 DO
           BEGIN
                STGR_Todos_Numeros.Cells [vi_ContarCelulas ,1]:='F';
           end;
           FOR vi_ContarCelulas := 1 TO 15 DO
           BEGIN
               vc_Combinacoes15 := vc_Combinacoes15 + TRIM(STGR_Comb15_p5.Cells[vi_ContarCelulas,VI_AN_Comb1]) +' ';
               STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Comb15_p5.Cells[vi_ContarCelulas,VI_AN_Comb1])) ,1]:='V';
               vc_Contador_da_Tabela :=  STGR_Comb15_p5.Cells[0,VI_AN_Comb1] ;
           END; // FOR vi_ContarCelulas
          vc_Nome_Tabela := ' GERADOR_RESULT_DIV_SMFX5_etapa1';
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
           vc_QUERY  := 'INSERT INTO ' +vc_Nome_Tabela+ ' (QTD, DADOS, DADOS_NS, ORIGEM_235) VALUES(' +#39+ vc_Contador_da_Tabela + #39 +','
                 +#39+  TRIM(vc_Combinacoes15) +#39+ ',' +#39+TRIM(vc_Combinacoes10)
                 +#39+ ',' +#39+ TRIM(STGR_Comb12_p4.Cells[01,VI_AN_Comb1])
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


    procedure LimparGrid_Comb15_p5();
    begin
        STGR_Comb15_p5.CleanupInstance;
        //STGR_Comb15_p5.Free;
        freeANDnil(STGR_Comb15_p5);
        sleep (1000);
        SCBX_dados.HorzScrollBar.Position := 1580;
        SCBX_dados.Repaint;
         SELF.WindowState := wsMinimized;
         SELF.WindowState :=  wsNormal;
         SELF.Repaint;
        STGR_Comb15_p5 := TstringGrid.Create(Self);
        with STGR_Comb15_p5 do
        begin
          Left := 754       ;
          Top := 26         ;
          Width := 541      ;
          Height := 306     ;
          TabStop := False  ;
          Color := 14018233 ;
          ColCount := 16    ;
          Ctl3D := False    ;
          DefaultColWidth := 27   ;
          DefaultRowHeight := 25  ;
          FixedColor := clMedGray ;
          RowCount := 8        ;
          Font.Color := clWindowText;
          Font.Height := -16   ;
          Font.Name := 'Times New Roman' ;
          Font.Style := []     ;
          GridLineWidth := 2   ;
          Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
          ParentCtl3D := False ;
          ParentFont := False  ;
          RowCount := 2;
          TabOrder := 11       ;
          DefaultDrawing := False ;
        end; // with
        STGR_Comb15_p5.Parent := SCBX_dados;
        STGR_Comb15_p5.ColWidths [0]:= 60 ;        
        STGR_Comb15_p5.Repaint;
    end;

var                          
     vi_Combinacoes1, vi_Contar_Comb1, vi_Contador, vi_Contar: integer;
     vi_Total_Comb1,  vi_ContaSel1: integer;
     vi_Comb09_1, vi_Comb09_2, vi_Comb09_3, vi_Comb09_4, vi_Comb09_5, vi_Comb09_6, vi_Comb09_7, vi_Comb09_8, vi_Comb09_9 : INTEGER;
     vi_Comb03_1, vi_Comb03_2, vi_Comb03_3, vi_Comb03_4, vi_Comb03_5, vi_Comb03_6 : INTEGER;
     vi_Linhas2, vi_Linhas08 : integer;

     vs_NumerosPrincipais, vs_NumerosPrincipaiNs : STRING;
begin
    STGR_Comb12_p4.ColWidths [0]:= 45 ;
    STGR_Comb12_p4_sobras.ColWidths [0]:= 60 ;
    STGR_Comb15_p5.ColWidths [0]:= 60 ;

    STGR_Comb12_p4.RowCount := 2;
    STGR_Comb12_p4_sobras.RowCount := 2;
    STGR_Comb15_p5.RowCount := 2;
    {
    FOR vi_ContaSel1 := 1 TO 15 DO
    BEGIN
    STGR_Comb15.Cells [vi_ContaSel1,0] := '-'+INTtoSTR(vi_ContaSel1)+'-';
    STGR_Comb15.Cells [vi_ContaSel1,1] := '00';
    STGR_Comb15_7i8p.Cells [vi_ContaSel1,1] := '00';
    STGR_Comb15_Final.Cells [vi_ContaSel1,1] := '00';
    END;
    //STGR_Comb15.ColWidths [2]:= 55;
    STGR_Comb15.RowCount := 2;
    STGR_Comb15.Repaint;
    STGR_Comb15_Final.RowCount := 2;
    STGR_Comb15_Final.Repaint;
    }

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
            SCBX_dados.HorzScrollBar.Position := 1480;
            SCBX_dados.Repaint;
    PGBR_Etapa_02.Position :=0 ;
    PGBR_Etapa_02.Repaint;
    vi_Linhas2 := 1  ;
    vi_Linhas08 := 1  ;
    vi_Contar_Comb1 := 1 ;
    vi_Combinacoes1 := 1 ;
     //3254 gravar
    WHILE vi_Combinacoes1 <= (TRUNC((STGR_Comb12_p3.RowCount-1)/1)) do
    BEGIN
        for  vi_Comb09_1 := 2  to 05  do
        begin
            for  vi_Comb09_2 := vi_Comb09_1 +1  to 06 do
            begin
                for  vi_Comb09_3 := vi_Comb09_2 +1  to  07 do
                begin
                    for  vi_Comb09_4 := vi_Comb09_3 +1 to  08 do
                    begin
                        for  vi_Comb09_5 := vi_Comb09_4 +1 to 09  do
                        begin
                            for  vi_Comb09_6 := vi_Comb09_5 +1  to 10 do
                            begin
                                for  vi_Comb09_7 := vi_Comb09_6 +1  to  11 do
                                begin
                                    for  vi_Comb09_8 := vi_Comb09_7 +1 to  12 do
                                    begin
                                        for  vi_Comb09_9 := vi_Comb09_8 +1 to  13 do
                                        begin

                                            for  vi_Comb03_1 := 2  to 06  do
                                            begin
                                                for  vi_Comb03_2 := vi_Comb03_1 +1  to 07 do
                                                begin
                                                    for  vi_Comb03_3 := vi_Comb03_2 +1  to  08 do
                                                    begin
                                                        if  ((
                                                            STRtoINT(STGR_Comb12_p3.Cells[vi_Comb09_1,vi_Combinacoes1] ) +
                                                            STRtoINT(STGR_Comb12_p3.Cells[vi_Comb09_2,vi_Combinacoes1] ) +
                                                            STRtoINT(STGR_Comb12_p3.Cells[vi_Comb09_3,vi_Combinacoes1] ) +
                                                            STRtoINT(STGR_Comb12_p3.Cells[vi_Comb09_4,vi_Combinacoes1] ) +
                                                            STRtoINT(STGR_Comb12_p3.Cells[vi_Comb09_5,vi_Combinacoes1] ) +
                                                            STRtoINT(STGR_Comb12_p3.Cells[vi_Comb09_6,vi_Combinacoes1] ) +
                                                            STRtoINT(STGR_Comb12_p3.Cells[vi_Comb09_7,vi_Combinacoes1] ) +
                                                            STRtoINT(STGR_Comb12_p3.Cells[vi_Comb09_8,vi_Combinacoes1] ) +
                                                            STRtoINT(STGR_Comb12_p3.Cells[vi_Comb09_9,vi_Combinacoes1] ) +
                                                            STRtoINT(STGR_Comb07_p1_Sobras.Cells[vi_Comb03_1,vi_Combinacoes1] ) +
                                                            STRtoINT(STGR_Comb07_p1_Sobras.Cells[vi_Comb03_2,vi_Combinacoes1] ) +
                                                            STRtoINT(STGR_Comb07_p1_Sobras.Cells[vi_Comb03_3,vi_Combinacoes1] )
                                                            )= 156 ) then
                                                        begin
                                                            // passo 4
                                                            STGR_Comb12_p4.Cells[00,vi_Linhas08] := STGR_Comb12_p3.Cells[0,vi_Combinacoes1] ;
                                                            STGR_Comb12_p4.Cells[01,vi_Linhas08] := STGR_Comb12_p3.Cells[01,vi_Combinacoes1] ;
                                                            STGR_Comb12_p4.Cells[02,vi_Linhas08] := STGR_Comb12_p3.Cells[vi_Comb09_1,vi_Combinacoes1] ;
                                                            STGR_Comb12_p4.Cells[03,vi_Linhas08] := STGR_Comb12_p3.Cells[vi_Comb09_2,vi_Combinacoes1] ;
                                                            STGR_Comb12_p4.Cells[04,vi_Linhas08] := STGR_Comb12_p3.Cells[vi_Comb09_3,vi_Combinacoes1] ;
                                                            STGR_Comb12_p4.Cells[05,vi_Linhas08] := STGR_Comb12_p3.Cells[vi_Comb09_4,vi_Combinacoes1] ;
                                                            STGR_Comb12_p4.Cells[06,vi_Linhas08] := STGR_Comb12_p3.Cells[vi_Comb09_5,vi_Combinacoes1] ;
                                                            STGR_Comb12_p4.Cells[07,vi_Linhas08] := STGR_Comb12_p3.Cells[vi_Comb09_6,vi_Combinacoes1] ;
                                                            STGR_Comb12_p4.Cells[08,vi_Linhas08] := STGR_Comb12_p3.Cells[vi_Comb09_7,vi_Combinacoes1] ;
                                                            STGR_Comb12_p4.Cells[09,vi_Linhas08] := STGR_Comb12_p3.Cells[vi_Comb09_8,vi_Combinacoes1] ;
                                                            STGR_Comb12_p4.Cells[10,vi_Linhas08] := STGR_Comb12_p3.Cells[vi_Comb09_9,vi_Combinacoes1] ;
                                                            STGR_Comb12_p4.Cells[11,vi_Linhas08] := STGR_Comb07_p1_Sobras.Cells[vi_Comb03_1,vi_Combinacoes1] ;
                                                            STGR_Comb12_p4.Cells[12,vi_Linhas08] := STGR_Comb07_p1_Sobras.Cells[vi_Comb03_2,vi_Combinacoes1] ;
                                                            STGR_Comb12_p4.Cells[13,vi_Linhas08] := STGR_Comb07_p1_Sobras.Cells[vi_Comb03_3,vi_Combinacoes1] ;

                                                            STGR_Comb12_p4_sobras.Cells[0,vi_Linhas08]  := INTtoSTR(vi_Linhas08) ;
                                                            // --> Capturando os números que sobraram
                                                            FOR vi_Contar :=1 TO 25 DO
                                                            BEGIN
                                                                STGR_Todos_Numeros.Cells[vi_Contar,1] :='F';
                                                                STGR_Todos_Numeros.Cells[vi_Contar,2] :='F';
                                                            END; // FOR vi_Contar
                                                            FOR vi_Contar :=2 TO 13 DO
                                                            BEGIN
                                                                STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Comb12_p3.Cells[vi_Contar,vi_Combinacoes1])) ,1]:='V';
                                                            END; // FOR vi_Contar1
                                                            FOR vi_Contar :=2 TO 10 DO
                                                            BEGIN
                                                                STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Comb12_p4.Cells[vi_Contar,vi_Linhas08])) ,2]:='V';
                                                            END; // FOR vi_Contar1
                                                            vi_ContaSel1 := 1;
                                                            FOR vi_Contar :=1 TO 25 DO
                                                            BEGIN
                                                                IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,2]='F')  THEN
                                                                BEGIN
                                                                    STGR_Comb12_p4_sobras.Cells[vi_ContaSel1, vi_Linhas08] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) ;
                                                                    vi_ContaSel1 := vi_ContaSel1 + 1;
                                                                END; // IF (STGR_Todos_Numeros
                                                            END; // FOR vi_Contar
                                                            // passo 5
                                                            STGR_Comb15_p5.Cells[00,vi_Linhas08] := intTOstr(vi_Combinacoes1) ;
                                                            STGR_Comb15_p5.Cells[01,vi_Linhas08] := STGR_Comb12_p4.Cells[02,vi_Linhas08] ;
                                                            STGR_Comb15_p5.Cells[02,vi_Linhas08] := STGR_Comb12_p4.Cells[03,vi_Linhas08] ;
                                                            STGR_Comb15_p5.Cells[03,vi_Linhas08] := STGR_Comb12_p4.Cells[04,vi_Linhas08] ;
                                                            STGR_Comb15_p5.Cells[04,vi_Linhas08] := STGR_Comb12_p4.Cells[05,vi_Linhas08] ;
                                                            STGR_Comb15_p5.Cells[05,vi_Linhas08] := STGR_Comb12_p4.Cells[06,vi_Linhas08] ;
                                                            STGR_Comb15_p5.Cells[06,vi_Linhas08] := STGR_Comb12_p4.Cells[07,vi_Linhas08] ;
                                                            STGR_Comb15_p5.Cells[07,vi_Linhas08] := STGR_Comb12_p4.Cells[08,vi_Linhas08] ;
                                                            STGR_Comb15_p5.Cells[08,vi_Linhas08] := STGR_Comb12_p4.Cells[09,vi_Linhas08] ;
                                                            STGR_Comb15_p5.Cells[09,vi_Linhas08] := STGR_Comb12_p4.Cells[10,vi_Linhas08] ;
                                                            STGR_Comb15_p5.Cells[10,vi_Linhas08] := STGR_Comb12_p4.Cells[11,vi_Linhas08] ;
                                                            STGR_Comb15_p5.Cells[11,vi_Linhas08] := STGR_Comb12_p4.Cells[12,vi_Linhas08] ;
                                                            STGR_Comb15_p5.Cells[12,vi_Linhas08] := STGR_Comb12_p4.Cells[13,vi_Linhas08] ;
                                                            STGR_Comb15_p5.Cells[13,vi_Linhas08] := STGR_Comb12_p4_sobras.Cells[01,vi_Linhas08] ;
                                                            STGR_Comb15_p5.Cells[14,vi_Linhas08] := STGR_Comb12_p4_sobras.Cells[02,vi_Linhas08] ;
                                                            STGR_Comb15_p5.Cells[15,vi_Linhas08] := STGR_Comb12_p4_sobras.Cells[03,vi_Linhas08] ;
                                                            IF (NumerosFixos1(vi_Linhas08)) and (NumerosFixos2(vi_Linhas08)) and (NumerosFixos3(vi_Linhas08))
                                                            then
                                                            BEGIN
                                                                PR_Ordenar_Comb12 (vi_Linhas08);
                                                                PR_Ordenar_Comb15 (vi_Linhas08);
                                                                vi_Linhas08 := vi_Linhas08 + 1;
                                                            end; /// if (NumerosFixos
                                                        end; /// if
                                                    end; //for vi_Comb03_3
                                                end; //for vi_Comb03_2
                                            end; //for vi_Comb03_1

                                        end; //for vi_Comb09_9
                                    end; //for vi_Comb09_8
                                end; //for vi_Comb09_7
                            end; //for vi_Comb09_6
                        end; //for vi_Comb09_5
                        STGR_Comb12_p4.RowCount := vi_Linhas08;
                    end; //for vi_Comb09_4
                end; //for vi_Comb09_3
            end; //for vi_Comb09_2
        end; //for vi_Comb09_1
        STGR_Comb12_p4.RowCount := vi_Linhas08;
        STGR_Comb12_p4_sobras.RowCount := vi_Linhas08;
        STGR_Comb12_p4.Repaint;
        STGR_Comb12_p4_sobras.Repaint;
        STGR_Comb15_p5.RowCount := vi_Linhas08;
        STGR_Comb15_p5.Repaint ;
        vi_Combinacoes1 := vi_Combinacoes1 + 1;
        vi_Contar_Comb1 := vi_Contar_Comb1 + 1;
        IF ((vi_Contar_Comb1 mod 400) =0 ) or (vi_Contar_Comb1 =TRUNC((STGR_Comb12_p3.RowCount-1)/1)) then    //1000
        begin
            STGR_Comb15_p5.DefaultDrawing := False ;
            STGR_Comb12_p4.DefaultDrawing := False ;
            STGR_Comb12_p4_sobras.DefaultDrawing := False ;
                    
            PR_Gravar_Dados_etapa1 ();
            LimparGrid_Comb15_p5 ();
            vi_Linhas08 := 1;
            PGBR_Etapa_02.Position := TRUNC (vi_Combinacoes1/((STGR_Comb12_p3.RowCount-1)/1)*100);
            PGBR_Etapa_02.Repaint;
            SELF.WindowState := wsMinimized;
            SELF.WindowState :=  wsNormal;
            SELF.Repaint;
            sleep (15); // 7
        end;

    END; ///  while

    PR_Gravar_Dados_etapa1 ();
            STGR_Comb15_p5.DefaultDrawing := True ;
            STGR_Comb12_p4.DefaultDrawing := True ;
            STGR_Comb12_p4_sobras.DefaultDrawing := True ;
    STGR_Comb15_p5.RowCount := vi_Linhas08;
    STGR_Comb15_p5.Repaint ;
    STGR_Comb12_p4_sobras.RowCount := vi_Linhas08;
    STGR_Comb12_p4_sobras.Repaint ;
    STGR_Comb12_p4.RowCount := vi_Linhas08;
    STGR_Comb12_p4.Repaint ;


    STGR_Comb06_p2.Repaint;
    STGR_Comb08_p1.Repaint;
    LimparGrid_Comb15_p5();
    // -->  encerrando as gravações

    PGBR_Etapa_02.Position :=  100;
    LA_rTOTAL_Comb.Caption:= INTtoSTR(vi_Contar_Comb1-1)+'     ';

    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;

end;


procedure T_F_Gerador_ResDiv_SmFx5.BBT_Etapa03Click(Sender: TObject);

    PROCEDURE PR_Ordenar_Comb10 (VI_LINHAS9: INTEGER);
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
        FOR vi_Contar :=2 TO 11 DO
        BEGIN
            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Comb10_p6.Cells[vi_Contar,VI_LINHAS9])) ,1]:='V';
        END; // FOR vi_Contar1
        vi_CntCelulas := 2;
        FOR vi_Contar :=1 TO 25 DO
        BEGIN
            IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') THEN
            BEGIN
                STGR_Comb10_p6.Cells[vi_CntCelulas, VI_LINHAS9] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) ;
                vi_CntCelulas := vi_CntCelulas + 1;
            END; // IF (STGR_Todos_Numeros
        END; // FOR vi_Contar
    end; // PROCEDURE PR_Ordenar_Comb10



    PROCEDURE PR_Gravar_Dados_etapa3 ();
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
          vi_ContarStgGrid := TRUNC((STGR_Comb10_p6.RowCount-1)/1);
       FOR VI_AN_Comb1:= 1 TO vi_ContarStgGrid DO
       BEGIN
           vc_Combinacoes15 :='';
           FOR vi_ContarCelulas := 1 TO 25 DO
           BEGIN
                STGR_Todos_Numeros.Cells [vi_ContarCelulas ,1]:='F';
           end;
           FOR vi_ContarCelulas := 2 TO 11 DO
           BEGIN
               vc_Combinacoes15 := vc_Combinacoes15 + TRIM(STGR_Comb10_p6.Cells[vi_ContarCelulas,VI_AN_Comb1]) +' ';
               STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Comb10_p6.Cells[vi_ContarCelulas,VI_AN_Comb1])) ,1]:='V';
               vc_Contador_da_Tabela :=  STGR_Comb10_p6.Cells[1,VI_AN_Comb1] ;
           END; // FOR vi_ContarCelulas
          vc_Nome_Tabela := ' GERADOR_RESULT_DIV_SMFX5_etapa3';
           vc_QUERY  := 'INSERT INTO ' +vc_Nome_Tabela+ ' (QTD, DADOS_NS) VALUES(' +#39+ vc_Contador_da_Tabela + #39 +','
                 +#39+  TRIM(vc_Combinacoes15)
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

    procedure LimparGrid_Comb10();
    begin
        STGR_Comb10_p6.CleanupInstance;
        //STGR_Comb10_p6.Free;
        freeANDnil(STGR_Comb10_p6);
        sleep (1000);
        SCBX_dados.HorzScrollBar.Position := 2332;
        SCBX_dados.Repaint;
        STGR_Comb10_p6 := TstringGrid.Create(Self);
        with STGR_Comb10_p6 do
        begin
            Left := 931      ;
            Top := 22                      ;
            Width := 401                   ;
            Height := 306                  ;
            TabStop := False               ;
            Color := 12312831              ;
            ColCount := 12                 ;
            Ctl3D := False                 ;
            DefaultColWidth := 27          ;
            DefaultRowHeight := 25         ;
            FixedColor := clMedGray        ;
            FixedCols := 2                 ;
            RowCount := 8                  ;
            Font.Charset := DEFAULT_CHARSET ;
            Font.Color := clWindowText     ;
            Font.Height := -16             ;
            Font.Name := 'Times New Roman' ;
            Font.Style := []               ;
            GridLineWidth := 2             ;
            Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
            ParentCtl3D := False ;
            ParentFont := False  ;
            TabOrder := 11       ;
            DefaultDrawing := False ;
        end; // with
        STGR_Comb10_p6.Parent := SCBX_dados;
        STGR_Comb10_p6.ColWidths [0]:= 35 ;
        STGR_Comb10_p6.ColWidths [1]:= 45 ;
        STGR_Comb10_p6.Repaint;
    end;


var
     vi_Combinacoes1, vi_Contar_Comb1, vi_Contador, vi_Contar: integer;
     vi_Total_Comb1,  vi_ContaSel1: integer;
     vi_Comb02_1, vi_Comb02_2 : INTEGER;
     vi_Comb04_1, vi_Comb04_2, vi_Comb04_3, vi_Comb04_4  : INTEGER;
     vi_Linhas02, vi_Linhas08 : integer;

     vs_NumerosPrincipais, vs_NumerosPrincipaiNs : STRING;
begin
    STGR_Comb02_p6.ColWidths [0]:= 35 ;
    STGR_Comb02_p6.ColWidths [1]:= 39 ;
    STGR_Comb04_p6.ColWidths [0]:= 45 ;
    STGR_Comb10_p6.ColWidths [0]:= 35 ;
    STGR_Comb10_p6.ColWidths [1]:= 45 ;

    STGR_Comb02_p6.RowCount := 2;
    STGR_Comb04_p6.RowCount := 2;
    STGR_Comb10_p6.RowCount := 2;


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
        SCBX_dados.HorzScrollBar.Position := 2323;
        SCBX_dados.Repaint;
    LA_rTOTAL_Comb.Caption  := INTtoSTR(STGR_Base.RowCount-1);

    PGBR_Etapa_03.Position :=0 ;
    PGBR_Etapa_03.Repaint;
    vi_Linhas02 := 1  ;
    vi_Contar_Comb1 := 1 ;
    vi_Combinacoes1 := 1 ;
    WHILE vi_Combinacoes1 <= (TRUNC((STGR_Comb07_p1_Sobras.RowCount-1)/1)) do
    BEGIN
        vi_Linhas08 := 1  ;
        for  vi_Comb02_1 := 2  to 06  do
        begin
            for  vi_Comb02_2 := vi_Comb02_1 +1  to 07 do
            begin
                STGR_Comb02_p6.Cells[0,vi_Linhas08] := intTOstr(vi_Linhas08) ;
                STGR_Comb02_p6.Cells[01,vi_Linhas08] := intTOstr(vi_Combinacoes1) ;
                STGR_Comb02_p6.Cells[02,vi_Linhas08] := STGR_Comb06_p2.Cells[vi_Comb02_1,vi_Combinacoes1] ;
                STGR_Comb02_p6.Cells[03,vi_Linhas08] := STGR_Comb06_p2.Cells[vi_Comb02_2,vi_Combinacoes1] ;
                // --> Capturando os números que sobraram
                FOR vi_Contar :=1 TO 25 DO
                BEGIN
                    STGR_Todos_Numeros.Cells[vi_Contar,1] :='F';
                    STGR_Todos_Numeros.Cells[vi_Contar,2] :='F';
                END; // FOR vi_Contar
                FOR vi_Contar :=2 TO 07 DO
                BEGIN
                    STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Comb06_p2.Cells[vi_Contar,vi_Combinacoes1])) ,1]:='V';
                END; // FOR vi_Contar1
                FOR vi_Contar :=02 TO 03 DO
                BEGIN
                    STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Comb02_p6.Cells[vi_Contar,vi_Linhas08])) ,2]:='V';
                END; // FOR vi_Contar1
                vi_ContaSel1 := 1;
                FOR vi_Contar :=1 TO 25 DO
                BEGIN
                    IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,2]='F')  THEN
                    BEGIN
                        STGR_Comb04_p6.Cells[vi_ContaSel1, vi_Linhas08] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) ;
                        vi_ContaSel1 := vi_ContaSel1 + 1;
                    END; // IF (STGR_Todos_Numeros
                END; // FOR vi_Contar
                STGR_Comb04_p6.Cells[0,vi_Linhas08] := intTOstr(vi_Linhas08) ;
                vi_Linhas08 := vi_Linhas08 +1;
            end;
        end;
        STGR_Comb02_p6.RowCount := vi_Linhas08 ;
        STGR_Comb04_p6.RowCount := vi_Linhas08 ;

        for vi_Comb02_1 := 1 to (TRUNC((vi_Linhas08-1)/1))  do
        begin
                for  vi_Comb04_1 := 2  to  05 do
                begin
                    for  vi_Comb04_2 := vi_Comb04_1 +1 to  06 do
                    begin
                        for  vi_Comb04_3 := vi_Comb04_2 +1 to 07  do
                        begin
                            for  vi_Comb04_4 := vi_Comb04_3 +1  to 08 do
                            begin
                                try
                                    if  ((
                                        STRtoINT(STGR_Comb02_p6.Cells[2,vi_Comb02_1] ) +
                                        STRtoINT(STGR_Comb02_p6.Cells[3,vi_Comb02_1] ) +
                                        STRtoINT(STGR_Comb07_p1_Sobras.Cells[vi_Comb04_1,vi_Combinacoes1] ) +
                                        STRtoINT(STGR_Comb07_p1_Sobras.Cells[vi_Comb04_2,vi_Combinacoes1] ) +
                                        STRtoINT(STGR_Comb07_p1_Sobras.Cells[vi_Comb04_3,vi_Combinacoes1] ) +
                                        STRtoINT(STGR_Comb07_p1_Sobras.Cells[vi_Comb04_4,vi_Combinacoes1] )
                                        )= 78) then
                                    begin
                                        STGR_Comb10_p6.Cells[0,vi_Linhas02] := intTOstr(vi_Linhas02) ;
                                        STGR_Comb10_p6.Cells[01,vi_Linhas02] := intTOstr(vi_Combinacoes1) ;
                                        STGR_Comb10_p6.Cells[02,vi_Linhas02] := STGR_Comb02_p6.Cells[2,vi_Comb02_1]  ;
                                        STGR_Comb10_p6.Cells[03,vi_Linhas02] := STGR_Comb02_p6.Cells[3,vi_Comb02_1]  ;
                                        STGR_Comb10_p6.Cells[04,vi_Linhas02] := STGR_Comb07_p1_Sobras.Cells[vi_Comb04_1,vi_Combinacoes1] ;
                                        STGR_Comb10_p6.Cells[05,vi_Linhas02] := STGR_Comb07_p1_Sobras.Cells[vi_Comb04_2,vi_Combinacoes1] ;
                                        STGR_Comb10_p6.Cells[06,vi_Linhas02] := STGR_Comb07_p1_Sobras.Cells[vi_Comb04_3,vi_Combinacoes1] ;
                                        STGR_Comb10_p6.Cells[07,vi_Linhas02] := STGR_Comb07_p1_Sobras.Cells[vi_Comb04_4,vi_Combinacoes1] ;

                                        STGR_Comb10_p6.Cells[08,vi_Linhas02] := STGR_Comb04_p6.Cells[1,vi_Comb02_1] ;
                                        STGR_Comb10_p6.Cells[09,vi_Linhas02] := STGR_Comb04_p6.Cells[2,vi_Comb02_1] ;
                                        STGR_Comb10_p6.Cells[10,vi_Linhas02] := STGR_Comb04_p6.Cells[3,vi_Comb02_1] ;
                                        STGR_Comb10_p6.Cells[11,vi_Linhas02] := STGR_Comb04_p6.Cells[4,vi_Comb02_1] ;
                                        PR_Ordenar_Comb10 (vi_Linhas02);

                                        vi_Linhas02 := vi_Linhas02 +1;
                                    end; /// if (((
                                except
                                    //
                                end; // try
                            end; //for vi_Comb04_4
                        end; //for vi_Comb04_3
                    end; //for vi_Comb04_2
                end; //for vi_Comb04_1
        end; //for vi_Comb02_1
        STGR_Comb10_p6.RowCount := vi_Linhas02;
        try
            if  (vi_Combinacoes1 mod 220) = 0 then  // 220
            begin
                STGR_Comb10_p6.DefaultDrawing := False ;
                STGR_Comb02_p6.DefaultDrawing := False ;
                STGR_Comb04_p6.DefaultDrawing := False ;
                STGR_Comb10_p6.Repaint;
                STGR_Comb02_p6.Repaint ;
                STGR_Comb04_p6.Repaint ;
                PGBR_Etapa_03.Position := TRUNC (vi_Combinacoes1/((STGR_Comb07_p1_Sobras.RowCount-1)/1)*100);
                PGBR_Etapa_03.Repaint;
            end; /// if
        except
            //
        end; //try

        Try
            if  (vi_Combinacoes1 mod 4400) = 0 then //8800
            begin
                PR_Gravar_Dados_etapa3 ();
                LimparGrid_Comb10 ();
                STGR_Comb02_p6.RowCount := 2;
                STGR_Comb04_p6.RowCount := 2;
                STGR_Comb10_p6.RowCount := 2;
                vi_Linhas02 := 1 ;
                sleep (15); // 7
                STGR_Comb10_p6.DefaultDrawing := True ;
                STGR_Comb02_p6.DefaultDrawing := True ;
                STGR_Comb04_p6.DefaultDrawing := True ;
                STGR_Comb10_p6.Repaint;
                STGR_Comb02_p6.Repaint ;
                STGR_Comb04_p6.Repaint ;
                SELF.WindowState := wsMinimized;
                SELF.WindowState :=  wsNormal;
                SELF.Repaint;
            end; ///if
        Except
            //
        End; // try

        vi_Combinacoes1 := vi_Combinacoes1 + 1;
    END; ///  while
            STGR_Comb10_p6.DefaultDrawing := True ;
            STGR_Comb02_p6.DefaultDrawing := True ;
            STGR_Comb04_p6.DefaultDrawing := True ;
    PR_Gravar_Dados_etapa3 ();
    STGR_Comb10_p6.RowCount := vi_Linhas02 ;
    STGR_Comb10_p6.Repaint;
    STGR_Comb02_p6.Repaint ;
    STGR_Comb04_p6.Repaint ;

    // -->  encerrando as gravações

    PGBR_Etapa_03.Position :=  100;
    
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
end;



procedure T_F_Gerador_ResDiv_SmFx5.BBT_Etapa04Click(Sender: TObject);

   PROCEDURE PR_Gravar_Dados_etapa4 ();
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
          vi_ContarStgGrid := TRUNC((STGR_Comb15_final.RowCount-1)/1);
       FOR VI_AN_Comb1:= 1 TO vi_ContarStgGrid DO
       BEGIN
           vc_Combinacoes15 :='';
           FOR vi_ContarCelulas := 1 TO 25 DO
           BEGIN
                STGR_Todos_Numeros.Cells [vi_ContarCelulas ,1]:='F';
           end;
           FOR vi_ContarCelulas := 2 TO 16 DO
           BEGIN
               vc_Combinacoes15 := vc_Combinacoes15 + TRIM(STGR_Comb15_final.Cells[vi_ContarCelulas,VI_AN_Comb1]) +' ';
               STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Comb15_final.Cells[vi_ContarCelulas,VI_AN_Comb1])) ,1]:='V';
               vc_Contador_da_Tabela :=  STGR_Comb10_p6.Cells[1,VI_AN_Comb1] ;
           END; // FOR vi_ContarCelulas
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
          vc_Nome_Tabela := ' GERADOR_RESULT_DIV_SMFX5_Final2';
           vc_QUERY  := 'INSERT INTO ' +vc_Nome_Tabela+ ' (DADOS, DADOS_NS, TIPO) VALUES('
                 +#39+  TRIM(vc_Combinacoes15)  + #39 +','
                 +#39+  TRIM(vc_Combinacoes10)  + #39 +','                 
                 +#39+  TRIM(STGR_Comb15_final.Cells[1,VI_AN_Comb1])
                 +#39+ ');';
           SELF.IBQ_Combin_02.SQL.Clear;
           SELF.IBQ_Combin_02.SQL.Add(vc_QUERY)  ;
           SELF.IBQ_Combin_02.ExecSQL;
       END; // FOR VI_AN_Comb1
    SELF.IBQ_Combin_02.SQL.Clear;
    SELF.IBQ_Combin_02.SQL.Add('COMMIT')  ;
    SELF.IBQ_Combin_02.ExecSQL;
    SLEEP(19);
    SELF.IBQ_Combin_02.SQL.Clear;
    END; // PROCEDURE GRAVAR_DADOS
    

    procedure LimparGrid_Comb15_F();
    var
        vi_ContaSel1: integer;
    begin
        STGR_Comb15_Final.CleanupInstance;
        //STGR_Comb15_p5.Free;
        freeANDnil(STGR_Comb15_Final);
        sleep (1000);
        SCBX_dados.HorzScrollBar.Position := 3039;
        SCBX_dados.Repaint;
        STGR_Comb15_Final := TstringGrid.Create(Self);
        with STGR_Comb15_Final do
        begin
          Left := 665     ;
          Top := 20       ;
          Width := 686      ;
          Height := 312     ;
          TabStop := False     ;
          Align := alCustom    ;
          Color := 14017159    ;
          ColCount := 17          ;
          DefaultColWidth := 31   ;
          DefaultRowHeight := 27  ;
          FixedColor := clMedGray ;
          FixedCols := 2      ;
          RowCount := 2       ;
          Font.Charset := DEFAULT_CHARSET ;
          Font.Color := clWindowText     ;
          Font.Height := -13           ;
          Font.Name := 'Tahoma'      ;
          Font.Style := []         ;
          Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
          ParentFont := False ;
          TabOrder := 0       ;
        end; // with
        STGR_Comb15_Final.Parent := SCBX_dados;
        STGR_Comb15_final.ColWidths [0]:= 55 ;
        STGR_Comb15_final.ColWidths [1]:= 85 ;
        STGR_Comb15_Final.Repaint;
        FOR vi_ContaSel1 := 2 TO 16 DO
        BEGIN
            STGR_Comb15_final.Cells [vi_ContaSel1,0] := '-'+INTtoSTR(vi_ContaSel1-1)+'-';
            STGR_Comb15_final.Cells [vi_ContaSel1,1] := '00';
        END;
    end;


var
     vi_Combinacoes1, vi_Contar: integer;
     vi_ContaSel1, vi_ContarQtdPares: integer;
     vi_Linhas08 : integer;

     vs_NumerosPrincipais, vs_NumerosPrincipaiNs : STRING;
begin
    STGR_Comb15_final.ColWidths [0]:= 55 ;
    STGR_Comb15_final.ColWidths [1]:= 85 ;

    STGR_Comb15_final.RowCount := 2;

    FOR vi_ContaSel1 := 2 TO 16 DO
    BEGIN
        STGR_Comb15_final.Cells [vi_ContaSel1,0] := '-'+INTtoSTR(vi_ContaSel1-1)+'-';
        STGR_Comb15_final.Cells [vi_ContaSel1,1] := '00';
    END;
    FOR vi_ContaSel1 := 1 TO 25 DO
    BEGIN
        STGR_Todos_Numeros.Cells [vi_ContaSel1 ,0] := intTOstr(vi_ContaSel1) ;
    end;
    //STGR_Comb15.ColWidths [2]:= 55;
    STGR_Comb15.RowCount := 2;
    STGR_Comb15.Repaint;
    STGR_Comb15_Final.RowCount := 2;
    STGR_Comb15_Final.Repaint;

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
        SCBX_dados.HorzScrollBar.Position := 3039;
        SCBX_dados.Repaint;
    LA_rTOTAL_Comb.Caption  := INTtoSTR(STGR_Base.RowCount-1);

    SELF.IBQ_Combinacoes.Close;
    SELF.IBQ_Combinacoes.SQL.Clear;
    SELF.IBQ_Combinacoes.SQL.Add('INSERT INTO GERADOR_RESULT_DIV_SMFX5_FINAL '
     + 'select distinct(dados), GERADOR_RESULT_DIV_SMFX5_ETAPA1.DADOS_NS'
     + ' from GERADOR_RESULT_DIV_SMFX5_ETAPA1, GERADOR_RESULT_DIV_SMFX5_ETAPA3 '
     + ' where '
     + '   (GERADOR_RESULT_DIV_SMFX5_ETAPA1.qtd = GERADOR_RESULT_DIV_SMFX5_ETAPA3.qtd) '
     + '   and (GERADOR_RESULT_DIV_SMFX5_ETAPA1.DADOS_NS = GERADOR_RESULT_DIV_SMFX5_ETAPA3.DADOS_NS) '
     + ' order by dados '
     + ';')  ;
    SELF.IBQ_Combinacoes.Prepare;
    SELF.IBQ_Combinacoes.Open;
    SELF.IBQ_Combinacoes.SQL.Clear;
    SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
    SELF.IBQ_Combinacoes.ExecSQL;

      SELF.IBQ_Combinacoes.Close;
      SELF.IBQ_Combinacoes.SQL.Clear;
      SELF.IBQ_Combinacoes.SQL.Add('SELECT COUNT(DADOS) AS SOMADADOS FROM GERADOR_RESULT_DIV_SMFX5_FINAL ;')  ;
      SELF.IBQ_Combinacoes.Prepare;
      SELF.IBQ_Combinacoes.Open;
      vi_Contar := SELF.IBQ_Combinacoes.FIELDBYNAME('SOMADADOS').AsInteger;
      SELF.IBQ_Combinacoes.Close;
      SELF.IBQ_Combinacoes.SQL.Clear;
      SELF.IBQ_Combinacoes.SQL.Add('SELECT * FROM GERADOR_RESULT_DIV_SMFX5_Final ;')  ;
      SELF.IBQ_Combinacoes.Prepare;
      SELF.IBQ_Combinacoes.Open;
    PGBR_Etapa_04.Position :=0 ;
    PGBR_Etapa_04.Repaint;
    vi_Linhas08 := 1  ;
    vi_Combinacoes1 := 1 ;
    WHILE vi_Combinacoes1 <= (TRUNC((vi_Contar)/1)) do
    BEGIN
        vi_ContarQtdPares := 0 ;
        STGR_Comb15_final.Cells[0, vi_Linhas08] := intTOstr(vi_Linhas08);
        STGR_Comb15_final.Cells[01, vi_Linhas08] := '';
        STGR_Comb15_final.Cells[02, vi_Linhas08] := copy(SELF.IBQ_Combinacoes.FieldByName('Dados').AsString, 1, 2) ;
        STGR_Comb15_final.Cells[03, vi_Linhas08] := copy(SELF.IBQ_Combinacoes.FieldByName('Dados').AsString, 4, 2) ;
        STGR_Comb15_final.Cells[04, vi_Linhas08] := copy(SELF.IBQ_Combinacoes.FieldByName('Dados').AsString, 7, 2) ;
        STGR_Comb15_final.Cells[05, vi_Linhas08] := copy(SELF.IBQ_Combinacoes.FieldByName('Dados').AsString, 10, 2) ;
        STGR_Comb15_final.Cells[06, vi_Linhas08] := copy(SELF.IBQ_Combinacoes.FieldByName('Dados').AsString, 13, 2) ;
        STGR_Comb15_final.Cells[07, vi_Linhas08] := copy(SELF.IBQ_Combinacoes.FieldByName('Dados').AsString, 16, 2) ;
        STGR_Comb15_final.Cells[08, vi_Linhas08] := copy(SELF.IBQ_Combinacoes.FieldByName('Dados').AsString, 19, 2) ;
        STGR_Comb15_final.Cells[09, vi_Linhas08] := copy(SELF.IBQ_Combinacoes.FieldByName('Dados').AsString, 22, 2) ;
        STGR_Comb15_final.Cells[10, vi_Linhas08] := copy(SELF.IBQ_Combinacoes.FieldByName('Dados').AsString, 25, 2) ;
        STGR_Comb15_final.Cells[11, vi_Linhas08] := copy(SELF.IBQ_Combinacoes.FieldByName('Dados').AsString, 28, 2) ;
        STGR_Comb15_final.Cells[12, vi_Linhas08] := copy(SELF.IBQ_Combinacoes.FieldByName('Dados').AsString, 31, 2) ;
        STGR_Comb15_final.Cells[13, vi_Linhas08] := copy(SELF.IBQ_Combinacoes.FieldByName('Dados').AsString, 34, 2) ;
        STGR_Comb15_final.Cells[14, vi_Linhas08] := copy(SELF.IBQ_Combinacoes.FieldByName('Dados').AsString, 37, 2) ;
        STGR_Comb15_final.Cells[15, vi_Linhas08] := copy(SELF.IBQ_Combinacoes.FieldByName('Dados').AsString, 40, 2) ;
        STGR_Comb15_final.Cells[16, vi_Linhas08] := copy(SELF.IBQ_Combinacoes.FieldByName('Dados').AsString, 43, 2) ;
        for  vi_ContaSel1 := 2  to 16  do
        begin
            if (strTOint(STGR_Comb15_final.Cells[vi_ContaSel1, vi_Linhas08]) MOD 2) = 0  THEN
                vi_ContarQtdPares := vi_ContarQtdPares +1 ;
        end; // for
        case vi_ContarQtdPares of
          4:  STGR_Comb15_final.Cells[01, vi_Linhas08] := '11i/4p' ;        
          5:  STGR_Comb15_final.Cells[01, vi_Linhas08] := '10i/5p' ;
          6:  STGR_Comb15_final.Cells[01, vi_Linhas08] := '9i/6p' ;
          7:  STGR_Comb15_final.Cells[01, vi_Linhas08] := '8i/7p' ;
          8:  STGR_Comb15_final.Cells[01, vi_Linhas08] := '7i/8p' ;
          9:  STGR_Comb15_final.Cells[01, vi_Linhas08] := '6i/9p' ;
          10:  STGR_Comb15_final.Cells[01, vi_Linhas08] := '5i/10p' ;
          else
              STGR_Comb15_final.Cells[01, vi_Linhas08] := intTOstr(vi_ContarQtdPares)+ ' pares' ;
        end; //// case    


        if ((vi_Combinacoes1 mod 100) = 0) then
        begin
            STGR_Comb15_final.RowCount :=  vi_Linhas08;
            PGBR_Etapa_04.Position := TRUNC((vi_Combinacoes1/vi_Contar)*100) ;
            PGBR_Etapa_04.Repaint;
        end;

        if ((vi_Combinacoes1 mod 49750) = 0) then    // 99500
        begin
            PR_Gravar_Dados_etapa4 ();
            LimparGrid_Comb15_F ();            
            STGR_Comb15_final.RowCount := 2;
            STGR_Comb15_final.Repaint;
            vi_Linhas08 := 0;
            sleep (25); // 7
            STGR_Comb15_final.DefaultDrawing := NOT(STGR_Comb15_final.DefaultDrawing) ;
        end;
        vi_Linhas08 := vi_Linhas08 + 1 ;
        vi_Combinacoes1 := vi_Combinacoes1 + 1 ;
        IBQ_Combinacoes.Next;
    END; // WHILE
            STGR_Comb15_final.DefaultDrawing := True;
    STGR_Comb15_final.RowCount :=  vi_Linhas08;
    PGBR_Etapa_04.Position :=100 ;
    PGBR_Etapa_04.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;

    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;

     PR_Gravar_Dados_etapa4 ();

    LA_gFIM_GERAR.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
    // ==> ACERTANDO O PAINEL DE ENCERRAMENTO
    BBT_RECOMECAR.Enabled := false;
    BBT_PrepararMenu.Enabled := false;

        SELF.IBQ_Combinacoes.SQL.Clear;
        SELF.IBQ_Combinacoes.SQL.Add('SELECT COUNT(DISTINCT(dados)) AS SOMADADOS  FROM GERADOR_RESULT_DIV_SmFx5_8I7P;')  ;
        SELF.IBQ_Combinacoes.Open;
        IBQ_Combinacoes.First;
    LA_rTOTAL_100REPET.Caption := intTOstr(vi_Contar);

        SELF.IBQ_Combinacoes.SQL.Clear;
        SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIV_SmFx5_DEF SET HORA_TERMINO ='''+FORMATDATETIME('h:n:s',time())+''', QTD_DADOS= ''' +INTtoSTR(vi_Contar)+ ''';')  ;
        SELF.IBQ_Combinacoes.ExecSQL;
        SELF.IBQ_Combinacoes.SQL.Clear;
        SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
        SELF.IBQ_Combinacoes.ExecSQL;
    LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
        SELF.IBQ_Combinacoes.SQL.Clear;
        SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIV_SmFx5_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
        SELF.IBQ_Combinacoes.ExecSQL;
        SELF.IBQ_Combinacoes.SQL.Clear;
        SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
        SELF.IBQ_Combinacoes.ExecSQL;
    PA_RemoveuRepetidos.Left := 1000;

end;


procedure T_F_Gerador_ResDiv_SmFx5.BBT_RemoveuRepetidosClick(Sender: TObject);
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




procedure T_F_Gerador_ResDiv_SmFx5.BTN_ReajustarClick(Sender: TObject);
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



procedure T_F_Gerador_ResDiv_SmFx5.BBT_CARREGARClick(Sender: TObject);
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
     PGBR_Etapa_04.Position := 100;
     LA_Total_Comb.Visible := false;
     LA_Gerar_Comb.Visible := false;
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIV_SmFx5_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
end;



procedure T_F_Gerador_ResDiv_SmFx5.BBT_Gerar_SairClick(Sender: TObject);
begin
     PA_Gerar.Enabled := false;
     PA_Gerar.Left := 4500;    ;
     PA_Gerar.Repaint;
end;



procedure T_F_Gerador_ResDiv_SmFx5.BBT_BlocoNotasClick(Sender: TObject);
var
    vi_Contar, vc_qtd_pares : INTEGER;
    vc_Nome_Tabela, vc_Combinacoes2, vcTitulo : string;
begin
     for vc_qtd_pares := 8 to 8 do
     begin
                vc_Nome_Tabela := 'GERADOR_RESULT_DIV_SMFX5_FINAL2';
                vc_Nome_Tabela := 'GERADOR_RESULT_DIV_SMFX5_FINAL2';
          MEM_Combinacoes_Todas.Clear;
          SELF.IBQ_Combinacoes.Close;
          SELF.IBQ_Combinacoes.SQL.Clear;
          SELF.IBQ_Combinacoes.SQL.Add('SELECT COUNT(distinct(DADOS)) AS SOMADADOS FROM ' +vc_Nome_Tabela+ ';')  ;
          SELF.IBQ_Combinacoes.Prepare;
          SELF.IBQ_Combinacoes.Open;
          vi_Contar := SELF.IBQ_Combinacoes.FIELDBYNAME('SOMADADOS').AsInteger;
          {
          CASE vc_qtd_pares OF
               7:  vcTitulo := 'GERADOR 7Impares e 8Pares MODELO 3';
               8:  vcTitulo := 'GERADOR 8Impares e 7Pares MODELO 3';
          END; //CASE }
          vcTitulo := 'GERADOR Resultados Diversos a Partir das Somas Fixas 5';
          MEM_Combinacoes_Todas.Lines.Add(vcTitulo) ;
          MEM_Combinacoes_Todas.Lines.Add('TOTAL: ' + INTtoSTR(vi_Contar)) ;
          MEM_Combinacoes_Todas.Lines.Add('----------------------------') ;
          SELF.IBQ_Combinacoes.SQL.Clear;
          SELF.IBQ_Combinacoes.SQL.Add('select DISTINCT (dados), dados_ns, tipo FROM ' +vc_Nome_Tabela+ ' ORDER BY DADOS;')  ;
          SELF.IBQ_Combinacoes.Prepare;
          SELF.IBQ_Combinacoes.Open;
          SELF.IBQ_Combinacoes.First;
          WHILE (NOT(SELF.IBQ_Combinacoes.Eof)) DO
          BEGIN
               vc_Combinacoes2 := '';
                vc_Combinacoes2 := trim(IBQ_Combinacoes.FIELDBYNAME('DADOS').AsString);
                    MEM_Combinacoes_Todas.Lines.Add(vc_Combinacoes2 +'   '+IBQ_Combinacoes.FieldByName('tipo').AsString) ;
               IBQ_Combinacoes.Next;
         END; // FOR vi_Contar
         MEM_Combinacoes_Todas.Repaint;
         //MEM_Combinacoes_Todas.SelectAll;
         //MEM_Combinacoes_Todas.CopyToClipboard;
         //MEM_Combinacoes_Todas.Repaint;
         MEM_Combinacoes_Todas.Lines.SaveToFile('C:\CXLOTOFACIL\'+vc_Nome_Tabela+'.TXT');
     END; // For
    winExec('Notepad.exe C:\CXLOTOFACIL\GERADOR_RESULT_DIV_SMFX5_FINAL2.TXT', sw_shownormal);
   SHOWMESSAGE('BLOCO DE NOTAS GERADO');
end;



procedure T_F_Gerador_ResDiv_SmFx5.btn_CarregarClick(Sender: TObject);
begin
     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIV_SmFx5_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
     SELF.IBQ_Combinacoes.ExecSQL;
     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
     SELF.IBQ_Combinacoes.ExecSQL;
     SHOWMESSAGE('OK');
     SELF.Close;
end;







procedure T_F_Gerador_ResDiv_SmFx5.BitBtn1Click(Sender: TObject);
begin
    BBT_Etapa01.Click;
    BBT_Etapa02.Click;
    BBT_Etapa03.Click;
    BBT_Etapa04.Click;
end;

end.
