unit uGerador_ResultDiv_SmFx3_162Comb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, DB, strutils,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, IdBaseComponent, IdComponent, IdIPWatch ;

type
  T_F_Gerador_ResDiv_SmFx3 = class(TForm)
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
    STGR_BASE: TStringGrid;
    STGR_BASE10: TStringGrid;
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
    SCBX_dados: TScrollBox;
    STGR_COMB08_I: TStringGrid;
    STGR_COMB07_P: TStringGrid;
    STGR_COMB05_I: TStringGrid;
    STGR_COMB05_P: TStringGrid;
    STGR_COMB15_8I7P: TStringGrid;
    LA_rTOTAL_100REPET: TLabel;
    Label50: TLabel;
    STGR_COMB15_7I8P: TStringGrid;
    BT_BLOCO_DE_NOTAS1: TButton;
    STGR_COMB03_I: TStringGrid;
    STGR_COMB03_ISobras: TStringGrid;
    STGR_COMB02_P: TStringGrid;
    STGR_COMB02_Ps: TStringGrid;
    STGR_COMB04_I: TStringGrid;
    STGR_COMB04_P: TStringGrid;
    STGR_COMB04_ISobras: TStringGrid;
    STGR_COMB04_PSobras: TStringGrid;
    PA_ETAPA_01: TPanel;
    STGR_E1_04I_sorteados: TStringGrid;
    STGR_E1_04P_sorteados: TStringGrid;
    STGR_E1_04I_Nsorteados: TStringGrid;
    STGR_E1_04P_Nsorteados: TStringGrid;
    PA_ETAPA_02: TPanel;
    STGR_E2_03I_sorteados: TStringGrid;
    STGR_E2_03P_sorteados: TStringGrid;
    STGR_E2_03I_Nsorteados: TStringGrid;
    STGR_E2_03P_Nsorteados: TStringGrid;
    STGR_COMB02_Ps_fora: TStringGrid;
    PA_ETAPA_08: TPanel;
    STGR_E8_05I_sorteados: TStringGrid;
    STGR_E8_05P_sorteados: TStringGrid;
    STGR_E8_03I_Nsorteados: TStringGrid;
    STGR_E8_03P_Nsorteados: TStringGrid;
    PA_ETAPA_03: TPanel;
    STGR_E3_04I_sorteados: TStringGrid;
    STGR_E3_03P_sorteados: TStringGrid;
    Panel3: TPanel;
    STGR_E6_03I_sorteados: TStringGrid;
    STGR_E6_04P_sorteados: TStringGrid;
    STGR_COMB02_PSobras: TStringGrid;
    ED_FIXOS_03_8i7p: TEdit;
    Label40: TLabel;
    CB_SomaTotal_15n: TComboBox;
    btn_Carregar: TButton;
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
    procedure FormActivate(Sender: TObject);
    procedure BBT_BLOCO_NOTASClick(Sender: TObject);
    procedure btn_CarregarClick(Sender: TObject);
  private
    F_MODALIDADE: STRING;
    { Private declarations }
    procedure Set_MODALIDADE(const Value: STRING);
    PROCEDURE PR_ZERAR_VALIDA_ETAPA_1;
    FUNCTION FN_VALIDAR_ETAPA_1(vi_Linha: Integer) :Boolean;
    FUNCTION FN_VALIDAR_ETAPA_2(vi_Linha: Integer) :Boolean;
    FUNCTION FN_VALIDAR_ETAPA_3(vi_Linha: Integer) :Boolean;
    FUNCTION FN_VALIDAR_ETAPA_6(vi_Linha: Integer):Boolean;      
    FUNCTION FN_VALIDAR_ETAPA_8(vi_Linha: Integer):Boolean;
  public
    { Public declarations }
     PROPERTY _MODALIDADE : STRING  read F_MODALIDADE write Set_MODALIDADE;
  end;

var
  _F_Gerador_ResDiv_SmFx3: T_F_Gerador_ResDiv_SmFx3;

implementation

{$R *.dfm}


procedure T_F_Gerador_ResDiv_SmFx3.Set_MODALIDADE(const Value: STRING);
begin
  F_MODALIDADE := Value;
end;





procedure T_F_Gerador_ResDiv_SmFx3.FormCreate(Sender: TObject);
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
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE GERADOR_RESULT_DIV_SMFX3_DEF SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
end;



procedure T_F_Gerador_ResDiv_SmFx3.FormActivate(Sender: TObject);
begin
      IF (SELF._MODALIDADE ='GERADOR') THEN
      begin
          LA_TITULO.Caption             := 'GERADOR Resultados Diversos a Partir das Somas Fixas 3- Somas 194/196 [Cj 162] modelo 1 ';
      END ELSE
      BEGIN
          LA_TITULO.Caption             := 'SIMULAR modelo 5 - Resultados Diversos a Partir das Somas Fixas 3- Somas 194/196 [Cj 162] modelo 1 ';
          BT_NOVA_SIMULACAO.Click;
      end;
      LA_TITULO.Repaint;
end;



