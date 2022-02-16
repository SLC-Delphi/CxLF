unit GERADOR_8Grupos_M2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DB, IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, Math, strutils,
  Buttons, ExtCtrls, Grids, DBGrids;

type
  T_F_GERADOR_3G8C_M2 = class(TForm)
    SCBX_GABARITO: TScrollBox;
    Label7: TLabel;
    STGR_BASE_25: TStringGrid;
    PA_TOPO: TPanel;
    Label53: TLabel;
    BBT_CLOSE: TImage;
    PA_RESULTADO: TPanel;
    STRGR_TODOS_NUMEROS: TStringGrid;
    PA_EXECUTAR_FILTRO: TPanel;
    BBT_GERAR_MENU: TBitBtn;
    BBT_CANCELAR_SAIR: TBitBtn;
    PANEL_TITULO_SIMULACAO: TPanel;
    LA_TOTAL_100REPET: TLabel;
    LA_GERAR_COMB: TLabel;
    LA_TOTAL_COMB: TLabel;
    PGBR_GERARCOMB1: TProgressBar;
    PGBR_GERARCOMB0: TProgressBar;
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
    LA_rTOT_PROCESSAMENTO: TLabel;
    LA_rATRIBUICAO_DADOS: TLabel;
    LA_rLogic_Comp: TLabel;
    LA_rTOT_CALC: TLabel;
    Label39: TLabel;
    Label41: TLabel;
    Label43: TLabel;
    Label42: TLabel;
    PA_INICIAL: TPanel;
    Label55: TLabel;
    BT_NOVA_SIMULACAO: TButton;
    BT_REAJUSTAR: TButton;
    BBT_SAIR: TButton;
    BBT_CARREGAR: TButton;
    BBT_CANCELAR: TBitBtn;
    PA_GERAR: TPanel;
    Panel2: TPanel;
    Label63: TLabel;
    BBT_GERAR: TBitBtn;
    BBT_GERAR_voltar: TBitBtn;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBQ_COMBINACOES: TIBQuery;
    PA_COLUNA1: TPanel;
    Label56: TLabel;
    ED_SOMAS_C1_INI: TEdit;
    PA_COLUNA2: TPanel;
    Label61: TLabel;
    ED_SOMAS_C2_INI: TEdit;
    PA_COLUNA4: TPanel;
    Label25: TLabel;
    ED_SOMAS_C4_INI: TEdit;
    PA_COLUNA3: TPanel;
    Label72: TLabel;
    ED_SOMAS_C3_INI: TEdit;
    STGR_SOBRAS_15: TStringGrid;
    ED_TSLEEP: TEdit;
    STGR_SOBRAS_12: TStringGrid;
    BBT_PA_REMOVEUREPET: TBitBtn;
    BBT_BLOCO_NOTAS: TBitBtn;
    MEM_COMBINACOES_TODAS: TMemo;
    BBT_PREPARAR: TBitBtn;
    Label1: TLabel;
    PA_COLUNA5: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    ED_SOMAS_C5_INI: TEdit;
    Panel3: TPanel;
    Label8: TLabel;
    ED_SOMAS_G2_INI: TEdit;
    BBT_INICIAR: TBitBtn;
    PA_COLUNA6: TPanel;
    Label9: TLabel;
    ED_SOMAS_C6_INI: TEdit;
    PA_COLUNA7: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    ED_SOMAS_C7_INI: TEdit;
    PA_COLUNA8: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    ED_SOMAS_C8_INI: TEdit;
    Panel7: TPanel;
    Label15: TLabel;
    PageControl_RESULTADO: TPageControl;
    TBS_PREPARAR: TTabSheet;
    TBS_ETAPA2: TTabSheet;
    STGR_COLUNA_02: TStringGrid;
    STGR_COLUNA_03: TStringGrid;
    STGR_COLUNA_04: TStringGrid;
    STGR_COLUNA_05: TStringGrid;
    STGR_COLUNA_06: TStringGrid;
    STGR_COLUNA_07: TStringGrid;
    STGR_COLUNA_08: TStringGrid;
    TBS_RESULTADO: TTabSheet;
    DS1: TDataSource;
    PA_FIXOS_C1: TPanel;
    Label16: TLabel;
    ED_FIXOS_01_C1: TEdit;
    PA_FIXOS_C2: TPanel;
    Label17: TLabel;
    ED_FIXOS_01_C2: TEdit;
    TBS_INICIAR: TTabSheet;
    SCBX_INICIAR: TScrollBox;
    STGR_COLUNA_01e02_SOBRAS: TStringGrid;
    STGR_COLUNA_01_com02: TStringGrid;
    STGR_COLUNA_01_SOBRAS: TStringGrid;
    STGR_COLUNA_01: TStringGrid;
    Bevel1: TBevel;
    Label18: TLabel;
    Bevel2: TBevel;
    Label19: TLabel;
    LA_RESULTADO_TXT: TLabel;
    PA_FIXOS_C3: TPanel;
    Label20: TLabel;
    ED_FIXOS_01_C3: TEdit;
    PA_FIXOS_C4: TPanel;
    Label21: TLabel;
    ED_FIXOS_01_C4: TEdit;
    PA_FIXOS_C5: TPanel;
    Label22: TLabel;
    ED_FIXOS_01_C5: TEdit;
    STGR_COLUNA_03e04e05_SOBRAS: TStringGrid;
    PA_FIXOS_C6: TPanel;
    Label23: TLabel;
    ED_FIXOS_01_C6: TEdit;
    PA_FIXOS_C7: TPanel;
    Label24: TLabel;
    ED_FIXOS_01_C7: TEdit;
    PA_FIXOS_C8: TPanel;
    Label26: TLabel;
    ED_FIXOS_01_C8: TEdit;
    Label27: TLabel;
    STGR_COLUNA_09: TStringGrid;
    STGR_SOBRAS_06: TStringGrid;
    STGR_SOBRAS_03: TStringGrid;
    STGR_COLUNA_10: TStringGrid;
    IBQ_COMBINACOES2: TIBQuery;
    DS2: TDataSource;
    DBG_RESULTADO: TDBGrid;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label28: TLabel;
    Label10: TLabel;
    ED_SOMAS_C2_FINAL: TEdit;
    TRB_C2_INI: TTrackBar;
    ED_SOMAS_C3_FINAL: TEdit;
    TRB_C3_INI: TTrackBar;
    TRB_C4_INI: TTrackBar;
    TRB_C5_INI: TTrackBar;
    ED_SOMAS_C4_FINAL: TEdit;
    ED_SOMAS_C5_FINAL: TEdit;
    ED_SOMAS_G2_FINAL: TEdit;
    TRB_G2_INI: TTrackBar;
    STGR_COLUNA_SOMA_C2345: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BT_NOVA_SIMULACAOClick(Sender: TObject);
    procedure BT_REAJUSTARClick(Sender: TObject);
    procedure BBT_CARREGARClick(Sender: TObject);
    procedure BBT_SAIRClick(Sender: TObject);
    procedure BBT_CANCELARClick(Sender: TObject);
    procedure BBT_CLOSEClick(Sender: TObject);
    procedure BBT_GERAR_MENUClick(Sender: TObject);
    procedure BBT_GERAR_voltarClick(Sender: TObject);
    procedure BBT_GERARClick(Sender: TObject);
    procedure BBT_PA_REMOVEUREPETClick(Sender: TObject);
    procedure BBT_BLOCO_NOTASClick(Sender: TObject);
    procedure BBT_INICIARClick(Sender: TObject);
    procedure BBT_PREPARARClick(Sender: TObject);
    procedure PageControl_RESULTADOEnter(Sender: TObject);
    procedure TabSheet1Enter(Sender: TObject);
    procedure TRB_C2_INIChange(Sender: TObject);
    procedure TRB_C3_INIChange(Sender: TObject);
    procedure TRB_C4_INIChange(Sender: TObject);
    procedure TRB_C5_INIChange(Sender: TObject);
    procedure TRB_G2_INIChange(Sender: TObject);
  private
    { Private declarations }
     PROCEDURE PR_SIMULAR_RECUPERANDODADOS();
     PROCEDURE PR_SIMULAR_RECUPERANDODADOS2();     
     procedure PR_LIMPAR_GRIDiniciar ();
     procedure PR_LIMPAR_GRIDpreparar ();
     procedure PR_LIMPAR_GRIDpreparar2 ();             
  public
    { Public declarations }
  end; // type


var
  _F_GERADOR_3G8C_M2: T_F_GERADOR_3G8C_M2;

implementation

{$R *.dfm}


procedure T_F_GERADOR_3G8C_M2.PR_LIMPAR_GRIDiniciar ();
BEGIN
     STGR_COLUNA_01.CleanupInstance;
     STGR_COLUNA_01.Free;
     STGR_COLUNA_01:= TStringGrid.Create(SELF);
     STGR_COLUNA_01.Parent:= SCBX_INICIAR;
     WITH STGR_COLUNA_01 DO
     BEGIN
          Left   := 6   ;
          Top    := 35  ;
          Width  := 273 ;
         // Height := 175 ;
          TabStop := False  ;
          Align := alCustom ;
          Anchors := [akLeft, akTop, akBottom];
          BorderStyle := bsNone ;
          Color := 10666490 ;
          ColCount := 7     ;
          DefaultColWidth := 32   ;
          DefaultRowHeight := 27  ;
          FixedColor := clMedGray ;
          FixedCols := 3    ;
          RowCount := 2     ;
          Font.Charset := DEFAULT_CHARSET ;
          Font.Color := clWindowText      ;
          Font.Height := -13              ;
          Font.Name := 'Tahoma'           ;
          Font.Style := []                ;
          Options := [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect] ;
          ParentFont := False ;
          TabOrder := 3       ;
     end ; // WITH

     STGR_COLUNA_01_SOBRAS.CleanupInstance;
     STGR_COLUNA_01_SOBRAS.Free;
     STGR_COLUNA_01_SOBRAS := TStringGrid.Create(Self);
     STGR_COLUNA_01_SOBRAS.Parent := SCBX_INICIAR;
     WITH STGR_COLUNA_01_SOBRAS DO
     BEGIN
          Left   := 280  ;
          Top    := 35   ;
          Width  := 757  ;
        //  Height := 175  ;
          TabStop := False ;
          Align := alCustom  ;
          Anchors := [akLeft, akTop, akBottom] ;
          BorderStyle := bsNone ;
          Color := 10666490  ;
          ColCount := 22   ;
          DefaultColWidth := 32  ;
          DefaultRowHeight := 27 ;
          FixedColor := clMedGray ;
          RowCount := 2    ;
          Font.Charset := DEFAULT_CHARSET ;
          Font.Color := clWindowText ;
          Font.Height := -13         ;
          Font.Name := 'Tahoma'      ;
          Font.Style := []          ;
          Options := [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect];
          ParentFont := False ;
          TabOrder := 2       ;
     end; //with
END; // PR_LIMPAR_GRIDiniciar





PROCEDURE T_F_GERADOR_3G8C_M2.PR_LIMPAR_GRIDpreparar ();
BEGIN
     STGR_COLUNA_02.CleanupInstance;
     STGR_COLUNA_02.Free;
     STGR_COLUNA_02 := TStringGrid.Create(Self);
     STGR_COLUNA_02.Parent := TBS_PREPARAR;
     with  STGR_COLUNA_02 do
     begin
          Left    := 2       ;
          Top     := 3       ;
          Width   := 230     ;
       //   Height  := 272     ;
          TabStop := False  ;
          Align   := alCustom ;
          Anchors := [akLeft, akTop, akBottom];
          Color   := 13691095     ;
          ColCount := 6         ;
          DefaultColWidth  := 30 ;
          DefaultRowHeight := 27 ;
          FixedColor := clMedGray ;
          FixedCols := 3   ;
          RowCount  := 2   ;
          Font.Charset := DEFAULT_CHARSET ;
          Font.Color := clWindowText ;
          Font.Height := -13      ;
          Font.Name := 'Tahoma' ;
          Font.Style := []    ;
          Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
          ParentFont := False ;
          TabOrder   := 0     ;
     end; // with

     STGR_COLUNA_03.CleanupInstance;
     STGR_COLUNA_03.Free;
     STGR_COLUNA_03 := TStringGrid.Create(Self);
     STGR_COLUNA_03.Parent := TBS_PREPARAR;
     with  STGR_COLUNA_03 do
     begin
          Left    := 238     ;
          Top     := 3       ;
          Width   := 230     ;
        //  Height  := 272     ;
          TabStop := False  ;
          Align   := alCustom ;
          Anchors := [akLeft, akTop, akBottom];
          Color   := 13691095     ;
          ColCount := 6         ;
          DefaultColWidth  := 30 ;
          DefaultRowHeight := 27 ;
          FixedColor := clMedGray ;
          FixedCols := 3   ;
          RowCount  := 2   ;
          Font.Charset := DEFAULT_CHARSET ;
          Font.Color := clWindowText ;
          Font.Height := -15      ;
          Font.Name := 'Times New Roman' ;
          Font.Style := []    ;
          Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
          ParentFont  := False ;
          ParentCtl3D := False ;
          TabOrder   := 1     ;
     end; // with


     STGR_COLUNA_04.CleanupInstance;
     STGR_COLUNA_04.Free;
     STGR_COLUNA_04 := TStringGrid.Create(Self);
     STGR_COLUNA_04.Parent := TBS_PREPARAR;
     with  STGR_COLUNA_04 do
     begin
          Left    := 474     ;
          Top     := 3       ;
          Width   := 230     ;
       //   Height  := 272     ;
          TabStop := False  ;
          Align   := alCustom ;
          Anchors := [akLeft, akTop, akBottom];
          Color   := 13691095     ;
          ColCount := 6         ;
          DefaultColWidth  := 30 ;
          DefaultRowHeight := 27 ;
          FixedColor := clMedGray ;
          FixedCols := 3   ;
          RowCount  := 2   ;
          Font.Charset := DEFAULT_CHARSET ;
          Font.Color := clWindowText ;
          Font.Height := -13      ;
          Font.Name := 'Tahoma' ;
          Font.Style := []    ;
          Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
          ParentFont := False ;
          TabOrder   := 2     ;
     end; // with
END; //




PROCEDURE T_F_GERADOR_3G8C_M2.PR_LIMPAR_GRIDpreparar2 ();
BEGIN
     STGR_COLUNA_03.CleanupInstance;
     STGR_COLUNA_03.Free;
     STGR_COLUNA_03 := TStringGrid.Create(Self);
     STGR_COLUNA_03.Parent := TBS_PREPARAR;
     with  STGR_COLUNA_03 do
     begin
          Left    := 238     ;
          Top     := 3       ;
          Width   := 230     ;
          Height  := 272     ;
          TabStop := False  ;
          Align   := alCustom ;
          Anchors := [akLeft, akTop, akBottom];
          Color   := 13691095     ;
          ColCount := 6         ;
          DefaultColWidth  := 30 ;
          DefaultRowHeight := 27 ;
          FixedColor := clMedGray ;
          FixedCols := 3   ;
          RowCount  := 2   ;
          Font.Charset := DEFAULT_CHARSET ;
          Font.Color := clWindowText ;
          Font.Height := -15      ;
          Font.Name := 'Times New Roman' ;
          Font.Style := []    ;
          Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
          ParentFont  := False ;
          ParentCtl3D := False ;
          TabOrder   := 1     ;
     end; // with


     STGR_COLUNA_04.CleanupInstance;
     STGR_COLUNA_04.Free;
     STGR_COLUNA_04 := TStringGrid.Create(Self);
     STGR_COLUNA_04.Parent := TBS_PREPARAR;
     with  STGR_COLUNA_04 do
     begin
          Left    := 474     ;
          Top     := 3       ;
          Width   := 230     ;
          Height  := 272     ;
          TabStop := False  ;
          Align   := alCustom ;
          Anchors := [akLeft, akTop, akBottom];
          Color   := 13691095     ;
          ColCount := 6         ;
          DefaultColWidth  := 30 ;
          DefaultRowHeight := 27 ;
          FixedColor := clMedGray ;
          FixedCols := 3   ;
          RowCount  := 2   ;
          Font.Charset := DEFAULT_CHARSET ;
          Font.Color := clWindowText ;
          Font.Height := -13      ;
          Font.Name := 'Tahoma' ;
          Font.Style := []    ;
          Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
          ParentFont := False ;
          TabOrder   := 2     ;
     end; // with
END; //





procedure T_F_GERADOR_3G8C_M2.FormCreate(Sender: TObject);
var
     vsi_contar : smallint;
begin
     SELF.ClientWidth  := 1465;
     SELF.ClientHeight := 650;
     SELF.Top  := 59;
     SELF.Left := 9;
   //  SELF.Visible := TRUE;
     bbt_close.Left := SELF.ClientWidth-35;
          PA_REMOVEUREPET.Left := 5000;
     PA_GERAR.Left := 5000;
     SCBX_GABARITO.Visible := false;
     PA_RESULTADO.Visible := false;
     PA_INICIAL.Enabled := TRUE;
     PA_INICIAL.Left := 520;
     PA_INICIAL.Top := 160;
     FOR vsi_contar := 1 TO 25 DO
     BEGIN
          STGR_BASE_25.Cells[vsi_contar,1] :=  INTtoSTR(vsi_contar);
     END;
    PA_EXECUTAR_FILTRO.Enabled := false;
    BBT_CANCELAR_SAIR.Visible := false;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_3G8C_M2_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;

end;