procedure T_F_Gerador_ResDiv_SmFx3.FormClose(Sender: TObject;
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


procedure T_F_Gerador_ResDiv_SmFx3.BBT_CLOSEClick(Sender: TObject);
begin
     SELF.Close;
end;




procedure T_F_Gerador_ResDiv_SmFx3.BT_NOVA_SIMULACAOClick(Sender: TObject);
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


procedure T_F_Gerador_ResDiv_SmFx3.BBT_SAIRClick(Sender: TObject);
begin
     SELF.Close;
end;



procedure T_F_Gerador_ResDiv_SmFx3.BBT_CANCELARClick(Sender: TObject);
begin
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE GERADOR_RESULT_DIV_SMFX3_DEF SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT;')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
          SELF.Close;
end;





PROCEDURE T_F_Gerador_ResDiv_SmFx3.PR_ZERAR_VALIDA_ETAPA_1;
BEGIN
     FreeAndNil(STGR_E1_04I_sorteados)  ;
     FreeAndNil(STGR_E1_04P_sorteados)  ;
     FreeAndNil(STGR_E1_04I_Nsorteados) ;
     FreeAndNil(STGR_E1_04P_Nsorteados) ;
     sleep(100);
     STGR_E1_04I_sorteados:= TStringGrid.Create(SELF);
     STGR_E1_04I_sorteados.Parent:= PA_ETAPA_01;
     STGR_E1_04I_sorteados.ColCount := 7     ;
     STGR_E1_04I_sorteados.DefaultColWidth := 27  ;
     STGR_E1_04I_sorteados.DefaultRowHeight := 25 ;
    // SCBX_dados.HorzScrollBar.Position := 1720;
     WITH STGR_E1_04I_sorteados DO
     begin
          Left := 5    ;
          Top := 1       ;
          Width := 251   ;
          Height := 333  ;
          TabStop := False  ;
          Color := 13098688;
          Ctl3D := False    ;
          FixedColor := clMedGray;
          FixedCols := 3         ;
          RowCount := 8          ;
          Font.Charset := DEFAULT_CHARSET;
          Font.Color := clWindowText   ;
          Font.Height := -16         ;
          Font.Name := 'Times New Roman';
          Font.Style := []             ;
          GridLineWidth := 2           ;
          Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
          ParentCtl3D := False         ;
          ParentFont := False          ;
          TabOrder := 14               ;
     end;
     STGR_E1_04P_sorteados:= TStringGrid.Create(SELF);
     STGR_E1_04P_sorteados.Parent:= PA_ETAPA_01;
     WITH STGR_E1_04P_sorteados DO
     begin
          Left := 256             ;
          Top := 1                ;
          Width := 201            ;
          Height := 333           ;
          TabStop := False        ;
          Color := 13098688       ;
          Ctl3D := True           ;
          DefaultColWidth := 27   ;
          DefaultRowHeight := 25  ;
          FixedColor := clMedGray ;
          RowCount := 8           ;
          Font.Charset := DEFAULT_CHARSET ;
          Font.Color := clWindowText      ;
          Font.Height := -16              ;
          Font.Name := 'Times New Roman'  ;
          Font.Style := []                ;
          GridLineWidth := 2              ;
          Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
          ParentCtl3D := False  ;
          ParentFont := False   ;
          TabOrder := 15        ;
     end  ;
     STGR_E1_04I_Nsorteados:= TStringGrid.Create(SELF);
     STGR_E1_04I_Nsorteados.Parent:= PA_ETAPA_01;
     WITH STGR_E1_04I_Nsorteados DO
     BEGIN
          Left := 457             ;
          Top := 1                ;
          Width := 216            ;
          Height := 333           ;
          TabStop := False        ;
          Color := 13098688       ;
          ColCount := 6           ;
          Ctl3D := True           ;
          DefaultColWidth := 27   ;
          DefaultRowHeight := 27  ;
          FixedColor := clMedGray ;
          FixedCols := 2          ;
          RowCount := 8           ;
          Font.Charset := DEFAULT_CHARSET  ;
          Font.Color := clWindowText       ;
          Font.Height := -16               ;
          Font.Name := 'Times New Roman'   ;
          Font.Style := []                 ;
          GridLineWidth := 0               ;
          Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
          ParentCtl3D := False             ;
          ParentFont := False              ;
          TabOrder := 16                   ;
     end  ;
     STGR_E1_04P_Nsorteados:= TStringGrid.Create(SELF);
     STGR_E1_04P_Nsorteados.Parent:= PA_ETAPA_01;
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
END;




FUNCTION T_F_Gerador_ResDiv_SmFx3.FN_VALIDAR_ETAPA_1(vi_Linha: Integer):Boolean;
VAR
     vi_Comb5i_1, vi_Comb5i_2, vi_Comb5i_3, vi_Comb5i_4 : INTEGER;
     vi_Comb5p_1, vi_Comb5p_2, vi_Comb5p_3, vi_Comb5p_4 : INTEGER;
     vi_Comb4i_1, vi_Comb4i_2, vi_Comb4i_3, vi_Comb4i_4 : INTEGER;
     vi_Comb4p_1, vi_Comb4p_2, vi_Comb4p_3, vi_Comb4p_4 : INTEGER;
     vi_Linhas06p, vi_Soma10i, vi_Soma10_2, vi_Contar, vi_ContaSel1 : INTEGER;
     vs_NumerosPrincipais, vs_NumerosPrincipaiNs : STRING;
BEGIN
     STGR_E1_04I_sorteados.ColWidths [0]:= 55 ;
     STGR_E1_04p_sorteados.ColWidths [0]:= 55 ;
     STGR_E1_04I_Nsorteados.ColWidths [0]:= 55;
     STGR_E1_04P_Nsorteados.ColWidths [0]:= 49;
     STGR_E1_04I_sorteados.RowCount := 2;
     STGR_E1_04P_sorteados.RowCount := 2;
     STGR_E1_04I_Nsorteados.RowCount := 2;
     STGR_E1_04P_Nsorteados.RowCount := 2;
//     STGR_E1_04I_sorteados.DefaultDrawing := false;
//     STGR_E1_04P_sorteados.DefaultDrawing := false;
//     STGR_E1_04I_Nsorteados.DefaultDrawing := false;
//     STGR_E1_04P_Nsorteados.DefaultDrawing := false;
     vi_Linhas06p := 1;
     // --> Bloco dos impares
     FOR vi_Comb5i_1 := 1 TO  05 DO
     BEGIN
          FOR vi_Comb5i_2 := vi_Comb5i_1+1 TO  06 DO
          BEGIN
               FOR vi_Comb5I_3 := vi_Comb5i_2+1 TO  07 DO
               BEGIN
                    FOR vi_Comb5I_4 := vi_Comb5i_3+1 TO  08 DO
                    BEGIN
                         // --> Gerando os Pares
                         FOR vi_Comb5P_1 := 1 TO  04 DO
                         BEGIN
                              FOR vi_Comb5P_2 := vi_Comb5P_1+1 TO  05 DO
                              BEGIN
                                   FOR vi_Comb5P_3 := vi_Comb5P_2+1 TO  06 DO
                                   BEGIN
                                        FOR vi_Comb5P_4 := vi_Comb5P_3+1 TO  07 DO
                                        BEGIN
                                             STGR_E1_04P_sorteados.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                             vi_Soma10i  :=  STRtoINT(STGR_COMB08_I.Cells[vi_Comb5i_1,1])
                                                + STRtoINT(STGR_COMB08_I.Cells[vi_Comb5i_2,1])+ STRtoINT(STGR_COMB08_I.Cells[vi_Comb5I_3,1])
                                                + STRtoINT(STGR_COMB08_I.Cells[vi_Comb5I_4,1])
                                                + STRtoINT(STGR_COMB07_P.Cells[vi_Comb5P_1,1] )
                                                + STRtoINT(STGR_COMB07_P.Cells[Vi_Comb5P_2,1]) + STRtoINT(STGR_COMB07_P.Cells[Vi_Comb5P_3,1])
                                                + STRtoINT(STGR_COMB07_P.Cells[Vi_Comb5P_4,1] )
                                                ;
                                             STGR_E1_04I_sorteados.Cells[2,vi_Linhas06p]  := INTtoSTR(vi_Soma10i) ;
                                             IF vi_Soma10i = 104 THEN
                                             BEGIN
                                             // --> Bloco dos impares
                                             FOR vi_Comb4i_1 := 1 TO  02 DO
                                             BEGIN
                                                  IF vi_Comb4i_1=1  THEN
                                                  IF NOT ( (STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_1,1]) = STRtoINT(STGR_COMB04_I.Cells[3,vi_Linha]))
                                                     OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_1+1,1]) = STRtoINT(STGR_COMB04_I.Cells[3,vi_Linha]))
                                                     OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_1,1]) = STRtoINT(STGR_COMB04_ISobras.Cells[1,vi_Linha])) ) THEN
                                                       CONTINUE;
                                                  IF vi_Comb4i_1=2  THEN
                                                  IF NOT ( (STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_1,1]) = STRtoINT(STGR_COMB04_I.Cells[3,vi_Linha]))
                                                     OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_1-1,1]) = STRtoINT(STGR_COMB04_I.Cells[3,vi_Linha]))
                                                     OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_1,1]) = STRtoINT(STGR_COMB04_ISobras.Cells[1,vi_Linha])) ) THEN
                                                       CONTINUE;
                                                  FOR vi_Comb4i_2 := vi_Comb4i_1+1 TO  03 DO
                                                  BEGIN
                                                       IF vi_Comb4i_2=2  THEN
                                                       IF NOT ( (STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_2,1]) = STRtoINT(STGR_COMB04_I.Cells[4,vi_Linha]))
                                                          OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_2+1,1]) = STRtoINT(STGR_COMB04_I.Cells[4,vi_Linha]))
                                                          OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_2,1]) = STRtoINT(STGR_COMB04_ISobras.Cells[1,vi_Linha])) ) THEN
                                                            CONTINUE;
                                                       IF vi_Comb4i_2=3  THEN
                                                       IF NOT ( (STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_2,1]) = STRtoINT(STGR_COMB04_I.Cells[4,vi_Linha]))
                                                          OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_2-1,1]) = STRtoINT(STGR_COMB04_I.Cells[4,vi_Linha]))
                                                          OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_2,1]) = STRtoINT(STGR_COMB04_ISobras.Cells[1,vi_Linha])) ) THEN
                                                            CONTINUE;
                                                       FOR vi_Comb4I_3 := vi_Comb4i_2+1 TO  04 DO
                                                       BEGIN
                                                            IF vi_Comb4i_3=3  THEN
                                                            IF NOT ( (STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_3,1]) = STRtoINT(STGR_COMB04_I.Cells[5,vi_Linha]))
                                                               OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_3+1,1]) = STRtoINT(STGR_COMB04_I.Cells[5,vi_Linha]))
                                                               OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_3,1]) = STRtoINT(STGR_COMB04_ISobras.Cells[1,vi_Linha])) ) THEN
                                                                 CONTINUE;
                                                            IF vi_Comb4i_3=4  THEN
                                                            IF NOT ( (STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_3,1]) = STRtoINT(STGR_COMB04_I.Cells[5,vi_Linha]))
                                                               OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_3-1,1]) = STRtoINT(STGR_COMB04_I.Cells[5,vi_Linha]))
                                                               OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_3,1]) = STRtoINT(STGR_COMB04_ISobras.Cells[1,vi_Linha])) ) THEN
                                                                 CONTINUE;
                                                            FOR vi_Comb4I_4 := vi_Comb4i_3+1 TO  05 DO
                                                            BEGIN
                                                                 IF vi_Comb4i_4=4  THEN
                                                                 IF NOT ( (STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_4,1]) = STRtoINT(STGR_COMB04_I.Cells[6,vi_Linha]))
                                                                    OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_4+1,1]) = STRtoINT(STGR_COMB04_I.Cells[6,vi_Linha]))
                                                                    OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_4,1]) = STRtoINT(STGR_COMB04_ISobras.Cells[1,vi_Linha])) ) THEN
                                                                      CONTINUE;
                                                                 IF vi_Comb4i_4=5  THEN
                                                                 IF NOT ( (STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_4,1]) = STRtoINT(STGR_COMB04_I.Cells[6,vi_Linha]))
                                                                    OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_4-1,1]) = STRtoINT(STGR_COMB04_I.Cells[6,vi_Linha]))
                                                                    OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_4,1]) = STRtoINT(STGR_COMB04_ISobras.Cells[1,vi_Linha])) ) THEN
                                                                      CONTINUE;

                                                                 // --> Gerando os Pares
                                                                 FOR vi_Comb4P_1 := 1 TO  02 DO
                                                                 BEGIN
                                                                      IF vi_Comb4P_1=1  THEN
                                                                      IF NOT( (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_1,1]) = STRtoINT(STGR_COMB04_P.Cells[2,vi_Linha]))
                                                                         OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_1+1,1]) = STRtoINT(STGR_COMB04_P.Cells[2,vi_Linha]))
                                                                         OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_1+2,1]) = STRtoINT(STGR_COMB04_P.Cells[2,vi_Linha]))
                                                                         OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_1+3,1]) = STRtoINT(STGR_COMB04_P.Cells[2,vi_Linha]))
                                                                         OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_1+4,1]) = STRtoINT(STGR_COMB04_P.Cells[2,vi_Linha]))
                                                                         OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_1,1]) = STRtoINT(STGR_COMB04_PSobras.Cells[1,vi_Linha])) ) THEN
                                                                            CONTINUE;
                                                                      IF vi_Comb4P_1=2  THEN
                                                                      IF NOT( (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_1,1]) = STRtoINT(STGR_COMB04_P.Cells[2,vi_Linha]))
                                                                         OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_1+1,1]) = STRtoINT(STGR_COMB04_P.Cells[2,vi_Linha]))
                                                                         OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_1+2,1]) = STRtoINT(STGR_COMB04_P.Cells[2,vi_Linha]))
                                                                         OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_1+3,1]) = STRtoINT(STGR_COMB04_P.Cells[2,vi_Linha]))
                                                                         OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_1-1,1]) = STRtoINT(STGR_COMB04_P.Cells[2,vi_Linha]))
                                                                         OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_1,1]) = STRtoINT(STGR_COMB04_PSobras.Cells[1,vi_Linha])) ) THEN
                                                                            CONTINUE;
                                                                      FOR vi_Comb4P_2 := vi_Comb4P_1+1 TO  03 DO
                                                                      BEGIN
                                                                           IF vi_Comb4P_2=2  THEN
                                                                           IF NOT( (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_2,1]) = STRtoINT(STGR_COMB04_P.Cells[3,vi_Linha]))
                                                                              OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_2+1,1]) = STRtoINT(STGR_COMB04_P.Cells[3,vi_Linha]))
                                                                              OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_2+2,1]) = STRtoINT(STGR_COMB04_P.Cells[3,vi_Linha]))
                                                                              OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_2+3,1]) = STRtoINT(STGR_COMB04_P.Cells[3,vi_Linha]))
                                                                              OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_2-1,1]) = STRtoINT(STGR_COMB04_P.Cells[3,vi_Linha]))
                                                                              OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_2,1]) = STRtoINT(STGR_COMB04_PSobras.Cells[1,vi_Linha])) ) THEN
                                                                                CONTINUE;
                                                                           IF vi_Comb4P_2=3  THEN
                                                                           IF NOT( (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_2,1]) = STRtoINT(STGR_COMB04_P.Cells[3,vi_Linha]))
                                                                              OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_2+1,1]) = STRtoINT(STGR_COMB04_P.Cells[3,vi_Linha]))
                                                                              OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_2+2,1]) = STRtoINT(STGR_COMB04_P.Cells[3,vi_Linha]))
                                                                              OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_2-1,1]) = STRtoINT(STGR_COMB04_P.Cells[3,vi_Linha]))
                                                                              OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_2-2,1]) = STRtoINT(STGR_COMB04_P.Cells[3,vi_Linha]))
                                                                              OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_2,1]) = STRtoINT(STGR_COMB04_PSobras.Cells[1,vi_Linha])) ) THEN
                                                                                CONTINUE;
                                                                           FOR vi_Comb4P_3 := vi_Comb4P_2+1 TO  04 DO
                                                                           BEGIN
                                                                                IF vi_Comb4P_3=3  THEN
                                                                                IF NOT( (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_3,1]) = STRtoINT(STGR_COMB04_P.Cells[4,vi_Linha]))
                                                                                   OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_3+1,1]) = STRtoINT(STGR_COMB04_P.Cells[4,vi_Linha]))
                                                                                   OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_3+2,1]) = STRtoINT(STGR_COMB04_P.Cells[4,vi_Linha]))
                                                                                   OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_3-1,1]) = STRtoINT(STGR_COMB04_P.Cells[4,vi_Linha]))
                                                                                   OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_3-2,1]) = STRtoINT(STGR_COMB04_P.Cells[4,vi_Linha]))
                                                                                   OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_3,1]) = STRtoINT(STGR_COMB04_PSobras.Cells[1,vi_Linha])) ) THEN
                                                                                     CONTINUE;
                                                                                IF vi_Comb4P_3=4  THEN
                                                                                IF NOT( (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_3,1]) = STRtoINT(STGR_COMB04_P.Cells[4,vi_Linha]))
                                                                                   OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_3+1,1]) = STRtoINT(STGR_COMB04_P.Cells[4,vi_Linha]))
                                                                                   OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_3-1,1]) = STRtoINT(STGR_COMB04_P.Cells[4,vi_Linha]))
                                                                                   OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_3-2,1]) = STRtoINT(STGR_COMB04_P.Cells[4,vi_Linha]))
                                                                                   OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_3-3,1]) = STRtoINT(STGR_COMB04_P.Cells[4,vi_Linha]))
                                                                                   OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_3,1]) = STRtoINT(STGR_COMB04_PSobras.Cells[1,vi_Linha])) ) THEN
                                                                                     CONTINUE;
                                                                                FOR vi_Comb4P_4 := vi_Comb4P_3+1 TO  05 DO
                                                                                BEGIN
                                                                                     IF vi_Comb4P_4=4  THEN
                                                                                     IF NOT( (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_4,1]) = STRtoINT(STGR_COMB04_P.Cells[5,vi_Linha]))
                                                                                        OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_4-1,1]) = STRtoINT(STGR_COMB04_P.Cells[5,vi_Linha]))
                                                                                        OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_4-2,1]) = STRtoINT(STGR_COMB04_P.Cells[5,vi_Linha]))
                                                                                        OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_4-3,1]) = STRtoINT(STGR_COMB04_P.Cells[5,vi_Linha]))
                                                                                        OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_4+1,1]) = STRtoINT(STGR_COMB04_P.Cells[5,vi_Linha]))
                                                                                        OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_4,1]) = STRtoINT(STGR_COMB04_PSobras.Cells[1,vi_Linha])) ) THEN
                                                                                          CONTINUE;
                                                                                     IF vi_Comb4P_4=5  THEN
                                                                                     IF NOT( (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_4,1]) = STRtoINT(STGR_COMB04_P.Cells[5,vi_Linha]))
                                                                                        OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_4-1,1]) = STRtoINT(STGR_COMB04_P.Cells[5,vi_Linha]))
                                                                                        OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_4-2,1]) = STRtoINT(STGR_COMB04_P.Cells[5,vi_Linha]))
                                                                                        OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_4-3,1]) = STRtoINT(STGR_COMB04_P.Cells[5,vi_Linha]))
                                                                                        OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_4-4,1]) = STRtoINT(STGR_COMB04_P.Cells[5,vi_Linha]))
                                                                                        OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_4,1]) = STRtoINT(STGR_COMB04_PSobras.Cells[1,vi_Linha])) ) THEN
                                                                                          CONTINUE;
                                                                                     STGR_E1_04I_sorteados.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                                                                     STGR_E1_04I_sorteados.Cells[1,vi_Linhas06p]  := 'V';
                                                                                     STGR_E1_04I_sorteados.Cells[3,vi_Linhas06p]  :=  STGR_COMB08_I.Cells[vi_Comb5I_1,1] ;
                                                                                     STGR_E1_04I_sorteados.Cells[4,vi_Linhas06p]  :=  STGR_COMB08_I.Cells[Vi_Comb5I_2,1] ;
                                                                                     STGR_E1_04I_sorteados.Cells[5,vi_Linhas06p]  :=  STGR_COMB08_I.Cells[Vi_Comb5I_3,1] ;
                                                                                     STGR_E1_04I_sorteados.Cells[6,vi_Linhas06p]  :=  STGR_COMB08_I.Cells[Vi_Comb5I_4,1] ;
                                                                                     // --> Gerando os Pares
                                                                                     STGR_E1_04P_sorteados.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                                                                     STGR_E1_04P_sorteados.Cells[1,vi_Linhas06p]  :=  STGR_COMB07_P.Cells[vi_Comb5P_1,1] ;
                                                                                     STGR_E1_04P_sorteados.Cells[2,vi_Linhas06p]  :=  STGR_COMB07_P.Cells[Vi_Comb5P_2,1] ;
                                                                                     STGR_E1_04P_sorteados.Cells[3,vi_Linhas06p]  :=  STGR_COMB07_P.Cells[Vi_Comb5P_3,1] ;
                                                                                     STGR_E1_04P_sorteados.Cells[4,vi_Linhas06p]  :=  STGR_COMB07_P.Cells[Vi_Comb5P_4,1] ;
                                                                 
                                                                                     STGR_E1_04I_Nsorteados.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                                                                     STGR_E1_04I_Nsorteados.Cells[1,vi_Linhas06p]  := 'V';
                                                                                     STGR_E1_04I_Nsorteados.Cells[2,vi_Linhas06p]  :=  STGR_COMB05_I.Cells[vi_Comb4I_1,1] ;
                                                                                     STGR_E1_04I_Nsorteados.Cells[3,vi_Linhas06p]  :=  STGR_COMB05_I.Cells[vi_Comb4I_2,1] ;
                                                                                     STGR_E1_04I_Nsorteados.Cells[4,vi_Linhas06p]  :=  STGR_COMB05_I.Cells[vi_Comb4I_3,1] ;
                                                                                     STGR_E1_04I_Nsorteados.Cells[5,vi_Linhas06p]  :=  STGR_COMB05_I.Cells[vi_Comb4I_4,1] ;
                                                                                     // --> Gerando os Pares
                                                                                     STGR_E1_04P_Nsorteados.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                                                                     STGR_E1_04P_Nsorteados.Cells[1,vi_Linhas06p]  :=  STGR_COMB05_P.Cells[vi_Comb4P_1,1] ;
                                                                                     STGR_E1_04P_Nsorteados.Cells[2,vi_Linhas06p]  :=  STGR_COMB05_P.Cells[vi_Comb4P_2,1] ;
                                                                                     STGR_E1_04P_Nsorteados.Cells[3,vi_Linhas06p]  :=  STGR_COMB05_P.Cells[vi_Comb4P_3,1] ;
                                                                                     STGR_E1_04P_Nsorteados.Cells[4,vi_Linhas06p]  :=  STGR_COMB05_P.Cells[vi_Comb4P_4,1] ;

                                                                                     STGR_E1_04P_Nsorteados.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                                                                     vi_Soma10_2  :=  STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_1,1])
                                                                                        + STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_2,1])+ STRtoINT(STGR_COMB05_I.Cells[vi_Comb4I_3,1])
                                                                                        + STRtoINT(STGR_COMB05_I.Cells[vi_Comb4I_4,1])
                                                                                        + STRtoINT(STGR_E1_04P_Nsorteados.Cells[1, vi_Linhas06p])
                                                                                        + STRtoINT(STGR_E1_04P_Nsorteados.Cells[2, vi_Linhas06p]) + STRtoINT(STGR_E1_04P_Nsorteados.Cells[3, vi_Linhas06p])
                                                                                        + STRtoINT(STGR_E1_04P_Nsorteados.Cells[4, vi_Linhas06p])
                                                                                       ;
                                                                                     STGR_E1_04I_sorteados.Cells[2,vi_Linhas06p]  := INTtoSTR(vi_Soma10i+vi_Soma10_2) ;
{
IF     (STRtoINT(STGR_COMB08_I.Cells[vi_Comb5i_1,1])=9)
   AND (STRtoINT(STGR_COMB08_I.Cells[vi_Comb5i_2,1])=11)
   AND (STRtoINT(STGR_COMB08_I.Cells[vi_Comb5i_3,1])=21)
   AND (STRtoINT(STGR_COMB08_I.Cells[vi_Comb5i_4,1])=23)
   AND (STRtoINT(STGR_COMB07_P.Cells[Vi_Comb5P_1,1])=4)
   AND (STRtoINT(STGR_COMB07_P.Cells[Vi_Comb5P_2,1])=6)
   AND (STRtoINT(STGR_COMB07_P.Cells[Vi_Comb5P_3,1])=12)
   AND (STRtoINT(STGR_COMB07_P.Cells[Vi_Comb5P_4,1])=18)
   AND (STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_1,1])=7)
   AND (STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_2,1])=13)
   AND (STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_3,1])=17)
   AND (STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_4,1])=25)
   AND (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_1,1])=2)
   AND (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_2,1])=10)
   AND (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_3,1])=14)
   AND (STRtoINT(STGR_COMB05_P.Cells[vi_Comb4P_4,1])=16)   
THEN
     SHOWMESSAGE('AKI');
}
                                                                                     IF vi_Soma10_2 = 104 THEN
                                                                                     begin
                                                                                          vi_Linhas06p := vi_Linhas06p +1;
                                                                                          STGR_E1_04I_sorteados.RowCount := vi_Linhas06p;
                                                                                          STGR_E1_04P_sorteados.RowCount := vi_Linhas06p;
                                                                                          STGR_E1_04I_Nsorteados.RowCount := vi_Linhas06p;
                                                                                          STGR_E1_04P_Nsorteados.RowCount := vi_Linhas06p;
                                                                                          STGR_E1_04I_sorteados.Repaint;
                                                                                          STGR_E1_04P_sorteados.Repaint;
                                                                                          STGR_E1_04I_Nsorteados.Repaint;
                                                                                          STGR_E1_04P_Nsorteados.Repaint;
                                                                                          SLEEP(1);                                                                                        
                                                                                          Result := True;
                                                                                          Exit;
                                                                                     end;
                                                                                     END; //  vi_Comb5P_1 := 1 TO  05 DO
                                                                                END; //  vi_Comb5P_2 := vi_Comb5i
                                                                           END; //  vi_Comb5P_3 := vi_C
                                                                      END; //  vi_Comb5P_3 :=
                                                                 END; //  vi_Comb5i_1 := 1 TO  05 DO
                                                            END; //  vi_Comb5i_2 := vi_Comb5i
                                                       END; //  vi_Comb5I_3 := vi_C
                                                  END; //  vi_Comb5I_3 :=
                                             END;  //  if
                                        END; //  vi_Comb5P_1 := 1 TO  05 DO
                                   END; //  vi_Comb5P_2 := vi_Comb5i
                              END; //  vi_Comb5P_3 := vi_C
                         END; //  vi_Comb5P_3 :=
                    END; //  vi_Comb5i_1 := 1 TO  05 DO
               END; //  vi_Comb5i_2 := vi_Comb5i
          END; //  vi_Comb5I_3 := vi_C
     END; //  vi_Comb5I_3 :=
     STGR_E1_04I_sorteados.RowCount := vi_Linhas06p;
     STGR_E1_04P_sorteados.RowCount := vi_Linhas06p;
     STGR_E1_04I_Nsorteados.RowCount := vi_Linhas06p;
     STGR_E1_04P_Nsorteados.RowCount := vi_Linhas06p;
     STGR_E1_04I_sorteados.Repaint;
     STGR_E1_04P_sorteados.Repaint;
     STGR_E1_04I_Nsorteados.Repaint;
     STGR_E1_04P_Nsorteados.Repaint;
     Result := False;
END;



FUNCTION T_F_Gerador_ResDiv_SmFx3.FN_VALIDAR_ETAPA_2(vi_Linha: Integer):Boolean;
VAR
     vi_Comb3si_1, vi_Comb3si_2, vi_Comb3si_3  : INTEGER;
     vi_Comb3sp_1, vi_Comb3sp_2, vi_Comb3sp_3  : INTEGER;
     vi_Comb3i_1, vi_Comb3i_2, vi_Comb3i_3  : INTEGER;
     vi_Comb3p_1, vi_Comb3p_2, vi_Comb3p_3  : INTEGER;
     vi_Linhas06p, vi_Soma10i, vi_Soma10_2, vi_Contar, vi_ContaSel1 : INTEGER;
     vs_NumerosPrincipais, vs_NumerosPrincipaiNs : STRING;
BEGIN
     STGR_E2_03I_sorteados.ColWidths [0]:= 55 ;
     STGR_E2_03p_sorteados.ColWidths [0]:= 55 ;
     STGR_E2_03I_Nsorteados.ColWidths [0]:= 55;
     STGR_E2_03P_Nsorteados.ColWidths [0]:= 49;
     STGR_E2_03I_sorteados.RowCount := 2;
     STGR_E2_03P_sorteados.RowCount := 2;
     STGR_E2_03I_Nsorteados.RowCount := 2;
     STGR_E2_03P_Nsorteados.RowCount := 2;
//     STGR_E2_03I_sorteados.DefaultDrawing := false;
//     STGR_E2_03P_sorteados.DefaultDrawing := false;
//     STGR_E2_03I_Nsorteados.DefaultDrawing := false;
//     STGR_E2_03P_Nsorteados.DefaultDrawing := false;
     vi_Linhas06p := 1;
     // --> Bloco dos impares
     FOR vi_Comb3si_1 := 1 TO  06 DO
     BEGIN
          FOR vi_Comb3si_2 := vi_Comb3si_1+1 TO  07 DO
          BEGIN
               FOR vi_Comb3si_3 := vi_Comb3si_2+1 TO  08 DO
               BEGIN
                         // --> Gerando os Pares
                         FOR vi_Comb3sp_1 := 1 TO  05 DO
                         BEGIN
                              FOR vi_Comb3sp_2 := vi_Comb3sp_1+1 TO  06 DO
                              BEGIN
                                   FOR vi_Comb3sp_3 := vi_Comb3sp_2+1 TO  07 DO
                                   BEGIN
                                             STGR_E2_03P_sorteados.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                             vi_Soma10i  :=  STRtoINT(STGR_COMB08_I.Cells[vi_Comb3si_1,1])
                                                + STRtoINT(STGR_COMB08_I.Cells[vi_Comb3si_2,1])+ STRtoINT(STGR_COMB08_I.Cells[vi_Comb3si_3,1])
                                                + STRtoINT(STGR_COMB07_P.Cells[vi_Comb3sp_1,1] )
                                                + STRtoINT(STGR_COMB07_P.Cells[vi_Comb3sp_2,1]) + STRtoINT(STGR_COMB07_P.Cells[vi_Comb3sp_3,1])
                                                ;
                                             STGR_E2_03I_sorteados.Cells[2,vi_Linhas06p]  := INTtoSTR(vi_Soma10i) ;
                                             IF (vi_Soma10i >= 77) and ( vi_Soma10i <= 79) THEN
                                             BEGIN
                                             // --> Bloco dos impares
                                             FOR vi_Comb3i_1 := 1 TO  03 DO
                                             BEGIN
                                                  IF NOT( (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3i_1,1]) = STRtoINT(STGR_COMB04_I.Cells[3,vi_Linha]))
                                                     OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3i_1+1,1]) = STRtoINT(STGR_COMB04_I.Cells[3,vi_Linha])) ) THEN
                                                       CONTINUE;
                                                  FOR vi_Comb3i_2 := vi_Comb3i_1+1 TO  04 DO
                                                  BEGIN
                                                       IF NOT( (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3i_2,1]) = STRtoINT(STGR_COMB04_I.Cells[4,vi_Linha]))
                                                          OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3i_2-1,1]) = STRtoINT(STGR_COMB04_I.Cells[4,vi_Linha])) ) THEN
                                                            CONTINUE;
                                                       FOR vi_Comb3I_3 := vi_Comb3i_2+1 TO  05 DO
                                                       BEGIN
                                                            IF NOT( (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3I_3,1]) = STRtoINT(STGR_COMB04_I.Cells[5,vi_Linha]))
                                                               OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3I_3-1,1]) = STRtoINT(STGR_COMB04_I.Cells[5,vi_Linha])) ) THEN
                                                                 CONTINUE;
                                                                 // --> Gerando os Pares
                                                                 FOR vi_Comb3P_1 := 1 TO  03 DO
                                                                 BEGIN
                                                                      IF NOT( (STRtoINT(STGR_COMB05_P.Cells[vi_Comb3P_1,1]) = STRtoINT(STGR_COMB04_P.Cells[2,vi_Linha]))
                                                                         OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb3P_1+1,1]) = STRtoINT(STGR_COMB04_P.Cells[2,vi_Linha])) ) THEN
                                                                           CONTINUE;
                                                                      FOR vi_Comb3P_2 := vi_Comb3P_1+1 TO  04 DO
                                                                      BEGIN
                                                                           IF NOT( (STRtoINT(STGR_COMB05_P.Cells[vi_Comb3P_2,1]) = STRtoINT(STGR_COMB04_P.Cells[3,vi_Linha]))
                                                                              OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb3P_2-1,1]) = STRtoINT(STGR_COMB04_P.Cells[3,vi_Linha])) ) THEN
                                                                                CONTINUE;
                                                                           FOR vi_Comb3P_3 := vi_Comb3P_2+1 TO  05 DO
                                                                           BEGIN
                                                                                IF NOT( (STRtoINT(STGR_COMB05_P.Cells[vi_Comb3P_3,1]) = STRtoINT(STGR_COMB04_P.Cells[4,vi_Linha]))
                                                                                   OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb3P_3-1,1]) = STRtoINT(STGR_COMB04_P.Cells[4,vi_Linha])) ) THEN
                                                                                     CONTINUE;
                                                                                     STGR_E2_03I_sorteados.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                                                                     STGR_E2_03I_sorteados.Cells[1,vi_Linhas06p]  := 'V';
                                                                                     STGR_E2_03I_sorteados.Cells[3,vi_Linhas06p]  :=  STGR_COMB08_I.Cells[vi_Comb3si_1,1] ;
                                                                                     STGR_E2_03I_sorteados.Cells[4,vi_Linhas06p]  :=  STGR_COMB08_I.Cells[vi_Comb3si_2,1] ;
                                                                                     STGR_E2_03I_sorteados.Cells[5,vi_Linhas06p]  :=  STGR_COMB08_I.Cells[vi_Comb3si_3,1] ;
                                                                                     // --> Gerando os Pares
                                                                                     STGR_E2_03P_sorteados.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                                                                     STGR_E2_03P_sorteados.Cells[1,vi_Linhas06p]  :=  STGR_COMB07_P.Cells[vi_Comb3sp_1,1] ;
                                                                                     STGR_E2_03P_sorteados.Cells[2,vi_Linhas06p]  :=  STGR_COMB07_P.Cells[vi_Comb3sp_2,1] ;
                                                                                     STGR_E2_03P_sorteados.Cells[3,vi_Linhas06p]  :=  STGR_COMB07_P.Cells[vi_Comb3sp_3,1] ;

                                                                                     STGR_E2_03I_Nsorteados.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                                                                     STGR_E2_03I_Nsorteados.Cells[1,vi_Linhas06p]  := 'V';
                                                                                     STGR_E2_03I_Nsorteados.Cells[2,vi_Linhas06p]  :=  STGR_COMB05_I.Cells[vi_Comb3I_1,1] ;
                                                                                     STGR_E2_03I_Nsorteados.Cells[3,vi_Linhas06p]  :=  STGR_COMB05_I.Cells[vi_Comb3I_2,1] ;
                                                                                     STGR_E2_03I_Nsorteados.Cells[4,vi_Linhas06p]  :=  STGR_COMB05_I.Cells[vi_Comb3I_3,1] ;
                                                                                     // --> Gerando os Pares
                                                                                     STGR_E2_03P_Nsorteados.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                                                                     STGR_E2_03P_Nsorteados.Cells[1,vi_Linhas06p]  :=  STGR_COMB05_P.Cells[vi_Comb3P_1,1] ;
                                                                                     STGR_E2_03P_Nsorteados.Cells[2,vi_Linhas06p]  :=  STGR_COMB05_P.Cells[vi_Comb3P_2,1] ;
                                                                                     STGR_E2_03P_Nsorteados.Cells[3,vi_Linhas06p]  :=  STGR_COMB05_P.Cells[vi_Comb3P_3,1] ;

                                                                                     STGR_E2_03P_Nsorteados.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;

                                                                                     vi_Soma10_2  :=  STRtoINT(STGR_COMB05_I.Cells[vi_Comb3i_1,1])
                                                                                        + STRtoINT(STGR_COMB05_I.Cells[vi_Comb3i_2,1])+ STRtoINT(STGR_COMB05_I.Cells[vi_Comb3I_3,1])
                                                                                        + STRtoINT(STGR_E2_03P_Nsorteados.Cells[1, vi_Linhas06p])
                                                                                        + STRtoINT(STGR_E2_03P_Nsorteados.Cells[2, vi_Linhas06p]) + STRtoINT(STGR_E2_03P_Nsorteados.Cells[3, vi_Linhas06p])
                                                                                         ;
                                                                                     STGR_E2_03I_sorteados.Cells[2,vi_Linhas06p]  := INTtoSTR(vi_Soma10i+vi_Soma10_2) ;
                                                                                     IF ((vi_Soma10_2 >= 77) and (vi_Soma10_2 <= 79)) and ((vi_Soma10i + vi_Soma10_2) = 156) THEN
                                                                                     begin
                                                                                          STGR_E2_03I_sorteados.Repaint;
                                                                                          STGR_E2_03P_sorteados.Repaint;
                                                                                          STGR_E2_03I_Nsorteados.Repaint;
                                                                                          STGR_E2_03P_Nsorteados.Repaint;
                                                                                          sleep(1);
                                                                                          Result := True;
                                                                                          Exit;
                                                                                     end;
                                                                                END; //  vi_Comb3sp_2 := vi_Comb3si
                                                                           END; //  vi_Comb3sp_3 := vi_C
                                                                      END; //  vi_Comb3sp_3 :=
                                                            END; //  vi_Comb3si_2 := vi_Comb3si
                                                       END; //  vi_Comb3si_3 := vi_C
                                                  END; //  vi_Comb3si_3 :=
                                             END;  //  if
                                   END; //  vi_Comb3sp_2 := vi_Comb3si
                              END; //  vi_Comb3sp_3 := vi_C
                         END; //  vi_Comb3sp_3 :=
               END; //  vi_Comb3si_2 := vi_Comb3si
          END; //  vi_Comb3si_3 := vi_C
     END; //  vi_Comb3si_3 :=
     STGR_E2_03I_sorteados.RowCount := vi_Linhas06p;
     STGR_E2_03P_sorteados.RowCount := vi_Linhas06p;
     STGR_E2_03I_Nsorteados.RowCount := vi_Linhas06p;
     STGR_E2_03P_Nsorteados.RowCount := vi_Linhas06p;
     STGR_E2_03I_sorteados.Repaint;
     STGR_E2_03P_sorteados.Repaint;
     STGR_E2_03I_Nsorteados.Repaint;
     STGR_E2_03P_Nsorteados.Repaint;
     Result := False;