procedure T_F_GERADOR_3G8C_M2.FormClose(Sender: TObject;
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



procedure T_F_GERADOR_3G8C_M2.BBT_CLOSEClick(Sender: TObject);
begin
     SELF.Close;
end;




procedure T_F_GERADOR_3G8C_M2.BT_NOVA_SIMULACAOClick(Sender: TObject);
begin
     BBT_PREPARAR.Visible := false;
     PA_RESULTADO.Enabled := TRUE;
     SCBX_GABARITO.Visible := TRUE;
     SCBX_GABARITO.Enabled := TRUE;
     PA_RESULTADO.Visible := TRUE;
     PA_RESULTADO.Enabled := TRUE;
     PA_EXECUTAR_FILTRO.Enabled := TRUE;
     BBT_INICIAR.Enabled := TRUE;
     BBT_PREPARAR.Enabled := false;
     BBT_GERAR_MENU.Enabled := false;
     BBT_GERAR_MENU.Enabled := false;
     BBT_CANCELAR_SAIR.Visible := false;
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 2198;
     SCBX_GABARITO.Top:=247;
     SCBX_GABARITO.Repaint;

     TBS_INICIAR.Enabled := TRUE;
     TBS_INICIAR.Visible := TRUE;
     TBS_INICIAR.SetFocus;
     TBS_INICIAR.Repaint;
     PageControl_RESULTADO.Repaint;      
end;


procedure T_F_GERADOR_3G8C_M2.BT_REAJUSTARClick(Sender: TObject);
begin
     SCBX_GABARITO.Visible := TRUE;
     SCBX_GABARITO.Enabled := TRUE;
     PA_RESULTADO.Visible := TRUE;
     PA_RESULTADO.Enabled := TRUE;
     BBT_GERAR_MENU.Enabled := TRUE; // EXCEÇÃO NESTE CASO
     BBT_CANCELAR_SAIR.Visible := false;     
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 2198;
     SCBX_GABARITO.Top:=247;
     SCBX_GABARITO.Repaint;
     BBT_INICIAR.Enabled := TRUE;     
end;


procedure T_F_GERADOR_3G8C_M2.BBT_CARREGARClick(Sender: TObject);
begin
     BBT_INICIAR.Enabled := false;
     BBT_PREPARAR.Visible := false;
    BBT_CANCELAR_SAIR.Visible := TRUE;
//       SELF.PR_LIMPAR_GRID10();
     SCBX_GABARITO.Visible := TRUE;
     SCBX_GABARITO.Enabled := TRUE;
     PA_RESULTADO.Visible := TRUE;
     PA_RESULTADO.Enabled := TRUE;
     PA_EXECUTAR_FILTRO.Enabled := TRUE;

     BBT_GERAR_MENU.Enabled := false;
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 2198;
     PGBR_GERARCOMB0.Position := 100;
     LA_TOTAL_COMB.Visible := false;
     LA_GERAR_COMB.Visible := false;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_3G8C_M2_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     PageControl_RESULTADO.Enabled := TRUE;
     PageControl_RESULTADO.TabIndex := 3  ;
     PageControl_RESULTADO.Repaint;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM FILTRO_3G8C_M2_DADOS4 ORDER BY CONTADOR') ;
     SELF.IBQ_COMBINACOES.Open;
     IBQ_COMBINACOES.First;
     TBS_RESULTADO.Visible := TRUE;
     DBG_RESULTADO.Visible := TRUE;
//     SELF.PR_SIMULAR_RECUPERANDODADOS();
   // BBT_BLOCO_NOTAS.Click;
end;


procedure T_F_GERADOR_3G8C_M2.BBT_SAIRClick(Sender: TObject);
begin
     SELF.Close;
end;


procedure T_F_GERADOR_3G8C_M2.BBT_CANCELARClick(Sender: TObject);
begin
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_3G8C_M2_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT;')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
          SELF.Close;
end;



procedure T_F_GERADOR_3G8C_M2.BBT_GERAR_voltarClick(Sender: TObject);
begin
     PA_GERAR.Enabled := false;
     PA_GERAR.Left := 4500;
     PA_GERAR.Repaint;
end;




procedure T_F_GERADOR_3G8C_M2.BBT_PA_REMOVEUREPETClick(Sender: TObject);
begin
     PA_REMOVEUREPET.Left := 5000;
     BBT_PREPARAR.Enabled := false;
     BBT_GERAR_MENU.Enabled := false;
     PA_INICIAL.Enabled := TRUE;
     BT_NOVA_SIMULACAO.Enabled := false;
     BT_REAJUSTAR.Enabled := TRUE;
     BBT_CARREGAR.Enabled := false;
     PA_INICIAL.Left := 520;
end;


procedure T_F_GERADOR_3G8C_M2.BBT_BLOCO_NOTASClick(Sender: TObject);
var
    VI_AN_COMB1, VI_CONTAR : INTEGER;
    VC_COMBINACOES, VC_COMBINACOES2 : string;
begin
{
    MEM_COMBINACOES_TODAS.Clear;
   	MEM_COMBINACOES_TODAS.Lines.Add('TOTAL: ' + INTtoSTR(STGR_COMB03.RowCount-1)) ;
   	MEM_COMBINACOES_TODAS.Lines.Add('----------------------------') ;
     FOR VI_CONTAR := 1 TO STGR_COMB03.RowCount-1 DO
     BEGIN
          VC_COMBINACOES2 := '';
          FOR VI_AN_COMB1 := 3 TO 14 DO
          BEGIN
               VC_COMBINACOES2 := VC_COMBINACOES2 + RIGHTSTR ('0'+TRIM(STGR_COMB12.Cells[VI_AN_COMB1,VI_CONTAR]),2) +' ';
          end;
          FOR VI_AN_COMB1 := 3 TO 5 DO
          BEGIN
               VC_COMBINACOES2 := VC_COMBINACOES2 + RIGHTSTR ('0'+TRIM(STGR_COMB03.Cells[VI_AN_COMB1,VI_CONTAR]),2) +' ';
          end;

               MEM_COMBINACOES_TODAS.Lines.Add((*VC_COMBINACOES+'  '+*)VC_COMBINACOES2) ;
    END; // FOR VI_CONTAR
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.SelectAll;
    MEM_COMBINACOES_TODAS.CopyToClipboard;
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.Lines.SaveToFile('C:\CXLOTOFACIL\EXCLUIDOS_8_1_MOD1.TXT');  }
    winExec('Notepad.exe C:\CXLOTOFACIL\EXCLUIDOS_8_1_MOD1.TXT', sw_shownormal);   // Nesse caso, abre um arquivo txt
   showmessage('BLOCO DE NOTAS GERADO');
end;





procedure T_F_GERADOR_3G8C_M2.BBT_INICIARClick(Sender: TObject);

    PROCEDURE PR_GRAVAR_DADOS_v0 ();
    VAR
        VI_TOTALGERADO, VI_AN_COMB1, VI_CNTCELULAS : INTEGER;
        VC_QUERY, VC_DADOS1, VC_COMBINACOES_04, VC_COMBINACOES_03 : STRING;
        VC_COMBINACOES_s_18 : STRING;
    BEGIN
                    VC_QUERY  := 'INSERT INTO FILTRO_3G8C_M2_DEFINICAO (EXC_c1, EXC_c6, EXC_c7, EXC_c8, '
                    +' FIXOS_C2, FIXOS_C3, FIXOS_C4, FIXOS_C5, '
                    +' FAIXA_C2, FAIXA_C3, FAIXA_C4, FAIXA_C5, FAIXA_GRUPO2,'
                    +' DATA_DEFINICAO, HORA_DEFINICAO, QTD_DADOS ) '
                    +' VALUES(' +#39+ ED_FIXOS_01_C1.Text       + #39 +','+#39+ED_FIXOS_01_C6.Text  + #39 +','+#39+ED_FIXOS_01_C7.Text       + #39 +','+#39+ED_FIXOS_01_C8.Text
                       + #39 +','+#39+ED_FIXOS_01_C2.Text     + #39 +','+#39+ED_FIXOS_01_C3.Text  + #39 +','+#39+ED_FIXOS_01_C4.Text       + #39 +','+#39+ED_FIXOS_01_C5.Text
                       + #39 +','+#39+ED_SOMAS_C2_INI.Text+' A '+ED_SOMAS_C2_FINAL.Text     + #39 +','+#39+ED_SOMAS_C3_INI.Text+' A '+ED_SOMAS_C3_FINAL.Text  + #39 +','+#39+ED_SOMAS_C4_INI.Text+' A '+ED_SOMAS_C4_FINAL.Text       + #39 +','+#39+ED_SOMAS_C5_INI.Text+' A '+ED_SOMAS_C5_FINAL.Text
                         + #39 +','+#39+ED_SOMAS_G2_INI.Text+' A '+ED_SOMAS_G2_FINAL.Text
                       + #39 +',' +#39+ STRINGREPLACE(FORMATDATETIME('d/m/yyyy',DATE()),'/','.',[])   + #39 +',' +#39+ FORMATDATETIME('h:n:s',time())
                    + #39+ ' ,''0'' );';
                    SELF.IBQ_COMBINACOES.SQL.Clear;
                    SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                    SELF.IBQ_COMBINACOES.ExecSQL;
                    SELF.IBQ_COMBINACOES.SQL.Clear;
                    SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                    SELF.IBQ_COMBINACOES.ExecSQL;
            // ************************
            // **   BANCO DE DADOS   **
            // ************************
            STGR_COLUNA_01.Repaint;
            Self.Repaint;
           // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
            FOR VI_AN_COMB1:= 1 TO  TRUNC((STGR_COLUNA_01_com02.RowCount-1)/1) DO
            BEGIN
                // obs: verificar o evento BeFOREInSERT DA ibq_COMBINACOES
                VC_COMBINACOES_04 :='';
                VC_COMBINACOES_03 :='';                
                VC_COMBINACOES_s_18 :='';
                FOR VI_CNTCELULAS := 7 TO 9 DO
                BEGIN
                    VC_COMBINACOES_03 := VC_COMBINACOES_03 + RIGHTSTR ('0'+TRIM(STGR_COLUNA_01_com02.Cells[VI_CNTCELULAS,VI_AN_COMB1]),2) +' ';
                END; // FOR VI_CNTCELULAS
                FOR VI_CNTCELULAS := 3 TO 6 DO
                BEGIN
                    VC_COMBINACOES_04 := VC_COMBINACOES_04 + RIGHTSTR ('0'+TRIM(STGR_COLUNA_01_com02.Cells[VI_CNTCELULAS,VI_AN_COMB1]),2) +' ';
                END; // FOR VI_CNTCELULAS
                FOR VI_CNTCELULAS := 1 TO 18 DO
                BEGIN
                    VC_COMBINACOES_s_18 := VC_COMBINACOES_s_18 + RIGHTSTR ('0'+TRIM(STGR_COLUNA_01e02_SOBRAS.Cells[VI_CNTCELULAS,VI_AN_COMB1]),2) +' ';
                END; // FOR
             //   VC_COMBINACOES_15 := FN_ORDENAR_SIMULACAO_15 (VI_AN_COMB1);
                     VC_QUERY  := 'INSERT INTO FILTRO_3G8C_M2_DADOS1 (DADOS_04_C1, DADOS_03_C2, DADOS_SOBRAM_18, CONTADOR1,'
                     +' N01, N02, N03, NS01, NS02, NS03, NS04 ) '
                     +' VALUES(' +#39+ TRIM(VC_COMBINACOES_04) + #39 +','+#39+TRIM(VC_COMBINACOES_03)  + #39 +','+#39+TRIM(VC_COMBINACOES_s_18)
                          + #39 +','+#39+STGR_COLUNA_01_com02.Cells[0,VI_AN_COMB1]
                          + #39 +','+#39+STGR_COLUNA_01_com02.Cells[7,VI_AN_COMB1] + #39 +','+#39+STGR_COLUNA_01_com02.Cells[8,VI_AN_COMB1]
                          + #39 +','+#39+STGR_COLUNA_01_com02.Cells[9,VI_AN_COMB1]
                          + #39 +','+#39+STGR_COLUNA_01_com02.Cells[3,VI_AN_COMB1] + #39 +','+#39+STGR_COLUNA_01_com02.Cells[4,VI_AN_COMB1]
                          + #39 +','+#39+STGR_COLUNA_01_com02.Cells[5,VI_AN_COMB1] + #39 +','+#39+STGR_COLUNA_01_com02.Cells[6,VI_AN_COMB1]
                           + #39 +');';
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
     VI_CNTCELULAS, VI_CONTAR, VI_CONTASEL1: integer;
     VI_COMBINACOES1, VI_COMBINACOES2, VI_COMBINACOES3, VI_COMBINACOES4, VI_COMBINACOES5, VI_CONTAR_COMB1 : INTEGER ;
       VI_LINHAS04, VI_SOMA04, VI_LINHAS03, VI_SOMA03: INTEGER;
       VI_FLAG_SOMATORIA_04, VI_FLAG_SOMATORIA_03, VI_FLAG_FIXOS04, VI_FLAG_FIXOS03: INTEGER;
       VS_NUMEROSPRINCIPAIS: STRING;
        VDB_CALCULO_TOTAL: DOUBLE;

begin
     // ******************************************************
     // **  CONFERINDO SOMA COLUNAS 2 A 5 ANTES DE INICIAR  **
     // ******************************************************
     IF (STRtoINT(ED_SOMAS_C2_INI.Text) + STRtoINT(ED_SOMAS_C3_INI.Text) + STRtoINT(ED_SOMAS_C4_INI.Text) + STRtoINT(ED_SOMAS_C5_INI.Text)) > STRtoINT(ED_SOMAS_G2_FINAL.Text) THEN
     BEGIN
          SHOWMESSAGE('Faixa de valores muito alta, verifique-a faixa de valores.');
          TRB_C2_INI.SetFocus;
          EXIT;
     END;
     IF (STRtoINT(ED_SOMAS_C2_FINAL.Text) + STRtoINT(ED_SOMAS_C3_FINAL.Text) + STRtoINT(ED_SOMAS_C4_FINAL.Text) + STRtoINT(ED_SOMAS_C5_FINAL.Text)) < STRtoINT(ED_SOMAS_G2_INI.Text) THEN
     BEGIN
          SHOWMESSAGE('Faixa de valores muito baixa, verifique-a faixa de valores.');
          TRB_C2_INI.SetFocus;
          EXIT;
     END;

     DBG_RESULTADO.Visible := false;

  // aki    BBT_PREPARAR.Enabled := TRUE;
     BBT_PREPARAR.Visible := false;

  //aki    BBT_GERAR_MENU.Enabled := false;
    BBT_GERAR_MENU.Enabled := TRUE;

     BBT_CANCELAR_SAIR.Visible := false;
     BBT_INICIAR.Enabled := false;
     FOR VI_CONTAR :=1 TO 25 DO
     BEGIN
          STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0] :=INTtoSTR(VI_CONTAR);
          STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
     END; // FOR VI_CONTAR
     STGR_COLUNA_01.Cells [0,0] := 'QTD';
     STGR_COLUNA_01.Cells [1,0] := '+';
     STGR_COLUNA_01.Cells [2,0] := 'FLAG';
     FOR VI_CONTASEL1 := 3 TO 6 DO
     BEGIN
        STGR_COLUNA_01.Cells [VI_CONTASEL1,0] := '-'+INTtoSTR(VI_CONTASEL1-2)+'-';
        STGR_COLUNA_01.Cells [VI_CONTASEL1,1] := '00';
     END;
     STGR_COLUNA_01.ColWidths [0]:= 45;
     STGR_COLUNA_01.ColWidths [1]:= 35;
     STGR_COLUNA_01.RowCount := 2;
     STGR_COLUNA_01.Repaint;
     STGR_COLUNA_01_SOBRAS.Cells [0,0] := 'QTD';
     FOR VI_CONTASEL1 := 1 TO 21 DO
     BEGIN
        STGR_COLUNA_01_SOBRAS.Cells [VI_CONTASEL1,0] := '-'+INTtoSTR(VI_CONTASEL1)+'-';
        STGR_COLUNA_01_SOBRAS.Cells [VI_CONTASEL1,1] := '00';
     END  ;
     STGR_COLUNA_01_SOBRAS.ColWidths [0]:= 45;
     STGR_COLUNA_01_SOBRAS.RowCount := 2;
     STGR_COLUNA_01_SOBRAS.Repaint;
     FOR VI_CONTASEL1 := 3 TO 5 DO
     BEGIN
        STGR_COLUNA_02.Cells [VI_CONTASEL1,0] := '-'+INTtoSTR(VI_CONTASEL1-2)+'-';
        STGR_COLUNA_02.Cells [VI_CONTASEL1,1] := '00';
        STGR_COLUNA_03.Cells [VI_CONTASEL1,0] := '-'+INTtoSTR(VI_CONTASEL1-2)+'-';
        STGR_COLUNA_03.Cells [VI_CONTASEL1,1] := '00';
        STGR_COLUNA_04.Cells [VI_CONTASEL1,0] := '-'+INTtoSTR(VI_CONTASEL1-2)+'-';
        STGR_COLUNA_04.Cells [VI_CONTASEL1,1] := '00';
        STGR_COLUNA_05.Cells [VI_CONTASEL1,0] := '-'+INTtoSTR(VI_CONTASEL1-2)+'-';
        STGR_COLUNA_05.Cells [VI_CONTASEL1,1] := '00';
     END;
     STGR_COLUNA_01e02_SOBRAS.Cells [0,0] := 'QTD';
     FOR VI_CONTASEL1 := 1 TO 18 DO
     BEGIN
        STGR_COLUNA_01e02_SOBRAS.Cells [VI_CONTASEL1,0] := '-'+INTtoSTR(VI_CONTASEL1)+'-';
        STGR_COLUNA_01e02_SOBRAS.Cells [VI_CONTASEL1,1] := '00';
     END  ;
     STGR_COLUNA_01e02_SOBRAS.ColWidths [0]:= 45;
     STGR_COLUNA_01e02_SOBRAS.RowCount := 2;
     STGR_COLUNA_01e02_SOBRAS.Repaint;

     STGR_COLUNA_02.ColWidths [0]:= 40;
     STGR_COLUNA_02.ColWidths [1]:= 40;
     STGR_COLUNA_02.RowCount := 2;
     STGR_COLUNA_02.Repaint;
     STGR_COLUNA_03.ColWidths [0]:= 40;
     STGR_COLUNA_03.ColWidths [1]:= 40;
     STGR_COLUNA_03.RowCount := 2;
     STGR_COLUNA_03.Repaint;
     STGR_COLUNA_04.ColWidths [0]:= 40;
     STGR_COLUNA_04.ColWidths [1]:= 40;
     STGR_COLUNA_04.RowCount := 2;
     STGR_COLUNA_04.Repaint;
     STGR_COLUNA_05.ColWidths [0]:= 40;
     STGR_COLUNA_05.ColWidths [1]:= 40;
     STGR_COLUNA_05.RowCount := 2;
     STGR_COLUNA_05.Repaint;

     PGBR_GERARCOMB0.Position :=0 ;
     PGBR_GERARCOMB0.Repaint;
     PGBR_GERARCOMB1.Position :=0 ;
     PGBR_GERARCOMB1.Repaint;
     LA_TOTAL_COMB.Caption := 'GERAR:               ';
     LA_GERAR_COMB.Caption := '#:                   ';
     LA_TOTAL_100REPET.Caption := '000000';
     LA_TOTAL_100REPET.Repaint;
     LA_TOTAL_COMB.Repaint;
     LA_GERAR_COMB.Repaint;
     PA_GERAR.Enabled := false;
     PA_GERAR.Left := 4500;

     PageControl_RESULTADO.Enabled := TRUE;
   {  TBS_INICIAR.Enabled := TRUE;
     TBS_INICIAR.Visible := TRUE;
     TBS_INICIAR.Repaint;            }
     PageControl_RESULTADO.TabIndex := 0;
     PageControl_RESULTADO.Repaint;
     SCBX_INICIAR.HorzScrollBar.Position := 2;
     SCBX_INICIAR.Repaint;
     LA_RESULTADO_TXT.Caption := 'ETAPA 1/4:';
     LA_RESULTADO_TXT.Repaint;
     // =====================================
     // ||||=============================||||
     // |||| 	GERANDO AS COMBINAÇÕES   ||||
     // ||||=============================||||
     // =====================================
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_3G8C_M2_DEFINICAO')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_3G8C_M2_DADOS1')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;

     VI_LINHAS04:=1;
     FOR VI_COMBINACOES1 := {9}1 TO  {2} 22 DO
     BEGIN
          SLEEP(50);
          PGBR_GERARCOMB1.Position := 0;
          PGBR_GERARCOMB1.Repaint;
          FOR VI_COMBINACOES2 := VI_COMBINACOES1+1 TO  23 DO
          BEGIN
               FOR VI_COMBINACOES3 := VI_COMBINACOES2+1 TO  24 DO
               BEGIN
                    FOR VI_COMBINACOES4 := VI_COMBINACOES3+1 TO  25 DO
                    BEGIN
                         // PARES
                         VI_CNTCELULAS := 0;
                         IF (STRtoINT(STGR_BASE_25.Cells[VI_COMBINACOES1,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                         IF (STRtoINT(STGR_BASE_25.Cells[VI_COMBINACOES2,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                         IF (STRtoINT(STGR_BASE_25.Cells[VI_COMBINACOES3,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                         IF (STRtoINT(STGR_BASE_25.Cells[VI_COMBINACOES4,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                         IF  NOT (VI_CNTCELULAS =2) THEN
                              CONTINUE;
                         VI_SOMA04  :=  STRtoINT(STGR_BASE_25.Cells[VI_COMBINACOES1,1])
                            + STRtoINT(STGR_BASE_25.Cells[VI_COMBINACOES2,1])+ STRtoINT(STGR_BASE_25.Cells[VI_COMBINACOES3,1])
                            + STRtoINT(STGR_BASE_25.Cells[VI_COMBINACOES4,1]);
                         VI_FLAG_SOMATORIA_04 := 0;
                         IF (VI_SOMA04 = STRtoINT(ED_SOMAS_C1_INI.Text)) THEN
                              VI_FLAG_SOMATORIA_04 := 1 ;
                         IF (VI_FLAG_SOMATORIA_04 = 0) THEN
                              CONTINUE;
                              // -- fixo                              
                         VI_FLAG_FIXOS04 :=0;
                         IF  STRtoINT(ED_FIXOS_01_C1.Text) > 0 THEN
                         BEGIN
                              IF(STRtoINT(STGR_BASE_25.Cells[VI_COMBINACOES1,1]) = STRtoINT(ED_FIXOS_01_C1.Text))
                              or   (STRtoINT(STGR_BASE_25.Cells[VI_COMBINACOES2,1]) = STRtoINT(ED_FIXOS_01_C1.Text))
                              or   (STRtoINT(STGR_BASE_25.Cells[VI_COMBINACOES3,1]) = STRtoINT(ED_FIXOS_01_C1.Text))
                              or   (STRtoINT(STGR_BASE_25.Cells[VI_COMBINACOES4,1]) = STRtoINT(ED_FIXOS_01_C1.Text))
                              THEN
                                   VI_FLAG_FIXOS04 :=1;
                         END ELSE  // IF  STRtoINT(ED_FIXOS_01_C1.Text
                         BEGIN
                              VI_FLAG_FIXOS04 := 1;
                         END;
                         IF (VI_FLAG_FIXOS04 = 0) THEN
                              CONTINUE;

                         STGR_COLUNA_01.Cells[0,VI_LINHAS04] := INTtoSTR(VI_LINHAS04);
                         STGR_COLUNA_01.Cells[1,VI_LINHAS04] := INTtoSTR(VI_SOMA04);
                         STGR_COLUNA_01.Cells[2,VI_LINHAS04] := '1';
                         STGR_COLUNA_01.Cells[3,VI_LINHAS04] := STGR_BASE_25.Cells[VI_COMBINACOES1,1];
                         STGR_COLUNA_01.Cells[4,VI_LINHAS04] := STGR_BASE_25.Cells[VI_COMBINACOES2,1];
                         STGR_COLUNA_01.Cells[5,VI_LINHAS04] := STGR_BASE_25.Cells[VI_COMBINACOES3,1];
                         STGR_COLUNA_01.Cells[6,VI_LINHAS04] := STGR_BASE_25.Cells[VI_COMBINACOES4,1];
                         STGR_COLUNA_01_SOBRAS.Cells[0,VI_LINHAS04] := INTtoSTR(VI_LINHAS04);

                         // ----------------------------------------------
                         // --  MONTANDO AS 18 SOBRAS DO CONJUNTO DE 4  --
                         // ----------------------------------------------
                            FOR VI_CONTAR :=1 TO 25 DO
                            BEGIN
                                STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,2] :='F';
                            END; // FOR VI_CONTAR
                            FOR VI_CONTAR :=3 TO 6 DO
                            BEGIN
                                STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COLUNA_01.Cells[VI_CONTAR,VI_LINHAS04])) ,2]:='V';
                            END; // FOR VI_CONTAR1
                            VI_CNTCELULAS := 1;
                            FOR VI_CONTAR :=1 TO 25 DO
                            BEGIN
                                IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,2]='F') THEN
                                BEGIN
                                    STGR_COLUNA_01_SOBRAS.Cells[VI_CNTCELULAS, VI_LINHAS04] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                                    VI_CNTCELULAS := VI_CNTCELULAS + 1;
                                END; // IF (STRGR_TODOS_NUMEROS
                            END; // FOR VI_CONTAR
                         // ----------------------------------------------
                         VI_LINHAS04 := VI_LINHAS04 +1;
                    END;  // FOR VI_COMBINACOES4
               END; // FOR VI_COMBINACOES3
               STGR_COLUNA_01.RowCount := VI_LINHAS04;
          END; // FOR VI_COMBINACOES2
          IF ((VI_COMBINACOES1 MOD 2) = 0) THEN
          BEGIN
               PGBR_GERARCOMB1.Position := CEIL((VI_COMBINACOES2)*4.35);
               PGBR_GERARCOMB1.Repaint;
               PGBR_GERARCOMB0.Position := CEIL((VI_COMBINACOES1)*4.46);
               PGBR_GERARCOMB0.Repaint;
               STGR_COLUNA_01.Repaint;
               STGR_COLUNA_01_SOBRAS.RowCount := VI_LINHAS04;
               STGR_COLUNA_01_SOBRAS.Repaint;
               Self.WindowState := wsMinimized;
               Self.WindowState :=  wsNormal;
               SELF.Repaint;
          END;// IF
     END; // FOR VI_COMBINACOES1
     STGR_COLUNA_01.RowCount := VI_LINHAS04;
     STGR_COLUNA_01_SOBRAS.RowCount := VI_LINHAS04;
     PGBR_GERARCOMB1.Position := 100;
     PGBR_GERARCOMB1.Repaint;
     try
          STGR_COLUNA_01.FixedRows := 1;
     except
          //
     end;
     STGR_COLUNA_01.Repaint;
     //
     //
     //
     SCBX_INICIAR.HorzScrollBar.Position := 700;
     SCBX_INICIAR.Repaint;     
     SLEEP(1000);
     LA_RESULTADO_TXT.Caption := 'ETAPA 2/4:';
     LA_RESULTADO_TXT.Repaint;
     PGBR_GERARCOMB0.Position :=0 ;
     PGBR_GERARCOMB1.Position :=0 ;
     PGBR_GERARCOMB0.Repaint;
     PGBR_GERARCOMB1.Repaint;
     VI_LINHAS03:=1;
     FOR VI_COMBINACOES1 := 1 TO  {5} CEIL((STGR_COLUNA_01_SOBRAS.RowCount-1)/1) DO
     BEGIN
          SLEEP(50);
          FOR VI_COMBINACOES2 := 1 TO  {5} 19 DO
          BEGIN
               FOR VI_COMBINACOES3 := VI_COMBINACOES2+1 TO  20 DO
               BEGIN
                    FOR VI_COMBINACOES4 := VI_COMBINACOES3+1 TO  21 DO
                    BEGIN
                         VI_CNTCELULAS := 0;
                         IF (STRtoINT(STGR_COLUNA_01_SOBRAS.Cells[VI_COMBINACOES2,VI_COMBINACOES1]) MOD 2) =0 THEN
                               VI_CNTCELULAS := VI_CNTCELULAS +1;
                         IF (STRtoINT(STGR_COLUNA_01_SOBRAS.Cells[VI_COMBINACOES3,VI_COMBINACOES1]) MOD 2) =0 THEN
                               VI_CNTCELULAS := VI_CNTCELULAS +1;
                         IF (STRtoINT(STGR_COLUNA_01_SOBRAS.Cells[VI_COMBINACOES4,VI_COMBINACOES1]) MOD 2) =0 THEN
                               VI_CNTCELULAS := VI_CNTCELULAS +1;
                         IF  NOT (VI_CNTCELULAS =2) THEN
                              CONTINUE;
                         VI_SOMA03 :=  STRtoINT(STGR_COLUNA_01_SOBRAS.Cells[VI_COMBINACOES2,VI_COMBINACOES1])
                            + STRtoINT(STGR_COLUNA_01_SOBRAS.Cells[VI_COMBINACOES3,VI_COMBINACOES1])+ STRtoINT(STGR_COLUNA_01_SOBRAS.Cells[VI_COMBINACOES4,VI_COMBINACOES1]);
                         VI_FLAG_SOMATORIA_03 := 0;
                         IF (VI_SOMA03 >= STRtoINT(ED_SOMAS_C2_INI.Text)) AND (VI_SOMA03 <= STRtoINT(ED_SOMAS_C2_FINAL.Text)) THEN
                              VI_FLAG_SOMATORIA_03 := 1 ;
                         IF (VI_FLAG_SOMATORIA_03 = 0) THEN
                              CONTINUE;
                              // -- fixo
                         VI_FLAG_FIXOS03 :=0;
                         IF  STRtoINT(ED_FIXOS_01_C2.Text) > 0 THEN
                         BEGIN
                              IF (STRtoINT(STGR_COLUNA_01_SOBRAS.Cells[VI_COMBINACOES2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01_C2.Text))
                              or   (STRtoINT(STGR_COLUNA_01_SOBRAS.Cells[VI_COMBINACOES3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01_C2.Text))
                              or   (STRtoINT(STGR_COLUNA_01_SOBRAS.Cells[VI_COMBINACOES4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01_C2.Text))
                              THEN
                                   VI_FLAG_FIXOS03 :=1;
                         END ELSE  // IF  STRtoINT(ED_FIXOS_01_C1.Text
                         BEGIN
                              VI_FLAG_FIXOS03 := 1;
                         END;
                         IF (VI_FLAG_FIXOS03 = 0) THEN
                              CONTINUE;
                              // -- primeira coluna

                         STGR_COLUNA_01_com02.Cells[0,VI_LINHAS03] := INTtoSTR(VI_LINHAS03);
                         STGR_COLUNA_01_com02.Cells[1,VI_LINHAS03] := INTtoSTR(VI_SOMA03);
                         STGR_COLUNA_01_com02.Cells[2,VI_LINHAS03] := '1';
                         STGR_COLUNA_01_com02.Cells[3,VI_LINHAS03] := STGR_COLUNA_01.Cells[3,VI_COMBINACOES1] ;
                         STGR_COLUNA_01_com02.Cells[4,VI_LINHAS03] := STGR_COLUNA_01.Cells[4,VI_COMBINACOES1] ;
                         STGR_COLUNA_01_com02.Cells[5,VI_LINHAS03] := STGR_COLUNA_01.Cells[5,VI_COMBINACOES1] ;
                         STGR_COLUNA_01_com02.Cells[6,VI_LINHAS03] := STGR_COLUNA_01.Cells[6,VI_COMBINACOES1] ;
                         STGR_COLUNA_01_com02.Cells[7,VI_LINHAS03] := STGR_COLUNA_01_SOBRAS.Cells[VI_COMBINACOES2,VI_COMBINACOES1];
                         STGR_COLUNA_01_com02.Cells[8,VI_LINHAS03] := STGR_COLUNA_01_SOBRAS.Cells[VI_COMBINACOES3,VI_COMBINACOES1];
                         STGR_COLUNA_01_com02.Cells[9,VI_LINHAS03] := STGR_COLUNA_01_SOBRAS.Cells[VI_COMBINACOES4,VI_COMBINACOES1];
                              // -- segunda coluna
                         STGR_COLUNA_02.Cells[0,VI_LINHAS03] := INTtoSTR(VI_LINHAS03);
                         STGR_COLUNA_02.Cells[1,VI_LINHAS03] := INTtoSTR(VI_SOMA03);
                         STGR_COLUNA_02.Cells[2,VI_LINHAS03] := '1';
                         STGR_COLUNA_02.Cells[3,VI_LINHAS03] := STGR_COLUNA_01_SOBRAS.Cells[VI_COMBINACOES2,VI_COMBINACOES1];
                         STGR_COLUNA_02.Cells[4,VI_LINHAS03] := STGR_COLUNA_01_SOBRAS.Cells[VI_COMBINACOES3,VI_COMBINACOES1];
                         STGR_COLUNA_02.Cells[5,VI_LINHAS03] := STGR_COLUNA_01_SOBRAS.Cells[VI_COMBINACOES4,VI_COMBINACOES1];
                         STGR_COLUNA_01e02_SOBRAS.Cells[0,VI_LINHAS03] := INTtoSTR(VI_LINHAS03);
                         // -------------------------------------------------
                         // --  MONTANDO AS 18 SOBRAS DO CONJUNTO DE 3 E 4 --
                         // -------------------------------------------------
                            FOR VI_CONTAR :=1 TO 25 DO
                            BEGIN
                                STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,2] :='F';
                            END; // FOR VI_CONTAR
                            FOR VI_CONTAR :=3 TO 9 DO
                            BEGIN
                                STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COLUNA_01_com02.Cells[VI_CONTAR,VI_LINHAS03])) ,2]:='V';
                            END; // FOR VI_CONTAR1
                            VI_CNTCELULAS := 1;
                            FOR VI_CONTAR :=1 TO 25 DO
                            BEGIN
                                IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,2]='F') THEN
                                BEGIN
                                    STGR_COLUNA_01e02_SOBRAS.Cells[VI_CNTCELULAS, VI_LINHAS03] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                                    VI_CNTCELULAS := VI_CNTCELULAS + 1;
                                END; // IF (STRGR_TODOS_NUMEROS
                            END; // FOR VI_CONTAR
                         // ----------------------------------------------

                         VI_LINHAS03 := VI_LINHAS03 +1;
                    END;  // FOR VI_COMBINACOES4
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
          IF ((VI_COMBINACOES1 MOD 10) = 0) THEN
          BEGIN
               STGR_COLUNA_02.RowCount := VI_LINHAS03;
               STGR_COLUNA_01_com02.RowCount := VI_LINHAS03;
               STGR_COLUNA_01e02_SOBRAS.RowCount := VI_LINHAS03;
               PGBR_GERARCOMB0.Position := TRUNC(VI_COMBINACOES1/(STGR_COLUNA_01_SOBRAS.RowCount-1)*100.1);
               PGBR_GERARCOMB0.Repaint;
               LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_COMBINACOES1)+ ' DE '+  INTtoSTR(STGR_COLUNA_01_SOBRAS.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(VI_COMBINACOES1/(STGR_COLUNA_01_SOBRAS.RowCount-1)*100))+ ' %  ' + '  -  Quantidade: '+INTtoSTR(VI_LINHAS03) ;
               STGR_COLUNA_02.Repaint;
               STGR_COLUNA_01_com02.Repaint;
               STGR_COLUNA_01e02_SOBRAS.Repaint;
               Self.WindowState := wsMinimized;
               Self.WindowState :=  wsNormal;
               SELF.Repaint;
          END; // IF
     END; // FOR VI_COMBINACOES1
     STGR_COLUNA_02.RowCount := VI_LINHAS03;
     STGR_COLUNA_01_com02.RowCount := VI_LINHAS03;
     STGR_COLUNA_01e02_SOBRAS.RowCount := VI_LINHAS03;
     LA_GERAR_COMB.Caption := '# ' + INTtoSTR(STGR_COLUNA_01_SOBRAS.RowCount-1)+ ' DE '+  INTtoSTR(STGR_COLUNA_01_SOBRAS.RowCount-1)+  ' - Quantidade:'+INTtoSTR(VI_LINHAS03) + ' - 100 %  ';
     PGBR_GERARCOMB1.Position := 100;
     PGBR_GERARCOMB1.Repaint;
     PGBR_GERARCOMB0.Position := 100 ;
     PGBR_GERARCOMB0.Repaint;
     try
          STGR_COLUNA_02.FixedRows := 1;
     except
          //
     end;
     STGR_COLUNA_01.Repaint;
     STGR_COLUNA_01e02_SOBRAS.Repaint;
     LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
     LA_rTOTAL_COMB.Caption  := '25';

     PR_GRAVAR_DADOS_v0 ();
     LA_RESULTADO_TXT.Caption := 'Etapa 2/4.';
     showmessage('INICIA - FIM');
end;




procedure T_F_GERADOR_3G8C_M2.BBT_PREPARARClick(Sender: TObject);


    PROCEDURE PR_GRAVAR_DADOS_v1 ();
    VAR
        VI_TOTALGERADO, VI_AN_COMB1, VI_CNTCELULAS : INTEGER;
        VC_QUERY, VC_DADOS1, VC_COMBINACOES_03_C3, VC_COMBINACOES_03_C4, VC_COMBINACOES_03_C5 : STRING;
        VC_COMBINACOES_s_09 : STRING;
    BEGIN
            // ************************
            // **   BANCO DE DADOS   **
            // ************************
            STGR_COLUNA_01.Repaint;
            Self.Repaint;
           // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
            FOR VI_AN_COMB1:= 1 TO  TRUNC((STGR_COLUNA_04.RowCount-1)/1) DO
            BEGIN
                // obs: verificar o evento BeFOREInSERT DA ibq_COMBINACOES
                VC_COMBINACOES_03_C3 :='';
                VC_COMBINACOES_03_C4 :='';
                VC_COMBINACOES_03_C5 :='';
                VC_COMBINACOES_s_09  :='';
                FOR VI_CNTCELULAS := 3 TO 5 DO
                BEGIN
                    VC_COMBINACOES_03_C3 := VC_COMBINACOES_03_C3 + RIGHTSTR ('0'+TRIM(STGR_COLUNA_03.Cells[VI_CNTCELULAS,VI_AN_COMB1]),2) +' ';
                    VC_COMBINACOES_03_C4 := VC_COMBINACOES_03_C4 + RIGHTSTR ('0'+TRIM(STGR_COLUNA_04.Cells[VI_CNTCELULAS,VI_AN_COMB1]),2) +' ';
                    VC_COMBINACOES_03_C5 := VC_COMBINACOES_03_C5 + RIGHTSTR ('0'+TRIM(STGR_COLUNA_05.Cells[VI_CNTCELULAS,VI_AN_COMB1]),2) +' ';
                END; // FOR VI_CNTCELULAS

                FOR VI_CNTCELULAS := 1 TO 9 DO
                BEGIN
                    VC_COMBINACOES_s_09 := VC_COMBINACOES_s_09 + RIGHTSTR ('0'+TRIM(STGR_COLUNA_03e04e05_SOBRAS.Cells[VI_CNTCELULAS,VI_AN_COMB1]),2) +' ';
                END; // FOR
                     VC_QUERY  := 'INSERT INTO FILTRO_3G8C_M2_DADOS2 (DADOS_03_C3, DADOS_03_C4, DADOS_03_C5, DADOS_SOBRAM_09,'
                     +' CONTADOR2, CONTADOR1, SOMA_COLUNAS_2345) '
                     +' VALUES(' +#39+ TRIM(VC_COMBINACOES_03_C3) + #39 +','+#39+TRIM(VC_COMBINACOES_03_C4)
                          + #39 +','+#39+ TRIM(VC_COMBINACOES_03_C5) + #39 +','+#39+TRIM(VC_COMBINACOES_s_09)
                          + #39 +','+#39+STGR_COLUNA_05.Cells[0,VI_AN_COMB1]
                          + #39 +','+#39+STGR_COLUNA_03.Cells[2,VI_AN_COMB1]
                             + #39 +','+#39+STGR_COLUNA_SOMA_C2345.Cells[1,VI_AN_COMB1]
                           + #39 +');';
                     SELF.IBQ_COMBINACOES.SQL.Clear;
                     SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                     SELF.IBQ_COMBINACOES.ExecSQL;
            END; // FOR VI_AN_COMB1
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
            SLEEP(19);
             SELF.IBQ_COMBINACOES.SQL.Clear;
    END; // PROCEDURE GRAVAR_DADOS2_v1


VAR
     VI_CNTCELULAS, VI_CONTAR, VI_CONTASEL1: integer;
     VI_COMBINACOES1, VI_COMBINACOES2, VI_COMBINACOES3, VI_CONTAR_COMB1 : INTEGER ;
      Vsi_COMB12_1, Vsi_COMB12_2, Vsi_COMB12_3, Vsi_COMB12_4: SMALLINT;
     Vsi_COMb_C4_1, Vsi_COMb_C4_2, Vsi_COMb_C4_3, Vsi_SOMAINI, Vsi_SOMAFINAL : SMALLINT;
     Vsi_COMb_C5_1, Vsi_COMb_C5_2, Vsi_COMb_C5_3 : SMALLINT;
       VI_LINHAS15, VI_LINHAS02, VI_LINHAS04, VI_LINHAS05, VI_SOMA12, VI_FLAG12 , VI_SOMA03, VI_SOMA05, VI_FLAG08, VI_SOMA02: INTEGER;
       VI_FLAG_FX12, VI_FLAG_FX12B, VI_FLAG_FIXOS04, VI_FLAG_FX05B, VI_FLAG_FX05, VI_SOMA_C2345 : INTEGER;
       VS_NUMEROSPRINCIPAIS: STRING;
       VDB_CALCULO_TOTAL: DOUBLE;

begin
     BBT_PREPARAR.Enabled := false;
     // aki BBT_GERAR_MENU.Enabled := false;
      BBT_GERAR_MENU.Enabled := TRUE;
     BBT_CANCELAR_SAIR.Visible := false;
     BBT_INICIAR.Enabled := false;
     SCBX_INICIAR.HorzScrollBar.Position := 2;
     SCBX_INICIAR.Repaint;
     PR_LIMPAR_GRIDiniciar (); // exceto STGR_COLUNA_01e02_SOBRAS
     FOR VI_CONTASEL1 := 3 TO 5 DO
     BEGIN
        STGR_COLUNA_03.Cells [VI_CONTASEL1,0] := '-'+INTtoSTR(VI_CONTASEL1-2)+'-';
        STGR_COLUNA_03.Cells [VI_CONTASEL1,1] := '00';
        STGR_COLUNA_04.Cells [VI_CONTASEL1,0] := '-'+INTtoSTR(VI_CONTASEL1-2)+'-';
        STGR_COLUNA_04.Cells [VI_CONTASEL1,1] := '00';
        STGR_COLUNA_05.Cells [VI_CONTASEL1,0] := '-'+INTtoSTR(VI_CONTASEL1-2)+'-';
        STGR_COLUNA_05.Cells [VI_CONTASEL1,1] := '00';
     END;
     STGR_COLUNA_03.ColWidths [0]:= 45;
     STGR_COLUNA_03.ColWidths [1]:= 35;
     STGR_COLUNA_03.RowCount := 2;
     STGR_COLUNA_03.Repaint;
     STGR_COLUNA_04.ColWidths [0]:= 45;
     STGR_COLUNA_04.ColWidths [1]:= 35;
     STGR_COLUNA_04.RowCount := 2;
     STGR_COLUNA_04.Repaint;
     STGR_COLUNA_05.ColWidths [0]:= 45;
     STGR_COLUNA_05.ColWidths [1]:= 35;
     STGR_COLUNA_05.RowCount := 2;
     STGR_COLUNA_05.Repaint;
     STGR_COLUNA_03e04e05_SOBRAS.ColWidths [0]:= 45;

     PGBR_GERARCOMB0.Position := 0 ;
     PGBR_GERARCOMB0.Repaint;
     PGBR_GERARCOMB1.Position := 0 ;
     PGBR_GERARCOMB1.Repaint;
     LA_TOTAL_COMB.Caption := 'GERAR:               ';
     LA_GERAR_COMB.Caption := '#:                   ';
     LA_TOTAL_100REPET.Caption := '000000';
     LA_TOTAL_100REPET.Repaint;
     LA_TOTAL_COMB.Repaint;
     LA_GERAR_COMB.Repaint;
     PA_GERAR.Enabled := false;
     PA_GERAR.Left := 4500;

     PageControl_RESULTADO.Enabled := TRUE;
     {TBS_PREPARAR.Enabled := TRUE;
     TBS_PREPARAR.Visible := TRUE;
     TBS_PREPARAR.SetFocus;
     TBS_PREPARAR.Repaint;              }
     PageControl_RESULTADO.TabIndex := 1;
     PageControl_RESULTADO.Repaint;
     LA_RESULTADO_TXT.Caption := 'ETAPA 3/4:';
     LA_RESULTADO_TXT.Repaint;
     // ***************************
     // **  CONFERINDO OS FIXOS  **
     // ***************************
     if (STRtoINT(ED_FIXOS_01_C5.Text) >0) then
          IF (STRtoINT(ED_FIXOS_01_C5.Text) = STRtoINT(ED_FIXOS_01_C4.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C5.Text) = STRtoINT(ED_FIXOS_01_C3.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C5.Text) = STRtoINT(ED_FIXOS_01_C2.Text ) ) or
            (STRtoINT(ED_FIXOS_01_C5.Text) = STRtoINT(ED_FIXOS_01_C1.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O(s) número(s) fixo(s) da 5ª coluna não pode(m) ser igual(is) ao(s) da DEMAIS colunas.');
                 ED_FIXOS_01_C5.SetFocus;
                 EXIT;
          END; // IF
     if (STRtoINT(ED_FIXOS_01_C4.Text) >0) then
          IF (STRtoINT(ED_FIXOS_01_C4.Text) = STRtoINT(ED_FIXOS_01_C5.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C4.Text) = STRtoINT(ED_FIXOS_01_C3.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C4.Text) = STRtoINT(ED_FIXOS_01_C2.Text ) ) or
            (STRtoINT(ED_FIXOS_01_C4.Text) = STRtoINT(ED_FIXOS_01_C1.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O(s) número(s) fixo(s) da 4ª coluna não pode(m) ser igual(is) ao(s) da DEMAIS colunas.');
                 ED_FIXOS_01_C4.SetFocus;
                 EXIT;
          END; // IF
     if (STRtoINT(ED_FIXOS_01_C3.Text) >0) then
          IF (STRtoINT(ED_FIXOS_01_C3.Text) = STRtoINT(ED_FIXOS_01_C5.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C3.Text) = STRtoINT(ED_FIXOS_01_C4.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C3.Text) = STRtoINT(ED_FIXOS_01_C2.Text ) ) or
            (STRtoINT(ED_FIXOS_01_C3.Text) = STRtoINT(ED_FIXOS_01_C1.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O(s) número(s) fixo(s) da 3ª coluna não pode(m) ser igual(is) ao(s) da DEMAIS colunas.');
                 ED_FIXOS_01_C3.SetFocus;
                 EXIT;
          END; // IF

     // ***************************
     // **  CONFERINDO OS FIXOS  **
     // ***************************
     if (STRtoINT(ED_FIXOS_01_C8.Text) >0) then
          IF (STRtoINT(ED_FIXOS_01_C8.Text) = STRtoINT(ED_FIXOS_01_C7.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C8.Text) = STRtoINT(ED_FIXOS_01_C6.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C8.Text) = STRtoINT(ED_FIXOS_01_C5.Text ) ) or
            (STRtoINT(ED_FIXOS_01_C8.Text) = STRtoINT(ED_FIXOS_01_C4.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O(s) número(s) fixo(s) da 8ª coluna não pode(m) ser igual(is) ao(s) da DEMAIS colunas.');
                 ED_FIXOS_01_C8.SetFocus;
                 EXIT;
          END; // IF
     if (STRtoINT(ED_FIXOS_01_C7.Text) >0) then
          IF (STRtoINT(ED_FIXOS_01_C7.Text) = STRtoINT(ED_FIXOS_01_C8.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C7.Text) = STRtoINT(ED_FIXOS_01_C6.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C7.Text) = STRtoINT(ED_FIXOS_01_C5.Text ) ) or
            (STRtoINT(ED_FIXOS_01_C7.Text) = STRtoINT(ED_FIXOS_01_C4.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O(s) número(s) fixo(s) da 7ª coluna não pode(m) ser igual(is) ao(s) da DEMAIS colunas.');
                 ED_FIXOS_01_C7.SetFocus;
                 EXIT;
          END; // IF
     if (STRtoINT(ED_FIXOS_01_C6.Text) >0) then
          IF (STRtoINT(ED_FIXOS_01_C6.Text) = STRtoINT(ED_FIXOS_01_C8.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C6.Text) = STRtoINT(ED_FIXOS_01_C7.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C6.Text) = STRtoINT(ED_FIXOS_01_C5.Text ) ) or
            (STRtoINT(ED_FIXOS_01_C6.Text) = STRtoINT(ED_FIXOS_01_C4.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O(s) número(s) fixo(s) da 6ª coluna não pode(m) ser igual(is) ao(s) da DEMAIS colunas.');
                 ED_FIXOS_01_C6.SetFocus;
                 EXIT;
          END; // IF


     // =====================================
     // ||||=============================||||
     // |||| 	GERANDO AS COMBINAÇÕES   ||||
     // ||||=============================||||
     // =====================================
     LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ; // CRONOMETRANDO O TEMPO
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_3G8C_M2_DADOS2')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     // ************************
     // **   PRIMEIRO BLOCO   **
     // ************************
     VI_LINHAS02 := 1;
     VI_LINHAS04 := 1;
     VI_LINHAS05 := 1;
     VI_LINHAS15 := 1;
     FOR Vsi_COMb12_1 := 1 TO   {9} (STGR_COLUNA_01e02_SOBRAS.RowCount-1) DO
     BEGIN
          FOR Vsi_COMb12_2 := 1 TO  16 DO
          BEGIN
               SLEEP(8);
               FOR Vsi_COMb12_3 := Vsi_COMb12_2+1 TO  17 DO
               BEGIN
                    FOR Vsi_COMb12_4 := Vsi_COMb12_3+1 TO  18 DO
                    BEGIN
                         // PARES
                         VI_CNTCELULAS := 0;
                         IF (STRtoINT(STGR_COLUNA_01e02_SOBRAS.Cells[Vsi_COMb12_2,Vsi_COMb12_1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                         IF (STRtoINT(STGR_COLUNA_01e02_SOBRAS.Cells[Vsi_COMb12_3,Vsi_COMb12_1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                         IF (STRtoINT(STGR_COLUNA_01e02_SOBRAS.Cells[Vsi_COMb12_4,Vsi_COMb12_1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                         IF  NOT (VI_CNTCELULAS =2) THEN
                              CONTINUE;
                         // SOMA
                         VI_FLAG12 := 0;
                         VI_SOMA12  :=  STRtoINT(STGR_COLUNA_01e02_SOBRAS.Cells[Vsi_COMb12_2,Vsi_COMb12_1])
                            + STRtoINT(STGR_COLUNA_01e02_SOBRAS.Cells[Vsi_COMb12_3,Vsi_COMb12_1])+ STRtoINT(STGR_COLUNA_01e02_SOBRAS.Cells[Vsi_COMb12_4,Vsi_COMb12_1]);
                         IF (VI_SOMA12 >= STRtoINT(ED_SOMAS_C3_INI.Text)) AND (VI_SOMA12 <= STRtoINT(ED_SOMAS_C3_FINAL.Text)) THEN
                         BEGIN
                                VI_FLAG12 := 1 ;
                         END; // IF
                         IF (VI_FLAG12 = 0) THEN
                              CONTINUE  ;
                         // FIXOS
                         VI_FLAG_FX12 := 0;
                         IF  STRtoINT(ED_FIXOS_01_C3.Text) > 0 THEN
                         BEGIN
                                   IF (STRtoINT(STGR_COLUNA_01e02_SOBRAS.Cells[Vsi_COMb12_2,Vsi_COMb12_1]) = STRtoINT(ED_FIXOS_01_C3.Text))
                                   or   (STRtoINT(STGR_COLUNA_01e02_SOBRAS.Cells[Vsi_COMb12_3,Vsi_COMb12_1]) = STRtoINT(ED_FIXOS_01_C3.Text))
                                   or   (STRtoINT(STGR_COLUNA_01e02_SOBRAS.Cells[Vsi_COMb12_4,Vsi_COMb12_1]) = STRtoINT(ED_FIXOS_01_C3.Text))
                                   THEN
                                        VI_FLAG_FX12 := 1;
                         END ELSE  // STRtoINT(ED_FIXOS_01_C3.Text)
                         BEGIN
                              VI_FLAG_FX12 := 1;
                         END; // IF STRtoINT(ED_FIXOS_01_C3.Text)
                         IF (VI_FLAG_FX12 = 0) THEN
                              CONTINUE ;
                         // COLUNA 03
                         STGR_COLUNA_03.Cells[0,VI_LINHAS02] := INTtoSTR(VI_LINHAS02);
                         STGR_COLUNA_03.Cells[1,VI_LINHAS02] := INTtoSTR(VI_SOMA12);
                         STGR_COLUNA_03.Cells[2,VI_LINHAS02] := STGR_COLUNA_01e02_SOBRAS.Cells[0,Vsi_COMb12_1];
                         STGR_COLUNA_03.Cells[3,VI_LINHAS02] := STGR_COLUNA_01e02_SOBRAS.Cells[Vsi_COMb12_2,Vsi_COMb12_1];
                         STGR_COLUNA_03.Cells[4,VI_LINHAS02] := STGR_COLUNA_01e02_SOBRAS.Cells[Vsi_COMb12_3,Vsi_COMb12_1];
                         STGR_COLUNA_03.Cells[5,VI_LINHAS02] := STGR_COLUNA_01e02_SOBRAS.Cells[Vsi_COMb12_4,Vsi_COMb12_1];
                         // -------------------------------------------
                         // --  MONTANDO AS 15 SOBRAS DA COLUNA 03  ---
                         // -------------------------------------------
                            FOR VI_CONTAR :=1 TO 25 DO
                            BEGIN
                                STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,2] :='F';
                                STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
                            END; // FOR VI_CONTAR
                            FOR VI_CONTAR :=1 TO 18 DO
                            BEGIN
                                STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COLUNA_01e02_SOBRAS.Cells[VI_CONTAR,Vsi_COMb12_1])) ,1]:='V';
                            END; // FOR VI_CONTAR1
                            FOR VI_CONTAR :=3 TO 5 DO
                            BEGIN
                                STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COLUNA_03.Cells[VI_CONTAR,VI_LINHAS02])) ,2]:='V';
                            END; // FOR VI_CONTAR1
                            VI_CNTCELULAS := 1;
                            FOR VI_CONTAR :=1 TO 25 DO
                            BEGIN
                                // SOBRAS
                                IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') AND (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,2]='F') THEN
                                BEGIN
                                    STGR_SOBRAS_15.Cells[VI_CNTCELULAS, 1] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                                    VI_CNTCELULAS := VI_CNTCELULAS + 1;
                                END; // IF (STRGR_TODOS_NUMEROS
                            END; // FOR VI_CONTAR
                         // ----------------------------------------------
                         // ************************
                         // **   SEGUNDO BLOCO    **
                         // ************************
                              FOR Vsi_COMb_C4_1 := 1 TO  13 DO
                              BEGIN
                                   FOR Vsi_COMb_C4_2 := Vsi_COMb_C4_1+1 TO  14 DO
                                   BEGIN
                                        FOR Vsi_COMb_C4_3 := Vsi_COMb_C4_2+1 TO  15 DO
                                        BEGIN
                                             // PARES
                                             VI_CNTCELULAS := 0;
                                             IF (STRtoINT(STGR_SOBRAS_15.Cells[Vsi_COMb_C4_1,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                             IF (STRtoINT(STGR_SOBRAS_15.Cells[Vsi_COMb_C4_2,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                             IF (STRtoINT(STGR_SOBRAS_15.Cells[Vsi_COMb_C4_3,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                             IF  NOT (VI_CNTCELULAS =2) THEN
                                                  CONTINUE;
                                             //---
                                             VI_SOMA03  :=  STRtoINT(STGR_SOBRAS_15.Cells[Vsi_COMb_C4_1,1])
                                                + STRtoINT(STGR_SOBRAS_15.Cells[Vsi_COMb_C4_2,1])+ STRtoINT(STGR_SOBRAS_15.Cells[Vsi_COMb_C4_3,1]) ;
                                             IF (VI_SOMA03 >= STRtoINT(ED_SOMAS_C4_INI.Text)) AND (VI_SOMA03 <= STRtoINT(ED_SOMAS_C4_FINAL.Text)) THEN
                                             BEGIN
                                                  //---
                                                  VI_FLAG_FIXOS04 := 0;
                                                  IF  STRtoINT(ED_FIXOS_01_C4.Text) > 0 THEN
                                                  BEGIN
                                                       IF  (STRtoINT(STGR_SOBRAS_15.Cells[Vsi_COMb_C4_1,1]) = STRtoINT(ED_FIXOS_01_C4.Text)) OR
                                                           (STRtoINT(STGR_SOBRAS_15.Cells[Vsi_COMb_C4_2,1]) = STRtoINT(ED_FIXOS_01_C4.Text)) OR
                                                           (STRtoINT(STGR_SOBRAS_15.Cells[Vsi_COMb_C4_3,1]) = STRtoINT(ED_FIXOS_01_C4.Text))
                                                       THEN
                                                            VI_FLAG_FIXOS04 := 1;
                                                  END ELSE
                                                  BEGIN
                                                            VI_FLAG_FIXOS04 := 1 ;
                                                  END; // IF  STRtoINT(ED_FIXOS_01_C4.Text
                                                  IF (VI_FLAG_FIXOS04 = 0) THEN
                                                       CONTINUE;
                                                  //STGR_COMB12.Repaint;
                                                  //STGR_SOBRAS_15.Repaint;
                                                  STGR_COLUNA_04.Cells[0,VI_LINHAS04] := INTtoSTR(VI_LINHAS04);
                                                  STGR_COLUNA_04.Cells[1,VI_LINHAS04] := INTtoSTR(VI_SOMA03);
                                                  STGR_COLUNA_04.Cells[2,VI_LINHAS04] := STGR_COLUNA_01e02_SOBRAS.Cells[0,Vsi_COMb12_1]; //'1';
                                                  STGR_COLUNA_04.Cells[3,VI_LINHAS04] := STGR_SOBRAS_15.Cells[Vsi_COMb_C4_1,1];
                                                  STGR_COLUNA_04.Cells[4,VI_LINHAS04] := STGR_SOBRAS_15.Cells[Vsi_COMb_C4_2,1];
                                                  STGR_COLUNA_04.Cells[5,VI_LINHAS04] := STGR_SOBRAS_15.Cells[Vsi_COMb_C4_3,1];

                                                  // -------------------------------------------
                                                  // --  MONTANDO AS 12 SOBRAS DA COLUNA 04  ---
                                                  // -------------------------------------------
                                                     FOR VI_CONTAR :=1 TO 25 DO
                                                     BEGIN
                                                         STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,2] :='F';
                                                         STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
                                                     END; // FOR VI_CONTAR
                                                     FOR VI_CONTAR :=1 TO 15 DO
                                                     BEGIN
                                                         STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_SOBRAS_15.Cells[VI_CONTAR,1])) ,1]:='V';
                                                     END; // FOR VI_CONTAR1
                                                     FOR VI_CONTAR :=3 TO 5 DO
                                                     BEGIN
                                                         STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COLUNA_04.Cells[VI_CONTAR,VI_LINHAS04])) ,2]:='V';
                                                     END; // FOR VI_CONTAR1
                                                     VI_CNTCELULAS := 1;
                                                     FOR VI_CONTAR :=1 TO 25 DO
                                                     BEGIN
                                                         // SOBRAS
                                                         IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') AND (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,2]='F') THEN
                                                         BEGIN
                                                             STGR_SOBRAS_12.Cells[VI_CNTCELULAS, 1] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                                                             VI_CNTCELULAS := VI_CNTCELULAS + 1;
                                                         END; // IF (STRGR_TODOS_NUMEROS
                                                     END; // FOR VI_CONTAR
                                                  // ----------------------------------------------
                                                  // **************************
                                                  // **   TERCEIRO  BLOCO    **
                                                  // **************************
                                                       FOR Vsi_COMb_C5_1 := 1 TO  10 DO
                                                       BEGIN
                                                            FOR Vsi_COMb_C5_2 := Vsi_COMb_C5_1+1 TO  11 DO
                                                            BEGIN
                                                                 FOR Vsi_COMb_C5_3 := Vsi_COMb_C5_2+1 TO  12 DO
                                                                 BEGIN
                                                                      // PARES
                                                                      VI_CNTCELULAS := 0;
                                                                      IF (STRtoINT(STGR_SOBRAS_12.Cells[Vsi_COMb_C5_1,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                                                      IF (STRtoINT(STGR_SOBRAS_12.Cells[Vsi_COMb_C5_2,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                                                      IF (STRtoINT(STGR_SOBRAS_12.Cells[Vsi_COMb_C5_3,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                                                      IF  NOT (VI_CNTCELULAS =0) THEN
                                                                           CONTINUE;
                                                                      //---
                                                                      VI_SOMA05  :=  STRtoINT(STGR_SOBRAS_12.Cells[Vsi_COMb_C5_1,1])
                                                                         + STRtoINT(STGR_SOBRAS_12.Cells[Vsi_COMb_C5_2,1])+ STRtoINT(STGR_SOBRAS_12.Cells[Vsi_COMb_C5_3,1]) ;
                                                                      IF (VI_SOMA05 >= STRtoINT(ED_SOMAS_C5_INI.Text)) AND (VI_SOMA05 <= STRtoINT(ED_SOMAS_C5_FINAL.Text)) THEN
                                                                      BEGIN
                                                                           //---
                                                                           VI_FLAG_FX05 := 0;
                                                                           IF  STRtoINT(ED_FIXOS_01_C5.Text) > 0 THEN
                                                                           BEGIN
                                                                                IF  (STRtoINT(STGR_SOBRAS_12.Cells[Vsi_COMb_C5_1,1]) = STRtoINT(ED_FIXOS_01_C5.Text)) OR
                                                                                    (STRtoINT(STGR_SOBRAS_12.Cells[Vsi_COMb_C5_2,1]) = STRtoINT(ED_FIXOS_01_C5.Text)) OR
                                                                                    (STRtoINT(STGR_SOBRAS_12.Cells[Vsi_COMb_C5_3,1]) = STRtoINT(ED_FIXOS_01_C5.Text))
                                                                                THEN
                                                                                     VI_FLAG_FX05 := 1;
                                                                           END ELSE
                                                                           BEGIN
                                                                                     VI_FLAG_FX05 := 1 ;
                                                                           END; // IF  STRtoINT(ED_FIXOS_01_C4.Text
                                                                           IF (VI_FLAG_FX05 = 0) THEN
                                                                                CONTINUE;
                                                                           // SOMA DE TODAS AS COLUNAS (C2, C3, C4 E C5)
                                                                           VI_SOMA_C2345 :=  VI_SOMA12+VI_SOMA03+VI_SOMA05+STRtoINT(STGR_COLUNA_02.Cells[1,Vsi_COMb12_1]);
                                                                           VI_FLAG_FX05 := 0;
                                                                           IF (VI_SOMA_C2345 >= STRtoINT(ED_SOMAS_G2_INI.Text)) AND (VI_SOMA_C2345 <= STRtoINT(ED_SOMAS_G2_FINAL.Text)) THEN
                                                                           BEGIN
                                                                                VI_FLAG_FX05 := 1;
                                                                           END;
                                                                           IF (VI_FLAG_FX05 = 0) THEN
                                                                                CONTINUE  ;
                                                                           STGR_COLUNA_SOMA_C2345.Cells[0,VI_LINHAS02] := INTtoSTR(VI_LINHAS02);
                                                                           STGR_COLUNA_SOMA_C2345.Cells[1,VI_LINHAS02] := INTtoSTR(VI_SOMA12+VI_SOMA03+VI_SOMA05+STRtoINT(STGR_COLUNA_02.Cells[1,Vsi_COMb12_1]));
                                                                           STGR_COLUNA_03.Cells[0,VI_LINHAS02] := INTtoSTR(VI_LINHAS02);
                                                                           STGR_COLUNA_03.Cells[1,VI_LINHAS02] := INTtoSTR(VI_SOMA12);
                                                                           STGR_COLUNA_03.Cells[2,VI_LINHAS02] := STGR_COLUNA_01e02_SOBRAS.Cells[0,Vsi_COMb12_1];
                                                                           STGR_COLUNA_03.Cells[3,VI_LINHAS02] := STGR_COLUNA_01e02_SOBRAS.Cells[Vsi_COMb12_2,Vsi_COMb12_1];
                                                                           STGR_COLUNA_03.Cells[4,VI_LINHAS02] := STGR_COLUNA_01e02_SOBRAS.Cells[Vsi_COMb12_3,Vsi_COMb12_1];
                                                                           STGR_COLUNA_03.Cells[5,VI_LINHAS02] := STGR_COLUNA_01e02_SOBRAS.Cells[Vsi_COMb12_4,Vsi_COMb12_1];
                         
                                                                           STGR_COLUNA_04.Cells[0,VI_LINHAS04] := INTtoSTR(VI_LINHAS04);
                                                                           STGR_COLUNA_04.Cells[1,VI_LINHAS04] := INTtoSTR(VI_SOMA03);
                                                                           STGR_COLUNA_04.Cells[2,VI_LINHAS04] := STGR_COLUNA_01e02_SOBRAS.Cells[0,Vsi_COMb12_1];
                                                                           STGR_COLUNA_04.Cells[3,VI_LINHAS04] := STGR_SOBRAS_15.Cells[Vsi_COMb_C4_1,1];
                                                                           STGR_COLUNA_04.Cells[4,VI_LINHAS04] := STGR_SOBRAS_15.Cells[Vsi_COMb_C4_2,1];
                                                                           STGR_COLUNA_04.Cells[5,VI_LINHAS04] := STGR_SOBRAS_15.Cells[Vsi_COMb_C4_3,1];

                                                                           STGR_COLUNA_05.Cells[0,VI_LINHAS05] := INTtoSTR(VI_LINHAS15);
                                                                           STGR_COLUNA_03e04e05_SOBRAS.Cells[0,VI_LINHAS05] := INTtoSTR(VI_LINHAS15);
                                                                           STGR_COLUNA_03e04e05_SOBRAS.Cells[10,VI_LINHAS05] := STGR_COLUNA_01e02_SOBRAS.Cells[0,Vsi_COMb12_1]; 
                                                                           STGR_COLUNA_05.Cells[1,VI_LINHAS05] := INTtoSTR(VI_SOMA05);
                                                                           STGR_COLUNA_05.Cells[2,VI_LINHAS05] := STGR_COLUNA_01e02_SOBRAS.Cells[0,Vsi_COMb12_1];
                                                                           STGR_COLUNA_05.Cells[3,VI_LINHAS05] := STGR_SOBRAS_12.Cells[Vsi_COMb_C5_1,1];
                                                                           STGR_COLUNA_05.Cells[4,VI_LINHAS05] := STGR_SOBRAS_12.Cells[Vsi_COMb_C5_2,1];
                                                                           STGR_COLUNA_05.Cells[5,VI_LINHAS05] := STGR_SOBRAS_12.Cells[Vsi_COMb_C5_3,1];

                                                                           // -------------------------------------------
                                                                           // --  MONTANDO AS 09 SOBRAS DA COLUNA 05  ---
                                                                           // -------------------------------------------
                                                                              FOR VI_CONTAR :=1 TO 25 DO
                                                                              BEGIN
                                                                                  STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,2] :='F';
                                                                                  STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
                                                                              END; // FOR VI_CONTAR
                                                                              FOR VI_CONTAR :=1 TO 12 DO
                                                                              BEGIN
                                                                                  STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_SOBRAS_12.Cells[VI_CONTAR,1])) ,1]:='V';
                                                                              END; // FOR VI_CONTAR1
                                                                              FOR VI_CONTAR :=3 TO 5 DO
                                                                              BEGIN
                                                                                  STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COLUNA_05.Cells[VI_CONTAR,VI_LINHAS05])) ,2]:='V';
                                                                              END; // FOR VI_CONTAR1
                                                                              VI_CNTCELULAS := 1;
                                                                              FOR VI_CONTAR :=1 TO 25 DO
                                                                              BEGIN
                                                                                  // SOBRAS
                                                                                  IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') AND (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,2]='F') THEN
                                                                                  BEGIN
                                                                                      STGR_COLUNA_03e04e05_SOBRAS.Cells[VI_CNTCELULAS, VI_LINHAS05] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                                                                                      VI_CNTCELULAS := VI_CNTCELULAS + 1;
                                                                                  END; // IF (STRGR_TODOS_NUMEROS
                                                                              END; // FOR VI_CONTAR
                                                                               VI_LINHAS15 := VI_LINHAS15 +1;
                                                                               VI_LINHAS02 := VI_LINHAS02 +1;
                                                                               VI_LINHAS05 := VI_LINHAS05 +1;
                                                                               VI_LINHAS04 := VI_LINHAS04 +1;
                                                                               if (VI_LINHAS15 >1 ) THEN
                                                                               begin
                                                                                    if ((VI_LINHAS15 mod 19800)=0) THEN
                                                                                    begin
                                                                                         PR_GRAVAR_DADOS_v1 ();
                                                                                         //VI_LINHAS05 := 1;
                                                                                         VI_LINHAS04 := 1;
                                                                                         VI_LINHAS02 := 1;
                                                                                         PR_LIMPAR_GRIDpreparar2();
                                                                                         sleep(350);
                                                                                           STGR_COLUNA_03e04e05_SOBRAS.RowCount := VI_LINHAS05;
                                                                                           STGR_COLUNA_05.RowCount := VI_LINHAS05;
                                                                                           STGR_COLUNA_04.RowCount := VI_LINHAS04;
                                                                                           STGR_COLUNA_03.RowCount := VI_LINHAS02;                                                                                         
                                                                                    end; //
                                                                               end; // if
                                                                      END;  //IF (VI_SOMA05=
                                                                 END; // FOR Vsi_COMb_C5_3
                                                            END; // FOR Vsi_COMb_C5_2 :=
                                                       END; // FOR Vsi_COMb_C5_1 :
                                             END;  //IF (VI_SOMA03 = STRtoINT(ED_SOMAS_C3_INI.Text))
                                        END; // FOR Vsi_COMb_C4_3
                                   END; // FOR Vsi_COMb_C4_2 :=
                                   STGR_COLUNA_03e04e05_SOBRAS.RowCount := VI_LINHAS05;
                                   STGR_COLUNA_05.RowCount := VI_LINHAS05;
                                   STGR_COLUNA_04.RowCount := VI_LINHAS04;
                                   STGR_COLUNA_03.RowCount := VI_LINHAS02;
                                   STGR_COLUNA_SOMA_C2345.RowCount := VI_LINHAS02;
                              END; // FOR Vsi_COMb_C4_1 :
                    END; // FOR Vsi_COMb12_4 :=
               END; // FOR Vsi_COMb12_3 :=
              LA_GERAR_COMB.Caption := '# ' + INTtoSTR(Vsi_COMb12_1)+ ' DE '+  INTtoSTR(STGR_COLUNA_01e02_SOBRAS.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(Vsi_COMb12_1/(STGR_COLUNA_01e02_SOBRAS.RowCount-1)*100))+ ' %  ' + '  -  Quantidade: '+INTtoSTR(VI_LINHAS15-1) ;
              LA_GERAR_COMB.Repaint;
          END; // FOR Vsi_COMb12_2 :=
               LA_GERAR_COMB.Caption := '# ' + INTtoSTR(Vsi_COMb12_1)+ ' DE '+  INTtoSTR(STGR_COLUNA_01e02_SOBRAS.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(Vsi_COMb12_1/(STGR_COLUNA_01e02_SOBRAS.RowCount-1)*100))+ ' %  ' + '  -  Quantidade: '+INTtoSTR(VI_LINHAS15-1) ;
               LA_GERAR_COMB.Repaint;
               PGBR_GERARCOMB0.Position := CEIL(Vsi_COMb12_1/(STGR_COLUNA_01e02_SOBRAS.RowCount-1)*100);
               PGBR_GERARCOMB0.Repaint;
              STGR_COLUNA_03e04e05_SOBRAS.RowCount := VI_LINHAS05;
               STGR_COLUNA_05.RowCount := VI_LINHAS05;
               STGR_COLUNA_04.RowCount := VI_LINHAS04;
               STGR_COLUNA_03.RowCount := VI_LINHAS02;
               STGR_COLUNA_03.Repaint;
               STGR_COLUNA_04.Repaint;
               STGR_COLUNA_05.Repaint;
               STGR_SOBRAS_12.Repaint;
               STGR_COLUNA_03e04e05_SOBRAS.Repaint;
                  {  try
                         STGR_COLUNA_03.FixedRows := 1;
                         STGR_COLUNA_04.FixedRows := 1;
                         //STGR_COLUNA_05.FixedRows := 1;
                    except
                         //
                    end;  }
               IF ((Vsi_COMb12_1 MOD 30) = 0) THEN
               BEGIN
                   Self.WindowState := wsMinimized;
                   Self.WindowState :=  wsNormal;
                   SELF.Repaint;
               END; // IF
     END; // FOR Vsi_COMb12_1 :=
    STGR_COLUNA_03e04e05_SOBRAS.RowCount := VI_LINHAS05;
    STGR_COLUNA_05.RowCount := VI_LINHAS05;
    STGR_COLUNA_04.RowCount := VI_LINHAS04;
    STGR_COLUNA_03.RowCount := VI_LINHAS02;
               if (VI_LINHAS15 >1 ) THEN
                  PR_GRAVAR_DADOS_v1 ();
     PGBR_GERARCOMB0.Position := 100;
     PGBR_GERARCOMB1.Position := 100;
     PGBR_GERARCOMB0.Repaint;
     PGBR_GERARCOMB1.Repaint;
     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;      
     LA_RESULTADO_TXT.Caption := 'Etapa 3/4 Fim.';
     SLEEP(1000);
end;




procedure T_F_GERADOR_3G8C_M2.BBT_GERAR_MENUClick(Sender: TObject);
begin
     PA_GERAR.Visible := TRUE;
     PA_GERAR.Enabled := TRUE;
     PA_GERAR.Top  := 245;
     PA_GERAR.Left := 460;
     PA_GERAR.Repaint;
end;

procedure T_F_GERADOR_3G8C_M2.BBT_GERARClick(Sender: TObject);

    PROCEDURE PR_ORDENAR_10 (VI_LINHA: INTEGER);
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
        FOR VI_CONTAR :=3 TO 12 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COLUNA_10.Cells[VI_CONTAR,VI_LINHA])) ,1]:='V';
        END; // FOR VI_CONTAR1
        VI_CNTCELULAS := 3;
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
            BEGIN
                STGR_COLUNA_10.Cells [VI_CNTCELULAS, VI_LINHA] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                VI_CNTCELULAS := VI_CNTCELULAS + 1;
            END; // IF (STRGR_TODOS_NUMEROS
        END; // FOR VI_CONTAR
    END; // PROCEDURE
    

    PROCEDURE PR_GRAVAR_DADOS_v2 ();
    VAR
        VI_TOTALGERADO, VI_AN_COMB1, VI_CNTCELULAS : INTEGER;
        VC_QUERY, VC_DADOS1, VC_COMBINACOES_03_C9, VC_COMBINACOES_06_C10 : STRING;
    BEGIN
            // ************************
            // **   BANCO DE DADOS   **
            // ************************
            STGR_COLUNA_01.Repaint;
            Self.Repaint;
           // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
            FOR VI_AN_COMB1:= 1 TO  TRUNC((STGR_COLUNA_09.RowCount-1)/1) DO
            BEGIN
                // obs: verificar o evento BeFOREInSERT DA ibq_COMBINACOES
                VC_COMBINACOES_03_C9 :='';
                VC_COMBINACOES_06_C10 :='';
                FOR VI_CNTCELULAS := 2 TO 4 DO
                BEGIN
                    VC_COMBINACOES_03_C9 := VC_COMBINACOES_03_C9 + RIGHTSTR ('0'+TRIM(STGR_COLUNA_09.Cells[VI_CNTCELULAS,VI_AN_COMB1]),2) +' ';
                END; // FOR VI_CNTCELULAS

                FOR VI_CNTCELULAS := 3 TO 8 DO
                BEGIN
                    VC_COMBINACOES_06_C10 := VC_COMBINACOES_06_C10 + RIGHTSTR ('0'+TRIM(STGR_COLUNA_10.Cells[VI_CNTCELULAS,VI_AN_COMB1]),2) +' ';
                END; // FOR
                     VC_QUERY  := 'INSERT INTO FILTRO_3G8C_M2_DADOS3 (DADOS_03_C9, DADOS_06_C10, '
                     +' NS01, NS02, NS03, NS04, NS05, NS06, CONTADOR3, CONTADOR2, CONTADOR1 ) '
                     +' VALUES(' +#39+ TRIM(VC_COMBINACOES_03_C9) + #39 +','+#39+TRIM(VC_COMBINACOES_06_C10)
                          + #39 +','+#39+STGR_COLUNA_10.Cells[3,VI_AN_COMB1]+ #39 +','+#39+STGR_COLUNA_10.Cells[4,VI_AN_COMB1]
                          + #39 +','+#39+STGR_COLUNA_10.Cells[5,VI_AN_COMB1]
                          + #39 +','+#39+STGR_COLUNA_10.Cells[6,VI_AN_COMB1]    + #39 +','+#39+STGR_COLUNA_10.Cells[7,VI_AN_COMB1]    + #39 +','+#39+STGR_COLUNA_10.Cells[8,VI_AN_COMB1]
                          + #39 +','+#39+STGR_COLUNA_09.Cells[0,VI_AN_COMB1]
                          + #39 +','+#39+STGR_COLUNA_09.Cells[1,VI_AN_COMB1]
                          + #39 +','+#39+STGR_COLUNA_10.Cells[2,VI_AN_COMB1]
                           + #39 +');';
                     SELF.IBQ_COMBINACOES.SQL.Clear;
                     SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                     SELF.IBQ_COMBINACOES.ExecSQL;
            END; // FOR VI_AN_COMB1
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
            SLEEP(19);
             SELF.IBQ_COMBINACOES.SQL.Clear;
    END; // PROCEDURE GRAVAR_DADOS2_v1

    
    PROCEDURE PR_GRAVAR_DADOS_v3 ();
    VAR
        VI_CONTAR, VI_AN_COMB1, VI_CNTCELULAS : INTEGER;
        VC_QUERY, VC_COMBINACOES_10, VC_COMBINACOES_15 : STRING;
    BEGIN
            // ************************
            // **   BANCO DE DADOS   **
            // ************************
            STGR_COLUNA_01.Repaint;
            Self.Repaint;
           // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
            FOR VI_AN_COMB1:= 1 TO  TRUNC((STGR_COLUNA_09.RowCount-1)/1) DO
            BEGIN
                // obs: verificar o evento BeFOREInSERT DA ibq_COMBINACOES
                    FOR VI_CONTAR :=1 TO 25 DO
                    BEGIN
                         STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
                    END; // FOR VI_CONTAR
                    VC_COMBINACOES_15 :='';
                    VC_COMBINACOES_10 :='';
                    FOR VI_CNTCELULAS := 3 TO 12 DO
                    BEGIN
                         VC_COMBINACOES_10 := VC_COMBINACOES_10 + RIGHTSTR ('0'+TRIM(STGR_COLUNA_10.Cells[VI_CNTCELULAS,VI_AN_COMB1]),2) +' ';
                         STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COLUNA_10.Cells[VI_CNTCELULAS,VI_AN_COMB1])) ,1]:='V';
                    END; // FOR VI_CNTCELULAS
                    FOR VI_CONTAR :=1 TO 25 DO
                    BEGIN
                         IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='F') THEN
                         BEGIN
                              VC_COMBINACOES_15 := VC_COMBINACOES_15 + RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) +' ' ;
                              VI_CNTCELULAS := VI_CNTCELULAS + 1;
                         END; // IF (STRGR_TODOS_NUMEROS
                    END; // FOR VI_CONTAR
                    VC_QUERY  := 'INSERT INTO FILTRO_3G8C_M2_DADOS4 (DADOS_S, DADOS_NS, CONTADOR ) '
                         +' VALUES(' +#39+ TRIM(VC_COMBINACOES_15) + #39 +','+#39+TRIM(VC_COMBINACOES_10)
                         + #39 +','+#39+STGR_COLUNA_10.Cells[0,VI_AN_COMB1]
                         + #39 +');';
                    SELF.IBQ_COMBINACOES.SQL.Clear;
                    SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                    SELF.IBQ_COMBINACOES.ExecSQL;
            END; // FOR VI_AN_COMB1
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
            SLEEP(19);
             SELF.IBQ_COMBINACOES.SQL.Clear;
    END; // PROCEDURE GRAVAR_DADOS2_v1

var
     VI_CNTCELULAS, VI_CONTAR, VI_CONTASEL1: integer;
     VI_COMBINACOES1, VI_COMBINACOES2, VI_COMBINACOES3, VI_CONTAR_COMB1 : INTEGER ;
      Vsi_COMB_C6_1, Vsi_COMB_C6_2, Vsi_COMB_C6_3, Vsi_COMB_C6_4: INTEGER;
     Vsi_COMB_C7_1, Vsi_COMB_C7_2, Vsi_COMB_C7_3, Vsi_SOMAINI, Vsi_SOMAFINAL : INTEGER;
     Vsi_COMB_CQQ_1, Vsi_COMB_CQQ_2, Vsi_COMB_CQQ_3 : INTEGER;
       VI_LINHAS15, VI_LINHAS02, VI_SOMA12, VI_FLAG12 , VI_SOMA03, VI_SOMA05, VI_FLAG08, VI_SOMA02: INTEGER;
       VI_FLAG_FX12, VI_FLAG_FX12B, VI_FLAG_FIXOS04, VI_FLAG_FX05B, VI_FLAG_FX05 : INTEGER;
       VS_NUMEROSPRINCIPAIS: STRING;
       VDB_CALCULO_TOTAL: DOUBLE;
begin
     BBT_PREPARAR.Click;
     BBT_PREPARAR.Visible := false;
     BBT_GERAR_MENU.Enabled := false;     
     BBT_CANCELAR_SAIR.Visible := false;
     BBT_INICIAR.Enabled := false;
     PR_LIMPAR_GRIDpreparar (); // exceto STGR_COLUNA_03e04e05_SOBRAS
     FOR VI_CONTASEL1 := 4 TO 5 DO
     BEGIN
        STGR_COLUNA_06.Cells [VI_CONTASEL1,0] := '-'+INTtoSTR(VI_CONTASEL1-2)+'-';
        STGR_COLUNA_06.Cells [VI_CONTASEL1,1] := '00';
        STGR_COLUNA_07.Cells [VI_CONTASEL1,0] := '-'+INTtoSTR(VI_CONTASEL1-2)+'-';
        STGR_COLUNA_07.Cells [VI_CONTASEL1,1] := '00';
        STGR_COLUNA_08.Cells [VI_CONTASEL1,0] := '-'+INTtoSTR(VI_CONTASEL1-2)+'-';
        STGR_COLUNA_08.Cells [VI_CONTASEL1,1] := '00';
     END;
     STGR_COLUNA_06.ColWidths [0]:= 45;
     STGR_COLUNA_06.ColWidths [1]:= 35;
     STGR_COLUNA_06.RowCount := 2;
     STGR_COLUNA_06.Repaint;
     STGR_COLUNA_07.ColWidths [0]:= 45;
     STGR_COLUNA_07.ColWidths [1]:= 35;
     STGR_COLUNA_07.RowCount := 2;
     STGR_COLUNA_07.Repaint;
     STGR_COLUNA_08.ColWidths [0]:= 45;
     STGR_COLUNA_08.ColWidths [1]:= 34;
     STGR_COLUNA_08.RowCount := 2;
     STGR_COLUNA_08.Repaint;
     STGR_COLUNA_09.ColWidths [0]:= 45;
     STGR_COLUNA_09.ColWidths [1]:= 35;
     STGR_COLUNA_09.RowCount := 2;
     STGR_COLUNA_09.Repaint;
     STGR_COLUNA_10.ColWidths [0]:= 45;
     STGR_COLUNA_10.ColWidths [1]:= 35;
     STGR_COLUNA_10.RowCount := 2;
     STGR_COLUNA_10.Repaint;

     PGBR_GERARCOMB0.Position := 0 ;
     PGBR_GERARCOMB0.Repaint;
     PGBR_GERARCOMB1.Position := 0 ;
     PGBR_GERARCOMB1.Repaint;
     LA_TOTAL_COMB.Caption := 'GERAR:               ';
     LA_GERAR_COMB.Caption := '#:                   ';
     LA_TOTAL_100REPET.Caption := '000000';
     LA_TOTAL_100REPET.Repaint;
     LA_TOTAL_COMB.Repaint;
     LA_GERAR_COMB.Repaint;
     PA_GERAR.Enabled := false;
     PA_GERAR.Left := 4500;

     PageControl_RESULTADO.Enabled := TRUE;
     PageControl_RESULTADO.TabIndex := 2  ;
     PageControl_RESULTADO.Repaint;
     LA_RESULTADO_TXT.Caption := 'PRÉ-ETAPA 4';
     LA_RESULTADO_TXT.Repaint;

     // =====================================
     // ||||=============================||||
     // |||| 	GERANDO AS COMBINAÇÕES   ||||
     // ||||=============================||||
     // =====================================
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_3G8C_M2_DADOS3') ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_3G8C_M2_DADOS4') ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_3G8C_M2_DADOS5') ;
     SELF.IBQ_COMBINACOES.ExecSQL;
   //  SELF.IBQ_COMBINACOES.Transaction.CommitRetaining;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT') ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     // ***********************************************************
     // **   ATO 0  - CARREGAR AS SOBRAS GERADAS ANTERIORMENTE   **
     // ***********************************************************
     {
     STGR_COLUNA_03e04e05_SOBRAS.RowCount :=1;
     VI_LINHAS02 := 1;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('SELECT DISTINCT(CONTADOR2), DADOS_SOBRAM_09 FROM FILTRO_3G8C_M2_DADOS2 ORDER BY CONTADOR2') ;
     SELF.IBQ_COMBINACOES.Open;
     IBQ_COMBINACOES.First;
     STGR_COLUNA_03e04e05_SOBRAS.ColWidths[0] := 45;
     WHILE NOT(IBQ_COMBINACOES.Eof) DO
     BEGIN
        STGR_COLUNA_03e04e05_SOBRAS.Cells[0,VI_LINHAS02] := IBQ_COMBINACOES.FieldByName('CONTADOR2').AsString;
        STGR_COLUNA_03e04e05_SOBRAS.Cells[1,VI_LINHAS02] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_SOBRAM_09').AsString,1,2);
        STGR_COLUNA_03e04e05_SOBRAS.Cells[2,VI_LINHAS02] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_SOBRAM_09').AsString,4,2);
        STGR_COLUNA_03e04e05_SOBRAS.Cells[3,VI_LINHAS02] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_SOBRAM_09').AsString,7,2);
        STGR_COLUNA_03e04e05_SOBRAS.Cells[4,VI_LINHAS02] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_SOBRAM_09').AsString,10,2);
        STGR_COLUNA_03e04e05_SOBRAS.Cells[5,VI_LINHAS02] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_SOBRAM_09').AsString,13,2);
        STGR_COLUNA_03e04e05_SOBRAS.Cells[6,VI_LINHAS02] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_SOBRAM_09').AsString,16,2);
        STGR_COLUNA_03e04e05_SOBRAS.Cells[7,VI_LINHAS02] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_SOBRAM_09').AsString,19,2);
        STGR_COLUNA_03e04e05_SOBRAS.Cells[8,VI_LINHAS02] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_SOBRAM_09').AsString,22,2);
        STGR_COLUNA_03e04e05_SOBRAS.Cells[9,VI_LINHAS02] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_SOBRAM_09').AsString,25,2);
        VI_LINHAS02 := VI_LINHAS02 + 1;
        IBQ_COMBINACOES.Next;
     END; // WHILE
     STGR_COLUNA_03e04e05_SOBRAS.RowCount := VI_LINHAS02;
     STGR_COLUNA_03e04e05_SOBRAS.Repaint;
     }
     // ************************
     // **   PRIMEIRO BLOCO   **
     // ************************
     VI_LINHAS02 := 1;
     VI_LINHAS15 := 1;
     LA_RESULTADO_TXT.Caption := 'ETAPA 4';
     LA_RESULTADO_TXT.Repaint;
     FOR Vsi_COMB_C6_1 := 1 TO  {75} (STGR_COLUNA_03e04e05_SOBRAS.RowCount-1) DO
     BEGIN
          SLEEP(15);
          FOR Vsi_COMB_C6_2 := 1 TO  7 DO
          BEGIN
               FOR Vsi_COMB_C6_3 := Vsi_COMB_C6_2+1 TO  8 DO
               BEGIN
                    FOR Vsi_COMB_C6_4 := Vsi_COMB_C6_3+1 TO  9 do
                    BEGIN
                         // PARES
                         VI_CNTCELULAS := 0;
                         IF (STRtoINT(STGR_COLUNA_03e04e05_SOBRAS.Cells[Vsi_COMB_C6_2,Vsi_COMB_C6_1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                         IF (STRtoINT(STGR_COLUNA_03e04e05_SOBRAS.Cells[Vsi_COMB_C6_3,Vsi_COMB_C6_1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                         IF (STRtoINT(STGR_COLUNA_03e04e05_SOBRAS.Cells[Vsi_COMB_C6_4,Vsi_COMB_C6_1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                         IF  NOT (VI_CNTCELULAS =0) THEN
                              CONTINUE;
                         // SOMA
                         VI_FLAG12 := 0;
                         VI_SOMA12  :=  STRtoINT(STGR_COLUNA_03e04e05_SOBRAS.Cells[Vsi_COMB_C6_2,Vsi_COMB_C6_1])
                            + STRtoINT(STGR_COLUNA_03e04e05_SOBRAS.Cells[Vsi_COMB_C6_3,Vsi_COMB_C6_1])+ STRtoINT(STGR_COLUNA_03e04e05_SOBRAS.Cells[Vsi_COMB_C6_4,Vsi_COMB_C6_1]);
                         IF (VI_SOMA12 >= STRtoINT(ED_SOMAS_C6_INI.Text)) AND (VI_SOMA12 <= STRtoINT(ED_SOMAS_C6_INI.Text)) THEN
                         BEGIN
                                VI_FLAG12 := 1 ;
                         END; // IF
                         IF (VI_FLAG12 = 0) THEN
                              CONTINUE  ;
                         // FIXOS
                         VI_FLAG_FX12 := 0;
                         IF  STRtoINT(ED_FIXOS_01_C6.Text) > 0 THEN
                         BEGIN
                                   IF (STRtoINT(STGR_COLUNA_03e04e05_SOBRAS.Cells[Vsi_COMB_C6_2,Vsi_COMB_C6_1]) = STRtoINT(ED_FIXOS_01_C6.Text))
                                   or   (STRtoINT(STGR_COLUNA_03e04e05_SOBRAS.Cells[Vsi_COMB_C6_3,Vsi_COMB_C6_1]) = STRtoINT(ED_FIXOS_01_C6.Text))
                                   or   (STRtoINT(STGR_COLUNA_03e04e05_SOBRAS.Cells[Vsi_COMB_C6_4,Vsi_COMB_C6_1]) = STRtoINT(ED_FIXOS_01_C6.Text))
                                   THEN
                                        VI_FLAG_FX12 := 1;
                         END ELSE  // STRtoINT(ED_FIXOS_01_C3.Text)
                         BEGIN
                              VI_FLAG_FX12 := 1;
                         END; // IF STRtoINT(ED_FIXOS_01_C3.Text)
                         IF (VI_FLAG_FX12 = 0) THEN
                              CONTINUE ;
                          // COLUNA 03
                         STGR_COLUNA_06.Cells[0,VI_LINHAS02] := INTtoSTR(VI_LINHAS02);
                         STGR_COLUNA_06.Cells[1,VI_LINHAS02] := INTtoSTR(VI_SOMA12);
                         STGR_COLUNA_06.Cells[2,VI_LINHAS02] := STGR_COLUNA_05.Cells[0,Vsi_COMB_C6_1];
                         STGR_COLUNA_06.Cells[3,VI_LINHAS02] := STGR_COLUNA_03e04e05_SOBRAS.Cells[Vsi_COMB_C6_2,Vsi_COMB_C6_1];
                         STGR_COLUNA_06.Cells[4,VI_LINHAS02] := STGR_COLUNA_03e04e05_SOBRAS.Cells[Vsi_COMB_C6_3,Vsi_COMB_C6_1];
                         STGR_COLUNA_06.Cells[5,VI_LINHAS02] := STGR_COLUNA_03e04e05_SOBRAS.Cells[Vsi_COMB_C6_4,Vsi_COMB_C6_1];
                         // -------------------------------------------
                         // --  MONTANDO AS 06 SOBRAS DA COLUNA 06  ---
                         // -------------------------------------------
                            FOR VI_CONTAR :=1 TO 25 DO
                            BEGIN
                                STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,2] :='F';
                                STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
                            END; // FOR VI_CONTAR
                            FOR VI_CONTAR :=1 TO 9 DO
                            BEGIN
                                STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COLUNA_03e04e05_SOBRAS.Cells[VI_CONTAR,Vsi_COMB_C6_1])) ,1]:='V';
                            END; // FOR VI_CONTAR1
                            FOR VI_CONTAR :=3 TO 5 DO
                            BEGIN
                                STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COLUNA_06.Cells[VI_CONTAR,VI_LINHAS02])) ,2]:='V';
                            END; // FOR VI_CONTAR1
                            VI_CNTCELULAS := 1;
                            FOR VI_CONTAR :=1 TO 25 DO
                            BEGIN
                                // SOBRAS
                                IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') AND (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,2]='F') THEN
                                BEGIN
                                    STGR_SOBRAS_06.Cells[VI_CNTCELULAS, 1] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                                    VI_CNTCELULAS := VI_CNTCELULAS + 1;
                                END; // IF (STRGR_TODOS_NUMEROS
                            END; // FOR VI_CONTAR
                         // ----------------------------------------------
                         // ************************
                         // **   SEGUNDO BLOCO    **
                         // ************************
                              FOR Vsi_COMB_C7_1 := 1 TO  4 DO
                              BEGIN
                                   FOR Vsi_COMB_C7_2 := Vsi_COMB_C7_1+1 TO  5 DO
                                   BEGIN
                                        FOR Vsi_COMB_C7_3 := Vsi_COMB_C7_2+1 TO  6 DO
                                        BEGIN
                                             // PARES
                                             VI_CNTCELULAS := 0;
                                             IF (STRtoINT(STGR_SOBRAS_06.Cells[Vsi_COMB_C7_1,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                             IF (STRtoINT(STGR_SOBRAS_06.Cells[Vsi_COMB_C7_2,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                             IF (STRtoINT(STGR_SOBRAS_06.Cells[Vsi_COMB_C7_3,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                             IF  NOT (VI_CNTCELULAS =2) THEN
                                                  CONTINUE;
                                             //---
                                             VI_SOMA03  :=  STRtoINT(STGR_SOBRAS_06.Cells[Vsi_COMB_C7_1,1])
                                                + STRtoINT(STGR_SOBRAS_06.Cells[Vsi_COMB_C7_2,1])+ STRtoINT(STGR_SOBRAS_06.Cells[Vsi_COMB_C7_3,1]) ;
                                             IF (VI_SOMA03 >= STRtoINT(ED_SOMAS_C7_INI.Text)) AND (VI_SOMA03 <= STRtoINT(ED_SOMAS_C7_INI.Text)) THEN
                                             BEGIN
                                                  //---
                                                  VI_FLAG_FIXOS04 := 0;
                                                  IF  STRtoINT(ED_FIXOS_01_C7.Text) > 0 THEN
                                                  BEGIN
                                                       IF  (STRtoINT(STGR_SOBRAS_06.Cells[Vsi_COMB_C7_1,1]) = STRtoINT(ED_FIXOS_01_C7.Text)) OR
                                                           (STRtoINT(STGR_SOBRAS_06.Cells[Vsi_COMB_C7_2,1]) = STRtoINT(ED_FIXOS_01_C7.Text)) OR
                                                           (STRtoINT(STGR_SOBRAS_06.Cells[Vsi_COMB_C7_3,1]) = STRtoINT(ED_FIXOS_01_C7.Text))
                                                       THEN
                                                            VI_FLAG_FIXOS04 := 1;
                                                  END ELSE
                                                  BEGIN
                                                            VI_FLAG_FIXOS04 := 1 ;
                                                  END; // IF  STRtoINT(ED_FIXOS_01_C4.Text
                                                  IF (VI_FLAG_FIXOS04 = 0) THEN
                                                       CONTINUE;
                                                  //STGR_COMB12.Repaint;
                                                  //STGR_SOBRAS_06.Repaint;
                                                  STGR_COLUNA_07.Cells[0,VI_LINHAS02] := INTtoSTR(VI_LINHAS02);
                                                  STGR_COLUNA_07.Cells[1,VI_LINHAS02] := INTtoSTR(VI_SOMA03);
                                                  STGR_COLUNA_07.Cells[2,VI_LINHAS02] := STGR_COLUNA_05.Cells[0,Vsi_COMB_C6_1]; //'1';
                                                  STGR_COLUNA_07.Cells[3,VI_LINHAS02] := STGR_SOBRAS_06.Cells[Vsi_COMB_C7_1,1];
                                                  STGR_COLUNA_07.Cells[4,VI_LINHAS02] := STGR_SOBRAS_06.Cells[Vsi_COMB_C7_2,1];
                                                  STGR_COLUNA_07.Cells[5,VI_LINHAS02] := STGR_SOBRAS_06.Cells[Vsi_COMB_C7_3,1];
                                                  // -------------------------------------------
                                                  // --  MONTANDO AS 06 SOBRAS DA COLUNA 06  ---
                                                  // -------------------------------------------
                                                     FOR VI_CONTAR :=1 TO 25 DO
                                                     BEGIN
                                                         STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,2] :='F';
                                                         STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
                                                     END; // FOR VI_CONTAR
                                                     FOR VI_CONTAR :=1 TO 6 DO
                                                     BEGIN
                                                         STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_SOBRAS_06.Cells[VI_CONTAR,1])) ,1]:='V';
                                                     END; // FOR VI_CONTAR1
                                                     FOR VI_CONTAR :=3 TO 5 DO
                                                     BEGIN
                                                         STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COLUNA_07.Cells[VI_CONTAR,VI_LINHAS02])) ,2]:='V';
                                                     END; // FOR VI_CONTAR1
                                                     VI_CNTCELULAS := 1;
                                                     FOR VI_CONTAR :=1 TO 25 DO
                                                     BEGIN
                                                         // SOBRAS
                                                         IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') AND (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,2]='F') THEN
                                                         BEGIN
                                                             STGR_SOBRAS_03.Cells[VI_CNTCELULAS, 1] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                                                             VI_CNTCELULAS := VI_CNTCELULAS + 1;
                                                         END; // IF (STRGR_TODOS_NUMEROS
                                                     END; // FOR VI_CONTAR
                                                       // PARES
                                                       VI_CNTCELULAS := 0;
                                                       IF (STRtoINT(STGR_SOBRAS_03.Cells[1,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                                       IF (STRtoINT(STGR_SOBRAS_03.Cells[2,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                                       IF (STRtoINT(STGR_SOBRAS_03.Cells[3,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                                       IF  NOT (VI_CNTCELULAS =2) THEN
                                                            CONTINUE;
                                                       //---
                                                       VI_FLAG12:=0;
                                                       VI_SOMA03  :=  STRtoINT(STGR_SOBRAS_03.Cells[1,1])
                                                          + STRtoINT(STGR_SOBRAS_03.Cells[2,1])+ STRtoINT(STGR_SOBRAS_03.Cells[3,1]) ;
                                                       IF (VI_SOMA03 >= STRtoINT(ED_SOMAS_C8_INI.Text)) AND (VI_SOMA03 <= STRtoINT(ED_SOMAS_C8_INI.Text)) THEN
                                                       BEGIN
                                                              VI_FLAG12 := 1 ;
                                                       END; // IF
                                                       IF (VI_FLAG12 = 0) THEN
                                                            CONTINUE  ;
                                                       // FIXOS
                                                       VI_FLAG_FX12 := 0;
                                                       IF  STRtoINT(ED_FIXOS_01_C8.Text) > 0 THEN
                                                       BEGIN
                                                                 IF (STRtoINT(STGR_SOBRAS_03.Cells[1,1]) = STRtoINT(ED_FIXOS_01_C8.Text))
                                                                 or   (STRtoINT(STGR_SOBRAS_03.Cells[2,1]) = STRtoINT(ED_FIXOS_01_C8.Text))
                                                                 or   (STRtoINT(STGR_SOBRAS_03.Cells[3,1]) = STRtoINT(ED_FIXOS_01_C8.Text))
                                                                 THEN
                                                                      VI_FLAG_FX12 := 1;
                                                       END ELSE  // STRtoINT(ED_FIXOS_01_C3.Text)
                                                       BEGIN
                                                            VI_FLAG_FX12 := 1;
                                                       END; // IF STRtoINT(ED_FIXOS_01_C3.Text)
                                                       IF (VI_FLAG_FX12 = 0) THEN
                                                            CONTINUE ;
                                                       STGR_COLUNA_08.Cells[0,VI_LINHAS02] := INTtoSTR(VI_LINHAS02);
                                                       STGR_COLUNA_08.Cells[1,VI_LINHAS02] := INTtoSTR(VI_SOMA03);
                                                       STGR_COLUNA_08.Cells[2,VI_LINHAS02] := STGR_COLUNA_05.Cells[0,Vsi_COMB_C6_1];
                                                       STGR_COLUNA_08.Cells[3,VI_LINHAS02] := STGR_SOBRAS_03.Cells[1,1];
                                                       STGR_COLUNA_08.Cells[4,VI_LINHAS02] := STGR_SOBRAS_03.Cells[2,1];
                                                       STGR_COLUNA_08.Cells[5,VI_LINHAS02] := STGR_SOBRAS_03.Cells[3,1];
                                                       // ----------------------------------------------
                                                        VI_LINHAS15 := VI_LINHAS15 + 1;
                                                       IF ((VI_LINHAS15 MOD 2)=0) THEN
                                                       BEGIN
                                                            FOR Vsi_COMB_CQQ_1 :=3 TO 5 DO
                                                            BEGIN
                                                                 FOR Vsi_COMB_CQQ_2 :=3 TO 5 DO
                                                                 BEGIN
                                                                      FOR Vsi_COMB_CQQ_3 :=3 TO 5 DO
                                                                      BEGIN
                                                                           //coluna 6
                                                                           STGR_COLUNA_06.Cells[0,VI_LINHAS02] := INTtoSTR(VI_LINHAS02);
                                                                           STGR_COLUNA_06.Cells[1,VI_LINHAS02] := INTtoSTR(VI_SOMA12);
                                                                           STGR_COLUNA_06.Cells[2,VI_LINHAS02] := STGR_COLUNA_05.Cells[0,Vsi_COMB_C6_1];
                                                                           STGR_COLUNA_06.Cells[3,VI_LINHAS02] := STGR_COLUNA_03e04e05_SOBRAS.Cells[Vsi_COMB_C6_2,Vsi_COMB_C6_1];
                                                                           STGR_COLUNA_06.Cells[4,VI_LINHAS02] := STGR_COLUNA_03e04e05_SOBRAS.Cells[Vsi_COMB_C6_3,Vsi_COMB_C6_1];
                                                                           STGR_COLUNA_06.Cells[5,VI_LINHAS02] := STGR_COLUNA_03e04e05_SOBRAS.Cells[Vsi_COMB_C6_4,Vsi_COMB_C6_1];
                                                                           //coluna 7
                                                                           STGR_COLUNA_07.Cells[0,VI_LINHAS02] := INTtoSTR(VI_LINHAS02);
                                                                           STGR_COLUNA_07.Cells[1,VI_LINHAS02] := INTtoSTR(VI_SOMA03);
                                                                           STGR_COLUNA_07.Cells[2,VI_LINHAS02] := STGR_COLUNA_05.Cells[0,Vsi_COMB_C6_1]; //'1';
                                                                           STGR_COLUNA_07.Cells[3,VI_LINHAS02] := STGR_SOBRAS_06.Cells[Vsi_COMB_C7_1,1];
                                                                           STGR_COLUNA_07.Cells[4,VI_LINHAS02] := STGR_SOBRAS_06.Cells[Vsi_COMB_C7_2,1];
                                                                           STGR_COLUNA_07.Cells[5,VI_LINHAS02] := STGR_SOBRAS_06.Cells[Vsi_COMB_C7_3,1];
                                                                           //coluna 8
                                                                           STGR_COLUNA_08.Cells[0,VI_LINHAS02] := INTtoSTR(VI_LINHAS02);
                                                                           STGR_COLUNA_08.Cells[1,VI_LINHAS02] := INTtoSTR(VI_SOMA03);
                                                                           STGR_COLUNA_08.Cells[2,VI_LINHAS02] := STGR_COLUNA_05.Cells[0,Vsi_COMB_C6_1]; //'1';
                                                                           STGR_COLUNA_08.Cells[3,VI_LINHAS02] := STGR_SOBRAS_03.Cells[1,1];
                                                                           STGR_COLUNA_08.Cells[4,VI_LINHAS02] := STGR_SOBRAS_03.Cells[2,1];
                                                                           STGR_COLUNA_08.Cells[5,VI_LINHAS02] := STGR_SOBRAS_03.Cells[3,1];
                                                                           // PARES
                                                                           VI_CNTCELULAS := 0;
                                                                           IF (STRtoINT(STGR_COLUNA_06.Cells[Vsi_COMB_CQQ_1,VI_LINHAS02]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                                                           IF (STRtoINT(STGR_COLUNA_07.Cells[Vsi_COMB_CQQ_2,VI_LINHAS02]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                                                           IF (STRtoINT(STGR_COLUNA_08.Cells[Vsi_COMB_CQQ_3,VI_LINHAS02]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                                                           IF  NOT (VI_CNTCELULAS =1) THEN
                                                                                CONTINUE;
                                                                           STGR_COLUNA_09.Cells[0,VI_LINHAS02] := INTtoSTR(VI_LINHAS02);
                                                                           STGR_COLUNA_09.Cells[1,VI_LINHAS02] := STGR_COLUNA_05.Cells[0,Vsi_COMB_C6_1]; //'1';
                                                                           STGR_COLUNA_09.Cells[2,VI_LINHAS02] := STGR_COLUNA_06.Cells[Vsi_COMB_CQQ_1,VI_LINHAS02];
                                                                           STGR_COLUNA_09.Cells[3,VI_LINHAS02] := STGR_COLUNA_07.Cells[Vsi_COMB_CQQ_2,VI_LINHAS02];
                                                                           STGR_COLUNA_09.Cells[4,VI_LINHAS02] := STGR_COLUNA_08.Cells[Vsi_COMB_CQQ_3,VI_LINHAS02];
                                                                           //coluna 10
                                                                           STGR_COLUNA_10.Cells[0,VI_LINHAS02] := INTtoSTR(VI_LINHAS02);
                                                                           STGR_COLUNA_10.Cells[1,VI_LINHAS02] := STGR_COLUNA_05.Cells[0,Vsi_COMB_C6_1]; //'1';
                                                                           STGR_COLUNA_10.Cells[2,VI_LINHAS02] := STGR_COLUNA_03e04e05_SOBRAS.Cells[10,Vsi_COMB_C6_1]; //'1';
                                                                           STGR_COLUNA_10.Cells[9,VI_LINHAS02] := STGR_COLUNA_01_com02.Cells[3,STRtoINT(STGR_COLUNA_05.Cells[2,Vsi_COMB_C6_1])];
                                                                           STGR_COLUNA_10.Cells[10,VI_LINHAS02] := STGR_COLUNA_01_com02.Cells[4,STRtoINT(STGR_COLUNA_05.Cells[2,Vsi_COMB_C6_1])];
                                                                           STGR_COLUNA_10.Cells[11,VI_LINHAS02] := STGR_COLUNA_01_com02.Cells[5,STRtoINT(STGR_COLUNA_05.Cells[2,Vsi_COMB_C6_1])];
                                                                           STGR_COLUNA_10.Cells[12,VI_LINHAS02] := STGR_COLUNA_01_com02.Cells[6,STRtoINT(STGR_COLUNA_05.Cells[2,Vsi_COMB_C6_1])];
                                                  // -------------------------------------------
                                                  // --  MONTANDO AS 06 SOBRAS DA COLUNA 09  ---
                                                  // -------------------------------------------
                                                     FOR VI_CONTAR :=1 TO 25 DO
                                                     BEGIN
                                                         STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,2] :='F';
                                                         STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
                                                     END; // FOR VI_CONTAR
                                                     FOR VI_CONTAR :=2 TO 4 DO
                                                     BEGIN
                                                         STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COLUNA_09.Cells[VI_CONTAR,VI_LINHAS02])) ,1]:='V';
                                                     END; // FOR VI_CONTAR1
                                                     FOR VI_CONTAR :=3 TO 5 DO
                                                     BEGIN
                                                         STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COLUNA_06.Cells[VI_CONTAR,VI_LINHAS02])) ,2]:='V';
                                                         STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COLUNA_07.Cells[VI_CONTAR,VI_LINHAS02])) ,2]:='V';
                                                         STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COLUNA_08.Cells[VI_CONTAR,VI_LINHAS02])) ,2]:='V';
                                                     END; // FOR VI_CONTAR1
                                                     VI_CNTCELULAS := 3 ;
                                                     FOR VI_CONTAR :=1 TO 25 DO
                                                     BEGIN
                                                         // SOBRAS
                                                         // OBSERVER NA LINHA ABAIXO A INVERSÃO DA CONDIÇÃO DOS FLAGS NA LINHA 1 E LINHA 2
                                                         IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='F') AND (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,2]='V') THEN
                                                         BEGIN
                                                             STGR_COLUNA_10.Cells[VI_CNTCELULAS, VI_LINHAS02] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                                                             VI_CNTCELULAS := VI_CNTCELULAS + 1;
                                                         END; // IF (STRGR_TODOS_NUMEROS
                                                     END; // FOR VI_CONTAR
                                                          PR_ORDENAR_10 (VI_LINHAS02) ;
                                                                           VI_LINHAS02 := VI_LINHAS02 + 1;
                                                                      END; // FOR Vsi_COMB_CQQ_3
                                                                 END; // FOR Vsi_COMB_CQQ_2
                                                            END; // FOR Vsi_COMB_CQQ_1
                                                       END; // IF ((VI_LINHAS15
                                             END;  //IF (VI_SOMA03 = STRtoINT(ED_SOMAS_C3_INI.Text))
                                        END; // FOR Vsi_COMB_C7_3
                                   END; // FOR Vsi_COMB_C7_2 :=
                              END; // FOR Vsi_COMB_C7_1 :
                    END; // FOR Vsi_COMB_C6_4 :=
               END; // FOR Vsi_COMB_C6_3 :=
             //PR_GRAVAR_DADOS_v2 (VI_LINHAS15);
             // VI_LINHAS02 := 1;
                         STGR_COLUNA_07.RowCount := VI_LINHAS02;
                         STGR_COLUNA_06.RowCount := VI_LINHAS02;
                         STGR_COLUNA_08.RowCount := VI_LINHAS02;
                         STGR_COLUNA_09.RowCount := VI_LINHAS02;
                         STGR_COLUNA_10.RowCount := VI_LINHAS02;
                         STGR_COLUNA_07.Repaint;
                         STGR_COLUNA_06.Repaint;
                         STGR_COLUNA_08.Repaint;
                         STGR_COLUNA_09.Repaint;
                         STGR_COLUNA_10.Repaint;
          END; // FOR Vsi_COMB_C6_2 :=
               LA_GERAR_COMB.Caption := '# ' + INTtoSTR(Vsi_COMB_C6_1)+ ' DE '+  INTtoSTR(STGR_COLUNA_03e04e05_SOBRAS.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(Vsi_COMB_C6_1/(STGR_COLUNA_03e04e05_SOBRAS.RowCount-1)*100))+ ' %  ' + '  -  Quantidade: '+INTtoSTR(VI_LINHAS15-1) +'  das colunas 6/7/8;   gerando um total de: ' + INTtoSTR(STGR_COLUNA_10.RowCount -1) ;
               LA_GERAR_COMB.Repaint;
               PGBR_GERARCOMB0.Position := CEIL(Vsi_COMB_C6_1/(STGR_COLUNA_03e04e05_SOBRAS.RowCount-1)*100);
               PGBR_GERARCOMB0.Repaint;
              STGR_COLUNA_10.RowCount := VI_LINHAS02;
              STGR_COLUNA_09.RowCount := VI_LINHAS02;
              STGR_COLUNA_08.RowCount := VI_LINHAS02;
              STGR_COLUNA_07.RowCount := VI_LINHAS02;
              STGR_COLUNA_06.RowCount := VI_LINHAS02;
               STGR_COLUNA_10.Repaint;
               STGR_COLUNA_09.Repaint;
               STGR_COLUNA_08.Repaint;
               STGR_COLUNA_07.Repaint;
               STGR_COLUNA_06.Repaint;
               STGR_SOBRAS_06.Repaint;
                  {  try
                         STGR_COLUNA_03.FixedRows := 1;
                         STGR_COLUNA_04.FixedRows := 1;
                         //STGR_COLUNA_05.FixedRows := 1;
                    except
                         //
                    end;  }
               IF ((Vsi_COMB_C6_1 MOD 15) = 0) THEN
               BEGIN
                   Self.WindowState := wsMinimized;
                   Self.WindowState :=  wsNormal;
                   SELF.Repaint;
               end; // if
     END; // FOR Vsi_COMB_C6_1 :=
    {{1
     if (VI_LINHAS02 >1 ) THEN
          PR_GRAVAR_DADOS_v2 ();
     TBS_RESULTADO.Visible := TRUE;
     DBG_RESULTADO.Visible := TRUE;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('EXECUTE PROCEDURE Filtro_3g8c_m1_semifinal ;')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
    1 }
     PR_GRAVAR_DADOS_V3 ();

     LA_gFIM_GERAR.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
         {{1
     SELF.PR_SIMULAR_RECUPERANDODADOS();
             1 }
     SELF.PR_SIMULAR_RECUPERANDODADOS2();
                   SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(DISTINCT(DADOS_S)) AS SOMADADOS15 FROM FILTRO_3G8C_M2_DADOS4 ORDER BY SOMADADOS15;')  ;
               SELF.IBQ_COMBINACOES.Open;
               IBQ_COMBINACOES.First;
               VI_CONTAR_COMB1 := IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS15').AsInteger;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_3G8C_M2_DEFINICAO SET HORA_TERMINO ='''+FORMATDATETIME('h:n:s',time())+''', QTD_DADOS= ''' +INTtoSTR(VI_CONTAR_COMB1)+ ''';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
     {
     VDB_CALCULO_TOTAL := 5200300; // 25! / (13! * 12!) DE 25 tiram-se 12 sobram 13
     VDB_CALCULO_TOTAL := VDB_CALCULO_TOTAL +  21772800; // 13! / (3! * 10!)       De 13 tiram-se 3 sobram 10
     VDB_CALCULO_TOTAL := VDB_CALCULO_TOTAL +  80640; // 10! / (8! * 2!)
     LA_rTOTAL_COMB.Caption := FLOATtoSTR(VDB_CALCULO_TOTAL);

    // LA_rTOTAL_COMB.Caption:= INTtoSTR();           CEIL
     LA_rTOT_CALC.Caption  := INTtoSTR( STRtoINT(LA_rTOTAL_COMB.Caption)*2 );
     LA_rLogic_Comp.Caption:= INTtoSTR( STRtoINT(LA_rTOTAL_COMB.Caption)*11 );
 //    LA_rATRIBUICAO_DADOS.Caption  := INTtoSTR( ((STGR_COMB12.RowCount-1)*12) + ((STGR_COMB12.RowCount-1)*8) + ((STGR_COMB12.RowCount-1)*3) + ((STGR_COMB12.RowCount-1)*2));
     LA_rTOT_PROCESSAMENTO.Caption := INTtoSTR( STRtoINT(LA_rATRIBUICAO_DADOS.Caption)+ STRtoINT(LA_rLogic_Comp.Caption)+ STRtoINT(LA_rTOT_CALC.Caption) );
                 }
     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;

            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_3G8C_M2_DEFINICAO SET QTD_DADOS = 25 ;')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_3G8C_M2_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;

     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM FILTRO_3G8C_M2_DADOS4 ORDER BY CONTADOR') ;
     SELF.IBQ_COMBINACOES.Open;
     IBQ_COMBINACOES.First;
     DBG_RESULTADO.Visible := TRUE;

     PA_REMOVEUREPET.Left := 1100;
end;




PROCEDURE T_F_GERADOR_3G8C_M2.PR_SIMULAR_RECUPERANDODADOS();
    PROCEDURE PR_ORDENAR_SIMULACAO_15 ();
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
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_SOBRAS_15.Cells[VI_CONTAR,1])) ,1]:='V';
        END; // FOR VI_CONTAR1
        VI_CNTCELULAS := 1;
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
            BEGIN
                STGR_SOBRAS_15.Cells [VI_CNTCELULAS, 1] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                VI_CNTCELULAS := VI_CNTCELULAS + 1;
            END; // IF (STRGR_TODOS_NUMEROS
        END; // FOR VI_CONTAR
          // ************************
      	// **  Ordena os dados   **
	     // ************************
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
        END; // FOR VI_CONTAR
        // ----> MONTADO E VERIFICANDO TODOS OS 23 DÍGITOS
        FOR VI_CONTAR :=1 TO 10 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_SOBRAS_12.Cells[VI_CONTAR,1])) ,1]:='V';
        END; // FOR VI_CONTAR1
        VI_CNTCELULAS := 1;
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
            BEGIN
                STGR_SOBRAS_12.Cells [VI_CNTCELULAS, 1] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                VI_CNTCELULAS := VI_CNTCELULAS + 1;
            END; // IF (STRGR_TODOS_NUMEROS
        END; // FOR VI_CONTAR
    end; // PROCEDURE ORDENAR_SIMULACAO_15
VAR
     VI_CNTCELULAS : INTEGER;
     VS_QUERY, VC_COMBINACOES_S, VC_COMBINACOES_NS : STRING;
BEGIN
//       SELF.PR_LIMPAR_GRID10();
     LA_RESULTADO_TXT.Caption := 'ORDENAÇÃO';
     SLEEP(1600);
     PGBR_GERARCOMB0.Position :=0;
     PGBR_GERARCOMB1.Position :=0;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM FILTRO_3G8C_M2_DADOS4 ORDER BY CONTADOR') ;
     SELF.IBQ_COMBINACOES.Open;
     IBQ_COMBINACOES.First;
     STGR_COLUNA_03e04e05_SOBRAS.ColWidths[0] := 45;
     WHILE NOT(IBQ_COMBINACOES.Eof) DO
     BEGIN
          STGR_SOBRAS_15.Cells[0,1] := IBQ_COMBINACOES.FieldByName('CONTADOR').AsString;
          STGR_SOBRAS_15.Cells[1,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_S').AsString,1,2);
          STGR_SOBRAS_15.Cells[2,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_S').AsString,4,2);
          STGR_SOBRAS_15.Cells[3,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_S').AsString,7,2);
          STGR_SOBRAS_15.Cells[4,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_S').AsString,10,2);
          STGR_SOBRAS_15.Cells[5,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_S').AsString,13,2);
          STGR_SOBRAS_15.Cells[6,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_S').AsString,16,2);
          STGR_SOBRAS_15.Cells[7,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_S').AsString,19,2);
          STGR_SOBRAS_15.Cells[8,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_S').AsString,22,2);
          STGR_SOBRAS_15.Cells[9,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_S').AsString,25,2);
          STGR_SOBRAS_15.Cells[10,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_S').AsString,28,2);
          STGR_SOBRAS_15.Cells[11,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_S').AsString,31,2);
          STGR_SOBRAS_15.Cells[12,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_S').AsString,34,2);
          STGR_SOBRAS_15.Cells[13,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_S').AsString,37,2);
          STGR_SOBRAS_15.Cells[14,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_S').AsString,40,2);
          STGR_SOBRAS_15.Cells[15,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_S').AsString,43,2);

          STGR_SOBRAS_12.Cells[0,1] := IBQ_COMBINACOES.FieldByName('CONTADOR').AsString;
          STGR_SOBRAS_12.Cells[1,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_NS').AsString,1,2);
          STGR_SOBRAS_12.Cells[2,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_NS').AsString,4,2);
          STGR_SOBRAS_12.Cells[3,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_NS').AsString,7,2);
          STGR_SOBRAS_12.Cells[4,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_NS').AsString,10,2);
          STGR_SOBRAS_12.Cells[5,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_NS').AsString,13,2);
          STGR_SOBRAS_12.Cells[6,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_NS').AsString,16,2);
          STGR_SOBRAS_12.Cells[7,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_NS').AsString,19,2);
          STGR_SOBRAS_12.Cells[8,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_NS').AsString,22,2);
          STGR_SOBRAS_12.Cells[9,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_NS').AsString,25,2);
          STGR_SOBRAS_12.Cells[10,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_NS').AsString,28,2);
          STGR_SOBRAS_12.Cells[11,1] := '00';
          STGR_SOBRAS_12.Cells[12,1] := '00';
          PR_ORDENAR_SIMULACAO_15 ();
          VC_COMBINACOES_S :='';
          VC_COMBINACOES_NS :='';
          FOR VI_CNTCELULAS := 1 TO 15 DO
          BEGIN
               VC_COMBINACOES_S := VC_COMBINACOES_S + RIGHTSTR ('0'+TRIM(STGR_SOBRAS_15.Cells[VI_CNTCELULAS,1]),2) +' ';
          END; // FOR VI_CNTCELULAS

          FOR VI_CNTCELULAS := 1 TO 10 DO
          BEGIN
               VC_COMBINACOES_NS := VC_COMBINACOES_NS + RIGHTSTR ('0'+TRIM(STGR_SOBRAS_12.Cells[VI_CNTCELULAS,1]),2) +' ';
          END; // FOR
          VS_QUERY := 'UPDATE FILTRO_3G8C_M2_DADOS4 SET DADOS_S=' +#39+ VC_COMBINACOES_S   + #39+
                                            ', DADOS_NS=' +#39+ VC_COMBINACOES_NS  + #39+
                      ' WHERE CONTADOR=' + STGR_SOBRAS_15.Cells[0,1] ;
          SELF.IBQ_COMBINACOES2.SQL.Clear;
          SELF.IBQ_COMBINACOES2.SQL.Add(VS_QUERY) ;
          SELF.IBQ_COMBINACOES2.ExecSQL;
          IBQ_COMBINACOES.Next;
     END; // WHILE
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT') ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(DADOS_S) AS SOMADADOS15 FROM FILTRO_3G8C_M2_DADOS4 ORDER BY SOMADADOS15;')  ;
     SELF.IBQ_COMBINACOES.Open;
     VI_CNTCELULAS := SELF.IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS15').AsInteger;
     LA_TOTAL_100REPET.Caption := INTtoSTR(VI_CNTCELULAS);
     LA_TOTAL_100REPET.Repaint;
     LA_rTOTAL_100REPET.Caption := INTtoSTR(VI_CNTCELULAS);
     LA_TOTAL_100REPET.Repaint;


     LA_rQTD_COMB.Caption := INTtoSTR(VI_CNTCELULAS);
     LA_rQTD_COMB.Repaint;

     LA_RESULTADO_TXT.Caption := 'FIM ORDENAR';
     SLEEP(1600);
     PGBR_GERARCOMB0.Position :=100;
     PGBR_GERARCOMB0.Repaint;
     
      Self.Repaint;
      Self.WindowState := wsMinimized;
      Self.WindowState :=  wsNormal;
      Self.Repaint;
     //SHOWMESSAGE('DADOS ORDENADOS - OK');
END;




PROCEDURE T_F_GERADOR_3G8C_M2.PR_SIMULAR_RECUPERANDODADOS2();
VAR
     VI_CNTCELULAS: INTEGER;
BEGIN
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM FILTRO_3G8C_M2_DADOS4 ORDER BY CONTADOR') ;
     SELF.IBQ_COMBINACOES.Open;
     IBQ_COMBINACOES.Last;
     VI_CNTCELULAS := self.IBQ_COMBINACOES.FieldByName('CONTADOR').AsInteger;
     IBQ_COMBINACOES.First;
     LA_rQTD_COMB.Caption := INTtoSTR(VI_CNTCELULAS);
     LA_rQTD_COMB.Repaint;
     // ------------------------
     // REMOVENDO OS REPETIDOS
     // ------------------------
     PGBR_GERARCOMB0.Position :=100;
     LA_RESULTADO_TXT.Caption := '100 REPETIDOS';
     LA_RESULTADO_TXT.Repaint;
     SLEEP(1600);

     PGBR_GERARCOMB0.Position :=0;
     PGBR_GERARCOMB1.Position :=0;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('insert into Filtro_3g8c_m2_dados5  SELECT DISTINCT(FILTRO_3G8C_M2_DADOS4.dados_S), dados_ns from FILTRO_3G8C_M2_DADOS4 ORDER BY dados_S') ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT') ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(DADOS_S) AS SOMADADOS15 FROM FILTRO_3G8C_M2_DADOS5 ORDER BY SOMADADOS15;')  ;
     SELF.IBQ_COMBINACOES.Open;
     VI_CNTCELULAS := SELF.IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS15').AsInteger;
     LA_TOTAL_100REPET.Caption := INTtoSTR(VI_CNTCELULAS);
     LA_TOTAL_100REPET.Repaint;
     LA_rTOTAL_100REPET.Caption := INTtoSTR(VI_CNTCELULAS);
     LA_TOTAL_100REPET.Repaint;
      Self.Repaint;
      Self.WindowState := wsMinimized;
      Self.WindowState :=  wsNormal;
      Self.Repaint;
END;





procedure T_F_GERADOR_3G8C_M2.PageControl_RESULTADOEnter(Sender: TObject);
begin
          //  TBS_RESULTADO.Visible := false;
end;




procedure T_F_GERADOR_3G8C_M2.TabSheet1Enter(Sender: TObject);
begin
           // TBS_RESULTADO.Visible := false;
end;




procedure T_F_GERADOR_3G8C_M2.TRB_C2_INIChange(Sender: TObject);
begin
     IF TRB_C2_INI.Position = 1 THEN
          ED_SOMAS_C2_INI.Text := '37';
     IF TRB_C2_INI.Position = 2 THEN
          ED_SOMAS_C2_INI.Text := '41';
     IF TRB_C2_INI.Position = 3 THEN
          ED_SOMAS_C2_INI.Text := '37';

     IF TRB_C2_INI.Position = 1 THEN
          ED_SOMAS_C2_FINAL.Text := '37';
     IF TRB_C2_INI.Position = 2 THEN
          ED_SOMAS_C2_FINAL.Text := '41';
     IF TRB_C2_INI.Position = 3 THEN
          ED_SOMAS_C2_FINAL.Text := '41';
end;




procedure T_F_GERADOR_3G8C_M2.TRB_C3_INIChange(Sender: TObject);
begin
     IF TRB_C3_INI.Position = 1 THEN
          ED_SOMAS_C3_INI.Text := '37';
     IF TRB_C3_INI.Position = 2 THEN
          ED_SOMAS_C3_INI.Text := '39';
     IF TRB_C3_INI.Position = 3 THEN
          ED_SOMAS_C3_INI.Text := '41';
     IF TRB_C3_INI.Position = 4 THEN
          ED_SOMAS_C3_INI.Text := '37';
     IF TRB_C3_INI.Position = 5 THEN
          ED_SOMAS_C3_INI.Text := '39';
     IF TRB_C3_INI.Position = 6 THEN
          ED_SOMAS_C3_INI.Text := '37';

     IF TRB_C3_INI.Position = 1 THEN
          ED_SOMAS_C3_FINAL.Text := '37';
     IF TRB_C3_INI.Position = 2 THEN
          ED_SOMAS_C3_FINAL.Text := '39';
     IF TRB_C3_INI.Position = 3 THEN
          ED_SOMAS_C3_FINAL.Text := '41';
     IF TRB_C3_INI.Position = 4 THEN
          ED_SOMAS_C3_FINAL.Text := '39';
     IF TRB_C3_INI.Position = 5 THEN
          ED_SOMAS_C3_FINAL.Text := '41';
     IF TRB_C3_INI.Position = 6 THEN
          ED_SOMAS_C3_FINAL.Text := '41';
end;




procedure T_F_GERADOR_3G8C_M2.TRB_C4_INIChange(Sender: TObject);
begin
     IF TRB_C4_INI.Position = 1 THEN
          ED_SOMAS_C4_INI.Text := '37';
     IF TRB_C4_INI.Position = 2 THEN
          ED_SOMAS_C4_INI.Text := '39';
     IF TRB_C4_INI.Position = 3 THEN
          ED_SOMAS_C4_INI.Text := '41';
     IF TRB_C4_INI.Position = 4 THEN
          ED_SOMAS_C4_INI.Text := '37';
     IF TRB_C4_INI.Position = 5 THEN
          ED_SOMAS_C4_INI.Text := '39';
     IF TRB_C4_INI.Position = 6 THEN
          ED_SOMAS_C4_INI.Text := '37';

     IF TRB_C4_INI.Position = 1 THEN
          ED_SOMAS_C4_FINAL.Text := '37';
     IF TRB_C4_INI.Position = 2 THEN
          ED_SOMAS_C4_FINAL.Text := '39';
     IF TRB_C4_INI.Position = 3 THEN
          ED_SOMAS_C4_FINAL.Text := '41';
     IF TRB_C4_INI.Position = 4 THEN
          ED_SOMAS_C4_FINAL.Text := '39';
     IF TRB_C4_INI.Position = 5 THEN
          ED_SOMAS_C4_FINAL.Text := '41';
     IF TRB_C4_INI.Position = 6 THEN
          ED_SOMAS_C4_FINAL.Text := '41';
end;




procedure T_F_GERADOR_3G8C_M2.TRB_C5_INIChange(Sender: TObject);
begin
     IF TRB_C5_INI.Position = 1 THEN
          ED_SOMAS_C5_INI.Text := '37';
     IF TRB_C5_INI.Position = 2 THEN
          ED_SOMAS_C5_INI.Text := '39';
     IF TRB_C5_INI.Position = 3 THEN
          ED_SOMAS_C5_INI.Text := '41';
     IF TRB_C5_INI.Position = 4 THEN
          ED_SOMAS_C5_INI.Text := '37';
     IF TRB_C5_INI.Position = 5 THEN
          ED_SOMAS_C5_INI.Text := '39';
     IF TRB_C5_INI.Position = 6 THEN
          ED_SOMAS_C5_INI.Text := '37';

     IF TRB_C5_INI.Position = 1 THEN
          ED_SOMAS_C5_FINAL.Text := '37';
     IF TRB_C5_INI.Position = 2 THEN
          ED_SOMAS_C5_FINAL.Text := '39';
     IF TRB_C5_INI.Position = 3 THEN
          ED_SOMAS_C5_FINAL.Text := '41';
     IF TRB_C5_INI.Position = 4 THEN
          ED_SOMAS_C5_FINAL.Text := '39';
     IF TRB_C5_INI.Position = 5 THEN
          ED_SOMAS_C5_FINAL.Text := '41';
     IF TRB_C5_INI.Position = 6 THEN
          ED_SOMAS_C5_FINAL.Text := '41';
end;




procedure T_F_GERADOR_3G8C_M2.TRB_G2_INIChange(Sender: TObject);
begin
     IF TRB_G2_INI.Position = 1 THEN
          ED_SOMAS_G2_INI.Text := '154';
     IF TRB_G2_INI.Position = 2 THEN
          ED_SOMAS_G2_INI.Text := '156';
     IF TRB_G2_INI.Position = 3 THEN
          ED_SOMAS_G2_INI.Text := '158';
     IF TRB_G2_INI.Position = 4 THEN
          ED_SOMAS_G2_INI.Text := '154';
     IF TRB_G2_INI.Position = 5 THEN
          ED_SOMAS_G2_INI.Text := '156';
     IF TRB_G2_INI.Position = 6 THEN
          ED_SOMAS_G2_INI.Text := '154';

     IF TRB_G2_INI.Position = 1 THEN
          ED_SOMAS_G2_FINAL.Text := '154';
     IF TRB_G2_INI.Position = 2 THEN
          ED_SOMAS_G2_FINAL.Text := '156';
     IF TRB_G2_INI.Position = 3 THEN
          ED_SOMAS_G2_FINAL.Text := '158';
     IF TRB_G2_INI.Position = 4 THEN
          ED_SOMAS_G2_FINAL.Text := '156';
     IF TRB_G2_INI.Position = 5 THEN
          ED_SOMAS_G2_FINAL.Text := '158';
     IF TRB_G2_INI.Position = 6 THEN
          ED_SOMAS_G2_FINAL.Text := '158';
end;




end.