END;


FUNCTION T_F_Gerador_ResDiv_SmFx3.FN_VALIDAR_ETAPA_8(vi_Linha: Integer):Boolean;
VAR
     vi_Comb3i_1, vi_Comb3i_2, vi_Comb3i_3  : INTEGER;
     vi_Comb3p_1, vi_Comb3p_2, vi_Comb3p_3  : INTEGER;
     vi_Linhas06p, vi_Soma10i, vi_Soma10_2, vi_Contar, vi_ContaSel1 : INTEGER;
     vs_NumerosPrincipais, vs_NumerosPrincipaiNs : STRING;
BEGIN
     STGR_E8_05I_sorteados.ColWidths [0]:= 55 ;
     STGR_E8_05P_sorteados.ColWidths [0]:= 55 ;
     STGR_E8_03I_Nsorteados.ColWidths [0]:= 55;
     STGR_E8_03P_Nsorteados.ColWidths [0]:= 49;
     STGR_E8_05I_sorteados.RowCount := 2;
     STGR_E8_05P_sorteados.RowCount := 2;
     STGR_E8_03I_Nsorteados.RowCount := 2;
     STGR_E8_03P_Nsorteados.RowCount := 2;
//     STGR_E8_05I_sorteados.DefaultDrawing := false;
//     STGR_E8_05P_sorteados.DefaultDrawing := false;
//     STGR_E8_03I_Nsorteados.DefaultDrawing := false;
//     STGR_E8_03P_Nsorteados.DefaultDrawing := false;
     vi_Linhas06p := 1;

     STGR_E8_05P_sorteados.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
     vi_Soma10i  :=  STRtoINT(STGR_COMB03_ISobras.Cells[2,vi_Linha])
        + STRtoINT(STGR_COMB03_ISobras.Cells[3,vi_Linha])+ STRtoINT(STGR_COMB03_ISobras.Cells[4,vi_Linha])
        + STRtoINT(STGR_COMB03_ISobras.Cells[5,vi_Linha])+ STRtoINT(STGR_COMB03_ISobras.Cells[6,vi_Linha])
        + STRtoINT(STGR_COMB02_PSobras.Cells[1,1] )
        + STRtoINT(STGR_COMB02_PSobras.Cells[2,1]) + STRtoINT(STGR_COMB02_PSobras.Cells[3,1])
        + STRtoINT(STGR_COMB02_PSobras.Cells[4,1]) + STRtoINT(STGR_COMB02_PSobras.Cells[5,1])
        ;
     STGR_E8_05I_sorteados.Cells[2,vi_Linhas06p]  := INTtoSTR(vi_Soma10i) ;
     // --> Bloco dos impares
     FOR vi_Comb3i_1 := 1 TO  03 DO
     BEGIN
          IF vi_Comb3i_1=1  THEN
          IF NOT( (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3i_1,1]) = STRtoINT(STGR_COMB04_I.Cells[3,vi_Linha]))
             OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3i_1+1,1]) = STRtoINT(STGR_COMB04_I.Cells[3,vi_Linha]))
             OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3i_1+2,1]) = STRtoINT(STGR_COMB04_I.Cells[3,vi_Linha]))
             OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3i_1,1]) = STRtoINT(STGR_COMB04_ISobras.Cells[1,vi_Linha])) ) THEN
               CONTINUE;
          IF vi_Comb3i_1=2 THEN
          IF NOT( (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3i_1,1]) = STRtoINT(STGR_COMB04_I.Cells[3,vi_Linha]))
             OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3i_1+1,1]) = STRtoINT(STGR_COMB04_I.Cells[3,vi_Linha]))
             OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3i_1-1,1]) = STRtoINT(STGR_COMB04_I.Cells[3,vi_Linha]))
             OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3i_1,1]) = STRtoINT(STGR_COMB04_ISobras.Cells[1,vi_Linha])) ) THEN
               CONTINUE;
          IF vi_Comb3i_1=3 THEN
          IF NOT( (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3i_1,1]) = STRtoINT(STGR_COMB04_I.Cells[3,vi_Linha]))
             OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3i_1-1,1]) = STRtoINT(STGR_COMB04_I.Cells[3,vi_Linha]))
             OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3i_1-2,1]) = STRtoINT(STGR_COMB04_I.Cells[3,vi_Linha]))
             OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3i_1,1]) = STRtoINT(STGR_COMB04_ISobras.Cells[1,vi_Linha])) ) THEN
               CONTINUE;
          FOR vi_Comb3i_2 := vi_Comb3i_1+1 TO  04 DO
          BEGIN
               IF vi_Comb3i_2<4 THEN
               IF NOT( (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3i_2,1]) = STRtoINT(STGR_COMB04_I.Cells[4,vi_Linha]))
                  OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3i_2-1,1]) = STRtoINT(STGR_COMB04_I.Cells[4,vi_Linha]))
                  OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3i_2+1,1]) = STRtoINT(STGR_COMB04_I.Cells[4,vi_Linha]))
                  OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3i_2,1]) = STRtoINT(STGR_COMB04_ISobras.Cells[1,vi_Linha])) ) THEN
                    CONTINUE;
               IF vi_Comb3i_2=4 THEN
               IF NOT( (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3i_2,1]) = STRtoINT(STGR_COMB04_I.Cells[4,vi_Linha]))
                  OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3i_2-1,1]) = STRtoINT(STGR_COMB04_I.Cells[4,vi_Linha]))
                  OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3i_2-2,1]) = STRtoINT(STGR_COMB04_I.Cells[4,vi_Linha]))
                  OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3i_2,1]) = STRtoINT(STGR_COMB04_ISobras.Cells[1,vi_Linha])) ) THEN
                    CONTINUE;
               FOR vi_Comb3I_3 := vi_Comb3i_2+1 TO  05 DO
               BEGIN
                    IF NOT( (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3I_3,1]) = STRtoINT(STGR_COMB04_I.Cells[5,vi_Linha]))
                       OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3I_3-1,1]) = STRtoINT(STGR_COMB04_I.Cells[5,vi_Linha]))
                       OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3I_3-2,1]) = STRtoINT(STGR_COMB04_I.Cells[5,vi_Linha]))
                       OR (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3I_3,1]) = STRtoINT(STGR_COMB04_ISobras.Cells[1,vi_Linha]))  ) THEN
                         CONTINUE;
                         // --> Gerando os Pares
                         FOR vi_Comb3P_1 := 1 TO  03 DO
                         BEGIN
                              IF NOT( (STRtoINT(STGR_COMB05_P.Cells[vi_Comb3P_1,1]) = STRtoINT(STGR_COMB04_P.Cells[2,vi_Linha]))
                                 OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb3P_1+1,1]) = STRtoINT(STGR_COMB04_P.Cells[2,vi_Linha]))
                                 OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb3P_1+2,1]) = STRtoINT(STGR_COMB04_P.Cells[2,vi_Linha]))
                                 OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb3P_1,1]) = STRtoINT(STGR_COMB04_PSobras.Cells[1,vi_Linha]))  ) THEN
                                   CONTINUE;
                              FOR vi_Comb3P_2 := vi_Comb3P_1+1 TO  04 DO
                              BEGIN
                                   IF NOT( (STRtoINT(STGR_COMB05_P.Cells[vi_Comb3P_2,1]) = STRtoINT(STGR_COMB04_P.Cells[3,vi_Linha]))
                                      OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb3P_2-1,1]) = STRtoINT(STGR_COMB04_P.Cells[3,vi_Linha]))
                                      OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb3P_2+1,1]) = STRtoINT(STGR_COMB04_P.Cells[3,vi_Linha]))
                                      OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb3P_2,1]) = STRtoINT(STGR_COMB04_PSobras.Cells[1,vi_Linha]))  ) THEN
                                        CONTINUE;
                                   FOR vi_Comb3P_3 := vi_Comb3P_2+1 TO  05 DO
                                   BEGIN
                                        IF NOT( (STRtoINT(STGR_COMB05_P.Cells[vi_Comb3P_3,1]) = STRtoINT(STGR_COMB04_P.Cells[4,vi_Linha]))
                                           OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb3P_3-1,1]) = STRtoINT(STGR_COMB04_P.Cells[4,vi_Linha]))
                                           OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb3P_3-2,1]) = STRtoINT(STGR_COMB04_P.Cells[4,vi_Linha]))
                                           OR (STRtoINT(STGR_COMB05_P.Cells[vi_Comb3P_3,1]) = STRtoINT(STGR_COMB04_PSobras.Cells[1,vi_Linha]))  ) THEN
                                             CONTINUE;
                                        STGR_E8_05I_sorteados.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                        STGR_E8_05I_sorteados.Cells[2,vi_Linhas06p]  :=  STGR_COMB03_ISobras.Cells[2,vi_Linha] ;
                                        STGR_E8_05I_sorteados.Cells[3,vi_Linhas06p]  :=  STGR_COMB03_ISobras.Cells[3,vi_Linha] ;
                                        STGR_E8_05I_sorteados.Cells[4,vi_Linhas06p]  :=  STGR_COMB03_ISobras.Cells[4,vi_Linha] ;
                                        STGR_E8_05I_sorteados.Cells[5,vi_Linhas06p]  :=  STGR_COMB03_ISobras.Cells[5,vi_Linha] ;
                                        STGR_E8_05I_sorteados.Cells[6,vi_Linhas06p]  :=  STGR_COMB03_ISobras.Cells[6,vi_Linha] ;                                        
                                        // --> Gerando os Pares
                                        STGR_E8_05P_sorteados.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                        STGR_E8_05P_sorteados.Cells[1,vi_Linhas06p]  :=  STGR_COMB02_PSobras.Cells[1,1] ;
                                        STGR_E8_05P_sorteados.Cells[2,vi_Linhas06p]  :=  STGR_COMB02_PSobras.Cells[2,1] ;
                                        STGR_E8_05P_sorteados.Cells[3,vi_Linhas06p]  :=  STGR_COMB02_PSobras.Cells[3,1] ;
                                        STGR_E8_05P_sorteados.Cells[4,vi_Linhas06p]  :=  STGR_COMB02_PSobras.Cells[4,1] ;
                                        STGR_E8_05P_sorteados.Cells[5,vi_Linhas06p]  :=  STGR_COMB02_PSobras.Cells[5,1] ;

                                        STGR_E8_03I_Nsorteados.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                        STGR_E8_03I_Nsorteados.Cells[1,vi_Linhas06p]  := 'V';
                                        STGR_E8_03I_Nsorteados.Cells[2,vi_Linhas06p]  :=  STGR_COMB05_I.Cells[vi_Comb3I_1,1] ;
                                        STGR_E8_03I_Nsorteados.Cells[3,vi_Linhas06p]  :=  STGR_COMB05_I.Cells[vi_Comb3I_2,1] ;
                                        STGR_E8_03I_Nsorteados.Cells[4,vi_Linhas06p]  :=  STGR_COMB05_I.Cells[vi_Comb3I_3,1] ;
                                        // --> Gerando os Pares
                                        STGR_E8_03P_Nsorteados.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                        STGR_E8_03P_Nsorteados.Cells[1,vi_Linhas06p]  :=  STGR_COMB05_P.Cells[vi_Comb3P_1,1] ;
                                        STGR_E8_03P_Nsorteados.Cells[2,vi_Linhas06p]  :=  STGR_COMB05_P.Cells[vi_Comb3P_2,1] ;
                                        STGR_E8_03P_Nsorteados.Cells[3,vi_Linhas06p]  :=  STGR_COMB05_P.Cells[vi_Comb3P_3,1] ;

                                        STGR_E8_03P_Nsorteados.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                        vi_Soma10_2  :=  STRtoINT(STGR_COMB05_I.Cells[vi_Comb3i_1,1])
                                           + STRtoINT(STGR_COMB05_I.Cells[vi_Comb3i_2,1])+ STRtoINT(STGR_COMB05_I.Cells[vi_Comb3I_3,1])
                                           + STRtoINT(STGR_E8_03P_Nsorteados.Cells[1, vi_Linhas06p])
                                           + STRtoINT(STGR_E8_03P_Nsorteados.Cells[2, vi_Linhas06p]) + STRtoINT(STGR_E8_03P_Nsorteados.Cells[3, vi_Linhas06p])
                                            ;
                                        STGR_E8_05I_sorteados.Cells[1,vi_Linhas06p]  := INTtoSTR(vi_Soma10i+vi_Soma10_2) ;

  {
IF (STRtoINT(STGR_COMB03_ISobras.Cells[2,vi_Linha])=1)
   AND (STRtoINT(STGR_COMB03_ISobras.Cells[3,vi_Linha])=9)
   AND (STRtoINT(STGR_COMB03_ISobras.Cells[4,vi_Linha])=11)
   AND (STRtoINT(STGR_COMB03_ISobras.Cells[5,vi_Linha])=21)
   AND (STRtoINT(STGR_COMB03_ISobras.Cells[6,vi_Linha])=23)
   AND (STRtoINT(STGR_COMB02_PSobras.Cells[1,1])=4)
   AND (STRtoINT(STGR_COMB02_PSobras.Cells[2,1])=6)
   AND (STRtoINT(STGR_COMB02_PSobras.Cells[3,1])=8)
   AND (STRtoINT(STGR_COMB02_PSobras.Cells[4,1]) =12)
   AND (STRtoINT(STGR_COMB02_PSobras.Cells[5,1])=18)
    AND (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3i_1,1])=13)
    AND (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3i_2,1])=17)
    AND (STRtoINT(STGR_COMB05_I.Cells[vi_Comb3I_3,1])=25)
    AND (STRtoINT(STGR_E8_03P_Nsorteados.Cells[1, vi_Linhas06p])=2)
    AND (STRtoINT(STGR_E8_03P_Nsorteados.Cells[2, vi_Linhas06p])=16)  
THEN
     SHOWMESSAGE('AKI');
      }
                                        IF ((vi_Soma10i + vi_Soma10_2) = 208) THEN
                                        begin
                                             if  (vi_Linha mod 2)=0 then
                                             begin
                                                  STGR_E8_05I_sorteados.Repaint;
                                                  STGR_E8_05P_sorteados.Repaint;
                                                  STGR_E8_03I_Nsorteados.Repaint;
                                                  STGR_E8_03P_Nsorteados.Repaint;
                                                  sleep(1);
                                             end;
                                             Result := True;
                                             Exit;
                                        end; // if
                                   END; //  vi_Comb3P_3
                              END; //  vi_Comb3P_2
                         END; //  vi_Comb3P_1
               END; //  vi_Comb3I_3
          END; //  vi_Comb3I_2
     END; //  vi_Comb3i_1 :=
     STGR_E8_05I_sorteados.RowCount := vi_Linhas06p;
     STGR_E8_05P_sorteados.RowCount := vi_Linhas06p;
     STGR_E8_03I_Nsorteados.RowCount := vi_Linhas06p;
     STGR_E8_03P_Nsorteados.RowCount := vi_Linhas06p;
     STGR_E8_05I_sorteados.Repaint;
     STGR_E8_05P_sorteados.Repaint;
     STGR_E8_03I_Nsorteados.Repaint;
     STGR_E8_03P_Nsorteados.Repaint;
     Result := False;
END;



FUNCTION T_F_Gerador_ResDiv_SmFx3.FN_VALIDAR_ETAPA_3(vi_Linha: Integer):Boolean;
VAR
     vi_Comb3i_1, vi_Comb3i_2, vi_Comb3i_3, vi_Comb3i_4, vi_Comb3i_5 : INTEGER;
     vi_Comb3p_1, vi_Comb3p_2, vi_Comb3p_3  : INTEGER;
     vi_Linhas06p, vi_Soma10_2, vi_Contar, vi_ContaSel1 : INTEGER;
     vs_NumerosPrincipais, vs_NumerosPrincipaiNs : STRING;
BEGIN
     STGR_E3_04I_sorteados.ColWidths [0]:= 55 ;
     STGR_E3_03P_sorteados.ColWidths [0]:= 55 ;
     STGR_E3_04I_sorteados.RowCount := 2;
     STGR_E3_03P_sorteados.RowCount := 2;
//     STGR_E3_04I_sorteados.DefaultDrawing := false;
//     STGR_E3_03P_sorteados.DefaultDrawing := false;
     vi_Linhas06p := 1;

     STGR_E3_03P_sorteados.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
     // --> Bloco dos impares
     FOR vi_Comb3i_1 := 2 TO  03 DO
     BEGIN
          FOR vi_Comb3i_2 := vi_Comb3i_1+1 TO  04 DO
          BEGIN
               FOR vi_Comb3I_3 := vi_Comb3i_2+1 TO  05 DO
               BEGIN
                    FOR vi_Comb3I_4 := vi_Comb3i_3+1 TO  06 DO
                    BEGIN
                         // --> Gerando os Pares
                         FOR vi_Comb3P_1 := 1 TO  03 DO
                         BEGIN
                              FOR vi_Comb3P_2 := vi_Comb3P_1+1 TO  04 DO
                              BEGIN
                                   FOR vi_Comb3P_3 := vi_Comb3P_2+1 TO  05 DO
                                   BEGIN
                                        STGR_E3_04I_sorteados.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                        STGR_E3_04I_sorteados.Cells[2,vi_Linhas06p]  :=  STGR_COMB03_ISobras.Cells[vi_Comb3i_1,vi_Linha] ;
                                        STGR_E3_04I_sorteados.Cells[3,vi_Linhas06p]  :=  STGR_COMB03_ISobras.Cells[vi_Comb3i_2,vi_Linha] ;
                                        STGR_E3_04I_sorteados.Cells[4,vi_Linhas06p]  :=  STGR_COMB03_ISobras.Cells[vi_Comb3i_3,vi_Linha] ;
                                        STGR_E3_04I_sorteados.Cells[5,vi_Linhas06p]  :=  STGR_COMB03_ISobras.Cells[vi_Comb3i_4,vi_Linha] ;
                                        // --> Gerando os Pares
                                        STGR_E3_03P_sorteados.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                        STGR_E3_03P_sorteados.Cells[1,vi_Linhas06p]  :=  STGR_COMB02_PSobras.Cells[vi_Comb3P_1,1] ;
                                        STGR_E3_03P_sorteados.Cells[2,vi_Linhas06p]  :=  STGR_COMB02_PSobras.Cells[vi_Comb3P_2,1] ;
                                        STGR_E3_03P_sorteados.Cells[3,vi_Linhas06p]  :=  STGR_COMB02_PSobras.Cells[vi_Comb3P_3,1] ;
                                        vi_Soma10_2  :=  STRtoINT(STGR_COMB03_ISobras.Cells[vi_Comb3i_1,vi_Linha])
                                         + STRtoINT(STGR_COMB03_ISobras.Cells[vi_Comb3i_2,vi_Linha]) + STRtoINT(STGR_COMB03_ISobras.Cells[vi_Comb3I_3,vi_Linha])
                                         + STRtoINT(STGR_COMB03_ISobras.Cells[vi_Comb3i_4,vi_Linha])
                                         + STRtoINT(STGR_COMB02_PSobras.Cells[vi_Comb3P_1, 1])
                                         + STRtoINT(STGR_COMB02_PSobras.Cells[vi_Comb3P_2, 1]) + STRtoINT(STGR_COMB02_PSobras.Cells[vi_Comb3P_3, 1])
                                         ;
                                        STGR_E3_04I_sorteados.Cells[1,vi_Linhas06p]  := INTtoSTR(vi_Soma10_2) ;
                                        IF  (vi_Soma10_2 = 92) or (vi_Soma10_2 = 90) THEN
                                        begin
                                             if  (vi_Linha mod 2)=0 then
                                             begin
                                                  STGR_E3_04I_sorteados.Repaint;
                                                  STGR_E3_03P_sorteados.Repaint;
                                                  sleep(1);
                                             end; //if
                                             Result := True;
                                             Exit;
                                        end; // if
                                   END; //  for vi_Comb3P_3
                              END; //  FOR vi_Comb3P_2
                         END; //  FOR vi_Comb3P_1
                    END; //  FOR vi_Comb3I_4
               END; //  FOR vi_Comb3I_3
          END; //  FOR vi_Comb3i_2
     END; //  FOR vi_Comb3i_1
     STGR_E3_04I_sorteados.RowCount := vi_Linhas06p;
     STGR_E3_03P_sorteados.RowCount := vi_Linhas06p;
     STGR_E3_04I_sorteados.Repaint;
     STGR_E3_03P_sorteados.Repaint;
     Result := False;
END;




FUNCTION T_F_Gerador_ResDiv_SmFx3.FN_VALIDAR_ETAPA_6(vi_Linha: Integer):Boolean;
VAR
     vi_Comb3i_1, vi_Comb3i_2, vi_Comb3i_3  : INTEGER;
     vi_Comb3p_1, vi_Comb3p_2, vi_Comb3p_3, vi_Comb3p_4  : INTEGER;
     vi_Linhas06p, vi_Soma10_2, vi_Contar, vi_ContaSel1 : INTEGER;
     vs_NumerosPrincipais, vs_NumerosPrincipaiNs : STRING;
BEGIN
     STGR_E6_03I_sorteados.ColWidths [0]:= 55 ;
     STGR_E6_04P_sorteados.ColWidths [0]:= 55 ;
     STGR_E6_03I_sorteados.RowCount := 2;
     STGR_E6_04P_sorteados.RowCount := 2;
//     STGR_E3_04I_sorteados.DefaultDrawing := false;
//     STGR_E3_03P_sorteados.DefaultDrawing := false;
     vi_Linhas06p := 1;

     STGR_E6_04P_sorteados.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
     // --> Bloco dos impares
     FOR vi_Comb3i_1 := 2 TO  04 DO
     BEGIN
          FOR vi_Comb3i_2 := vi_Comb3i_1+1 TO  05 DO
          BEGIN
               FOR vi_Comb3I_3 := vi_Comb3i_2+1 TO  06 DO
               BEGIN
                    // --> Gerando os Pares
                    FOR vi_Comb3P_1 := 1 TO  02 DO
                    BEGIN
                         FOR vi_Comb3P_2 := vi_Comb3P_1+1 TO  03 DO
                         BEGIN
                              FOR vi_Comb3P_3 := vi_Comb3P_2+1 TO  04 DO
                              BEGIN
                                   FOR vi_Comb3p_4 := vi_Comb3p_3+1 TO  05 DO
                                   BEGIN
                                        STGR_E6_03I_sorteados.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                        STGR_E6_03I_sorteados.Cells[2,vi_Linhas06p]  :=  STGR_COMB03_ISobras.Cells[vi_Comb3i_1,vi_Linha] ;
                                        STGR_E6_03I_sorteados.Cells[3,vi_Linhas06p]  :=  STGR_COMB03_ISobras.Cells[vi_Comb3i_2,vi_Linha] ;
                                        STGR_E6_03I_sorteados.Cells[4,vi_Linhas06p]  :=  STGR_COMB03_ISobras.Cells[vi_Comb3i_3,vi_Linha] ;
                                        // --> Gerando os Pares
                                        STGR_E6_04P_sorteados.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                        STGR_E6_04P_sorteados.Cells[1,vi_Linhas06p]  :=  STGR_COMB02_PSobras.Cells[vi_Comb3P_1,1] ;
                                        STGR_E6_04P_sorteados.Cells[2,vi_Linhas06p]  :=  STGR_COMB02_PSobras.Cells[vi_Comb3P_2,1] ;
                                        STGR_E6_04P_sorteados.Cells[3,vi_Linhas06p]  :=  STGR_COMB02_PSobras.Cells[vi_Comb3P_3,1] ;
                                        STGR_E6_04P_sorteados.Cells[4,vi_Linhas06p]  :=  STGR_COMB02_PSobras.Cells[vi_Comb3P_4,1] ;
                                        vi_Soma10_2  :=  STRtoINT(STGR_COMB03_ISobras.Cells[vi_Comb3i_1,vi_Linha])
                                         + STRtoINT(STGR_COMB03_ISobras.Cells[vi_Comb3i_2,vi_Linha]) + STRtoINT(STGR_COMB03_ISobras.Cells[vi_Comb3I_3,vi_Linha])
                                         + STRtoINT(STGR_COMB02_PSobras.Cells[vi_Comb3P_1, 1])
                                         + STRtoINT(STGR_COMB02_PSobras.Cells[vi_Comb3P_2, 1]) + STRtoINT(STGR_COMB02_PSobras.Cells[vi_Comb3P_3, 1])
                                         + STRtoINT(STGR_COMB02_PSobras.Cells[vi_Comb3P_4, 1])
                                         ;
                                        STGR_E6_03I_sorteados.Cells[1,vi_Linhas06p]  := INTtoSTR(vi_Soma10_2) ;
                                        IF  (vi_Soma10_2 = 91) THEN
                                        begin
                                             if  (vi_Linha mod 2)=0 then
                                             begin
                                                  STGR_E6_03I_sorteados.Repaint;
                                                  STGR_E6_04P_sorteados.Repaint;
                                                  sleep(1);
                                             end; //if
                                             Result := True;
                                             Exit;
                                        end; // if
                                   END; //  FOR vi_Comb3p_4
                              END; //  for vi_Comb3P_3
                         END; //  FOR vi_Comb3P_2
                    END; //  FOR vi_Comb3P_1
               END; //  FOR vi_Comb3I_3
          END; //  FOR vi_Comb3i_2
     END; //  FOR vi_Comb3i_1
     STGR_E3_04I_sorteados.RowCount := vi_Linhas06p;
     STGR_E3_03P_sorteados.RowCount := vi_Linhas06p;
     STGR_E3_04I_sorteados.Repaint;
     STGR_E3_03P_sorteados.Repaint;
     Result := False;
END;



procedure T_F_Gerador_ResDiv_SmFx3.BBT_PREPARAR_MENUClick(Sender: TObject);
begin
     PA_PREPARAR.Visible := TRUE;
     PA_PREPARAR.Enabled := TRUE;
     PA_PREPARAR.Top  := 245;
     PA_PREPARAR.Left := 460;
     PA_PREPARAR.Repaint;
end;



procedure T_F_Gerador_ResDiv_SmFx3.BBT_GERAR_VOLTARClick(Sender: TObject);
begin
     PA_PREPARAR.Visible := false;
     PA_PREPARAR.Enabled := false;
     PA_PREPARAR.Left := 4500;
     PA_PREPARAR.Repaint;
end;


procedure T_F_Gerador_ResDiv_SmFx3.BBT_PREPARAR1Click(Sender: TObject);
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
     IF CB_SomaTotal_15n.ItemIndex =0 then
          IBQ_COMBINACOES.SQL.Add('SELECT * FROM RESULTADO_GERADOS_162comb where soma_15=194')
     else
          IBQ_COMBINACOES.SQL.Add('SELECT * FROM RESULTADO_GERADOS_162comb where soma_15=196');     
     IBQ_COMBINACOES.Prepare;
     IBQ_COMBINACOES.Open;
     IBQ_COMBINACOES.First;
     vi_Contador1 := 1  ;
     WHILE NOT(IBQ_COMBINACOES.Eof) DO
     BEGIN
          STGR_BASE.Cells[0,vi_Contador1] := INTtoSTR(vi_Contador1);
          STGR_BASE.Cells[01,vi_Contador1] := IBQ_COMBINACOES.FIELDbyNAME('SOMA_15').AsString;          
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

     PA_PREPARAR.Visible := false;
     PA_PREPARAR.Enabled := false;
     PA_PREPARAR.Left := 4500;
     PA_PREPARAR.Repaint;

     BBT_PREPARAR_MENU.Enabled := TRUE;
     BBT_GERAR_MENU.Enabled := TRUE;
     BBT_GERAR_MENU.Enabled := TRUE;
     showmessage('OK');
end;




procedure T_F_Gerador_ResDiv_SmFx3.BBT_GERAR_MENUClick(Sender: TObject);
begin
     SELF.IBQ_COMBINACOES.Close;
     SELF.IBQ_COMBINACOES.Open;
     IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM GERADOR_RESULT_DIV_SMFX3_DEF')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;

     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM GERADOR_RESULT_DIV_SMFX3_8I7P')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;

     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     
     SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM GERADOR_RESULT_DIV_SMFX3_DEF; ')  ;
     SELF.IBQ_COMBINACOES.Prepare;
     SELF.IBQ_COMBINACOES.Open;

     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('insert INTO GERADOR_RESULT_DIV_SMFX3_DEF (FLAG_FILTRAR,FLAG_GRAVAR) values (''N'',''N'');')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.Repaint;

     
     PA_GERAR.Visible := TRUE;
     PA_GERAR.Enabled := TRUE;
     PA_GERAR.Top  := 245;
     PA_GERAR.Left := 460;
     PA_GERAR.Repaint;
end;







procedure T_F_Gerador_ResDiv_SmFx3.BBT_GERARClick(Sender: TObject);


    PROCEDURE PR_ORDENAR_SIMULACAO_15_8i7p (VI_LINHAS9: INTEGER);
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


     FUNCTION NUMEROS_FIXOS1 (vi_Linhas1 : integer) : BOOLEAN;
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
                    vi_NumeroCelula:=  STRtoINT(STGR_COMB15_8I7P.Cells[vi_ContaSel1,vi_Linhas1]);
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


     FUNCTION NUMEROS_FIXOS2 (vi_Linhas1 : Integer) : boolean;
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
                    vi_NumeroCelula:=  STRtoINT(STGR_COMB15_8I7P.Cells[vi_ContaSel1,vi_Linhas1]);
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


     FUNCTION NUMEROS_FIXOS3 (vi_Linhas1 : Integer) : boolean;
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
                    vi_NumeroCelula:=  STRtoINT(STGR_COMB15_8I7P.Cells[vi_ContaSel1,vi_Linhas1]);
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
          vi_ContarStgGrid := TRUNC((STGR_COMB15_8I7P.RowCount-1)/1);
       FOR VI_AN_COMB1:= 1 TO vi_ContarStgGrid DO
       BEGIN
           VC_COMBINACOES15 :='';
           FOR vi_ContarCelulas := 1 TO 25 DO
           BEGIN
                STRGR_TODOS_NUMEROS.Cells [vi_ContarCelulas ,1]:='F';                
           end;
           FOR vi_ContarCelulas := 1 TO 15 DO
           BEGIN
               VC_COMBINACOES15 := VC_COMBINACOES15 + TRIM(STGR_COMB15_8I7P.Cells[vi_ContarCelulas,VI_AN_COMB1]) +' ';
               STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB15_8I7P.Cells[vi_ContarCelulas,VI_AN_COMB1])) ,1]:='V';
               vc_Contador_da_Tabela :=  STGR_COMB15_8I7P.Cells[0,VI_AN_COMB1] ;
           END; // FOR vi_ContarCelulas
          vc_Nome_Tabela := ' GERADOR_RESULT_DIV_SMFX3_8I7P';           
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
           VC_QUERY  := 'INSERT INTO ' +vc_Nome_Tabela+ ' (QTD, DADOS, DADOS_NS, SOMA_2_ORIGINAL_15) VALUES(' +#39+ vc_Contador_da_Tabela + #39 +','
                 +#39+  TRIM(VC_COMBINACOES15) + #39 +','+#39+TRIM(VC_COMBINACOES10)  + #39 +','+#39+TRIM(intTOstr(vi_Soma_Origem))
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
     vi_Combinacoes1, vi_Contador, vi_Contar: integer;
     vi_Total_Comb1,  vi_ContaSel1: integer;
     vi_SomaB, vi_SomaCeD : integer;
     vi_Comb3i_1, vi_Comb3i_2, vi_Comb3i_3 : INTEGER;
     vi_Comb2p_1, vi_Comb2p_2 : INTEGER;
     vi_Comb2ps_1, vi_Comb2ps_2, vi_Comb2ps_3, vi_Comb2ps_4 : INTEGER;
     vi_Comb4i_1, vi_Comb4i_2, vi_Comb4i_3, vi_Comb4i_4 : INTEGER;
     vi_Comb4p_1, vi_Comb4p_2, vi_Comb4p_3, vi_Comb4p_4 : INTEGER;
     vi_Flag1, vi_Flag2 : SMALLINT;
     vi_Contar_Comb1, vi_Linhas15, vi_Linhas06i, vi_Linhas06p, vi_Soma08a, vi_Soma08i, vi_Soma06p, vi_Soma05i, vi_Soma05p: INTEGER;
     vs_NumerosPrincipais, vs_NumerosPrincipaiNs : STRING;
     vb_OK1, vb_OK2, vb_OK3, vb_OK6, vb_OK8: BOOLEAN;
begin
     LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
     STGR_COMB04_I.ColWidths [0]:= 55 ;
     STGR_COMB04_P.ColWidths [0]:= 55 ;
     STGR_COMB02_Ps_fora.ColWidths [0]:= 45 ;
     STGR_COMB03_I.ColWidths [0]:= 55 ;
     STGR_COMB03_ISobras.ColWidths [0]:= 55;
     STGR_COMB15.ColWidths [0]:= 49;
     STGR_COMB15_7i8p.RowCount := 2;
     STGR_COMB15_8i7p.RowCount := 2;
     STGR_COMB15_8I7P.ColWidths [0]:= 49;
     STGR_COMB15_7I8P.ColWidths [0]:= 49;
     STGR_COMB15_7i8p.Cells[0,0] := '{7i/8P}';
     STGR_COMB15_8i7p.Cells[0,0] := '{8i/7P}';
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
     STGR_COMB15_8I7P.RowCount := 2;
     STGR_COMB15_8I7P.Repaint;

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
          STGR_COMB07_P.Repaint;
          STGR_COMB08_I.Repaint;
          STGR_COMB05_P.Repaint;
          STGR_COMB05_I.Repaint;
          vi_Linhas06i := 1;
          // --> Bloco dos impares  2/5/6
          FOR vi_Comb3i_1 := 1{2} TO  06 DO
          BEGIN
               FOR vi_Comb3i_2 := vi_Comb3i_1+1{2} TO  07 DO
               BEGIN
                    FOR vi_Comb3i_3 := vi_Comb3i_2+1 TO  08 DO
                    BEGIN
                         STGR_COMB03_I.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                         STGR_COMB03_I.Cells[1,vi_Linhas06p]  := 'V';
                         STGR_COMB03_I.Cells[3,vi_Linhas06p]  :=  STGR_COMB08_I.Cells[vi_Comb3i_1,1] ;
                         STGR_COMB03_I.Cells[4,vi_Linhas06p]  :=  STGR_COMB08_I.Cells[Vi_Comb3i_2,1] ;
                         STGR_COMB03_I.Cells[5,vi_Linhas06p]  :=  STGR_COMB08_I.Cells[Vi_Comb3i_3,1] ;
                         // --> Bloco dos pares
                         FOR vi_Comb2p_1 := 1 TO  06 DO
                         BEGIN
                              FOR vi_Comb2p_2 := vi_Comb2p_1+1 TO  07 DO
                              BEGIN
                                   // --> Gerando os Ímpares
                                   STGR_COMB03_I.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                   STGR_COMB03_I.Cells[1,vi_Linhas06p]  := 'V';
                                   STGR_COMB03_I.Cells[3,vi_Linhas06p]  :=  STGR_COMB08_I.Cells[vi_Comb3i_1,1] ;
                                   STGR_COMB03_I.Cells[4,vi_Linhas06p]  :=  STGR_COMB08_I.Cells[Vi_Comb3i_2,1] ;
                                   STGR_COMB03_I.Cells[5,vi_Linhas06p]  :=  STGR_COMB08_I.Cells[Vi_Comb3i_3,1] ;
                                   // --> Capturando os números ímpares que sobraram
                                   FOR VI_CONTAR :=1 TO 25 DO
                                   BEGIN
                                     STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
                                     STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,2] :='F';
                                   END; // FOR VI_CONTAR
                                   FOR vi_Contar :=1 TO 8 DO
                                   BEGIN
                                     STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB08_I.Cells[vi_Contar,1])) ,1]:='V';
                                   END; // FOR VI_CONTAR1
                                   FOR vi_Contar :=3 TO 5 DO
                                   BEGIN
                                     STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB03_I.Cells[vi_Contar,vi_Linhas06p])) ,2]:='V';
                                   END; // FOR VI_CONTAR1
                                   vi_ContaSel1 := 2;
                                   FOR vi_Contar :=1 TO 25 DO
                                   BEGIN
                                        IF (STRGR_TODOS_NUMEROS.Cells[vi_Contar,1]='V') and (STRGR_TODOS_NUMEROS.Cells[vi_Contar,2]='F')  THEN
                                        BEGIN
                                             STGR_COMB03_ISobras.Cells[vi_ContaSel1, vi_Linhas06p] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[vi_Contar,0]),2) ;
                                             vi_ContaSel1 := vi_ContaSel1 + 1;
                                        END; // IF (STRGR_TODOS_NUMEROS
                                   END; // FOR VI_CONTAR
                                   STGR_COMB03_ISobras.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                   STGR_COMB03_ISobras.Cells[1, vi_Linhas06p] :=  INTtoSTR(vi_Combinacoes1) ;
                                   vi_Soma08a  :=  STRtoINT(STGR_COMB08_I.Cells[vi_Comb3i_1,1])
                                      + STRtoINT(STGR_COMB08_I.Cells[vi_Comb3i_2,1])+ STRtoINT(STGR_COMB08_I.Cells[vi_Comb3i_3,1])
                                      + STRtoINT(STGR_COMB03_ISobras.Cells[2, vi_Linhas06p]) + STRtoINT(STGR_COMB03_ISobras.Cells[3, vi_Linhas06p])
                                      + STRtoINT(STGR_COMB03_ISobras.Cells[4, vi_Linhas06p]) + STRtoINT(STGR_COMB03_ISobras.Cells[5, vi_Linhas06p])
                                      + STRtoINT(STGR_COMB03_ISobras.Cells[6, vi_Linhas06p])
                                      ;
                                   IF not(vi_Soma08a=104) then
                                        continue;
                                   STGR_COMB03_I.Cells[2,vi_Linhas06p]  := INTtoSTR(vi_Soma08i) ;
                                   // --> Gerando os pares
                                   STGR_COMB02_P.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                   STGR_COMB02_P.Cells[1,vi_Linhas06p]  := 'F';
                                   STGR_COMB02_P.Cells[3,vi_Linhas06p]  :=  STGR_COMB07_P.Cells[vi_Comb2p_1,1] ;
                                   STGR_COMB02_P.Cells[4,vi_Linhas06p]  :=  STGR_COMB07_P.Cells[vi_Comb2p_2,1] ;
                                   // --> Capturando os números pares que sobraram
                                   FOR VI_CONTAR :=1 TO 25 DO
                                   BEGIN
                                     STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
                                     STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,2] :='F';
                                   END; // FOR VI_CONTAR
                                   FOR vi_Contar :=1 TO 7 DO
                                   BEGIN
                                     STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB07_P.Cells[vi_Contar,1])) ,1]:='V';
                                   END; // FOR VI_CONTAR1
                                   FOR vi_Contar :=3 TO 4 DO
                                   BEGIN
                                     STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB02_P.Cells[vi_Contar,vi_Linhas06p])) ,2]:='V';
                                   END; // FOR VI_CONTAR1
                                   vi_ContaSel1 := 1;
                                   FOR vi_Contar :=1 TO 25 DO
                                   BEGIN
                                        IF (STRGR_TODOS_NUMEROS.Cells[vi_Contar,1]='V') and (STRGR_TODOS_NUMEROS.Cells[vi_Contar,2]='F')  THEN
                                        BEGIN
                                             STGR_COMB02_PSobras.Cells[vi_ContaSel1, 1] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[vi_Contar,0]),2) ;
                                             vi_ContaSel1 := vi_ContaSel1 + 1;
                                        END; // IF (STRGR_TODOS_NUMEROS
                                   END; // FOR VI_CONTAR
                                   // --> Gerando os pares que sobraram segundo Anãlise Combinatória
                                   FOR vi_Comb2ps_1 := 1 TO  02 DO
                                   BEGIN
                                        FOR vi_Comb2ps_2 := vi_Comb2ps_1+1 TO  03 DO
                                        BEGIN
                                             FOR vi_Comb2ps_3 := vi_Comb2ps_2+1 TO  04 DO
                                             BEGIN
                                                  FOR vi_Comb2ps_4 := vi_Comb2ps_3+1 TO  05 DO
                                                  BEGIN
                                                       // --> SOMATÓRIA DE FLAGS
                                                       vi_Soma06p  :=  STRtoINT(STGR_COMB02_P.Cells[3,vi_Linhas06p])
                                                          + STRtoINT(STGR_COMB02_P.Cells[4,vi_Linhas06p])
                                                          + STRtoINT(STGR_COMB02_PSobras.Cells[vi_Comb2ps_1,1]) + STRtoINT(STGR_COMB02_PSobras.Cells[vi_Comb2ps_2,1])
                                                          + STRtoINT(STGR_COMB02_PSobras.Cells[vi_Comb2ps_3,1]) + STRtoINT(STGR_COMB02_PSobras.Cells[vi_Comb2ps_4,1])
                                                          ;
                                                       STGR_COMB02_P.Cells[2,vi_Linhas06p]  := INTtoSTR(vi_Soma06p) ;
                                                       if (CB_SomaTotal_15n.ItemIndex = 0) then
                                                            vi_SomaB:=78
                                                       else
                                                            vi_SomaB:=80;
                                                       IF (vi_Soma06p=vi_SomaB) THEN
                                                       BEGIN
                                                            STGR_COMB02_P.Cells[1,vi_Linhas06p]  := 'V';
                                                            FOR vi_Comb4i_1 := 1 TO  02 DO
                                                            BEGIN
                                                                 FOR vi_Comb4i_2 := vi_Comb4i_1+1 TO  03 DO
                                                                 BEGIN
                                                                      FOR vi_Comb4i_3 := vi_Comb4i_2+1 TO  04 DO
                                                                      BEGIN
                                                                           FOR vi_Comb4i_4 := vi_Comb4i_3+1 TO  05 DO
                                                                           BEGIN

                                                                                FOR vi_Comb4p_1 := 1 TO  02 DO
                                                                                BEGIN
                                                                                     FOR vi_Comb4p_2 := vi_Comb4p_1+1 TO  03 DO
                                                                                     BEGIN
                                                                                          FOR vi_Comb4p_3 := vi_Comb4p_2+1 TO  04 DO
                                                                                          BEGIN
                                                                                               FOR vi_Comb4p_4 := vi_Comb4p_3+1 TO  05 DO
                                                                                               BEGIN
                                                                                                   STGR_COMB02_P.Cells[2,vi_Linhas06p]  := INTtoSTR(vi_Soma06p) ;
                                                                                                         // --> Gerando os Ímpares
                                                                                                         STGR_COMB03_I.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                                                                                         STGR_COMB03_I.Cells[1,vi_Linhas06p]  := 'V';
                                                                                                         STGR_COMB03_I.Cells[3,vi_Linhas06p]  :=  STGR_COMB08_I.Cells[vi_Comb3i_1,1] ;
                                                                                                         STGR_COMB03_I.Cells[4,vi_Linhas06p]  :=  STGR_COMB08_I.Cells[Vi_Comb3i_2,1] ;
                                                                                                         STGR_COMB03_I.Cells[5,vi_Linhas06p]  :=  STGR_COMB08_I.Cells[Vi_Comb3i_3,1] ;
                                                                                                         // --> Capturando os números ímpares que sobraram
                                                                                                         FOR VI_CONTAR :=1 TO 25 DO
                                                                                                         BEGIN
                                                                                                           STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
                                                                                                           STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,2] :='F';
                                                                                                         END; // FOR VI_CONTAR
                                                                                                         FOR vi_Contar :=1 TO 8 DO
                                                                                                         BEGIN
                                                                                                           STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB08_I.Cells[vi_Contar,1])) ,1]:='V';
                                                                                                         END; // FOR VI_CONTAR1
                                                                                                         FOR vi_Contar :=3 TO 5 DO
                                                                                                         BEGIN
                                                                                                           STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB03_I.Cells[vi_Contar,vi_Linhas06p])) ,2]:='V';
                                                                                                         END; // FOR VI_CONTAR1
                                                                                                         vi_ContaSel1 := 2;
                                                                                                         FOR vi_Contar :=1 TO 25 DO
                                                                                                         BEGIN
                                                                                                              IF (STRGR_TODOS_NUMEROS.Cells[vi_Contar,1]='V') and (STRGR_TODOS_NUMEROS.Cells[vi_Contar,2]='F')  THEN
                                                                                                              BEGIN
                                                                                                                   STGR_COMB03_ISobras.Cells[vi_ContaSel1, vi_Linhas06p] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[vi_Contar,0]),2) ;
                                                                                                                   vi_ContaSel1 := vi_ContaSel1 + 1;
                                                                                                              END; // IF (STRGR_TODOS_NUMEROS
                                                                                                         END; // FOR VI_CONTAR
                                                                                                    // --> Gerando os pares
                                                                                                    STGR_COMB02_P.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                                                                                    STGR_COMB02_P.Cells[1,vi_Linhas06p]  := 'F';
                                                                                                    STGR_COMB02_P.Cells[3,vi_Linhas06p]  :=  STGR_COMB07_P.Cells[vi_Comb2p_1,1] ;
                                                                                                    STGR_COMB02_P.Cells[4,vi_Linhas06p]  :=  STGR_COMB07_P.Cells[vi_Comb2p_2,1] ;
                                                                                                    // --> Pares que sobraram, pela Análise Combinatória
                                                                                                    STGR_COMB02_Ps.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                                                                                    STGR_COMB02_Ps.Cells[1,vi_Linhas06p] :=  INTtoSTR(vi_Combinacoes1) ;
                                                                                                    STGR_COMB02_Ps.Cells[2,vi_Linhas06p]  :=  STGR_COMB02_PSobras.Cells[vi_Comb2ps_1,1] ;
                                                                                                    STGR_COMB02_Ps.Cells[3,vi_Linhas06p]  :=  STGR_COMB02_PSobras.Cells[vi_Comb2ps_2,1] ;
                                                                                                    STGR_COMB02_Ps.Cells[4,vi_Linhas06p]  :=  STGR_COMB02_PSobras.Cells[vi_Comb2ps_3,1] ;
                                                                                                    STGR_COMB02_Ps.Cells[5,vi_Linhas06p]  :=  STGR_COMB02_PSobras.Cells[vi_Comb2ps_4,1] ;
                                                                                                     // --> Capturando os números Pares que sobraram
                                                                                                         FOR VI_CONTAR :=1 TO 25 DO
                                                                                                         BEGIN
                                                                                                           STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
                                                                                                           STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,2] :='F';
                                                                                                         END; // FOR VI_CONTAR
                                                                                                         FOR vi_Contar :=1 TO 5 DO
                                                                                                         BEGIN
                                                                                                           STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB02_PSobras.Cells[vi_Contar,1])) ,1]:='V';
                                                                                                         END; // FOR VI_CONTAR1
                                                                                                         FOR vi_Contar :=2 TO 5 DO
                                                                                                         BEGIN
                                                                                                           STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB02_Ps.Cells[vi_Contar,vi_Linhas06p])) ,2]:='V';
                                                                                                         END; // FOR VI_CONTAR1
                                                                                                         vi_ContaSel1 := 1;
                                                                                                         FOR vi_Contar :=1 TO 25 DO
                                                                                                         BEGIN
                                                                                                              IF (STRGR_TODOS_NUMEROS.Cells[vi_Contar,1]='V') and (STRGR_TODOS_NUMEROS.Cells[vi_Contar,2]='F')  THEN
                                                                                                              BEGIN
                                                                                                                   STGR_COMB02_Ps_fora.Cells[vi_ContaSel1, vi_Linhas06p] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[vi_Contar,0]),2) ;
                                                                                                                   vi_ContaSel1 := vi_ContaSel1 + 1;
                                                                                                              END; // IF (STRGR_TODOS_NUMEROS
                                                                                                         END; // FOR VI_CONTAR
                                                                                                         STGR_COMB02_Ps_fora.Cells[0, vi_Linhas06p] := INTtoSTR(vi_Linhas06p) ;
                                                                                                    //
                                                                                                    // -----> Gerando os Impares dos Não Sorteados
                                                                                                    //
                                                                                                    STGR_COMB04_I.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                                                                                    STGR_COMB04_I.Cells[1,vi_Linhas06p]  := 'V';
                                                                                                    STGR_COMB04_I.Cells[3,vi_Linhas06p]  :=  STGR_COMB05_I.Cells[vi_Comb4i_1,1] ;
                                                                                                    STGR_COMB04_I.Cells[4,vi_Linhas06p]  :=  STGR_COMB05_I.Cells[vi_Comb4i_2,1] ;
                                                                                                    STGR_COMB04_I.Cells[5,vi_Linhas06p]  :=  STGR_COMB05_I.Cells[vi_Comb4i_3,1] ;
                                                                                                    STGR_COMB04_I.Cells[6,vi_Linhas06p]  :=  STGR_COMB05_I.Cells[vi_Comb4i_4,1] ;
                                                                                                    // -----> Capturando os números ímpares que sobraram
                                                                                                    FOR VI_CONTAR :=1 TO 25 DO
                                                                                                    BEGIN
                                                                                                      STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
                                                                                                      STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,2] :='F';
                                                                                                    END; // FOR VI_CONTAR
                                                                                                    FOR vi_Contar :=1 TO 5 DO
                                                                                                    BEGIN
                                                                                                      STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB05_I.Cells[vi_Contar,1])) ,1]:='V';
                                                                                                    END; // FOR VI_CONTAR1
                                                                                                    FOR vi_Contar :=3 TO 6 DO
                                                                                                    BEGIN
                                                                                                      STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB04_I.Cells[vi_Contar,vi_Linhas06p])) ,2]:='V';
                                                                                                    END; // FOR VI_CONTAR1
                                                                                                    vi_ContaSel1 := 1;
                                                                                                    FOR vi_Contar :=1 TO 25 DO
                                                                                                    BEGIN
                                                                                                         IF (STRGR_TODOS_NUMEROS.Cells[vi_Contar,1]='V') and (STRGR_TODOS_NUMEROS.Cells[vi_Contar,2]='F')  THEN
                                                                                                         BEGIN
                                                                                                              STGR_COMB04_ISobras.Cells[vi_ContaSel1, vi_Linhas06p] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[vi_Contar,0]),2) ;
                                                                                                              vi_ContaSel1 := vi_ContaSel1 + 1;
                                                                                                         END; // IF (STRGR_TODOS_NUMEROS
                                                                                                    END; // FOR VI_CONTAR
                                                                                                    //
                                                                                                    // -----> Gerando os Pares dos Não Sorteados
                                                                                                    //
                                                                                                    STGR_COMB04_P.Cells[0,vi_Linhas06p]  := INTtoSTR(vi_Linhas06p) ;
                                                                                                    STGR_COMB04_P.Cells[1,vi_Linhas06p]  := 'V';
                                                                                                    STGR_COMB04_P.Cells[2,vi_Linhas06p]  :=  STGR_COMB05_P.Cells[vi_Comb4p_1,1] ;
                                                                                                    STGR_COMB04_P.Cells[3,vi_Linhas06p]  :=  STGR_COMB05_P.Cells[vi_Comb4p_2,1] ;
                                                                                                    STGR_COMB04_P.Cells[4,vi_Linhas06p]  :=  STGR_COMB05_P.Cells[vi_Comb4p_3,1] ;
                                                                                                    STGR_COMB04_P.Cells[5,vi_Linhas06p]  :=  STGR_COMB05_P.Cells[vi_Comb4p_4,1] ;
                                                                                                    // --> SOMATÓRIA DE FLAGS
                                                                                                    vi_Soma08i  :=  STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_1,1])
                                                                                                       + STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_2,1])
                                                                                                       + STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_3,1]) + STRtoINT(STGR_COMB05_I.Cells[vi_Comb4i_4,1])
                                                                                                        + STRtoINT(STGR_COMB05_P.Cells[vi_Comb4p_1,1])
                                                                                                       + STRtoINT(STGR_COMB05_P.Cells[vi_Comb4p_2,1])
                                                                                                       + STRtoINT(STGR_COMB05_P.Cells[vi_Comb4p_3,1]) + STRtoINT(STGR_COMB05_P.Cells[vi_Comb4p_4,1])
                                                                                                       ;

                                                                                                    if (CB_SomaTotal_15n.ItemIndex = 0) then
                                                                                                         vi_SomaCeD := 104
                                                                                                    else
                                                                                                         vi_SomaCeD := 102;
                                                                                                    IF (VI_SOMA08i=vi_SomaCeD) THEN
                                                                                                    BEGIN
                                                                                                         STGR_COMB02_P.Cells[1,vi_Linhas06p]  := 'V';
                                                                                                         STGR_COMB04_I.Cells[2,vi_Linhas06p]  := INTtoSTR(vi_Soma08i) ;
                                                                                                         // --> Capturando os números pares que sobraram
                                                                                                         FOR VI_CONTAR :=1 TO 25 DO
                                                                                                         BEGIN
                                                                                                           STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
                                                                                                           STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,2] :='F';
                                                                                                         END; // FOR VI_CONTAR
                                                                                                         FOR vi_Contar :=1 TO 5 DO
                                                                                                         BEGIN
                                                                                                           STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB05_P.Cells[vi_Contar,1])) ,1]:='V';
                                                                                                         END; // FOR VI_CONTAR1
                                                                                                         FOR vi_Contar :=2 TO 5 DO
                                                                                                         BEGIN
                                                                                                           STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB04_P.Cells[vi_Contar,vi_Linhas06p])) ,2]:='V';
                                                                                                         END; // FOR VI_CONTAR1
                                                                                                         vi_ContaSel1 := 1;
                                                                                                         FOR vi_Contar :=1 TO 25 DO
                                                                                                         BEGIN
                                                                                                              IF (STRGR_TODOS_NUMEROS.Cells[vi_Contar,1]='V') and (STRGR_TODOS_NUMEROS.Cells[vi_Contar,2]='F')  THEN
                                                                                                              BEGIN
                                                                                                                   STGR_COMB04_PSobras.Cells[vi_ContaSel1, vi_Linhas06p] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[vi_Contar,0]),2) ;
                                                                                                                   vi_ContaSel1 := vi_ContaSel1 + 1;
                                                                                                              END; // IF (STRGR_TODOS_NUMEROS
                                                                                                         END; // FOR VI_CONTAR
                                                                                                         {
                                                                                               if (STRtoINT(STGR_COMB03_I.Cells[3,vi_Linhas06p])=5) and (STRtoINT(STGR_COMB03_I.Cells[4,vi_Linhas06p])=15) and (STRtoINT(STGR_COMB03_I.Cells[5,vi_Linhas06p])=19)
                                                                                                   and (STRtoINT(STGR_COMB02_P.Cells[3,vi_Linhas06p])=20) and (STRtoINT(STGR_COMB02_P.Cells[4,vi_Linhas06p])=24)
                                                                                               then
                                                                                                 showmessage('aqui');
                                                                                                 }
                                                                                               vb_OK2 := (FN_VALIDAR_ETAPA_2(vi_Linhas06p));
                                                                                               vb_OK3 := (FN_VALIDAR_ETAPA_3(vi_Linhas06p));
                                                                                               vb_OK6 := (FN_VALIDAR_ETAPA_6(vi_Linhas06p));
                                                                                               vb_OK8 := (FN_VALIDAR_ETAPA_8(vi_Linhas06p));
                                                                                               vb_OK1 := (FN_VALIDAR_ETAPA_1(vi_Linhas06p));                                                                                               
                                                                                                         if vb_OK1 AND vb_OK2
                                                                                                             and  vb_OK3 and vb_OK6  and vb_OK8
                                                                                                         then
                                                                                                         begin
                                                                                                              STGR_COMB15_8I7P.Cells[00,vi_Linhas06p] := INTtoSTR(vi_Linhas06p);
                                                                                                              STGR_COMB15_8I7P.Cells[01,vi_Linhas06p] := STGR_COMB03_I.Cells[3,vi_Linhas06p];
                                                                                                              STGR_COMB15_8I7P.Cells[02,vi_Linhas06p] := STGR_COMB03_I.Cells[4,vi_Linhas06p];
                                                                                                              STGR_COMB15_8I7P.Cells[03,vi_Linhas06p] := STGR_COMB03_I.Cells[5,vi_Linhas06p];
                                                                                                              STGR_COMB15_8I7P.Cells[04,vi_Linhas06p] := STGR_COMB02_P.Cells[3,vi_Linhas06p];
                                                                                                              STGR_COMB15_8I7P.Cells[05,vi_Linhas06p] := STGR_COMB02_P.Cells[4,vi_Linhas06p];
                                                                                                              STGR_COMB15_8I7P.Cells[06,vi_Linhas06p] := STGR_COMB04_I.Cells[3,vi_Linhas06p];
                                                                                                              STGR_COMB15_8I7P.Cells[07,vi_Linhas06p] := STGR_COMB04_I.Cells[4,vi_Linhas06p];
                                                                                                              STGR_COMB15_8I7P.Cells[08,vi_Linhas06p] := STGR_COMB04_I.Cells[5,vi_Linhas06p];
                                                                                                              STGR_COMB15_8I7P.Cells[09,vi_Linhas06p] := STGR_COMB04_I.Cells[6,vi_Linhas06p];
                                                                                                              STGR_COMB15_8I7P.Cells[10,vi_Linhas06p] := STGR_COMB04_ISobras.Cells[1,vi_Linhas06p];
                                                                                                              STGR_COMB15_8I7P.Cells[11,vi_Linhas06p] := STGR_COMB04_p.Cells[2,vi_Linhas06p];
                                                                                                              STGR_COMB15_8I7P.Cells[12,vi_Linhas06p] := STGR_COMB04_p.Cells[3,vi_Linhas06p];
                                                                                                              STGR_COMB15_8I7P.Cells[13,vi_Linhas06p] := STGR_COMB04_p.Cells[4,vi_Linhas06p];
                                                                                                              STGR_COMB15_8I7P.Cells[14,vi_Linhas06p] := STGR_COMB04_p.Cells[5,vi_Linhas06p];
                                                                                                              STGR_COMB15_8I7P.Cells[15,vi_Linhas06p] := STGR_COMB04_pSobras.Cells[1,vi_Linhas06p];
                                                                                                              IF (NUMEROS_FIXOS1(vi_Linhas06p)) and (NUMEROS_FIXOS2(vi_Linhas06p)) and (NUMEROS_FIXOS3(vi_Linhas06p))  then
                                                                                                              begin
                                                                                                                   PR_ORDENAR_SIMULACAO_15_8i7p (vi_Linhas06p);
                                                                                                                   vi_Linhas06p := vi_Linhas06p +1;
                                                                                                                   vi_Linhas06i := vi_Linhas06i +1;
                                                                                                              end; // if (NUMEROS_FIXOS1
                                                                                                         end; // if  (FN_VALIDAR_ETAPA_1(vi_Linhas06p)
                                                                                                    end; // if  (VI_SOMA08i=104)
                                                                                               END;  // FOR vi_Comb4p_4
                                                                                          END;  // FOR vi_Comb4p_3
                                                                                     END;  // FOR vi_Comb4p_2
                                                                                END;  // FOR vi_Comb4p_1

                                                                           END;  // FOR vi_Comb4i_4
                                                                      END;  // FOR vi_Comb4i_3
                                                                 END;  // FOR vi_Comb4i_2
                                                            END;  // FOR vi_Comb4i_1
                                                       END;//IF (VI_SOMA
                                                  END;  // FOR vi_Comb2ps_4
                                             END;  // FOR vi_Comb2ps_3
                                        END;  // FOR vi_Comb2ps_2
                                   END;  // FOR vi_Comb2ps_1
                                   STGR_COMB02_Ps.RowCount := vi_Linhas06p;
                              END; // FOR vi_Comb2p_2
                         END; // FOR vi_Comb2p_1

                         STGR_COMB15_8I7P.RowCount := vi_Linhas06p;
                         STGR_COMB15_8I7P.Repaint;

                         LA_TOTAL_Comb.Caption := 'TOTAL PROCESSADOS: '+INTtoSTR(vi_Combinacoes1)+'   ';
                         LA_TOTAL_Comb.Repaint;
                         LA_TOTAL_Comb.Repaint;
                    END; // FOR vi_Comb3i_3
                    STGR_COMB04_PSobras.RowCount := vi_Linhas06p;
                    STGR_COMB04_P.RowCount := vi_Linhas06p;
                    STGR_COMB04_ISobras.RowCount := vi_Linhas06p;
                    STGR_COMB04_I.RowCount := vi_Linhas06p;
                    STGR_COMB02_P.RowCount := vi_Linhas06p;
                    STGR_COMB02_Ps.RowCount := vi_Linhas06p;
                    STGR_COMB02_Ps_fora.RowCount := vi_Linhas06p;
                    STGR_COMB03_I.RowCount := vi_Linhas06p;
                    STGR_COMB03_ISobras.RowCount := vi_Linhas06p;
                         STGR_COMB04_I.Repaint;
                         STGR_COMB04_ISobras.Repaint;
                         STGR_COMB04_PSobras.Repaint;
                         STGR_COMB04_P.Repaint;
                         STGR_COMB02_Ps.Repaint;
                         STGR_COMB02_Ps_fora.Repaint;
                         STGR_COMB02_P.Repaint;
                         STGR_COMB03_I.Repaint;
                         STGR_COMB03_ISobras.Repaint;
               END; // FOR vi_Comb3i_2
               PGBR_GERARCOMB0.Position :=  TRUNC(vi_Combinacoes1/(STGR_BASE.RowCount-1)*100);
               sleep(12);
               if  (vi_Comb3i_1 MOD 1 = 0) then
               BEGIN
                   Self.WindowState := wsMinimized;
                   Self.WindowState :=  wsNormal;
                   SELF.Repaint;
               END;//IF
          END; // FOR vi_Combi3_1
          vi_Combinacoes1 := vi_Combinacoes1 + 1;
          vi_Contar_Comb1 := vi_Contar_Comb1 +1;
          PR_GRAVAR_DADOS_SMFX (194);          
     END; //  while
     STGR_COMB15_8I7P.RowCount := vi_Linhas06p;
     STGR_COMB15_8I7P.Repaint;
     STGR_COMB04_PSobras.Repaint;
     STGR_COMB04_P.Repaint;
     STGR_COMB02_P.Repaint;
     STGR_COMB03_I.Repaint;
     STGR_COMB03_ISobras.Repaint;
     // -->  encerrando as gravações
//          PR_GRAVAR_DADOS_SMFX (8);

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
            SELF.IBQ_CombINACOES.SQL.Add('UPDATE GERADOR_RESULT_DIV_SMFX3_DEF SET HORA_TERMINO ='''+FORMATDATETIME('h:n:s',time())+''', QTD_DADOS= ''' +INTtoSTR(vi_Contar_Comb1)+ ''';')  ;
            SELF.IBQ_CombINACOES.ExecSQL;
            SELF.IBQ_CombINACOES.SQL.Clear;
            SELF.IBQ_CombINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_CombINACOES.ExecSQL;
     LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
            SELF.IBQ_CombINACOES.SQL.Clear;
            SELF.IBQ_CombINACOES.SQL.Add('UPDATE GERADOR_RESULT_DIV_SMFX3_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_CombINACOES.ExecSQL;
            SELF.IBQ_CombINACOES.SQL.Clear;
            SELF.IBQ_CombINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_CombINACOES.ExecSQL;   
     PA_REMOVEUREPET.Left := 1100;
end;



procedure T_F_Gerador_ResDiv_SmFx3.BBT_PA_REMOVEUREPETClick(Sender: TObject);
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




procedure T_F_Gerador_ResDiv_SmFx3.BT_REAJUSTARClick(Sender: TObject);
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



procedure T_F_Gerador_ResDiv_SmFx3.BBT_CARREGARClick(Sender: TObject);
begin
    BBT_CANCELAR_SAIR.Visible := TRUE;
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
            SELF.IBQ_CombINACOES.SQL.Add('UPDATE GERADOR_RESULT_DIV_SMFX3_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_CombINACOES.ExecSQL;
            SELF.IBQ_CombINACOES.SQL.Clear;
            SELF.IBQ_CombINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_CombINACOES.ExecSQL;
end;



procedure T_F_Gerador_ResDiv_SmFx3.BBT_GERAR_SAIRClick(Sender: TObject);
begin
     PA_GERAR.Enabled := false;
     PA_GERAR.Left := 4500;    ;
     PA_GERAR.Repaint;
end;



procedure T_F_Gerador_ResDiv_SmFx3.BBT_BLOCO_NOTASClick(Sender: TObject);
var
    vi_Contar, vc_qtd_pares : INTEGER;
    vc_Nome_Tabela, VC_COMBINACOES2, vcTitulo : string;
begin
     for vc_qtd_pares := 8 to 8 do
     begin
          CASE vc_qtd_pares OF
               8:  vc_Nome_Tabela := 'GERADOR_RESULT_DIV_SMFX3_8I7P';
               7:  vc_Nome_Tabela := 'GERADOR_RESULT_DIV_SMFX3_7I8P';
          END; //CASE
          MEM_COMBINACOES_TODAS.Clear;
          SELF.IBQ_CombINACOES.Close;
          SELF.IBQ_CombINACOES.SQL.Clear;
          SELF.IBQ_CombINACOES.SQL.Add('SELECT COUNT(distinct(DADOS)) AS SOMADADOS FROM ' +vc_Nome_Tabela+ ';')  ;
          SELF.IBQ_CombINACOES.Prepare;
          SELF.IBQ_CombINACOES.Open;
          vi_Contar := SELF.IBQ_CombINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
          CASE vc_qtd_pares OF
               7:  vcTitulo := 'GERADOR 7Impares e 8Pares MODELO 3';
               8:  vcTitulo := 'GERADOR 8Impares e 7Pares MODELO 3';
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
    winExec('Notepad.exe C:\CXLOTOFACIL\GERADOR_RESULT_DIV_SMFX3_8I7P.TXT', sw_shownormal);
   showmessage('BLOCO DE NOTAS GERADO');
end;



procedure T_F_Gerador_ResDiv_SmFx3.btn_CarregarClick(Sender: TObject);
begin
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('UPDATE GERADOR_RESULT_DIV_SMFX3_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SHOWMESSAGE('OK');
     SELF.Close;
end;



end.
