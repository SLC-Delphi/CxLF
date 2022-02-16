unit GERADOR_10_EXC_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, Menus, Grids, DB, STRutils,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase;

type
  T_F_GERADOR_10_EXC_2 = class(TForm)
    SCBX_GABARITO: TScrollBox;
    PA_TOPO: TPanel;
    BBT_CLOSE: TImage;
    Label34: TLabel;
    PA_RESULTADO: TPanel;
    STGR_COMB10: TStringGrid;
    STRGR_TODOS_NUMEROS: TStringGrid;
    PA_EXECUTAR_FILTRO: TPanel;
    BBT_PREPARAR: TBitBtn;
    BBT_GERAR_MENU: TBitBtn;
    PANEL_TITULO_SIMULACAO: TPanel;
    LA_TOTAL_100REPET: TLabel;
    Label87: TLabel;
    LA_QTD_COMB: TLabel;
    LA_GERAR_COMB: TLabel;
    LA_TOTAL_COMB: TLabel;
    PGBR_REMREPET: TProgressBar;
    PGBR_GERARCOMB: TProgressBar;
    PGBR_GERARCOMB0: TProgressBar;
    PA_REMOVEUREPET: TPanel;
    Label44: TLabel;
    Label45: TLabel;
    BBT_PA_REMOVEUREPET: TBitBtn;
    PA_PREENCHIMENTO: TPanel;
    BBT_RECOMECAR: TBitBtn;
    BBT_CLICK_TUDO: TButton;
    PA_INICIAL: TPanel;
    Label55: TLabel;
    BT_NOVA_SIMULACAO: TButton;
    BT_REAJUSTAR: TButton;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBQ_COMBINACOES: TIBQuery;
    BBT_BLOCO_NOTAS: TBitBtn;
    MEM_COMBINACOES_TODAS: TMemo;
    BBT_SAIR: TButton;
    PA_EXCLUIDOS: TPanel;
    Label32: TLabel;
    ED_EXC_01: TEdit;
    ED_EXC_02: TEdit;
    ED_EXC_03: TEdit;
    BBT_CARREGAR: TButton;
    STGR_LINHA_A4_C1: TStringGrid;
    STGR_LINHA_A4_C2: TStringGrid;
    Label10: TLabel;
    Label2: TLabel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    LA_LINHA_B4_100REP: TLabel;
    Bevel4: TBevel;
    Bevel1: TBevel;
    LA_LINHA_A4_100REP: TLabel;
    PA_COLUNA1: TPanel;
    Label56: TLabel;
    ED_SOMAS_C1_INI: TEdit;
    TRB_C1_INI: TTrackBar;
    ED_SOMAS_C1_FINAL: TEdit;
    TRB_C1_FINAL: TTrackBar;
    PA_COLUNA2: TPanel;
    Label61: TLabel;
    ED_SOMAS_C2_INI: TEdit;
    ED_SOMAS_C2_FINAL: TEdit;
    TRB_C2_INI: TTrackBar;
    TRB_C2_FINAL: TTrackBar;
    BBT_725: TBitBtn;
    BBT_724: TBitBtn;
    BBT_723: TBitBtn;
    BBT_722: TBitBtn;
    BBT_721: TBitBtn;
    BBT_720: TBitBtn;
    BBT_719: TBitBtn;
    BBT_718: TBitBtn;
    BBT_717: TBitBtn;
    BBT_716: TBitBtn;
    BBT_715: TBitBtn;
    BBT_714: TBitBtn;
    BBT_713: TBitBtn;
    BBT_712: TBitBtn;
    BBT_711: TBitBtn;
    BBT_710: TBitBtn;
    BBT_709: TBitBtn;
    BBT_708: TBitBtn;
    BBT_707: TBitBtn;
    BBT_706: TBitBtn;
    BBT_705: TBitBtn;
    BBT_704: TBitBtn;
    BBT_703: TBitBtn;
    BBT_702: TBitBtn;
    BBT_701: TBitBtn;
    Pa_bASE5: TPanel;
    Bevel5: TBevel;
    PA_GABARITO: TPanel;
    Label29: TLabel;
    Label31: TLabel;
    Label33: TLabel;
    RB_RESULTADOS: TRadioButton;
    RB_GABARITO: TRadioButton;
    RB_RES_GABARITOS: TRadioButton;
    STGR_BASE_5: TStringGrid;
    BBT_CANCELAR: TBitBtn;
    ED_EXC_04: TEdit;
    ED_EXC_05: TEdit;
    PA_OBRIGATORIOS: TPanel;
    Label4: TLabel;
    ED_EXC_OBR_1: TEdit;
    ED_EXC_OBR_2: TEdit;
    ED_EXC_OBR_3: TEdit;
    Label42: TLabel;
    LA_rTOT_PROCESSAMENTO: TLabel;
    LA_rATRIBUICAO_DADOS: TLabel;
    Label43: TLabel;
    Label41: TLabel;
    LA_rLogic_Comp: TLabel;
    LA_rTOT_CALC: TLabel;
    Label39: TLabel;
    LA_rTOTAL_100REPET: TLabel;
    Label50: TLabel;
    LA_rQTD_COMB: TLabel;
    Label47: TLabel;
    LA_rTOTAL_COMB: TLabel;
    Label46: TLabel;
    LA_gFIM_100REPET: TLabel;
    Label49: TLabel;
    LA_gFIM_GERAR: TLabel;
    Label60: TLabel;
    LA_gINICIO_100REPET: TLabel;
    Label58: TLabel;
    Label8: TLabel;
    STGR_BASE_D: TStringGrid;
    STGR_BASE_C: TStringGrid;
    Label11: TLabel;
    STGR_BASE_B: TStringGrid;
    Label12: TLabel;
    STGR_BASE_A: TStringGrid;
    Label13: TLabel;
    LA_LINHA_A3_100REP: TLabel;
    STGR_LINHA_A5_C2: TStringGrid;
    Label5: TLabel;
    STGR_LINHA_A3_C1: TStringGrid;
    Label6: TLabel;
    Label80: TLabel;
    STGR_LINHA_B4_C1: TStringGrid;
    STGR_LINHA_B3_C2: TStringGrid;
    STGR_LINHA_B3_C1: TStringGrid;
    STGR_LINHA_B4_C2: TStringGrid;
    STGR_LINHA_C3_C1: TStringGrid;
    STGR_LINHA_C2_C2: TStringGrid;
    STGR_LINHA_C2_C1: TStringGrid;
    STGR_LINHA_C3_C2: TStringGrid;
    Label1: TLabel;
    LA_LINHA_B3_100REP: TLabel;
    LA_LINHA_C2_100REP: TLabel;
    LA_LINHA_C3_100REP: TLabel;
    Bevel6: TBevel;
    Label3: TLabel;
    STGR_LINHA_D3_C1: TStringGrid;
    STGR_LINHA_D2_C2: TStringGrid;
    LA_LINHA_D3_100REP: TLabel;
    Bevel7: TBevel;
    STGR_LINHA_D2_C1: TStringGrid;
    Label9: TLabel;
    STGR_LINHA_D3_C2: TStringGrid;
    LA_LINHA_D2_100REP: TLabel;
    PA_GERAR: TPanel;
    Panel2: TPanel;
    Label63: TLabel;
    BBT_GERAR: TBitBtn;
    BBT_GERAR_SAIR: TBitBtn;
    CB_MODO_FILTRO: TComboBox;
    STGR_BASE_5F: TStringGrid;
    LA_MODO: TLabel;
    BBT_CANCELAR_SAIR: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBT_CLOSEClick(Sender: TObject);
    procedure BBT_701Click(Sender: TObject);
    procedure BBT_703Click(Sender: TObject);
    procedure BBT_705Click(Sender: TObject);
    procedure BBT_707Click(Sender: TObject);
    procedure BBT_709Click(Sender: TObject);
    procedure BBT_711Click(Sender: TObject);
    procedure BBT_713Click(Sender: TObject);
    procedure BBT_715Click(Sender: TObject);
    procedure BBT_717Click(Sender: TObject);
    procedure BBT_719Click(Sender: TObject);
    procedure BBT_721Click(Sender: TObject);
    procedure BBT_723Click(Sender: TObject);
    procedure BBT_725Click(Sender: TObject);
    procedure BBT_702Click(Sender: TObject);
    procedure BBT_704Click(Sender: TObject);
    procedure BBT_706Click(Sender: TObject);
    procedure BBT_708Click(Sender: TObject);
    procedure BBT_710Click(Sender: TObject);
    procedure BBT_712Click(Sender: TObject);
    procedure BBT_714Click(Sender: TObject);
    procedure BBT_716Click(Sender: TObject);
    procedure BBT_718Click(Sender: TObject);
    procedure BBT_720Click(Sender: TObject);
    procedure BBT_722Click(Sender: TObject);
    procedure BBT_724Click(Sender: TObject);
    procedure BT_NOVA_SIMULACAOClick(Sender: TObject);
    procedure RB_RES_GABARITOSClick(Sender: TObject);
    procedure RB_GABARITOClick(Sender: TObject);
    procedure RB_RESULTADOSClick(Sender: TObject);
    procedure TRB_C1_INIChange(Sender: TObject);
    procedure TRB_C1_FINALChange(Sender: TObject);
    procedure TRB_C2_INIChange(Sender: TObject);
    procedure TRB_C2_FINALChange(Sender: TObject);
    procedure BBT_PREPARARClick(Sender: TObject);
    procedure BBT_RECOMECARClick(Sender: TObject);
    procedure BBT_CLICK_TUDOClick(Sender: TObject);
    procedure BBT_PA_REMOVEUREPETClick(Sender: TObject);
    procedure BBT_BLOCO_NOTASClick(Sender: TObject);
    procedure BT_REAJUSTARClick(Sender: TObject);
    procedure BBT_CARREGARClick(Sender: TObject);
    procedure BBT_CANCELARClick(Sender: TObject);
    procedure BBT_GERARClick(Sender: TObject);
    procedure BBT_GERAR_MENUClick(Sender: TObject);
  private
    { Private declarations }
     PROCEDURE PR_BOTOES_MODELO_12345 (VI_NUMERO: INTEGER);
     PROCEDURE PR_SIMULAR_RECUPERANDODADOS(VC_TIPO: STRING);
     PROCEDURE PR_LIMPAR_GRID10();
  public
    { Public declarations }
  end;

var
  _F_GERADOR_10_EXC_2: T_F_GERADOR_10_EXC_2;

implementation

{$R *.dfm}

procedure T_F_GERADOR_10_EXC_2.FormCreate(Sender: TObject);
VAR
    VI_CONTAR : INTEGER;
begin
     SELF.ClientWidth  := 1399;
     SELF.ClientHeight := 730;
     SELF.Top  := 69;
     SELF.Left := 9;
   //  SELF.Visible := TRUE;
     bbt_close.Left := SELF.ClientWidth-35;
    FOR VI_CONTAR := 1 TO 10 DO
    BEGIN
        STGR_COMB10.Cells [VI_CONTAR,1] := '0';
    END;
    STGR_COMB10.RowCount := 2;
    FOR VI_CONTAR := 1 TO 5 DO
    BEGIN
        STGR_BASE_A.Cells[VI_CONTAR,0] := '0';
        STGR_BASE_B.Cells[VI_CONTAR,0] := '0';
        STGR_BASE_C.Cells[VI_CONTAR,0] := '0';
        STGR_BASE_D.Cells[VI_CONTAR,0] := '0';
    END;
        STGR_BASE_A.Cells[6,0] := '0';
        STGR_BASE_A.Cells[7,0] := '0';        
        STGR_BASE_B.Cells[6,0] := '0';
    STGR_COMB10.Cells[0,0] := 'QTD';
    FOR VI_CONTAR := 1 TO 10 DO
    BEGIN
        STGR_COMB10.Cells [VI_CONTAR,0] := '-'+INTtoSTR(VI_CONTAR)+'-';
    END;
     FOR VI_CONTAR :=1 TO 25 DO
     BEGIN
          STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0] :=INTtoSTR(VI_CONTAR);
          STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
     END; // FOR VI_CONTAR
     PA_REMOVEUREPET.Left := 5000;
     PA_GERAR.Left := 5000;
     PA_GABARITO.Visible := false;
     PA_PREENCHIMENTO.Visible := false;
     SCBX_GABARITO.Visible := false;
     PA_RESULTADO.Visible := false;
     PA_INICIAL.Enabled := TRUE;
     PA_INICIAL.Left := 520;
    PA_EXECUTAR_FILTRO.Enabled := false;
         LA_MODO.Caption := 'MODO   ';    
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_00c_10EXC2_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
end;



procedure T_F_GERADOR_10_EXC_2.FormClose(Sender: TObject;
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



procedure T_F_GERADOR_10_EXC_2.BBT_CLOSEClick(Sender: TObject);
begin
     SELF.Close;
end;


procedure T_F_GERADOR_10_EXC_2.BBT_701Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(1);
    BBT_701.Enabled := FALSE;
end;


procedure T_F_GERADOR_10_EXC_2.BBT_702Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(2);
    BBT_702.Enabled := FALSE;
end;


procedure T_F_GERADOR_10_EXC_2.BBT_703Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(3);
    BBT_703.Enabled := FALSE;
end;


procedure T_F_GERADOR_10_EXC_2.BBT_704Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(4);
    BBT_704.Enabled := FALSE;
end;

procedure T_F_GERADOR_10_EXC_2.BBT_705Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(5);
    BBT_705.Enabled := FALSE;
end;

procedure T_F_GERADOR_10_EXC_2.BBT_706Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(6);
    BBT_706.Enabled := FALSE;
end;

procedure T_F_GERADOR_10_EXC_2.BBT_707Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(7);
    BBT_707.Enabled := FALSE;
end;

procedure T_F_GERADOR_10_EXC_2.BBT_708Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(8);
    BBT_708.Enabled := FALSE;
end;

procedure T_F_GERADOR_10_EXC_2.BBT_710Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(10);
    BBT_710.Enabled := FALSE;
end;

procedure T_F_GERADOR_10_EXC_2.BBT_709Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(9);
    BBT_709.Enabled := FALSE;
end;

procedure T_F_GERADOR_10_EXC_2.BBT_711Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(11);
    BBT_711.Enabled := FALSE;
end;

procedure T_F_GERADOR_10_EXC_2.BBT_712Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(12);
    BBT_712.Enabled := FALSE;
end;

procedure T_F_GERADOR_10_EXC_2.BBT_713Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(13);
    BBT_713.Enabled := FALSE;
end;

procedure T_F_GERADOR_10_EXC_2.BBT_714Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(14);
    BBT_714.Enabled := FALSE;
end;

procedure T_F_GERADOR_10_EXC_2.BBT_715Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(15);
    BBT_715.Enabled := FALSE;
end;

procedure T_F_GERADOR_10_EXC_2.BBT_716Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(16);
    BBT_716.Enabled := FALSE;
end;

procedure T_F_GERADOR_10_EXC_2.BBT_717Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(17);
    BBT_717.Enabled := FALSE;
end;

procedure T_F_GERADOR_10_EXC_2.BBT_718Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(18);
    BBT_718.Enabled := FALSE;
end;

procedure T_F_GERADOR_10_EXC_2.BBT_719Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(19);
    BBT_719.Enabled := FALSE;
end;

procedure T_F_GERADOR_10_EXC_2.BBT_720Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(20);
    BBT_720.Enabled := FALSE;
end;

procedure T_F_GERADOR_10_EXC_2.BBT_721Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(21);
    BBT_721.Enabled := FALSE;
end;

procedure T_F_GERADOR_10_EXC_2.BBT_722Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(22);
    BBT_722.Enabled := FALSE;
end;

procedure T_F_GERADOR_10_EXC_2.BBT_723Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(23);
    BBT_723.Enabled := FALSE;
end;

procedure T_F_GERADOR_10_EXC_2.BBT_724Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(24);
    BBT_724.Enabled := FALSE;
end;

procedure T_F_GERADOR_10_EXC_2.BBT_725Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(25);
    BBT_725.Enabled := FALSE;
end;



PROCEDURE T_F_GERADOR_10_EXC_2.PR_BOTOES_MODELO_12345 (VI_NUMERO: INTEGER);
BEGIN
//
END;



procedure T_F_GERADOR_10_EXC_2.BT_NOVA_SIMULACAOClick(Sender: TObject);
VAR
     VsI_CONTAR : SMALLINT;
begin
     BBT_RECOMECAR.Click;
     STGR_LINHA_A4_C1.RowCount := 2;
     STGR_LINHA_A3_C1.RowCount := 2;
     STGR_LINHA_B4_C1.RowCount := 2;
     STGR_LINHA_B3_C1.RowCount := 2;
     STGR_LINHA_C3_C1.RowCount := 2;
     STGR_LINHA_C2_C1.RowCount := 2;
     STGR_LINHA_A4_C2.RowCount := 2;
     STGR_LINHA_A5_C2.RowCount := 2;
     STGR_LINHA_B3_C2.RowCount := 2;
     STGR_LINHA_B4_C2.RowCount := 2;
     STGR_LINHA_C2_C2.RowCount := 2;
     STGR_LINHA_C3_C2.RowCount := 2;
     ED_EXC_01.Text := '00';
     ED_EXC_02.Text := '00';
     ED_EXC_03.Text := '00';
     ED_EXC_04.Text := '00';
     ED_EXC_05.Text := '00';
     PA_PREENCHIMENTO.Visible := TRUE;
     PA_PREENCHIMENTO.Enabled := TRUE;
     PA_GABARITO.Visible := TRUE;
     SCBX_GABARITO.Visible := TRUE;
     SCBX_GABARITO.Enabled := TRUE;
     PA_RESULTADO.Visible := TRUE;
     PA_RESULTADO.Enabled := TRUE;
     STGR_COMB10.Visible := TRUE;
     STGR_COMB10.Enabled := TRUE;
     RB_RESULTADOS.SetFocus;
     RB_RES_GABARITOS.SetFocus;
     PA_EXECUTAR_FILTRO.Enabled := TRUE;
     BBT_RECOMECAR.Enabled := TRUE;
     BBT_PREPARAR.Enabled := TRUE;
     BBT_GERAR_MENU.Enabled := TRUE;
     BBT_CANCELAR_SAIR.Visible := false;       
     BT_REAJUSTAR.Enabled :=  TRUE;     
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 2198;
end;





procedure T_F_GERADOR_10_EXC_2.RB_RES_GABARITOSClick(Sender: TObject);
begin
     WITH SCBX_GABARITO DO
     BEGIN
           Left := 1   ;
           Top  := 184 ;
           Height := 211 ;
           Visible := TRUE;
       END; // WITH
     STGR_LINHA_A4_C1.Height := 145;
     STGR_LINHA_A3_C1.Height := 145;
     STGR_LINHA_B4_C1.Height := 145;
     STGR_LINHA_B3_C1.Height := 145;
     STGR_LINHA_C3_C1.Height := 145;
     STGR_LINHA_C2_C1.Height := 145;
     STGR_LINHA_A4_C2.Height := 145;
     STGR_LINHA_A5_C2.Height := 145;
     STGR_LINHA_B3_C2.Height := 145;
     STGR_LINHA_B4_C2.Height := 145;
     STGR_LINHA_C2_C2.Height := 145;
     STGR_LINHA_C3_C2.Height := 145;
     PA_RESULTADO.Visible  := TRUE;
end;


procedure T_F_GERADOR_10_EXC_2.RB_GABARITOClick(Sender: TObject);
begin
{
     WITH SCBX_GABARITO DO
     BEGIN
           Left := 1   ;
           Top  := 184 ;
           Height := 520 ;
           Visible := TRUE;
       END; // WITH
     STGR_LINHA_1_C1.Height := 453;
     STGR_LINHA_1_C2.Height := 453;
     STGR_LINHA_2_C1.Height := 453;
     STGR_LINHA_2_C2.Height := 453;
     STGR_LINHA_3_C1.Height := 453;
     STGR_LINHA_3_C2.Height := 453;
     STGR_LINHA_4_C1.Height := 453;
     STGR_LINHA_4_C2.Height := 453;
     STGR_LINHA_5_C1.Height := 453;
     STGR_LINHA_5_C2.Height := 453;
     PA_RESULTADO.Visible  := false;
     }
     WITH SCBX_GABARITO DO
     BEGIN
           Left := 1   ;
           Top  := 184 ;
           Height := 510 ;
           Visible := TRUE;
       END; // WITH
     STGR_LINHA_A4_C1.Height := 445;
     STGR_LINHA_A3_C1.Height := 445;
     STGR_LINHA_B4_C1.Height := 445;
     STGR_LINHA_B3_C1.Height := 445;
     STGR_LINHA_C3_C1.Height := 445;
     STGR_LINHA_C2_C1.Height := 445;
     STGR_LINHA_A4_C2.Height := 445;
     STGR_LINHA_A5_C2.Height := 445;
     STGR_LINHA_B3_C2.Height := 445;
     STGR_LINHA_B4_C2.Height := 445;
     STGR_LINHA_C2_C2.Height := 445;
     STGR_LINHA_C3_C2.Height := 445;
     PA_RESULTADO.Visible  := false;
end;


procedure T_F_GERADOR_10_EXC_2.RB_RESULTADOSClick(Sender: TObject);
begin
     SCBX_GABARITO.Visible := false;
     PA_RESULTADO.Visible  := TRUE;
end;



procedure T_F_GERADOR_10_EXC_2.TRB_C1_INIChange(Sender: TObject);
begin
     IF TRB_C1_INI.Position = 1 THEN
          ED_SOMAS_C1_INI.Text := '151';
     IF TRB_C1_INI.Position = 2 THEN
          ED_SOMAS_C1_INI.Text := '152';
     IF TRB_C1_INI.Position = 3 THEN
          ED_SOMAS_C1_INI.Text := '153';
     IF TRB_C1_INI.Position = 4 THEN
          ED_SOMAS_C1_INI.Text := '154';
     IF TRB_C1_INI.Position = 5 THEN
          ED_SOMAS_C1_INI.Text := '155';
     IF TRB_C1_INI.Position = 6 THEN
          ED_SOMAS_C1_INI.Text := '156';
     IF TRB_C1_INI.Position = 7 THEN
          ED_SOMAS_C1_INI.Text := '157';
     IF TRB_C1_INI.Position = 8 THEN
          ED_SOMAS_C1_INI.Text := '158';
     IF TRB_C1_INI.Position = 9 THEN
          ED_SOMAS_C1_INI.Text := '159';
     IF TRB_C1_INI.Position = 10 THEN
          ED_SOMAS_C1_INI.Text := '160';
     IF TRB_C1_INI.Position = 11 THEN
          ED_SOMAS_C1_INI.Text := '161';
end;


procedure T_F_GERADOR_10_EXC_2.TRB_C1_FINALChange(Sender: TObject);
begin
     IF TRB_C1_FINAL.Position = 1 THEN
          ED_SOMAS_C1_FINAL.Text := '151';
     IF TRB_C1_FINAL.Position = 2 THEN
          ED_SOMAS_C1_FINAL.Text := '152';
     IF TRB_C1_FINAL.Position = 3 THEN
          ED_SOMAS_C1_FINAL.Text := '153';
     IF TRB_C1_FINAL.Position = 4 THEN
          ED_SOMAS_C1_FINAL.Text := '154';
     IF TRB_C1_FINAL.Position = 5 THEN
          ED_SOMAS_C1_FINAL.Text := '155';
     IF TRB_C1_FINAL.Position = 6 THEN
          ED_SOMAS_C1_FINAL.Text := '156';
     IF TRB_C1_FINAL.Position = 7 THEN
          ED_SOMAS_C1_FINAL.Text := '157';
     IF TRB_C1_FINAL.Position = 8 THEN
          ED_SOMAS_C1_FINAL.Text := '158';
     IF TRB_C1_FINAL.Position = 9 THEN
          ED_SOMAS_C1_FINAL.Text := '159';
     IF TRB_C1_FINAL.Position = 10 THEN
          ED_SOMAS_C1_FINAL.Text := '160';
     IF TRB_C1_FINAL.Position = 11 THEN
          ED_SOMAS_C1_FINAL.Text := '161';
end;


procedure T_F_GERADOR_10_EXC_2.TRB_C2_INIChange(Sender: TObject);
begin
     IF TRB_C2_INI.Position = 1 THEN
          ED_SOMAS_C2_INI.Text := '164';
     IF TRB_C2_INI.Position = 2 THEN
          ED_SOMAS_C2_INI.Text := '165';
     IF TRB_C2_INI.Position = 3 THEN
          ED_SOMAS_C2_INI.Text := '166';
     IF TRB_C2_INI.Position = 4 THEN
          ED_SOMAS_C2_INI.Text := '167';
     IF TRB_C2_INI.Position = 5 THEN
          ED_SOMAS_C2_INI.Text := '168';
     IF TRB_C2_INI.Position = 6 THEN
          ED_SOMAS_C2_INI.Text := '169';
     IF TRB_C2_INI.Position = 7 THEN
          ED_SOMAS_C2_INI.Text := '170';
     IF TRB_C2_INI.Position = 8 THEN
          ED_SOMAS_C2_INI.Text := '171';
     IF TRB_C2_INI.Position = 9 THEN
          ED_SOMAS_C2_INI.Text := '172';
     IF TRB_C2_INI.Position = 10 THEN
          ED_SOMAS_C2_INI.Text := '173';
     IF TRB_C2_INI.Position = 11 THEN
          ED_SOMAS_C2_INI.Text := '174';
END;



procedure T_F_GERADOR_10_EXC_2.TRB_C2_FINALChange(Sender: TObject);
begin
     IF TRB_C2_FINAL.Position = 1 THEN
          ED_SOMAS_C2_FINAL.Text := '164';
     IF TRB_C2_FINAL.Position = 2 THEN
          ED_SOMAS_C2_FINAL.Text := '165';
     IF TRB_C2_FINAL.Position = 3 THEN
          ED_SOMAS_C2_FINAL.Text := '166';
     IF TRB_C2_FINAL.Position = 4 THEN
          ED_SOMAS_C2_FINAL.Text := '167';
     IF TRB_C2_FINAL.Position = 5 THEN
          ED_SOMAS_C2_FINAL.Text := '168';
     IF TRB_C2_FINAL.Position = 6 THEN
          ED_SOMAS_C2_FINAL.Text := '169';
     IF TRB_C2_FINAL.Position = 7 THEN
          ED_SOMAS_C2_FINAL.Text := '170';
     IF TRB_C2_FINAL.Position = 8 THEN
          ED_SOMAS_C2_FINAL.Text := '171';
     IF TRB_C2_FINAL.Position = 9 THEN
          ED_SOMAS_C2_FINAL.Text := '172';
     IF TRB_C2_FINAL.Position = 10 THEN
          ED_SOMAS_C2_FINAL.Text := '173';
     IF TRB_C2_FINAL.Position = 11 THEN
          ED_SOMAS_C2_FINAL.Text := '174';
end;


procedure T_F_GERADOR_10_EXC_2.BBT_RECOMECARClick(Sender: TObject);
VAR
    VI_CONTAR : INTEGER;
begin
    BBT_701.Enabled := TRUE;
    BBT_702.Enabled := TRUE;
    BBT_703.Enabled := TRUE;
    BBT_704.Enabled := TRUE;
    BBT_705.Enabled := TRUE;
    BBT_706.Enabled := TRUE;
    BBT_707.Enabled := TRUE;
    BBT_708.Enabled := TRUE;
    BBT_709.Enabled := TRUE;
    BBT_710.Enabled := TRUE;
    BBT_711.Enabled := TRUE;
    BBT_712.Enabled := TRUE;
    BBT_713.Enabled := TRUE;
    BBT_714.Enabled := TRUE;
    BBT_715.Enabled := TRUE;
    BBT_716.Enabled := TRUE;
    BBT_717.Enabled := TRUE;
    BBT_718.Enabled := TRUE;
    BBT_719.Enabled := TRUE;
    BBT_720.Enabled := TRUE;
    BBT_721.Enabled := TRUE;
    BBT_722.Enabled := TRUE;
    BBT_723.Enabled := TRUE;
    BBT_724.Enabled := TRUE;
    BBT_725.Enabled := TRUE;
    FOR VI_CONTAR := 1 TO 10 DO
    BEGIN
        STGR_COMB10.Cells [VI_CONTAR,1] := '0';
    END;
    STGR_COMB10.RowCount := 2;
    FOR VI_CONTAR := 1 TO 5 DO
    BEGIN
        STGR_BASE_A.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_B.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_C.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_D.Cells [VI_CONTAR,0] := '0';
    END;
    // ======================================================
    // ||||==============================================||||
    // |||| 	CARREGANDO OS DADOS DA SIMULAÇÃO ATIVA    ||||
    // ||||==============================================||||
    // ======================================================
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
     IBQ_COMBINACOES.SQL.Add('SELECT FIRST 10 * FROM A_RESULTADO_15_DADOS');
     IBQ_COMBINACOES.Open;
     IBQ_COMBINACOES.First;    
end;




procedure T_F_GERADOR_10_EXC_2.BBT_CLICK_TUDOClick(Sender: TObject);
begin
     BBT_701.Click;
     BBT_702.Click;
     BBT_713.Click;
     BBT_724.Click;
     BBT_725.Click;

     BBT_703.Click;
     BBT_705.Click;
     BBT_711.Click;
     BBT_722.Click;
     BBT_723.Click;

     BBT_704.Click;
     BBT_706.Click;
     BBT_714.Click;
     BBT_720.Click;
     BBT_721.Click;

     BBT_707.Click;
     BBT_710.Click;
     BBT_712.Click;
     BBT_717.Click;
     BBT_718.Click;
end;



procedure T_F_GERADOR_10_EXC_2.BBT_PREPARARClick(Sender: TObject);
var
     VI_CONTADOR, VI_CONTAR, VI_LINHAS2, VI_COMBINACOES1, VI_COMBINACOES2: integer;
     VI_COMBINACOES3, VI_COMBINACOES4, VI_QTDde1, VI_QTDde2, VI_QTDde3 : SMALLINT;
     VS_NUMEROSPRINCIPAIS: STRING;
begin
      FOR VI_CONTAR := 1 TO 10 DO
     BEGIN
        STGR_COMB10.Cells [VI_CONTAR,0] := '-'+INTtoSTR(VI_CONTAR)+'-';
        STGR_COMB10.Cells [VI_CONTAR+2,1] := '00';
     END;
     LA_MODO.Caption := 'MODO   ';     
     STGR_COMB10.RowCount := 2;
     STGR_COMB10.Repaint;
     PGBR_GERARCOMB.Position := 0;
     PGBR_GERARCOMB0.Position :=0;
     PGBR_GERARCOMB.Repaint;
     PGBR_GERARCOMB0.Repaint;
     PGBR_REMREPET.Position := 00;
     PGBR_REMREPET.Repaint;
     STGR_LINHA_A4_C1.RowCount := 2;
     STGR_LINHA_A3_C1.RowCount := 2;
     STGR_LINHA_B4_C1.RowCount := 2;
     STGR_LINHA_B3_C1.RowCount := 2;
     STGR_LINHA_C3_C1.RowCount := 2;
     STGR_LINHA_C2_C1.RowCount := 2;
     STGR_LINHA_A4_C2.Repaint;
     STGR_LINHA_A5_C2.Repaint;
     STGR_LINHA_B3_C2.Repaint;
     STGR_LINHA_B4_C2.Repaint;
     STGR_LINHA_C2_C2.Repaint;
     STGR_LINHA_C3_C2.Repaint;
     LA_LINHA_A4_100REP.Caption := '00';
     LA_LINHA_A3_100REP.Caption := '00';
     LA_LINHA_B4_100REP.Caption := '00';
     LA_LINHA_B3_100REP.Caption := '00';
     LA_LINHA_C3_100REP.Caption := '00';
     LA_LINHA_C2_100REP.Caption := '00';
     LA_TOTAL_COMB.Caption := 'GERAR:               ';
     LA_GERAR_COMB.Caption := '#:                   ';
     LA_QTD_COMB.Caption := '000000';
     LA_TOTAL_100REPET.Caption := '000000';
     LA_TOTAL_100REPET.Repaint;
     LA_TOTAL_COMB.Repaint;
     LA_GERAR_COMB.Repaint;
     LA_QTD_COMB.Repaint;

     IF (STRtoINT(ED_SOMAS_C1_INI.Text) > STRtoINT(ED_SOMAS_C1_FINAL.Text ) ) THEN
     BEGIN
          SHOWMESSAGE ('O NÚMERO INICIAL TEM DE SER MENOR QUE O FINAL.');
          ED_SOMAS_C1_INI.SetFocus;
          EXIT;
     END; // IF
     IF (STRtoINT(ED_SOMAS_C2_INI.Text) > STRtoINT(ED_SOMAS_C2_FINAL.Text ) ) THEN
     BEGIN
          SHOWMESSAGE ('O NÚMERO INICIAL TEM DE SER MENOR QUE O FINAL.');
          ED_SOMAS_C2_INI.SetFocus;
          EXIT;
     END; // IF
        // ***************************
        // **  CONFERINDO OS EXCLUIDOS **
        // ***************************
     if (STRtoINT(ED_EXC_OBR_1.Text) >0) or (STRtoINT(ED_EXC_OBR_2.Text) >0) or (STRtoINT(ED_EXC_OBR_3.Text) >0) then
     begin
          IF (STRtoINT(ED_EXC_OBR_1.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
            (STRtoINT(ED_EXC_OBR_1.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
            (STRtoINT(ED_EXC_OBR_1.Text) = STRtoINT(ED_EXC_03.Text ) ) or
            (STRtoINT(ED_EXC_OBR_1.Text) = STRtoINT(ED_EXC_04.Text ) ) OR
            (STRtoINT(ED_EXC_OBR_1.Text) = STRtoINT(ED_EXC_05.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O NÚMERO EXCLUÍDO OBRIGARÓRIO TEM DE SER DIFERENTE DOS NÃO EXCLUÍDOS.');
                 ED_EXC_OBR_1.SetFocus;
                 EXIT;
          END; // IF
          IF (STRtoINT(ED_EXC_OBR_2.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
            (STRtoINT(ED_EXC_OBR_2.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
            (STRtoINT(ED_EXC_OBR_2.Text) = STRtoINT(ED_EXC_03.Text ) ) or
            (STRtoINT(ED_EXC_OBR_2.Text) = STRtoINT(ED_EXC_04.Text ) ) OR
            (STRtoINT(ED_EXC_OBR_2.Text) = STRtoINT(ED_EXC_05.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O NÚMERO EXCLUÍDO OBRIGARÓRIO TEM DE SER DIFERENTE DOS NÃO EXCLUÍDOS.');
                 ED_EXC_OBR_2.SetFocus;
                 EXIT;
          END; // IF
          IF (STRtoINT(ED_EXC_OBR_3.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
            (STRtoINT(ED_EXC_OBR_3.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
            (STRtoINT(ED_EXC_OBR_3.Text) = STRtoINT(ED_EXC_03.Text ) ) or
            (STRtoINT(ED_EXC_OBR_3.Text) = STRtoINT(ED_EXC_04.Text ) ) OR
            (STRtoINT(ED_EXC_OBR_3.Text) = STRtoINT(ED_EXC_05.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O NÚMERO EXCLUÍDO OBRIGARÓRIO TEM DE SER DIFERENTE DOS NÃO EXCLUÍDOS.');
                 ED_EXC_OBR_3.SetFocus;
                 EXIT;
          END; // IF
     end; // if


     STGR_COMB10.RowCount := 2;
    // ======================================================
    // ||||==============================================||||
    // |||| 	Análises Combinatórias e suas sobras     ||||
    // ||||==============================================||||
    // ======================================================
        // ******************
        // **  PAR A - 4X4 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 5 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 8 DO
          BEGIN
               FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 8 DO
               BEGIN
                    FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 8 DO
                    BEGIN
                         STGR_LINHA_A4_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_A4_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_A4_C1.Cells [1,VI_LINHAS2]:= 'V';
                         STGR_LINHA_A4_C2.Cells [1,VI_LINHAS2]:= 'V';
                         STGR_LINHA_A4_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_A.Cells[VI_COMBINACOES1,0];
                         STGR_LINHA_A4_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_A.Cells[VI_COMBINACOES2,0];
                         STGR_LINHA_A4_C1.Cells [4,VI_LINHAS2]:= STGR_BASE_A.Cells[VI_COMBINACOES3,0];
                         STGR_LINHA_A4_C1.Cells [5,VI_LINHAS2]:= STGR_BASE_A.Cells[VI_COMBINACOES4,0];
                              // -----------------------------------
                              // -- CAPTURAR OS NÚMERO QUE FALTAM --
                              // -----------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_A.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_A.Cells[VI_COMBINACOES2,0]+ '-' +
                              STGR_BASE_A.Cells[VI_COMBINACOES3,0]+ '-' +
                              STGR_BASE_A.Cells[VI_COMBINACOES4,0];

                                   VI_CONTAR :=1;
                                   FOR VI_CONTADOR := 1 TO 8 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_A.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                                  STGR_LINHA_A4_C2.Cells[VI_CONTAR,VI_LINHAS2] := STGR_BASE_A.Cells[VI_CONTADOR,0];
                                        END;
                                   END; // FOR VI_CONTADOR
                              // ---------------------------------------
                              VI_LINHAS2 := VI_LINHAS2 +1;
                              STGR_LINHA_A4_C1.RowCount := VI_LINHAS2;
                              STGR_LINHA_A4_C2.RowCount := VI_LINHAS2;
                    END; // FOR VI_COMBINACOES4
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_A4_C1.Repaint;
     STGR_LINHA_A4_C2.Repaint;
               // -------------------------------
               // --  Marcando os excluídos   --
               // -------------------------------
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_A4_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_A4_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                   (STRtoINT(STGR_LINHA_A4_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                   (STRtoINT(STGR_LINHA_A4_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                   (STRtoINT(STGR_LINHA_A4_C1.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                   THEN
               BEGIN
                   STGR_LINHA_A4_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_A4_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_A4_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                   (STRtoINT(STGR_LINHA_A4_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                   (STRtoINT(STGR_LINHA_A4_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                   (STRtoINT(STGR_LINHA_A4_C1.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                   THEN
               BEGIN
                   STGR_LINHA_A4_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_A4_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_A4_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                   (STRtoINT(STGR_LINHA_A4_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                   (STRtoINT(STGR_LINHA_A4_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                   (STRtoINT(STGR_LINHA_A4_C1.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                   THEN
               BEGIN
                   STGR_LINHA_A4_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_A4_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_A4_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) OR
                   (STRtoINT(STGR_LINHA_A4_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) OR
                   (STRtoINT(STGR_LINHA_A4_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) OR
                   (STRtoINT(STGR_LINHA_A4_C1.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                   THEN
               BEGIN
                   STGR_LINHA_A4_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_A4_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_A4_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                   (STRtoINT(STGR_LINHA_A4_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                   (STRtoINT(STGR_LINHA_A4_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                   (STRtoINT(STGR_LINHA_A4_C1.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                   THEN
               BEGIN
                   STGR_LINHA_A4_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_A4_C1.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_A4_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_LINHA_A4_100REP.Caption := INTtoSTR(VI_CONTAR);


        // ******************
        // **  PAR A - 3X5 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 6 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 8 DO
          BEGIN
               FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 8 DO
               BEGIN
                    STGR_LINHA_A3_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_A5_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_A3_C1.Cells [1,VI_LINHAS2]:= 'V';
                    STGR_LINHA_A5_C2.Cells [1,VI_LINHAS2]:= 'V';
                    STGR_LINHA_A3_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_A.Cells[VI_COMBINACOES1,0];
                    STGR_LINHA_A3_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_A.Cells[VI_COMBINACOES2,0];
                    STGR_LINHA_A3_C1.Cells [4,VI_LINHAS2]:= STGR_BASE_A.Cells[VI_COMBINACOES3,0];
                         // -----------------------------------
                         // -- CAPTURAR OS NÚMERO QUE FALTAM --
                         // -----------------------------------
                    VS_NUMEROSPRINCIPAIS:= STGR_BASE_A.Cells[VI_COMBINACOES1,0] + '-' +
                         STGR_BASE_A.Cells[VI_COMBINACOES2,0]+ '-' +
                         STGR_BASE_A.Cells[VI_COMBINACOES3,0];

                              VI_CONTAR :=1;
                              FOR VI_CONTADOR := 1 TO 8 DO
                              BEGIN
                                   IF (POS(STGR_BASE_A.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                   BEGIN
                                        VI_CONTAR := VI_CONTAR +1;
                                             STGR_LINHA_A5_C2.Cells[VI_CONTAR,VI_LINHAS2] := STGR_BASE_A.Cells[VI_CONTADOR,0];
                                   END;
                              END; // FOR VI_CONTADOR
                         // ---------------------------------------
                         VI_LINHAS2 := VI_LINHAS2 +1;
                         STGR_LINHA_A3_C1.RowCount := VI_LINHAS2;
                         STGR_LINHA_A5_C2.RowCount := VI_LINHAS2;
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_A3_C1.Repaint;
     STGR_LINHA_A5_C2.Repaint;
               // -------------------------------
               // --  Marcando os excluídos   --
               // -------------------------------
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_A3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_A3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                   (STRtoINT(STGR_LINHA_A3_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                   (STRtoINT(STGR_LINHA_A3_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) 
                   THEN
               BEGIN
                   STGR_LINHA_A3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_A3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_A3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                   (STRtoINT(STGR_LINHA_A3_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                   (STRtoINT(STGR_LINHA_A3_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) 
                   THEN
               BEGIN
                   STGR_LINHA_A3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_A3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_A3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                   (STRtoINT(STGR_LINHA_A3_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                   (STRtoINT(STGR_LINHA_A3_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) 
                   THEN
               BEGIN
                   STGR_LINHA_A3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_A3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_A3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) OR
                   (STRtoINT(STGR_LINHA_A3_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) OR
                   (STRtoINT(STGR_LINHA_A3_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                   THEN
               BEGIN
                   STGR_LINHA_A3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_A3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_A3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                   (STRtoINT(STGR_LINHA_A3_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                   (STRtoINT(STGR_LINHA_A3_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                   THEN
               BEGIN
                   STGR_LINHA_A3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_A3_C1.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_A3_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_LINHA_A3_100REP.Caption := INTtoSTR(VI_CONTAR);


        // ******************
        // **  PAR B - 4X3 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 4 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 7 DO
          BEGIN
               FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 7 DO
               BEGIN
                    FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 7 DO
                    BEGIN
                         STGR_LINHA_B4_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_B3_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_B4_C1.Cells [1,VI_LINHAS2]:= 'V';
                         STGR_LINHA_B3_C2.Cells [1,VI_LINHAS2]:= 'V';
                         STGR_LINHA_B4_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_B.Cells[VI_COMBINACOES1,0];
                         STGR_LINHA_B4_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_B.Cells[VI_COMBINACOES2,0];
                         STGR_LINHA_B4_C1.Cells [4,VI_LINHAS2]:= STGR_BASE_B.Cells[VI_COMBINACOES3,0];
                         STGR_LINHA_B4_C1.Cells [5,VI_LINHAS2]:= STGR_BASE_B.Cells[VI_COMBINACOES4,0];
                              // -----------------------------------
                              // -- CAPTURAR OS NÚMERO QUE FALTAM --
                              // -----------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_B.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_B.Cells[VI_COMBINACOES2,0]+ '-' +
                              STGR_BASE_B.Cells[VI_COMBINACOES3,0]+ '-' +
                              STGR_BASE_B.Cells[VI_COMBINACOES4,0];

                                   VI_CONTAR :=1;
                                   FOR VI_CONTADOR := 1 TO 7 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_B.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                                  STGR_LINHA_B3_C2.Cells[VI_CONTAR,VI_LINHAS2] := STGR_BASE_B.Cells[VI_CONTADOR,0];
                                        END;
                                   END; // FOR VI_CONTADOR
                              // ---------------------------------------
                              VI_LINHAS2 := VI_LINHAS2 +1;
                              STGR_LINHA_B4_C1.RowCount := VI_LINHAS2;
                              STGR_LINHA_B3_C2.RowCount := VI_LINHAS2;
                    END; // FOR VI_COMBINACOES4
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_B4_C1.Repaint;
     STGR_LINHA_B3_C2.Repaint;
               // -------------------------------
               // --  Marcando os excluídos   --
               // -------------------------------
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_B4_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_B4_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                   (STRtoINT(STGR_LINHA_B4_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                   (STRtoINT(STGR_LINHA_B4_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                   (STRtoINT(STGR_LINHA_B4_C1.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                   THEN
               BEGIN
                   STGR_LINHA_B4_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_B4_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_B4_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                   (STRtoINT(STGR_LINHA_B4_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                   (STRtoINT(STGR_LINHA_B4_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))  OR
                   (STRtoINT(STGR_LINHA_B4_C1.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                   THEN
               BEGIN
                   STGR_LINHA_B4_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_B4_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_B4_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                   (STRtoINT(STGR_LINHA_B4_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                   (STRtoINT(STGR_LINHA_B4_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))  OR
                   (STRtoINT(STGR_LINHA_B4_C1.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                   THEN
               BEGIN
                   STGR_LINHA_B4_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_B4_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_B4_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) OR
                   (STRtoINT(STGR_LINHA_B4_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) OR
                   (STRtoINT(STGR_LINHA_B4_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))  OR
                   (STRtoINT(STGR_LINHA_B4_C1.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                   THEN
               BEGIN
                   STGR_LINHA_B4_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_B4_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_B4_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                   (STRtoINT(STGR_LINHA_B4_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                   (STRtoINT(STGR_LINHA_B4_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                   (STRtoINT(STGR_LINHA_B4_C1.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                   THEN
               BEGIN
                   STGR_LINHA_B4_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_B4_C1.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_B4_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_LINHA_B4_100REP.Caption := INTtoSTR(VI_CONTAR);



        // ******************
        // **  PAR B - 3X4 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 5 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 7 DO
          BEGIN
               FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 7 DO
               BEGIN
                         STGR_LINHA_B3_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_B4_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_B3_C1.Cells [1,VI_LINHAS2]:= 'V';
                         STGR_LINHA_B4_C2.Cells [1,VI_LINHAS2]:= 'V';
                         STGR_LINHA_B3_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_B.Cells[VI_COMBINACOES1,0];
                         STGR_LINHA_B3_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_B.Cells[VI_COMBINACOES2,0];
                         STGR_LINHA_B3_C1.Cells [4,VI_LINHAS2]:= STGR_BASE_B.Cells[VI_COMBINACOES3,0];
                              // -----------------------------------
                              // -- CAPTURAR OS NÚMERO QUE FALTAM --
                              // -----------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_B.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_B.Cells[VI_COMBINACOES2,0]+ '-' +
                              STGR_BASE_B.Cells[VI_COMBINACOES3,0];

                                   VI_CONTAR :=1;
                                   FOR VI_CONTADOR := 1 TO 7 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_B.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                                  STGR_LINHA_B4_C2.Cells[VI_CONTAR,VI_LINHAS2] := STGR_BASE_B.Cells[VI_CONTADOR,0];
                                        END;
                                   END; // FOR VI_CONTADOR
                              // ---------------------------------------
                              VI_LINHAS2 := VI_LINHAS2 +1;
                              STGR_LINHA_B3_C1.RowCount := VI_LINHAS2;
                              STGR_LINHA_B4_C2.RowCount := VI_LINHAS2;
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_B3_C1.Repaint;
     STGR_LINHA_B4_C2.Repaint;
               // -------------------------------
               // --  Marcando os excluídos   --
               // -------------------------------
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_B3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_B3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                   (STRtoINT(STGR_LINHA_B3_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                   (STRtoINT(STGR_LINHA_B3_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) 
                   THEN
               BEGIN
                   STGR_LINHA_B3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_B3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_B3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                   (STRtoINT(STGR_LINHA_B3_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                   (STRtoINT(STGR_LINHA_B3_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                   THEN
               BEGIN
                   STGR_LINHA_B3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_B3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_B3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                   (STRtoINT(STGR_LINHA_B3_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                   (STRtoINT(STGR_LINHA_B3_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                   THEN
               BEGIN
                   STGR_LINHA_B3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_B3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_B3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) OR
                   (STRtoINT(STGR_LINHA_B3_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) OR
                   (STRtoINT(STGR_LINHA_B3_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) 
                   THEN
               BEGIN
                   STGR_LINHA_B3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_B3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_B3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                   (STRtoINT(STGR_LINHA_B3_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                   (STRtoINT(STGR_LINHA_B3_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) 
                   THEN
               BEGIN
                   STGR_LINHA_B3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_B3_C1.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_B3_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_LINHA_B3_100REP.Caption := INTtoSTR(VI_CONTAR);     


        // ******************
        // **  PAR C - 3X2 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 3 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 5 DO
          BEGIN
               FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 5 DO
               BEGIN
                    STGR_LINHA_C3_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_C2_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_C3_C1.Cells [1,VI_LINHAS2]:= 'V';
                    STGR_LINHA_C2_C2.Cells [1,VI_LINHAS2]:= 'V';
                    STGR_LINHA_C3_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_C.Cells[VI_COMBINACOES1,0];
                    STGR_LINHA_C3_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_C.Cells[VI_COMBINACOES2,0];
                    STGR_LINHA_C3_C1.Cells [4,VI_LINHAS2]:= STGR_BASE_C.Cells[VI_COMBINACOES3,0];
                         // -----------------------------------
                         // -- CAPTURAR OS NÚMERO QUE FALTAM --
                         // -----------------------------------
                    VS_NUMEROSPRINCIPAIS:= STGR_BASE_C.Cells[VI_COMBINACOES1,0] + '-' +
                         STGR_BASE_C.Cells[VI_COMBINACOES2,0]+ '-' +
                         STGR_BASE_C.Cells[VI_COMBINACOES3,0];

                              VI_CONTAR :=1;
                              FOR VI_CONTADOR := 1 TO 5 DO
                              BEGIN
                                   IF (POS(STGR_BASE_C.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                   BEGIN
                                        VI_CONTAR := VI_CONTAR +1;
                                             STGR_LINHA_C2_C2.Cells[VI_CONTAR,VI_LINHAS2] := STGR_BASE_C.Cells[VI_CONTADOR,0];
                                   END;
                              END; // FOR VI_CONTADOR
                         // ---------------------------------------
                         VI_LINHAS2 := VI_LINHAS2 +1;
                         STGR_LINHA_C3_C1.RowCount := VI_LINHAS2;
                         STGR_LINHA_C2_C2.RowCount := VI_LINHAS2;
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_C3_C1.Repaint;
     STGR_LINHA_C2_C2.Repaint;
               // -------------------------------
               // --  Marcando os excluídos   --
               // -------------------------------
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_C3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_C3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                   (STRtoINT(STGR_LINHA_C3_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                   (STRtoINT(STGR_LINHA_C3_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                   THEN
               BEGIN
                   STGR_LINHA_C3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_C3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_C3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                   (STRtoINT(STGR_LINHA_C3_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                   (STRtoINT(STGR_LINHA_C3_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) 
                   THEN
               BEGIN
                   STGR_LINHA_C3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_C3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_C3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                   (STRtoINT(STGR_LINHA_C3_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                   (STRtoINT(STGR_LINHA_C3_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) 
                   THEN
               BEGIN
                   STGR_LINHA_C3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_C3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_C3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) OR
                   (STRtoINT(STGR_LINHA_C3_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) OR
                   (STRtoINT(STGR_LINHA_C3_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                   THEN
               BEGIN
                   STGR_LINHA_C3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_C3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_C3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                   (STRtoINT(STGR_LINHA_C3_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                   (STRtoINT(STGR_LINHA_C3_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                   THEN
               BEGIN
                   STGR_LINHA_C3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_C3_C1.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_C3_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_LINHA_C3_100REP.Caption := INTtoSTR(VI_CONTAR);



        // ******************
        // **  PAR C - 2X3 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 4 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 5 DO
          BEGIN
                    STGR_LINHA_C2_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_C3_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_C2_C1.Cells [1,VI_LINHAS2]:= 'V';
                    STGR_LINHA_C3_C2.Cells [1,VI_LINHAS2]:= 'V';
                    STGR_LINHA_C2_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_C.Cells[VI_COMBINACOES1,0];
                    STGR_LINHA_C2_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_C.Cells[VI_COMBINACOES2,0];
                         // -----------------------------------
                         // -- CAPTURAR OS NÚMERO QUE FALTAM --
                         // -----------------------------------
                    VS_NUMEROSPRINCIPAIS:= STGR_BASE_C.Cells[VI_COMBINACOES1,0] + '-' +
                         STGR_BASE_C.Cells[VI_COMBINACOES2,0]+ '-' +
                         STGR_BASE_C.Cells[VI_COMBINACOES3,0];

                              VI_CONTAR :=1;
                              FOR VI_CONTADOR := 1 TO 5 DO
                              BEGIN
                                   IF (POS(STGR_BASE_C.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                   BEGIN
                                        VI_CONTAR := VI_CONTAR +1;
                                             STGR_LINHA_C3_C2.Cells[VI_CONTAR,VI_LINHAS2] := STGR_BASE_C.Cells[VI_CONTADOR,0];
                                   END;
                              END; // FOR VI_CONTADOR
                         // ---------------------------------------
                         VI_LINHAS2 := VI_LINHAS2 +1;
                         STGR_LINHA_C2_C1.RowCount := VI_LINHAS2;
                         STGR_LINHA_C3_C2.RowCount := VI_LINHAS2;
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_C2_C1.Repaint;
     STGR_LINHA_C3_C2.Repaint;
               // -------------------------------
               // --  Marcando os excluídos   --
               // -------------------------------
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_C2_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_C2_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                   (STRtoINT(STGR_LINHA_C2_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) 
                   THEN
               BEGIN
                   STGR_LINHA_C2_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_C2_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_C2_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                   (STRtoINT(STGR_LINHA_C2_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                   THEN
               BEGIN
                   STGR_LINHA_C2_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_C2_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_C2_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                   (STRtoINT(STGR_LINHA_C2_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) 
                   THEN
               BEGIN
                   STGR_LINHA_C2_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_C2_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_C2_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) OR
                   (STRtoINT(STGR_LINHA_C2_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) 
                   THEN
               BEGIN
                   STGR_LINHA_C2_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_C2_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_C2_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                   (STRtoINT(STGR_LINHA_C2_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                   THEN
               BEGIN
                   STGR_LINHA_C2_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_C2_C1.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_C2_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_LINHA_C2_100REP.Caption := INTtoSTR(VI_CONTAR);



        // ******************
        // **  PAR D - 3X2 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 3 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 5 DO
          BEGIN
               FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 5 DO
               BEGIN
                    STGR_LINHA_D3_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_D2_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_D3_C1.Cells [1,VI_LINHAS2]:= 'V';
                    STGR_LINHA_D2_C2.Cells [1,VI_LINHAS2]:= 'V';
                    STGR_LINHA_D3_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_D.Cells[VI_COMBINACOES1,0];
                    STGR_LINHA_D3_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_D.Cells[VI_COMBINACOES2,0];
                    STGR_LINHA_D3_C1.Cells [4,VI_LINHAS2]:= STGR_BASE_D.Cells[VI_COMBINACOES3,0];
                         // -----------------------------------
                         // -- CAPTURAR OS NÚMERO QUE FALTAM --
                         // -----------------------------------
                    VS_NUMEROSPRINCIPAIS:= STGR_BASE_D.Cells[VI_COMBINACOES1,0] + '-' +
                         STGR_BASE_D.Cells[VI_COMBINACOES2,0]+ '-' +
                         STGR_BASE_D.Cells[VI_COMBINACOES3,0];

                              VI_CONTAR :=1;
                              FOR VI_CONTADOR := 1 TO 5 DO
                              BEGIN
                                   IF (POS(STGR_BASE_D.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                   BEGIN
                                        VI_CONTAR := VI_CONTAR +1;
                                             STGR_LINHA_D2_C2.Cells[VI_CONTAR,VI_LINHAS2] := STGR_BASE_D.Cells[VI_CONTADOR,0];
                                   END;
                              END; // FOR VI_CONTADOR
                         // ---------------------------------------
                         VI_LINHAS2 := VI_LINHAS2 +1;
                         STGR_LINHA_D3_C1.RowCount := VI_LINHAS2;
                         STGR_LINHA_D2_C2.RowCount := VI_LINHAS2;
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_D3_C1.Repaint;
     STGR_LINHA_D2_C2.Repaint;
               // -------------------------------
               // --  Marcando os excluídos   --
               // -------------------------------
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_D3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_D3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                   (STRtoINT(STGR_LINHA_D3_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                   (STRtoINT(STGR_LINHA_D3_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                   THEN
               BEGIN
                   STGR_LINHA_D3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_D3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_D3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                   (STRtoINT(STGR_LINHA_D3_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                   (STRtoINT(STGR_LINHA_D3_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) 
                   THEN
               BEGIN
                   STGR_LINHA_D3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_D3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_D3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                   (STRtoINT(STGR_LINHA_D3_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                   (STRtoINT(STGR_LINHA_D3_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) 
                   THEN
               BEGIN
                   STGR_LINHA_D3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_D3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_D3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) OR
                   (STRtoINT(STGR_LINHA_D3_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) OR
                   (STRtoINT(STGR_LINHA_D3_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                   THEN
               BEGIN
                   STGR_LINHA_D3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_D3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_D3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                   (STRtoINT(STGR_LINHA_D3_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                   (STRtoINT(STGR_LINHA_D3_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                   THEN
               BEGIN
                   STGR_LINHA_D3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_D3_C1.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_D3_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_LINHA_D3_100REP.Caption := INTtoSTR(VI_CONTAR);



        // ******************
        // **  PAR D - 2X3 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 4 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 5 DO
          BEGIN
                    STGR_LINHA_D2_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_D3_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_D2_C1.Cells [1,VI_LINHAS2]:= 'V';
                    STGR_LINHA_D3_C2.Cells [1,VI_LINHAS2]:= 'V';
                    STGR_LINHA_D2_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_D.Cells[VI_COMBINACOES1,0];
                    STGR_LINHA_D2_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_D.Cells[VI_COMBINACOES2,0];
                         // -----------------------------------
                         // -- CAPTURAR OS NÚMERO QUE FALTAM --
                         // -----------------------------------
                    VS_NUMEROSPRINCIPAIS:= STGR_BASE_D.Cells[VI_COMBINACOES1,0] + '-' +
                         STGR_BASE_D.Cells[VI_COMBINACOES2,0]+ '-' +
                         STGR_BASE_D.Cells[VI_COMBINACOES3,0];

                              VI_CONTAR :=1;
                              FOR VI_CONTADOR := 1 TO 5 DO
                              BEGIN
                                   IF (POS(STGR_BASE_D.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                   BEGIN
                                        VI_CONTAR := VI_CONTAR +1;
                                             STGR_LINHA_D3_C2.Cells[VI_CONTAR,VI_LINHAS2] := STGR_BASE_D.Cells[VI_CONTADOR,0];
                                   END;
                              END; // FOR VI_CONTADOR
                         // ---------------------------------------
                         VI_LINHAS2 := VI_LINHAS2 +1;
                         STGR_LINHA_D2_C1.RowCount := VI_LINHAS2;
                         STGR_LINHA_D3_C2.RowCount := VI_LINHAS2;
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_D2_C1.Repaint;
     STGR_LINHA_D3_C2.Repaint;
               // -------------------------------
               // --  Marcando os excluídos   --
               // -------------------------------
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_D2_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_D2_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                   (STRtoINT(STGR_LINHA_D2_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) 
                   THEN
               BEGIN
                   STGR_LINHA_D2_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_D2_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_D2_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                   (STRtoINT(STGR_LINHA_D2_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                   THEN
               BEGIN
                   STGR_LINHA_D2_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_D2_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_D2_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                   (STRtoINT(STGR_LINHA_D2_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) 
                   THEN
               BEGIN
                   STGR_LINHA_D2_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_D2_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_D2_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) OR
                   (STRtoINT(STGR_LINHA_D2_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) 
                   THEN
               BEGIN
                   STGR_LINHA_D2_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_D2_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_D2_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                   (STRtoINT(STGR_LINHA_D2_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                   THEN
               BEGIN
                   STGR_LINHA_D2_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_D2_C1.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_D2_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_LINHA_D2_100REP.Caption := INTtoSTR(VI_CONTAR);

            SELF.IBQ_COMBINACOES.Close;
            SELF.IBQ_COMBINACOES.Open;
            IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_00c_10EXC2_DEFINICAO')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_00c_10EXC2_DADOS')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM FILTRO_00c_10EXC2_DEFINICAO; ')  ;
            SELF.IBQ_COMBINACOES.Open;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_00c_10EXC2_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;


     SHOWMESSAGE('OK');
end;








procedure T_F_GERADOR_10_EXC_2.BBT_GERARClick(Sender: TObject);

    PROCEDURE PR_ORDENAR_10 ( (*OUT*) VI_LINHAS9: INTEGER);
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
        FOR VI_CONTAR :=1 TO 10 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB10.Cells[VI_CONTAR,VI_LINHAS9])) ,1]:='V';
        END; // FOR VI_CONTAR1
        VI_CNTCELULAS := 1;
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
            BEGIN
                STGR_COMB10.Cells [VI_CNTCELULAS, VI_LINHAS9] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                VI_CNTCELULAS := VI_CNTCELULAS + 1;
            END; // IF (STRGR_TODOS_NUMEROS
        END; // FOR VI_CONTAR
  //      IF VI_CNTCELULAS < 11 THEN
   //           VI_LINHAS9 := VI_LINHAS9 -1;
    end; // PROCEDURE ORDENAR_SIMULACAO_15


    PROCEDURE PR_GRAVAR_DADOS (VC_BEGIN_END: STRING; OUT VI_LINHAS2:INTEGER; VI_COMBINACOES_C1:INTEGER; VI_TOTCOMBINACOES_C1:INTEGER);
    VAR
        VI_TOTALGERADO, VI_AN_COMB1, VI_CNTCELULAS : INTEGER;
        VC_QUERY : STRING;
        VC_DADOS1, VC_DADOS2, VC_DADOS3, VC_DADOS4, VC_COMBINACOES : STRING;
    BEGIN
        IF (VC_BEGIN_END = 'INICIO') THEN
        BEGIN
            VC_DADOS1 := RIGHTSTR ('0'+STGR_BASE_A.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_A.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_A.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_A.Cells[4,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_A.Cells[5,0],2);
            VC_DADOS2 := RIGHTSTR ('0'+STGR_BASE_B.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_B.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_B.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_B.Cells[4,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_B.Cells[5,0],2);
            VC_DADOS3 := RIGHTSTR ('0'+STGR_BASE_C.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_C.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_C.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_C.Cells[4,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_C.Cells[5,0],2);
            VC_DADOS4 := RIGHTSTR ('0'+STGR_BASE_D.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_D.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_D.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_D.Cells[4,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_D.Cells[5,0],2);
                SELF.IBQ_COMBINACOES.SQL.Clear;
            VC_QUERY  := 'INSERT INTO FILTRO_00c_10EXC2_DEFINICAO (LINHA_1, LINHA_2, LINHA_3, LINHA_4, SOMA_COL_1_INI, SOMA_COL_1_FINAL, SOMA_COL_2_INI, SOMA_COL_2_FINAL,';
            VC_QUERY  := VC_QUERY +' EXC_1, EXC_2, EXC_3, EXC_4, EXC_5, CONTADOR_C1, TOTAL_CONTADOR_C1, ';
            VC_QUERY  := VC_QUERY +' EXC_OBR_1, EXC_OBR_2, EXC_OBR_3, DATA_DEFINICAO, HORA_DEFINICAO, QTD_DADOS) VALUES('+#39+ VC_DADOS1 + #39 +','  +#39+ VC_DADOS2 + #39 +','  +#39+ VC_DADOS3 + #39 +','  +#39+ VC_DADOS4  ;
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_SOMAS_C1_INI.Text    + #39 +','+#39+ ED_SOMAS_C1_FINAL.Text  + #39 +','+#39+ ED_SOMAS_C2_INI.Text+ #39 +','+#39+ ED_SOMAS_C2_FINAL.Text ;
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_EXC_01.Text          + #39 +','+#39+ ED_EXC_02.Text          + #39 +','+#39+ ED_EXC_03.Text       + #39 +','+#39+ ED_EXC_04.Text          + #39 +','+#39+ ED_EXC_05.Text       + #39 +','+#39+ INTtoSTR(VI_COMBINACOES_C1)       + #39 +','+#39+ INTtoSTR(VI_TOTCOMBINACOES_C1);
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_EXC_OBR_1.Text       + #39 +','+#39+ ED_EXC_OBR_2.Text       + #39 +','+#39+ ED_EXC_OBR_3.Text     + #39 +',' +#39+ STRINGREPLACE(FORMATDATETIME('d/m/yyyy',DATE()),'/','.',[]) + #39 +',' +#39+FORMATDATETIME('h:n:s',time())   +#39+' ,''0'' );';
                SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
             SELF.IBQ_COMBINACOES.SQL.Clear;
             SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
             SELF.IBQ_COMBINACOES.ExecSQL;                
        END; // IF (VC_BEGIN_END = 'SIM')
        //VI_TOTALGERADO := STGR_COMB15.RowCount-1;
        IF ((VI_LINHAS2/7996) = (VI_LINHAS2 DIV 7996))
            or ((VI_LINHAS2/8000) = (VI_LINHAS2 DIV 8000))
            or ((VI_LINHAS2/8004) = (VI_LINHAS2 DIV 8004))
            OR (VC_BEGIN_END = 'ENCERRANDO')
            OR (VC_BEGIN_END = 'FIM')
            THEN
        BEGIN
       {IF (VC_BEGIN_END = 'FIM') THEN
        BEGIN  }
            // ************************
            // **   BANCO DE DADOS   **
            // ************************
            STGR_COMB10.Repaint;
            Self.Repaint;
           // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
            FOR VI_AN_COMB1:= 1 TO  TRUNC((STGR_COMB10.RowCount-1)/1) DO
            BEGIN
                // obs: verificar o evento BeFOREInSERT DA ibq_COMBINACOES
                VC_COMBINACOES :='';
                FOR VI_CNTCELULAS := 1 TO 10 DO
                BEGIN
                    VC_COMBINACOES := VC_COMBINACOES + STGR_COMB10.Cells[VI_CNTCELULAS,VI_AN_COMB1] +' ';
                END; // FOR VI_CNTCELULAS
                VC_QUERY  := 'INSERT INTO FILTRO_00C_10EXC2_DADOS_temp (EXC1, EXC2, EXC3, EXC4, EXC5, EXC6, EXC7, EXC8, EXC9, EXC10, DADOS) VALUES(' +#39+ STGR_COMB10.Cells[1,VI_AN_COMB1] + #39 +','+#39+ STGR_COMB10.Cells[2,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB10.Cells[3,VI_AN_COMB1] + #39 +','+#39+STGR_COMB10.Cells[4,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB10.Cells[5,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB10.Cells[6,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB10.Cells[7,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB10.Cells[8,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB10.Cells[9,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB10.Cells[10,VI_AN_COMB1]
                     + #39 +','+#39+TRIM(VC_COMBINACOES) + #39 +');';
                SELF.IBQ_COMBINACOES.SQL.Clear;
                SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
            END;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            VC_QUERY  := 'UPDATE FILTRO_00c_10EXC2_DEFINICAO SET CONTADOR_C1 =' + #39+ INTtoSTR(VI_COMBINACOES_C1) +#39+';';
            SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
            VI_LINHAS2:=1;
            STGR_COMB10.RowCount := VI_LINHAS2;
             SELF.IBQ_COMBINACOES.SQL.Clear;

               IF VC_BEGIN_END = 'FIM' THEN
               BEGIN
                    SELF.IBQ_COMBINACOES.SQL.Clear;
                    SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_00C_10EXC2_DADOS')  ;
                    SELF.IBQ_COMBINACOES.ExecSQL;
                    SELF.IBQ_COMBINACOES.SQL.Clear;
                    SELF.IBQ_COMBINACOES.SQL.Add('execute procedure FILTRO_0_10EXC2_DADOS_100REPET' )  ;
                    SELF.IBQ_COMBINACOES.ExecSQL;
                    SELF.IBQ_COMBINACOES.SQL.Clear;
                    SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_00C_10EXC2_DADOS_temp')  ;
                    SELF.IBQ_COMBINACOES.ExecSQL;
                       SELF.IBQ_COMBINACOES.SQL.Clear;
                       SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                       SELF.IBQ_COMBINACOES.ExecSQL;
               END;// IF
             IF ((VI_LINHAS2/7996) = (VI_LINHAS2 DIV 7996))
                 or ((VI_LINHAS2/8000) = (VI_LINHAS2 DIV 8000))
                 or ((VI_LINHAS2/8004) = (VI_LINHAS2 DIV 8004))
                 OR (VC_BEGIN_END = 'ENCERRANDO') THEN
             BEGIN
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('execute procedure FILTRO_0_10EXC_DADOS_100REPET01' )  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                {  SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_00C_10EXC2_DADOS_temp')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;      }            
             end;
        END; // IF (VI_TOTALGERADO/1000)
       // IF (VC_FINALIZAR = 'SIM') THEN SHOWMESSAGE('ETAPA - OK');
    END; // PROCEDURE GRAVAR_DADOS

var
     VI_CONTAR, VI_LINHAS1, VI_LINHAS2, VI_LINHAS_3, VI_LINHAS_4, VI_COMBINACOES1, VI_COMBINACOES2, VI_CONTAR_COMB1, VI_TOTAL_COMB1, VI_CONTASEL1: integer;
     VsI_COMBINACOES3, VsI_COMBINACOES4, VsI_COMBINACOES5, VsI_COMBINACOES6, VsI_COMBINACOES7, VsI_COMBINACOES8: SMALLINT;
     VsI_SOMA1, VsI_SOMA2, VSI_CONTAR_A, VSI_CONTAR_B, VSI_CONTAR_C, VSI_CONTAR_D: SMALLINT;
     VsI_FLAG_SOMATORIA1, VsI_FLAG_SOMATORIA2,VsI_FLAG_SOMATORIA3, VsI_FLAG_SOMATORIA4: SMALLINT;
begin
     PA_GERAR.Left := 5000;
     IF (STRtoINT(ED_SOMAS_C1_INI.Text) > STRtoINT(ED_SOMAS_C1_FINAL.Text ) ) THEN
     BEGIN
          SHOWMESSAGE ('O NÚMERO INICIAL TEM DE SER MENOR QUE O FINAL.');
          ED_SOMAS_C1_INI.SetFocus;
          EXIT;
     END; // IF
     IF (STRtoINT(ED_SOMAS_C2_INI.Text) > STRtoINT(ED_SOMAS_C2_FINAL.Text ) ) THEN
     BEGIN
          SHOWMESSAGE ('O NÚMERO INICIAL TEM DE SER MENOR QUE O FINAL.');
          ED_SOMAS_C2_INI.SetFocus;
          EXIT;
     END; // IF

     LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
     FOR VI_CONTASEL1 := 1 TO 10 DO
     BEGIN
        STGR_COMB10.Cells [VI_CONTASEL1+0,0] := '-'+INTtoSTR(VI_CONTASEL1)+'-';
        STGR_COMB10.Cells [VI_CONTASEL1+0,1] := '00';
     END;
     STGR_COMB10.RowCount := 2;
     STGR_COMB10.Repaint;
     PGBR_GERARCOMB.Position := 0;
     PGBR_GERARCOMB0.Position :=0;
     PGBR_GERARCOMB.Repaint;
     PGBR_GERARCOMB0.Repaint;
     PGBR_REMREPET.Position := 0;
     PGBR_REMREPET.Repaint;
     LA_TOTAL_COMB.Caption := 'GERAR:               ';
     LA_GERAR_COMB.Caption := '#:                   ';
     LA_QTD_COMB.Caption := '000000';
     LA_TOTAL_100REPET.Caption := '000000';
     LA_TOTAL_100REPET.Repaint;
     LA_TOTAL_COMB.Repaint;
     LA_GERAR_COMB.Repaint;
     LA_QTD_COMB.Repaint;
     // =====================================
     // ||||=============================||||
     // |||| 	GERANDO AS COMBINAÇÕES   ||||
     // ||||=============================||||
     // =====================================
     VI_LINHAS2 := 1;
     VI_CONTAR_COMB1 := 0;
     VI_LINHAS1 := VI_LINHAS2;
     VI_TOTAL_COMB1  := STRtoINT(LA_LINHA_A4_100REP.Caption);
     // *****************
     // **  MODO AB    **
     // ******************
    IF (CB_MODO_FILTRO.ItemIndex = 0) OR (CB_MODO_FILTRO.ItemIndex = 6) OR (CB_MODO_FILTRO.ItemIndex = 7) OR (CB_MODO_FILTRO.ItemIndex = 11)  OR (CB_MODO_FILTRO.ItemIndex = 13) THEN
    BEGIN
         LA_MODO.Caption := 'MODO AB';
          PR_GRAVAR_DADOS ('INICIO',VI_LINHAS2, 1, TRUNC(STGR_LINHA_A4_C1.RowCount-1));
          FOR VI_COMBINACOES1 := 1{23} TO TRUNC((STGR_LINHA_A4_C1.RowCount-1)/1) DO
          BEGIN
          VI_CONTAR_COMB1 := VI_CONTAR_COMB1 +1 ;
               IF (STGR_LINHA_A4_C1.Cells[1,VI_COMBINACOES1] = 'F') then
                    continue;
               LA_TOTAL_COMB.Caption := '% PROCESSADOS: 0 %    ';
               FOR VI_COMBINACOES2 := 1{4} TO  (STGR_LINHA_B4_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_B4_C1.Cells[1,VI_COMBINACOES2] = 'F') then
                         continue;
                    FOR VsI_COMBINACOES3 := 1 {7} TO {28}(STGR_LINHA_C2_C1.RowCount-1) DO
                    BEGIN
                         IF (STGR_LINHA_C2_C1.Cells[1,VsI_COMBINACOES3] = 'F') then
                              continue;
                         FOR VsI_COMBINACOES4 := 1 {10} TO {14} (STGR_LINHA_D2_C1.RowCount-1) DO
                         BEGIN
                              IF (STGR_LINHA_D2_C1.Cells[1,VsI_COMBINACOES4] = 'F') then
                                    continue;
                                   FOR VI_CONTAR :=1 TO 5 DO
                                   BEGIN
                                        STGR_BASE_5.Cells[VI_CONTAR,1] := '0';
                                        STGR_BASE_5.Cells[VI_CONTAR,2] := '0';
                                        STGR_BASE_5.Cells[VI_CONTAR,3] := '0';
                                        STGR_BASE_5.Cells[VI_CONTAR,4] := '0';
                                        STGR_BASE_5.Cells[VI_CONTAR,5] := '0';
                                   END; // FOR
                                   STGR_BASE_5.Cells[1,1] := STGR_LINHA_A4_C1.Cells[2,VI_COMBINACOES1];
                                   STGR_BASE_5.Cells[2,1] := STGR_LINHA_A4_C1.Cells[3,VI_COMBINACOES1];
                                   STGR_BASE_5.Cells[3,1] := STGR_LINHA_A4_C1.Cells[4,VI_COMBINACOES1];
                                   STGR_BASE_5.Cells[4,1] := STGR_LINHA_A4_C1.Cells[5,VI_COMBINACOES1];
                                   STGR_BASE_5F.Cells[1,1] := STGR_LINHA_A4_C2.Cells[2,VI_COMBINACOES1];
                                   STGR_BASE_5F.Cells[2,1] := STGR_LINHA_A4_C2.Cells[3,VI_COMBINACOES1];
                                   STGR_BASE_5F.Cells[3,1] := STGR_LINHA_A4_C2.Cells[4,VI_COMBINACOES1];
                                   STGR_BASE_5F.Cells[4,1] := STGR_LINHA_A4_C2.Cells[5,VI_COMBINACOES1];

                                   STGR_BASE_5.Cells[1,2] := STGR_LINHA_B4_C1.Cells[2,VI_COMBINACOES2];
                                   STGR_BASE_5.Cells[2,2] := STGR_LINHA_B4_C1.Cells[3,VI_COMBINACOES2];
                                   STGR_BASE_5.Cells[3,2] := STGR_LINHA_B4_C1.Cells[4,VI_COMBINACOES2];
                                   STGR_BASE_5.Cells[4,2] := STGR_LINHA_B4_C1.Cells[5,VI_COMBINACOES2];
                                   STGR_BASE_5F.Cells[1,2] := STGR_LINHA_B3_C2.Cells[2,VI_COMBINACOES2];
                                   STGR_BASE_5F.Cells[2,2] := STGR_LINHA_B3_C2.Cells[3,VI_COMBINACOES2];
                                   STGR_BASE_5F.Cells[3,2] := STGR_LINHA_B3_C2.Cells[4,VI_COMBINACOES2];
                                   STGR_BASE_5F.Cells[4,2] := '0';

                                   STGR_BASE_5.Cells[1,3] := STGR_LINHA_C2_C1.Cells[2,VSI_COMBINACOES3];
                                   STGR_BASE_5.Cells[2,3] := STGR_LINHA_C2_C1.Cells[3,VSI_COMBINACOES3];
                                   STGR_BASE_5.Cells[3,3] := '0';
                                   STGR_BASE_5.Cells[4,3] := '0';
                                   STGR_BASE_5F.Cells[1,3] := STGR_LINHA_C3_C2.Cells[2,VSI_COMBINACOES3];
                                   STGR_BASE_5F.Cells[2,3] := STGR_LINHA_C3_C2.Cells[3,VSI_COMBINACOES3];
                                   STGR_BASE_5F.Cells[3,3] := STGR_LINHA_C3_C2.Cells[4,VSI_COMBINACOES3];
                                   STGR_BASE_5F.Cells[4,3] := '0';

                                   STGR_BASE_5.Cells[1,4] := STGR_LINHA_D2_C1.Cells[2,VSI_COMBINACOES4];
                                   STGR_BASE_5.Cells[2,4] := STGR_LINHA_D2_C1.Cells[3,VSI_COMBINACOES4];
                                   STGR_BASE_5.Cells[3,4] := '0';
                                   STGR_BASE_5.Cells[4,4] := '0';
                                   STGR_BASE_5F.Cells[1,4] := STGR_LINHA_D3_C2.Cells[2,VSI_COMBINACOES4];
                                   STGR_BASE_5F.Cells[2,4] := STGR_LINHA_D3_C2.Cells[3,VSI_COMBINACOES4];
                                   STGR_BASE_5F.Cells[3,4] := STGR_LINHA_D3_C2.Cells[4,VSI_COMBINACOES4];
                                   STGR_BASE_5F.Cells[4,4] := '0';
                                   if (VsI_COMBINACOES3 mod 2) = 0 then
                                         STGR_BASE_5.Repaint;
                                   //STGR_BASE_5F.Repaint;

                                   // ---------------------------------------
                                   // --  SOMATÓRIAS
                                   // ---------------------------------------
                                   VsI_FLAG_SOMATORIA1:=0;
                                  VsI_SOMA1 := STRtoINT(STGR_BASE_5.Cells[1,1] )
                                             + STRtoINT(STGR_BASE_5.Cells[1,2] )
                                             + STRtoINT(STGR_BASE_5.Cells[1,3] )
                                             + STRtoINT(STGR_BASE_5.Cells[1,4] )
                                             + STRtoINT(STGR_BASE_5.Cells[2,1] )
                                             + STRtoINT(STGR_BASE_5.Cells[2,2] )
                                             + STRtoINT(STGR_BASE_5.Cells[2,3] )
                                             + STRtoINT(STGR_BASE_5.Cells[2,4] )
                                             + STRtoINT(STGR_BASE_5.Cells[3,1] )
                                             + STRtoINT(STGR_BASE_5.Cells[3,2] )
                                             + STRtoINT(STGR_BASE_5.Cells[3,3] )
                                             + STRtoINT(STGR_BASE_5.Cells[3,4] )
                                             + STRtoINT(STGR_BASE_5.Cells[4,1] )
                                             + STRtoINT(STGR_BASE_5.Cells[4,2] )
                                             + STRtoINT(STGR_BASE_5.Cells[4,3] )
                                             + STRtoINT(STGR_BASE_5.Cells[4,4] )
                                             ;
                                   IF (VsI_SOMA1 >= (STRtoINT(ED_SOMAS_C1_INI.Text))) AND (VsI_SOMA1 <= (STRtoINT(ED_SOMAS_C1_FINAL.Text))) THEN
                                   BEGIN
                                        VsI_FLAG_SOMATORIA1:=1 ;
                                   END ELSE BEGIN
                                        CONTINUE;
                                   END; // IF
                                   VsI_FLAG_SOMATORIA2:=0;
                                  VsI_SOMA1 := STRtoINT(STGR_BASE_5F.Cells[1,1] )
                                             + STRtoINT(STGR_BASE_5F.Cells[1,2] )
                                             + STRtoINT(STGR_BASE_5F.Cells[1,3] )
                                             + STRtoINT(STGR_BASE_5F.Cells[1,4] )
                                             + STRtoINT(STGR_BASE_5F.Cells[2,1] )
                                             + STRtoINT(STGR_BASE_5F.Cells[2,2] )
                                             + STRtoINT(STGR_BASE_5F.Cells[2,3] )
                                             + STRtoINT(STGR_BASE_5F.Cells[2,4] )
                                             + STRtoINT(STGR_BASE_5F.Cells[3,1] )
                                             + STRtoINT(STGR_BASE_5F.Cells[3,2] )
                                             + STRtoINT(STGR_BASE_5F.Cells[3,3] )
                                             + STRtoINT(STGR_BASE_5F.Cells[3,4] )
                                             + STRtoINT(STGR_BASE_5F.Cells[4,1] )
                                             + STRtoINT(STGR_BASE_5F.Cells[4,2] )
                                             + STRtoINT(STGR_BASE_5F.Cells[4,3] )
                                             + STRtoINT(STGR_BASE_5F.Cells[4,4] )
                                             ;
                                   IF (VsI_SOMA1 >= (STRtoINT(ED_SOMAS_C2_INI.Text))) AND (VsI_SOMA1 <= (STRtoINT(ED_SOMAS_C2_FINAL.Text))) THEN
                                   BEGIN
                                        VsI_FLAG_SOMATORIA2:=1 ;
                                   END ELSE BEGIN
                                        CONTINUE;
                                   END; // IF

                                   IF (VsI_FLAG_SOMATORIA1=1) AND (VsI_FLAG_SOMATORIA2=1) THEN
                                   BEGIN
                                             // ===> Obrigatórios
                                             IF  STRtoINT(ED_EXC_OBR_1.Text) > 0 THEN
                                             BEGIN
                                                  IF  NOT(
                                                      (STRtoINT(STGR_BASE_5.Cells[1,1]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,1]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,1]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[4,1]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,2]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,2]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,2]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[4,2]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,3]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,3]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,4]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,4]) = STRtoINT(ED_EXC_OBR_1.Text))
                                                      )
                                                  THEN
                                                       CONTINUE;
                                                  IF  NOT(
                                                      (STRtoINT(STGR_BASE_5.Cells[1,1]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,1]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,1]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[4,1]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,2]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,2]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,2]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[4,2]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,3]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,3]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,4]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,4]) = STRtoINT(ED_EXC_OBR_2.Text))
                                                      )
                                                  THEN
                                                       CONTINUE;
                                                  IF  NOT(
                                                      (STRtoINT(STGR_BASE_5.Cells[1,1]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,1]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,1]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[4,1]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,2]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,2]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,2]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[4,2]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,3]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,3]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,4]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,4]) = STRtoINT(ED_EXC_OBR_3.Text))
                                                      )
                                                  THEN
                                                       CONTINUE;
                                             END; // IF
                                             // -- >> combinacçao 1
                                             STGR_COMB10.Cells[0,VI_LINHAS2+0] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+0] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+0] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+0] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+0] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+0] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+0] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+0] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+0] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+0] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+0] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+0);
                                             // -- >> combinacçao 2
                                             STGR_COMB10.Cells[0,VI_LINHAS2+1] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+1] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+1] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+1] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+1] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+1] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+1] := STGR_BASE_5.Cells[4,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+1] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+1] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+1] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+1] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+1);
                                             // -- >> combinacçao 3
                                             STGR_COMB10.Cells[0,VI_LINHAS2+2] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+2] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+2] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+2] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+2] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+2] := STGR_BASE_5.Cells[3,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+2] := STGR_BASE_5.Cells[4,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+2] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+2] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+2] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+2] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+2);
                                             // -- >> combinacçao 4
                                             STGR_COMB10.Cells[0,VI_LINHAS2+3] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+3] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+3] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+3] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+3] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+3] := STGR_BASE_5.Cells[3,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+3] := STGR_BASE_5.Cells[4,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+3] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+3] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+3] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+3] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+3);

                                             // -- >> combinacçao 5
                                             STGR_COMB10.Cells[0,VI_LINHAS2+4] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+4] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+4] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+4] := STGR_BASE_5.Cells[4,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+4] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+4] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+4] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+4] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+4] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+4] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+4] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+4);
                                             // -- >> combinacçao 6
                                             STGR_COMB10.Cells[0,VI_LINHAS2+5] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+5] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+5] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+5] := STGR_BASE_5.Cells[4,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+5] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+5] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+5] := STGR_BASE_5.Cells[4,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+5] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+5] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+5] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+5] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+5);
                                             // -- >> combinacçao 7
                                             STGR_COMB10.Cells[0,VI_LINHAS2+6] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+6] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+6] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+6] := STGR_BASE_5.Cells[4,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+6] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+6] := STGR_BASE_5.Cells[3,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+6] := STGR_BASE_5.Cells[4,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+6] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+6] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+6] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+6] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+6);
                                             // -- >> combinacçao 8
                                             STGR_COMB10.Cells[0,VI_LINHAS2+7] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+7] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+7] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+7] := STGR_BASE_5.Cells[4,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+7] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+7] := STGR_BASE_5.Cells[3,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+7] := STGR_BASE_5.Cells[4,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+7] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+7] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+7] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+7] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+7);

                                              // -- >> combinacçao 9
                                             STGR_COMB10.Cells[0,VI_LINHAS2+8] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+8] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+8] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+8] := STGR_BASE_5.Cells[4,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+8] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+8] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+8] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+8] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+8] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+8] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+8] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+8);
                                             // -- >> combinacçao 10
                                             STGR_COMB10.Cells[0,VI_LINHAS2+9] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+9] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+9] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+9] := STGR_BASE_5.Cells[4,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+9] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+9] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+9] := STGR_BASE_5.Cells[4,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+9] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+9] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+9] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+9] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+9);
                                             // -- >> combinacçao 11
                                             STGR_COMB10.Cells[0,VI_LINHAS2+10] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+10] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+10] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+10] := STGR_BASE_5.Cells[4,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+10] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+10] := STGR_BASE_5.Cells[3,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+10] := STGR_BASE_5.Cells[4,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+10] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+10] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+10] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+10] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+10);
                                             // -- >> combinacçao 12
                                             STGR_COMB10.Cells[0,VI_LINHAS2+11] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+11] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+11] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+11] := STGR_BASE_5.Cells[4,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+11] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+11] := STGR_BASE_5.Cells[3,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+11] := STGR_BASE_5.Cells[4,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+11] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+11] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+11] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+11] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+11);

                                              // -- >> combinacçao 13
                                             STGR_COMB10.Cells[0,VI_LINHAS2+12] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+12] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+12] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+12] := STGR_BASE_5.Cells[4,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+12] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+12] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+12] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+12] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+12] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+12] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+12] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+12);
                                             // -- >> combinacçao 14
                                             STGR_COMB10.Cells[0,VI_LINHAS2+13] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+13] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+13] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+13] := STGR_BASE_5.Cells[4,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+13] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+13] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+13] := STGR_BASE_5.Cells[4,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+13] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+13] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+13] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+13] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+13);
                                             // -- >> combinacçao 15
                                             STGR_COMB10.Cells[0,VI_LINHAS2+14] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+14] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+14] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+14] := STGR_BASE_5.Cells[4,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+14] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+14] := STGR_BASE_5.Cells[3,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+14] := STGR_BASE_5.Cells[4,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+14] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+14] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+14] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+14] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+14);
                                             // -- >> combinacçao 16
                                             STGR_COMB10.Cells[0,VI_LINHAS2+15] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+15] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+15] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+15] := STGR_BASE_5.Cells[4,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+15] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+15] := STGR_BASE_5.Cells[3,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+15] := STGR_BASE_5.Cells[4,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+15] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+15] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+15] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+15] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+15);

                                             VI_LINHAS2 := VI_LINHAS2 + 16;
                                             VI_LINHAS1 := VI_LINHAS1 + 16;
                                             PR_GRAVAR_DADOS ('NAO', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_LINHA_A4_C1.RowCount-1));
                                        IF (VI_LINHAS2 MOD 160)=0 THEN
                                        BEGIN
                                                  PA_RESULTADO.Repaint;
                                                  STGR_BASE_5.Repaint;
                                                  STGR_COMB10.RowCount := VI_LINHAS2;
                                                  STGR_COMB10.Repaint;
                                                  LA_TOTAL_COMB.Caption := '% PROCESSADOS: '+  INTtoSTR(TRUNC(VI_COMBINACOES2/(STGR_LINHA_B4_C1.RowCount)*100))+ ' %  ';//INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
                                                  LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1)+'  ';
                                                  LA_QTD_COMB.Repaint;
                                                            PGBR_GERARCOMB0.Position := TRUNC(VI_COMBINACOES2/(STGR_LINHA_B4_C1.RowCount-1)*100);
                                                            PGBR_GERARCOMB0.Repaint;
                                                            LA_QTD_COMB.Repaint;
                                                  SLEEP(11); //9
                                        END; // IF
                                   END; // IF (VsI_FLAG_SOMATORIA1=1) AND (VsI_FLAG_SOMATORIA2=1)
                                   IF ( VsI_COMBINACOES4 MOD 4) =0 THEN
                                   BEGIN
                                        LA_TOTAL_COMB.Caption := '% PROCESSADOS: '+ INTtoSTR(TRUNC(VI_COMBINACOES2/(STGR_LINHA_B4_C1.RowCount-1)*100))+ ' %  ';//INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
                                        LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1)+'  ';
                                        LA_QTD_COMB.Repaint;
                                        PA_RESULTADO.Repaint;
                                        STGR_COMB10.RowCount := VI_LINHAS2;
                                        STGR_COMB10.Repaint;
                                   END;
                         END;// FOR VsI_COMBINACOES4
                         PGBR_GERARCOMB0.Position := TRUNC(VI_COMBINACOES2/(STGR_LINHA_B4_C1.RowCount-1)*100);
                         PGBR_GERARCOMB0.Repaint;
                         LA_QTD_COMB.Repaint;
                         STGR_COMB10.RowCount := VI_LINHAS2;
                         STGR_COMB10.Repaint;
                         SLEEP(35);  //95
                    END;// FOR VsI_COMBINACOES3
                            {   STGR_COMB10.RowCount := VI_LINHAS2;
                               STGR_COMB10.Repaint;
                              LA_TOTAL_COMB.Caption := 'TOTAL PROCESSADOS: '+INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
                              LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1)+'  ';
                              LA_QTD_COMB.Repaint;     }
                                        PGBR_GERARCOMB0.Position := TRUNC(VI_COMBINACOES2/(STGR_LINHA_B4_C1.RowCount-1)*100);
                                        PGBR_GERARCOMB0.Repaint;
                                        LA_QTD_COMB.Repaint;
                                        PANEL_TITULO_SIMULACAO.Repaint;
                                        Pa_bASE5.Repaint;
                                        STGR_COMB10.Repaint;
                                        PGBR_GERARCOMB.Repaint;
                                        SLEEP(11);   //29  ou 99
              // Self.WindowState := wsMinimized;
              // Self.WindowState :=  wsNormal;
              // SELF.Repaint;
               END;// FOR VI_COMBINACOES2
               //PGBR_GERARCOMB3.Position := 100;
                    LA_TOTAL_COMB.Caption := '% PROCESSADOS: '+  INTtoSTR(TRUNC(VI_COMBINACOES2/(STGR_LINHA_B4_C1.RowCount)*100))+ ' %  ';//INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
                    LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1)+'  ';
                    LA_QTD_COMB.Repaint;
               PGBR_GERARCOMB0.Position := 100;
               LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_COMBINACOES1)+ ' DE '+  INTtoSTR(STGR_LINHA_A4_C1.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(VI_COMBINACOES1/(STGR_LINHA_A4_C1.RowCount-1)*100))+ ' %  ';
               PGBR_GERARCOMB.Position := TRUNC(VI_COMBINACOES1/(STGR_LINHA_A4_C1.RowCount-1)*100);
               LA_GERAR_COMB.Repaint;
               PGBR_GERARCOMB.Repaint;
               STGR_COMB10.RowCount := VI_LINHAS2;
               STGR_COMB10.Repaint;
               IF   (PGBR_GERARCOMB.Position MOD 4) = 0 THEN
               BEGIN
                    Self.WindowState := wsMinimized;
                    Self.WindowState :=  wsNormal;
                    Pa_bASE5.Repaint;
                    PA_RESULTADO.Repaint;
                    STGR_COMB10.RowCount := VI_LINHAS2;
                    STGR_COMB10.Repaint;
                    PGBR_GERARCOMB.Repaint;
                    SELF.Repaint;
                    SLEEP(90);
               END; // IF
               IF (STGR_COMB10.RowCount-1)>2
               THEN
                    STGR_COMB10.FixedRows := 1;
          END;// FOR VI_COMBINACOES1
    END;

    IF (CB_MODO_FILTRO.ItemIndex = 1) OR (CB_MODO_FILTRO.ItemIndex = 6) OR (CB_MODO_FILTRO.ItemIndex = 8) OR (CB_MODO_FILTRO.ItemIndex = 11) OR (CB_MODO_FILTRO.ItemIndex = 13) THEN
     BEGIN
     // *****************
     // **  MODO AC    **
     // ******************
         LA_MODO.Caption := 'MODO AC';
         IF (CB_MODO_FILTRO.ItemIndex = 1) OR (CB_MODO_FILTRO.ItemIndex = 8) THEN PR_GRAVAR_DADOS ('INICIO',VI_LINHAS2, 1, TRUNC(STGR_LINHA_A4_C1.RowCount-1));
          FOR VI_COMBINACOES1 := 1{23} TO TRUNC((STGR_LINHA_A4_C1.RowCount-1)/1) DO
          BEGIN
          VI_CONTAR_COMB1 := VI_CONTAR_COMB1 +1 ;
               IF (STGR_LINHA_A4_C1.Cells[1,VI_COMBINACOES1] = 'F') then
                    continue;
               LA_TOTAL_COMB.Caption := '% PROCESSADOS: 0 %    ';
               FOR VI_COMBINACOES2 := 1{4} TO  (STGR_LINHA_B3_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_B3_C1.Cells[1,VI_COMBINACOES2] = 'F') then
                         continue;
                    FOR VsI_COMBINACOES3 := 1 {7} TO {28}(STGR_LINHA_C3_C1.RowCount-1) DO
                    BEGIN
                         IF (STGR_LINHA_C3_C1.Cells[1,VsI_COMBINACOES3] = 'F') then
                              continue;
                         FOR VsI_COMBINACOES4 := 1 {10} TO {14} (STGR_LINHA_D2_C1.RowCount-1) DO
                         BEGIN
                              IF (STGR_LINHA_D2_C1.Cells[1,VsI_COMBINACOES4] = 'F') then
                                    continue;
                                   FOR VI_CONTAR :=1 TO 5 DO
                                   BEGIN
                                        STGR_BASE_5.Cells[VI_CONTAR,1] := '0';
                                        STGR_BASE_5.Cells[VI_CONTAR,2] := '0';
                                        STGR_BASE_5.Cells[VI_CONTAR,3] := '0';
                                        STGR_BASE_5.Cells[VI_CONTAR,4] := '0';
                                        STGR_BASE_5.Cells[VI_CONTAR,5] := '0';
                                   END; // FOR
                                   STGR_BASE_5.Cells[1,1] := STGR_LINHA_A4_C1.Cells[2,VI_COMBINACOES1];
                                   STGR_BASE_5.Cells[2,1] := STGR_LINHA_A4_C1.Cells[3,VI_COMBINACOES1];
                                   STGR_BASE_5.Cells[3,1] := STGR_LINHA_A4_C1.Cells[4,VI_COMBINACOES1];
                                   STGR_BASE_5.Cells[4,1] := STGR_LINHA_A4_C1.Cells[5,VI_COMBINACOES1];
                                   STGR_BASE_5F.Cells[1,1] := STGR_LINHA_A4_C2.Cells[2,VI_COMBINACOES1];
                                   STGR_BASE_5F.Cells[2,1] := STGR_LINHA_A4_C2.Cells[3,VI_COMBINACOES1];
                                   STGR_BASE_5F.Cells[3,1] := STGR_LINHA_A4_C2.Cells[4,VI_COMBINACOES1];
                                   STGR_BASE_5F.Cells[4,1] := STGR_LINHA_A4_C2.Cells[5,VI_COMBINACOES1];

                                   STGR_BASE_5.Cells[1,2] := STGR_LINHA_B3_C1.Cells[2,VI_COMBINACOES2];
                                   STGR_BASE_5.Cells[2,2] := STGR_LINHA_B3_C1.Cells[3,VI_COMBINACOES2];
                                   STGR_BASE_5.Cells[3,2] := STGR_LINHA_B3_C1.Cells[4,VI_COMBINACOES2];
                                   STGR_BASE_5.Cells[4,2] := '0';
                                   STGR_BASE_5F.Cells[1,2] := STGR_LINHA_B4_C2.Cells[2,VI_COMBINACOES2];
                                   STGR_BASE_5F.Cells[2,2] := STGR_LINHA_B4_C2.Cells[3,VI_COMBINACOES2];
                                   STGR_BASE_5F.Cells[3,2] := STGR_LINHA_B4_C2.Cells[4,VI_COMBINACOES2];
                                   STGR_BASE_5F.Cells[4,2] := STGR_LINHA_B4_C2.Cells[5,VI_COMBINACOES2];

                                   STGR_BASE_5.Cells[1,3] := STGR_LINHA_C3_C1.Cells[2,VSI_COMBINACOES3];
                                   STGR_BASE_5.Cells[2,3] := STGR_LINHA_C3_C1.Cells[3,VSI_COMBINACOES3];
                                   STGR_BASE_5.Cells[3,3] := STGR_LINHA_C3_C1.Cells[4,VSI_COMBINACOES3];
                                   STGR_BASE_5.Cells[4,3] := '0';
                                   STGR_BASE_5F.Cells[1,3] := STGR_LINHA_C2_C2.Cells[2,VSI_COMBINACOES3];
                                   STGR_BASE_5F.Cells[2,3] := STGR_LINHA_C2_C2.Cells[3,VSI_COMBINACOES3];
                                   STGR_BASE_5F.Cells[3,3] := '0';
                                   STGR_BASE_5F.Cells[4,3] := '0';

                                   STGR_BASE_5.Cells[1,4] := STGR_LINHA_D2_C1.Cells[2,VSI_COMBINACOES4];
                                   STGR_BASE_5.Cells[2,4] := STGR_LINHA_D2_C1.Cells[3,VSI_COMBINACOES4];
                                   STGR_BASE_5.Cells[3,4] := '0';
                                   STGR_BASE_5.Cells[4,4] := '0';
                                   STGR_BASE_5F.Cells[1,4] := STGR_LINHA_D3_C2.Cells[2,VSI_COMBINACOES4];
                                   STGR_BASE_5F.Cells[2,4] := STGR_LINHA_D3_C2.Cells[3,VSI_COMBINACOES4];
                                   STGR_BASE_5F.Cells[3,4] := STGR_LINHA_D3_C2.Cells[4,VSI_COMBINACOES4];
                                   STGR_BASE_5F.Cells[4,4] := '0';
                                   if (VsI_COMBINACOES3 mod 2) = 0 then
                                         STGR_BASE_5.Repaint;
                                   //STGR_BASE_5F.Repaint;

                                   // ---------------------------------------
                                   // --  SOMATÓRIAS
                                   // ---------------------------------------
                                   VsI_FLAG_SOMATORIA1:=0;
                                  VsI_SOMA1 := STRtoINT(STGR_BASE_5.Cells[1,1] )
                                             + STRtoINT(STGR_BASE_5.Cells[1,2] )
                                             + STRtoINT(STGR_BASE_5.Cells[1,3] )
                                             + STRtoINT(STGR_BASE_5.Cells[1,4] )
                                             + STRtoINT(STGR_BASE_5.Cells[2,1] )
                                             + STRtoINT(STGR_BASE_5.Cells[2,2] )
                                             + STRtoINT(STGR_BASE_5.Cells[2,3] )
                                             + STRtoINT(STGR_BASE_5.Cells[2,4] )
                                             + STRtoINT(STGR_BASE_5.Cells[3,1] )
                                             + STRtoINT(STGR_BASE_5.Cells[3,2] )
                                             + STRtoINT(STGR_BASE_5.Cells[3,3] )
                                             + STRtoINT(STGR_BASE_5.Cells[3,4] )
                                             + STRtoINT(STGR_BASE_5.Cells[4,1] )
                                             + STRtoINT(STGR_BASE_5.Cells[4,2] )
                                             + STRtoINT(STGR_BASE_5.Cells[4,3] )
                                             + STRtoINT(STGR_BASE_5.Cells[4,4] )
                                             ;
                                   IF (VsI_SOMA1 >= (STRtoINT(ED_SOMAS_C1_INI.Text))) AND (VsI_SOMA1 <= (STRtoINT(ED_SOMAS_C1_FINAL.Text))) THEN
                                   BEGIN
                                        VsI_FLAG_SOMATORIA1:=1 ;
                                   END ELSE BEGIN
                                        CONTINUE;
                                   END; // IF
                                   VsI_FLAG_SOMATORIA2:=0;
                                  VsI_SOMA1 := STRtoINT(STGR_BASE_5F.Cells[1,1] )
                                             + STRtoINT(STGR_BASE_5F.Cells[1,2] )
                                             + STRtoINT(STGR_BASE_5F.Cells[1,3] )
                                             + STRtoINT(STGR_BASE_5F.Cells[1,4] )
                                             + STRtoINT(STGR_BASE_5F.Cells[2,1] )
                                             + STRtoINT(STGR_BASE_5F.Cells[2,2] )
                                             + STRtoINT(STGR_BASE_5F.Cells[2,3] )
                                             + STRtoINT(STGR_BASE_5F.Cells[2,4] )
                                             + STRtoINT(STGR_BASE_5F.Cells[3,1] )
                                             + STRtoINT(STGR_BASE_5F.Cells[3,2] )
                                             + STRtoINT(STGR_BASE_5F.Cells[3,3] )
                                             + STRtoINT(STGR_BASE_5F.Cells[3,4] )
                                             + STRtoINT(STGR_BASE_5F.Cells[4,1] )
                                             + STRtoINT(STGR_BASE_5F.Cells[4,2] )
                                             + STRtoINT(STGR_BASE_5F.Cells[4,3] )
                                             + STRtoINT(STGR_BASE_5F.Cells[4,4] )
                                             ;
                                   IF (VsI_SOMA1 >= (STRtoINT(ED_SOMAS_C2_INI.Text))) AND (VsI_SOMA1 <= (STRtoINT(ED_SOMAS_C2_FINAL.Text))) THEN
                                   BEGIN
                                        VsI_FLAG_SOMATORIA2:=1 ;
                                   END ELSE BEGIN
                                        CONTINUE;
                                   END; // IF

                                   IF (VsI_FLAG_SOMATORIA1=1) AND (VsI_FLAG_SOMATORIA2=1) THEN
                                   BEGIN
                                             // ===> Obrigatórios
                                             IF  STRtoINT(ED_EXC_OBR_1.Text) > 0 THEN
                                             BEGIN
                                                  IF  NOT(
                                                      (STRtoINT(STGR_BASE_5.Cells[1,1]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,1]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,1]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[4,1]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,2]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,2]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,2]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,3]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,3]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,3]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,4]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,4]) = STRtoINT(ED_EXC_OBR_1.Text))
                                                      )
                                                  THEN
                                                       CONTINUE;
                                                  IF  NOT(
                                                      (STRtoINT(STGR_BASE_5.Cells[1,1]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,1]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,1]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[4,1]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,2]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,2]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,2]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,3]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,3]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,3]) = STRtoINT(ED_EXC_OBR_2.Text)) OR                                                      
                                                      (STRtoINT(STGR_BASE_5.Cells[1,4]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,4]) = STRtoINT(ED_EXC_OBR_2.Text))
                                                      )
                                                  THEN
                                                       CONTINUE;
                                                  IF  NOT(
                                                      (STRtoINT(STGR_BASE_5.Cells[1,1]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,1]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,1]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[4,1]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,2]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,2]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,2]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,3]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,3]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,3]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,4]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,4]) = STRtoINT(ED_EXC_OBR_3.Text))
                                                      )
                                                  THEN
                                                       CONTINUE;
                                             END; // IF
                                             // -- >> combinacçao 1
                                             STGR_COMB10.Cells[0,VI_LINHAS2+0] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+0] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+0] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+0] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+0] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+0] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+0] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+0] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+0] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+0] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+0] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+0);
                                             // -- >> combinacçao 2
                                             STGR_COMB10.Cells[0,VI_LINHAS2+1] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+1] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+1] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+1] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+1] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+1] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+1] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+1] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+1] := STGR_BASE_5.Cells[3,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+1] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+1] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+1);
                                             // -- >> combinacçao 3
                                             STGR_COMB10.Cells[0,VI_LINHAS2+2] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+2] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+2] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+2] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+2] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+2] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+2] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+2] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+2] := STGR_BASE_5.Cells[3,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+2] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+2] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+2);

                                             // -- >> combinacçao 4
                                             STGR_COMB10.Cells[0,VI_LINHAS2+3] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+3] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+3] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+3] := STGR_BASE_5.Cells[4,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+3] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+3] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+3] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+3] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+3] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+3] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+3] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+3);
                                             // -- >> combinacçao 5
                                             STGR_COMB10.Cells[0,VI_LINHAS2+4] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+4] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+4] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+4] := STGR_BASE_5.Cells[4,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+4] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+4] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+4] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+4] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+4] := STGR_BASE_5.Cells[3,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+4] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+4] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+4);
                                             // -- >> combinacçao 6
                                             STGR_COMB10.Cells[0,VI_LINHAS2+5] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+5] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+5] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+5] := STGR_BASE_5.Cells[4,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+5] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+5] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+5] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+5] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+5] := STGR_BASE_5.Cells[3,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+5] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+5] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+5);

                                            // -- >> combinacçao 7
                                             STGR_COMB10.Cells[0,VI_LINHAS2+6] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+6] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+6] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+6] := STGR_BASE_5.Cells[4,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+6] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+6] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+6] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+6] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+6] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+6] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+6] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+6);
                                             // -- >> combinacçao 8
                                             STGR_COMB10.Cells[0,VI_LINHAS2+7] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+7] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+7] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+7] := STGR_BASE_5.Cells[4,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+7] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+7] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+7] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+7] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+7] := STGR_BASE_5.Cells[3,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+7] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+7] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+7);
                                             // -- >> combinacçao 9
                                             STGR_COMB10.Cells[0,VI_LINHAS2+8] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+8] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+8] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+8] := STGR_BASE_5.Cells[4,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+8] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+8] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+8] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+8] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+8] := STGR_BASE_5.Cells[3,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+8] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+8] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+8);

                                            // -- >> combinacçao 10
                                             STGR_COMB10.Cells[0,VI_LINHAS2+9] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+9] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+9] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+9] := STGR_BASE_5.Cells[4,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+9] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+9] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+9] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+9] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+9] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+9] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+9] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+9);
                                             // -- >> combinacçao 11
                                             STGR_COMB10.Cells[0,VI_LINHAS2+10] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+10] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+10] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+10] := STGR_BASE_5.Cells[4,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+10] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+10] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+10] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+10] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+10] := STGR_BASE_5.Cells[3,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+10] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+10] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+10);
                                             // -- >> combinacçao 12
                                             STGR_COMB10.Cells[0,VI_LINHAS2+11] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+11] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+11] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+11] := STGR_BASE_5.Cells[4,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+11] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+11] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+11] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+11] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+11] := STGR_BASE_5.Cells[3,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+11] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+11] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+11);

                                             VI_LINHAS2 := VI_LINHAS2 + 12;
                                             VI_LINHAS1 := VI_LINHAS1 + 12;
                                             PR_GRAVAR_DADOS ('NAO', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_LINHA_A4_C1.RowCount-1));
                                        IF (VI_LINHAS2 MOD 120)=0 THEN
                                        BEGIN
                                                  PA_RESULTADO.Repaint;
                                                  STGR_BASE_5.Repaint;
                                                  STGR_COMB10.RowCount := VI_LINHAS2;
                                                  STGR_COMB10.Repaint;
                                                  LA_TOTAL_COMB.Caption := '% PROCESSADOS: '+  INTtoSTR(TRUNC(VI_COMBINACOES2/(STGR_LINHA_B3_C1.RowCount)*100))+ ' %  ';//INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
                                                  LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1)+'  ';
                                                  LA_QTD_COMB.Repaint;
                                                            PGBR_GERARCOMB0.Position := TRUNC(VI_COMBINACOES2/(STGR_LINHA_B3_C1.RowCount-1)*100);
                                                            PGBR_GERARCOMB0.Repaint;
                                                            LA_QTD_COMB.Repaint;
                                                  SLEEP(11); //9
                                        END; // IF
                                   END; // IF (VsI_FLAG_SOMATORIA1=1) AND (VsI_FLAG_SOMATORIA2=1)
                                   IF ( VsI_COMBINACOES4 MOD 4) =0 THEN
                                   BEGIN
                                        LA_TOTAL_COMB.Caption := '% PROCESSADOS: '+ INTtoSTR(TRUNC(VI_COMBINACOES2/(STGR_LINHA_B3_C1.RowCount-1)*100))+ ' %  ';//INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
                                        LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1)+'  ';
                                        LA_QTD_COMB.Repaint;
                                        PA_RESULTADO.Repaint;
                                        STGR_COMB10.RowCount := VI_LINHAS2;
                                        STGR_COMB10.Repaint;
                                   END;
                         END;// FOR VsI_COMBINACOES4
                         PGBR_GERARCOMB0.Position := TRUNC(VI_COMBINACOES2/(STGR_LINHA_B3_C1.RowCount-1)*100);
                         PGBR_GERARCOMB0.Repaint;
                         LA_QTD_COMB.Repaint;
                         STGR_COMB10.RowCount := VI_LINHAS2;
                         STGR_COMB10.Repaint;
                         SLEEP(35);  //95
                    END;// FOR VsI_COMBINACOES3
                            {   STGR_COMB10.RowCount := VI_LINHAS2;
                               STGR_COMB10.Repaint;
                              LA_TOTAL_COMB.Caption := 'TOTAL PROCESSADOS: '+INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
                              LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1)+'  ';
                              LA_QTD_COMB.Repaint;     }
                                        PGBR_GERARCOMB0.Position := TRUNC(VI_COMBINACOES2/(STGR_LINHA_B3_C1.RowCount-1)*100);
                                        PGBR_GERARCOMB0.Repaint;
                                        LA_QTD_COMB.Repaint;
                                        PANEL_TITULO_SIMULACAO.Repaint;
                                        Pa_bASE5.Repaint;
                                        STGR_COMB10.Repaint;
                                        PGBR_GERARCOMB.Repaint;
                                        SLEEP(11);   //29  ou 99
              // Self.WindowState := wsMinimized;
              // Self.WindowState :=  wsNormal;
              // SELF.Repaint;
               END;// FOR VI_COMBINACOES2
               //PGBR_GERARCOMB3.Position := 100;
                    LA_TOTAL_COMB.Caption := '% PROCESSADOS: '+  INTtoSTR(TRUNC(VI_COMBINACOES2/(STGR_LINHA_B3_C1.RowCount)*100))+ ' %  ';//INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
                    LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1)+'  ';
                    LA_QTD_COMB.Repaint;
               PGBR_GERARCOMB0.Position := 100;
               LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_COMBINACOES1)+ ' DE '+  INTtoSTR(STGR_LINHA_A4_C1.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(VI_COMBINACOES1/(STGR_LINHA_A4_C1.RowCount-1)*100))+ ' %  ';
               PGBR_GERARCOMB.Position := TRUNC(VI_COMBINACOES1/(STGR_LINHA_A4_C1.RowCount-1)*100);
               LA_GERAR_COMB.Repaint;
               PGBR_GERARCOMB.Repaint;
               STGR_COMB10.RowCount := VI_LINHAS2;
               STGR_COMB10.Repaint;
               IF   (PGBR_GERARCOMB.Position MOD 4) = 0 THEN
               BEGIN
                    Self.WindowState := wsMinimized;
                    Self.WindowState :=  wsNormal;
                    Pa_bASE5.Repaint;
                    PA_RESULTADO.Repaint;
                    STGR_COMB10.RowCount := VI_LINHAS2;
                    STGR_COMB10.Repaint;
                    PGBR_GERARCOMB.Repaint;               
                    SELF.Repaint;
                    SLEEP(90);
               END; // IF
               IF (STGR_COMB10.RowCount-1)>2
               THEN
                    STGR_COMB10.FixedRows := 1;
          END;// FOR VI_COMBINACOES1
     END;
    IF (CB_MODO_FILTRO.ItemIndex = 2) OR (CB_MODO_FILTRO.ItemIndex = 7) OR (CB_MODO_FILTRO.ItemIndex = 8) OR (CB_MODO_FILTRO.ItemIndex = 11) OR (CB_MODO_FILTRO.ItemIndex = 13) THEN
     BEGIN
     // *****************
     // **  MODO AD    **
     // ******************
         LA_MODO.Caption := 'MODO AD';
          IF (CB_MODO_FILTRO.ItemIndex = 2) THEN PR_GRAVAR_DADOS ('INICIO',VI_LINHAS2, 1, TRUNC(STGR_LINHA_A4_C1.RowCount-1));
          FOR VI_COMBINACOES1 := 1{23} TO TRUNC((STGR_LINHA_A4_C1.RowCount-1)/1) DO
          BEGIN
          VI_CONTAR_COMB1 := VI_CONTAR_COMB1 +1 ;
               IF (STGR_LINHA_A4_C1.Cells[1,VI_COMBINACOES1] = 'F') then
                    continue;
               LA_TOTAL_COMB.Caption := '% PROCESSADOS: 0 %    ';
               FOR VI_COMBINACOES2 := 1{4} TO  (STGR_LINHA_B3_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_B3_C1.Cells[1,VI_COMBINACOES2] = 'F') then
                         continue;
                    FOR VsI_COMBINACOES3 := 1 {7} TO {28}(STGR_LINHA_C2_C1.RowCount-1) DO
                    BEGIN
                         IF (STGR_LINHA_C2_C1.Cells[1,VsI_COMBINACOES3] = 'F') then
                              continue;
                         FOR VsI_COMBINACOES4 := 1 {10} TO {14} (STGR_LINHA_D3_C1.RowCount-1) DO
                         BEGIN
                              IF (STGR_LINHA_D3_C1.Cells[1,VsI_COMBINACOES4] = 'F') then
                                    continue;
                                   FOR VI_CONTAR :=1 TO 5 DO
                                   BEGIN
                                        STGR_BASE_5.Cells[VI_CONTAR,1] := '0';
                                        STGR_BASE_5.Cells[VI_CONTAR,2] := '0';
                                        STGR_BASE_5.Cells[VI_CONTAR,3] := '0';
                                        STGR_BASE_5.Cells[VI_CONTAR,4] := '0';
                                        STGR_BASE_5.Cells[VI_CONTAR,5] := '0';
                                   END; // FOR
                                   STGR_BASE_5.Cells[1,1] := STGR_LINHA_A4_C1.Cells[2,VI_COMBINACOES1];
                                   STGR_BASE_5.Cells[2,1] := STGR_LINHA_A4_C1.Cells[3,VI_COMBINACOES1];
                                   STGR_BASE_5.Cells[3,1] := STGR_LINHA_A4_C1.Cells[4,VI_COMBINACOES1];
                                   STGR_BASE_5.Cells[4,1] := STGR_LINHA_A4_C1.Cells[5,VI_COMBINACOES1];
                                   STGR_BASE_5F.Cells[1,1] := STGR_LINHA_A4_C2.Cells[2,VI_COMBINACOES1];
                                   STGR_BASE_5F.Cells[2,1] := STGR_LINHA_A4_C2.Cells[3,VI_COMBINACOES1];
                                   STGR_BASE_5F.Cells[3,1] := STGR_LINHA_A4_C2.Cells[4,VI_COMBINACOES1];
                                   STGR_BASE_5F.Cells[4,1] := STGR_LINHA_A4_C2.Cells[5,VI_COMBINACOES1];

                                   STGR_BASE_5.Cells[1,2] := STGR_LINHA_B3_C1.Cells[2,VI_COMBINACOES2];
                                   STGR_BASE_5.Cells[2,2] := STGR_LINHA_B3_C1.Cells[3,VI_COMBINACOES2];
                                   STGR_BASE_5.Cells[3,2] := STGR_LINHA_B3_C1.Cells[4,VI_COMBINACOES2];
                                   STGR_BASE_5.Cells[4,2] := '0';
                                   STGR_BASE_5F.Cells[1,2] := STGR_LINHA_B4_C2.Cells[2,VI_COMBINACOES2];
                                   STGR_BASE_5F.Cells[2,2] := STGR_LINHA_B4_C2.Cells[3,VI_COMBINACOES2];
                                   STGR_BASE_5F.Cells[3,2] := STGR_LINHA_B4_C2.Cells[4,VI_COMBINACOES2];
                                   STGR_BASE_5F.Cells[4,2] := STGR_LINHA_B4_C2.Cells[5,VI_COMBINACOES2];

                                   STGR_BASE_5.Cells[1,3] := STGR_LINHA_C2_C1.Cells[2,VSI_COMBINACOES3];
                                   STGR_BASE_5.Cells[2,3] := STGR_LINHA_C2_C1.Cells[3,VSI_COMBINACOES3];
                                   STGR_BASE_5.Cells[3,3] := '0';
                                   STGR_BASE_5.Cells[4,3] := '0';
                                   STGR_BASE_5F.Cells[1,3] := STGR_LINHA_C3_C2.Cells[2,VSI_COMBINACOES3];
                                   STGR_BASE_5F.Cells[2,3] := STGR_LINHA_C3_C2.Cells[3,VSI_COMBINACOES3];
                                   STGR_BASE_5F.Cells[3,3] := STGR_LINHA_C3_C2.Cells[4,VSI_COMBINACOES3];
                                   STGR_BASE_5F.Cells[4,3] := '0';

                                   STGR_BASE_5.Cells[1,4] := STGR_LINHA_D3_C1.Cells[2,VSI_COMBINACOES4];
                                   STGR_BASE_5.Cells[2,4] := STGR_LINHA_D3_C1.Cells[3,VSI_COMBINACOES4];
                                   STGR_BASE_5.Cells[3,4] := STGR_LINHA_D3_C1.Cells[4,VSI_COMBINACOES4];
                                   STGR_BASE_5.Cells[4,4] := '0';
                                   STGR_BASE_5F.Cells[1,4] := STGR_LINHA_D2_C2.Cells[2,VSI_COMBINACOES4];
                                   STGR_BASE_5F.Cells[2,4] := STGR_LINHA_D2_C2.Cells[3,VSI_COMBINACOES4];
                                   STGR_BASE_5F.Cells[3,4] := '0';
                                   STGR_BASE_5F.Cells[4,4] := '0';
                                   if (VsI_COMBINACOES3 mod 2) = 0 then
                                         STGR_BASE_5.Repaint;
                                   //STGR_BASE_5F.Repaint;

                                   // ---------------------------------------
                                   // --  SOMATÓRIAS
                                   // ---------------------------------------
                                   VsI_FLAG_SOMATORIA1:=0;
                                  VsI_SOMA1 := STRtoINT(STGR_BASE_5.Cells[1,1] )
                                             + STRtoINT(STGR_BASE_5.Cells[1,2] )
                                             + STRtoINT(STGR_BASE_5.Cells[1,3] )
                                             + STRtoINT(STGR_BASE_5.Cells[1,4] )
                                             + STRtoINT(STGR_BASE_5.Cells[2,1] )
                                             + STRtoINT(STGR_BASE_5.Cells[2,2] )
                                             + STRtoINT(STGR_BASE_5.Cells[2,3] )
                                             + STRtoINT(STGR_BASE_5.Cells[2,4] )
                                             + STRtoINT(STGR_BASE_5.Cells[3,1] )
                                             + STRtoINT(STGR_BASE_5.Cells[3,2] )
                                             + STRtoINT(STGR_BASE_5.Cells[3,3] )
                                             + STRtoINT(STGR_BASE_5.Cells[3,4] )
                                             + STRtoINT(STGR_BASE_5.Cells[4,1] )
                                             + STRtoINT(STGR_BASE_5.Cells[4,2] )
                                             + STRtoINT(STGR_BASE_5.Cells[4,3] )
                                             + STRtoINT(STGR_BASE_5.Cells[4,4] )
                                             ;
                                   IF (VsI_SOMA1 >= (STRtoINT(ED_SOMAS_C1_INI.Text))) AND (VsI_SOMA1 <= (STRtoINT(ED_SOMAS_C1_FINAL.Text))) THEN
                                   BEGIN
                                        VsI_FLAG_SOMATORIA1:=1 ;
                                   END ELSE BEGIN
                                        CONTINUE;
                                   END; // IF
                                   VsI_FLAG_SOMATORIA2:=0;
                                  VsI_SOMA1 := STRtoINT(STGR_BASE_5F.Cells[1,1] )
                                             + STRtoINT(STGR_BASE_5F.Cells[1,2] )
                                             + STRtoINT(STGR_BASE_5F.Cells[1,3] )
                                             + STRtoINT(STGR_BASE_5F.Cells[1,4] )
                                             + STRtoINT(STGR_BASE_5F.Cells[2,1] )
                                             + STRtoINT(STGR_BASE_5F.Cells[2,2] )
                                             + STRtoINT(STGR_BASE_5F.Cells[2,3] )
                                             + STRtoINT(STGR_BASE_5F.Cells[2,4] )
                                             + STRtoINT(STGR_BASE_5F.Cells[3,1] )
                                             + STRtoINT(STGR_BASE_5F.Cells[3,2] )
                                             + STRtoINT(STGR_BASE_5F.Cells[3,3] )
                                             + STRtoINT(STGR_BASE_5F.Cells[3,4] )
                                             + STRtoINT(STGR_BASE_5F.Cells[4,1] )
                                             + STRtoINT(STGR_BASE_5F.Cells[4,2] )
                                             + STRtoINT(STGR_BASE_5F.Cells[4,3] )
                                             + STRtoINT(STGR_BASE_5F.Cells[4,4] )
                                             ;
                                   IF (VsI_SOMA1 >= (STRtoINT(ED_SOMAS_C2_INI.Text))) AND (VsI_SOMA1 <= (STRtoINT(ED_SOMAS_C2_FINAL.Text))) THEN
                                   BEGIN
                                        VsI_FLAG_SOMATORIA2:=1 ;
                                   END ELSE BEGIN
                                        CONTINUE;
                                   END; // IF

                                   IF (VsI_FLAG_SOMATORIA1=1) AND (VsI_FLAG_SOMATORIA2=1) THEN
                                   BEGIN
                                             // ===> Obrigatórios
                                             IF  STRtoINT(ED_EXC_OBR_1.Text) > 0 THEN
                                             BEGIN
                                                  IF  NOT(
                                                      (STRtoINT(STGR_BASE_5.Cells[1,1]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,1]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,1]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[4,1]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,2]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,2]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,2]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,3]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,3]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,4]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,4]) = STRtoINT(ED_EXC_OBR_1.Text)) or
                                                      (STRtoINT(STGR_BASE_5.Cells[3,4]) = STRtoINT(ED_EXC_OBR_1.Text))
                                                      )
                                                  THEN
                                                       CONTINUE;
                                                  IF  NOT(
                                                      (STRtoINT(STGR_BASE_5.Cells[1,1]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,1]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,1]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[4,1]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,2]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,2]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,2]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,3]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,3]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,4]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,4]) = STRtoINT(ED_EXC_OBR_2.Text)) or
                                                      (STRtoINT(STGR_BASE_5.Cells[3,4]) = STRtoINT(ED_EXC_OBR_2.Text))
                                                      )
                                                  THEN
                                                       CONTINUE;
                                                  IF  NOT(
                                                      (STRtoINT(STGR_BASE_5.Cells[1,1]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,1]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,1]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[4,1]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,2]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,2]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,2]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,3]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,3]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,4]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,4]) = STRtoINT(ED_EXC_OBR_3.Text)) or
                                                      (STRtoINT(STGR_BASE_5.Cells[3,4]) = STRtoINT(ED_EXC_OBR_3.Text))
                                                      )
                                                  THEN
                                                       CONTINUE;
                                             END; // IF
                                             // -- >> combinacçao 1
                                             STGR_COMB10.Cells[0,VI_LINHAS2+0] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+0] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+0] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+0] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+0] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+0] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+0] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+0] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+0] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+0] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+0] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+0);
                                             // -- >> combinacçao 2
                                             STGR_COMB10.Cells[0,VI_LINHAS2+1] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+1] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+1] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+1] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+1] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+1] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+1] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+1] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+1] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+1] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+1] := STGR_BASE_5.Cells[3,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+1);
                                             // -- >> combinacçao 3
                                             STGR_COMB10.Cells[0,VI_LINHAS2+2] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+2] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+2] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+2] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+2] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+2] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+2] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+2] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+2] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+2] := STGR_BASE_5.Cells[2,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+2] := STGR_BASE_5.Cells[3,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+2);

                                             // -- >> combinacçao 4
                                             STGR_COMB10.Cells[0,VI_LINHAS2+3] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+3] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+3] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+3] := STGR_BASE_5.Cells[4,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+3] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+3] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+3] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+3] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+3] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+3] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+3] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+3);
                                             // -- >> combinacçao 5
                                             STGR_COMB10.Cells[0,VI_LINHAS2+4] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+4] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+4] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+4] := STGR_BASE_5.Cells[4,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+4] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+4] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+4] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+4] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+4] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+4] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+4] := STGR_BASE_5.Cells[3,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+4);
                                             // -- >> combinacçao 6
                                             STGR_COMB10.Cells[0,VI_LINHAS2+5] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+5] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+5] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+5] := STGR_BASE_5.Cells[4,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+5] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+5] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+5] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+5] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+5] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+5] := STGR_BASE_5.Cells[2,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+5] := STGR_BASE_5.Cells[3,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+5);

                                            // -- >> combinacçao 7
                                             STGR_COMB10.Cells[0,VI_LINHAS2+6] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+6] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+6] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+6] := STGR_BASE_5.Cells[4,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+6] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+6] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+6] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+6] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+6] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+6] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+6] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+6);
                                             // -- >> combinacçao 8
                                             STGR_COMB10.Cells[0,VI_LINHAS2+7] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+7] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+7] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+7] := STGR_BASE_5.Cells[4,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+7] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+7] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+7] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+7] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+7] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+7] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+7] := STGR_BASE_5.Cells[3,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+7);
                                             // -- >> combinacçao 9
                                             STGR_COMB10.Cells[0,VI_LINHAS2+8] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+8] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+8] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+8] := STGR_BASE_5.Cells[4,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+8] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+8] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+8] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+8] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+8] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+8] := STGR_BASE_5.Cells[2,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+8] := STGR_BASE_5.Cells[3,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+8);

                                            // -- >> combinacçao 10
                                             STGR_COMB10.Cells[0,VI_LINHAS2+9] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+9] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+9] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+9] := STGR_BASE_5.Cells[4,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+9] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+9] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+9] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+9] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+9] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+9] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+9] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+9);
                                             // -- >> combinacçao 11
                                             STGR_COMB10.Cells[0,VI_LINHAS2+10] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+10] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+10] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+10] := STGR_BASE_5.Cells[4,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+10] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+10] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+10] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+10] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+10] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+10] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+10] := STGR_BASE_5.Cells[3,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+10);
                                             // -- >> combinacçao 12
                                             STGR_COMB10.Cells[0,VI_LINHAS2+11] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+11] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+11] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+11] := STGR_BASE_5.Cells[4,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+11] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+11] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+11] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+11] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+11] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+11] := STGR_BASE_5.Cells[2,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+11] := STGR_BASE_5.Cells[3,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+11);

                                             VI_LINHAS2 := VI_LINHAS2 + 12;
                                             VI_LINHAS1 := VI_LINHAS1 + 12;
                                             PR_GRAVAR_DADOS ('NAO', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_LINHA_A4_C1.RowCount-1));
                                        IF (VI_LINHAS2 MOD 120)=0 THEN
                                        BEGIN
                                                  PA_RESULTADO.Repaint;
                                                  STGR_BASE_5.Repaint;
                                                  STGR_COMB10.RowCount := VI_LINHAS2;
                                                  STGR_COMB10.Repaint;
                                                  LA_TOTAL_COMB.Caption := '% PROCESSADOS: '+  INTtoSTR(TRUNC(VI_COMBINACOES2/(STGR_LINHA_B3_C1.RowCount)*100))+ ' %  ';//INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
                                                  LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1)+'  ';
                                                  LA_QTD_COMB.Repaint;
                                                            PGBR_GERARCOMB0.Position := TRUNC(VI_COMBINACOES2/(STGR_LINHA_B3_C1.RowCount-1)*100);
                                                            PGBR_GERARCOMB0.Repaint;
                                                            LA_QTD_COMB.Repaint;
                                                  SLEEP(11); //9
                                        END; // IF
                                   END; // IF (VsI_FLAG_SOMATORIA1=1) AND (VsI_FLAG_SOMATORIA2=1)
                                   IF ( VsI_COMBINACOES4 MOD 4) =0 THEN
                                   BEGIN
                                        LA_TOTAL_COMB.Caption := '% PROCESSADOS: '+ INTtoSTR(TRUNC(VI_COMBINACOES2/(STGR_LINHA_B3_C1.RowCount-1)*100))+ ' %  ';//INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
                                        LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1)+'  ';
                                        LA_QTD_COMB.Repaint;
                                        PA_RESULTADO.Repaint;
                                        STGR_COMB10.RowCount := VI_LINHAS2;
                                        STGR_COMB10.Repaint;
                                   END;
                         END;// FOR VsI_COMBINACOES4
                         PGBR_GERARCOMB0.Position := TRUNC(VI_COMBINACOES2/(STGR_LINHA_B3_C1.RowCount-1)*100);
                         PGBR_GERARCOMB0.Repaint;
                         LA_QTD_COMB.Repaint;
                         STGR_COMB10.RowCount := VI_LINHAS2;
                         STGR_COMB10.Repaint;
                         SLEEP(35);  //95
                    END;// FOR VsI_COMBINACOES3
                            {   STGR_COMB10.RowCount := VI_LINHAS2;
                               STGR_COMB10.Repaint;
                              LA_TOTAL_COMB.Caption := 'TOTAL PROCESSADOS: '+INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
                              LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1)+'  ';
                              LA_QTD_COMB.Repaint;     }
                                        PGBR_GERARCOMB0.Position := TRUNC(VI_COMBINACOES2/(STGR_LINHA_B3_C1.RowCount-1)*100);
                                        PGBR_GERARCOMB0.Repaint;
                                        LA_QTD_COMB.Repaint;
                                        PANEL_TITULO_SIMULACAO.Repaint;
                                        Pa_bASE5.Repaint;
                                        STGR_COMB10.Repaint;
                                        PGBR_GERARCOMB.Repaint;
                                        SLEEP(11);   //29  ou 99
              // Self.WindowState := wsMinimized;
              // Self.WindowState :=  wsNormal;
              // SELF.Repaint;
               END;// FOR VI_COMBINACOES2
               //PGBR_GERARCOMB3.Position := 100;
                    LA_TOTAL_COMB.Caption := '% PROCESSADOS: '+  INTtoSTR(TRUNC(VI_COMBINACOES2/(STGR_LINHA_B3_C1.RowCount)*100))+ ' %  ';//INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
                    LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1)+'  ';
                    LA_QTD_COMB.Repaint;
               PGBR_GERARCOMB0.Position := 100;
               LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_COMBINACOES1)+ ' DE '+  INTtoSTR(STGR_LINHA_A4_C1.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(VI_COMBINACOES1/(STGR_LINHA_A4_C1.RowCount-1)*100))+ ' %  ';
               PGBR_GERARCOMB.Position := TRUNC(VI_COMBINACOES1/(STGR_LINHA_A4_C1.RowCount-1)*100);
               LA_GERAR_COMB.Repaint;
               PGBR_GERARCOMB.Repaint;
               STGR_COMB10.RowCount := VI_LINHAS2;
               STGR_COMB10.Repaint;
               IF   (PGBR_GERARCOMB.Position MOD 4) = 0 THEN
               BEGIN
                    Self.WindowState := wsMinimized;
                    Self.WindowState :=  wsNormal;
                    Pa_bASE5.Repaint;
                    PA_RESULTADO.Repaint;
                    STGR_COMB10.RowCount := VI_LINHAS2;
                    STGR_COMB10.Repaint;
                    PGBR_GERARCOMB.Repaint;               
                    SELF.Repaint;
                    SLEEP(90);
               END; // IF
               IF (STGR_COMB10.RowCount-1)>2
               THEN
                    STGR_COMB10.FixedRows := 1;
          END;// FOR VI_COMBINACOES1
     END;
    IF (CB_MODO_FILTRO.ItemIndex = 3) OR (CB_MODO_FILTRO.ItemIndex = 9) OR (CB_MODO_FILTRO.ItemIndex = 12) OR (CB_MODO_FILTRO.ItemIndex = 13) THEN
     BEGIN
     // *****************
     // **  MODO BC    **
     // ******************
         LA_MODO.Caption := 'MODO BC';
          IF (CB_MODO_FILTRO.ItemIndex = 3) OR (CB_MODO_FILTRO.ItemIndex = 9) OR (CB_MODO_FILTRO.ItemIndex = 12) THEN PR_GRAVAR_DADOS ('INICIO',VI_LINHAS2, 1, TRUNC(STGR_LINHA_A3_C1.RowCount-1));
          FOR VI_COMBINACOES1 := 1{23} TO TRUNC((STGR_LINHA_A3_C1.RowCount-1)/1) DO
          BEGIN
          VI_CONTAR_COMB1 := VI_CONTAR_COMB1 +1 ;
               IF (STGR_LINHA_A3_C1.Cells[1,VI_COMBINACOES1] = 'F') then
                    continue;
               LA_TOTAL_COMB.Caption := '% PROCESSADOS: 0 %    ';
               FOR VI_COMBINACOES2 := 1{4} TO  (STGR_LINHA_B4_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_B4_C1.Cells[1,VI_COMBINACOES2] = 'F') then
                         continue;
                    FOR VsI_COMBINACOES3 := 1 {7} TO {28}(STGR_LINHA_c3_C1.RowCount-1) DO
                    BEGIN
                         IF (STGR_LINHA_c3_C1.Cells[1,VsI_COMBINACOES3] = 'F') then
                              continue;
                         FOR VsI_COMBINACOES4 := 1 {10} TO {14} (STGR_LINHA_D2_C1.RowCount-1) DO
                         BEGIN
                              IF (STGR_LINHA_D2_C1.Cells[1,VsI_COMBINACOES4] = 'F') then
                                    continue;
                                   FOR VI_CONTAR :=1 TO 5 DO
                                   BEGIN
                                        STGR_BASE_5.Cells[VI_CONTAR,1] := '0';
                                        STGR_BASE_5.Cells[VI_CONTAR,2] := '0';
                                        STGR_BASE_5.Cells[VI_CONTAR,3] := '0';
                                        STGR_BASE_5.Cells[VI_CONTAR,4] := '0';
                                        STGR_BASE_5.Cells[VI_CONTAR,5] := '0';
                                   END; // FOR
                                   STGR_BASE_5.Cells[1,1] := STGR_LINHA_A3_C1.Cells[2,VI_COMBINACOES1];
                                   STGR_BASE_5.Cells[2,1] := STGR_LINHA_A3_C1.Cells[3,VI_COMBINACOES1];
                                   STGR_BASE_5.Cells[3,1] := STGR_LINHA_A3_C1.Cells[4,VI_COMBINACOES1];
                                   STGR_BASE_5.Cells[4,1] := '0';
                                   STGR_BASE_5F.Cells[1,1] := STGR_LINHA_A5_C2.Cells[2,VI_COMBINACOES1];
                                   STGR_BASE_5F.Cells[2,1] := STGR_LINHA_A5_C2.Cells[3,VI_COMBINACOES1];
                                   STGR_BASE_5F.Cells[3,1] := STGR_LINHA_A5_C2.Cells[4,VI_COMBINACOES1];
                                   STGR_BASE_5F.Cells[4,1] := INTtoSTR(STRtoINT(STGR_LINHA_A5_C2.Cells[5,VI_COMBINACOES1]) + STRtoINT(STGR_LINHA_A5_C2.Cells[6,VI_COMBINACOES1]));

                                   STGR_BASE_5.Cells[1,2] := STGR_LINHA_B4_C1.Cells[2,VI_COMBINACOES2];
                                   STGR_BASE_5.Cells[2,2] := STGR_LINHA_B4_C1.Cells[3,VI_COMBINACOES2];
                                   STGR_BASE_5.Cells[3,2] := STGR_LINHA_B4_C1.Cells[4,VI_COMBINACOES2];
                                   STGR_BASE_5.Cells[4,2] := STGR_LINHA_B4_C1.Cells[5,VI_COMBINACOES2];
                                   STGR_BASE_5F.Cells[1,2] := STGR_LINHA_B3_C2.Cells[2,VI_COMBINACOES2];
                                   STGR_BASE_5F.Cells[2,2] := STGR_LINHA_B3_C2.Cells[3,VI_COMBINACOES2];
                                   STGR_BASE_5F.Cells[3,2] := STGR_LINHA_B3_C2.Cells[4,VI_COMBINACOES2];
                                   STGR_BASE_5F.Cells[4,2] := '0';

                                   STGR_BASE_5.Cells[1,3] := STGR_LINHA_c3_C1.Cells[2,VSI_COMBINACOES3];
                                   STGR_BASE_5.Cells[2,3] := STGR_LINHA_c3_C1.Cells[3,VSI_COMBINACOES3];
                                   STGR_BASE_5.Cells[3,3] := STGR_LINHA_c3_C1.Cells[4,VSI_COMBINACOES3];
                                   STGR_BASE_5.Cells[4,3] := '0';
                                   STGR_BASE_5F.Cells[1,3] := STGR_LINHA_c2_C2.Cells[2,VSI_COMBINACOES3];
                                   STGR_BASE_5F.Cells[2,3] := STGR_LINHA_c2_C2.Cells[3,VSI_COMBINACOES3];
                                   STGR_BASE_5F.Cells[3,3] := '0';
                                   STGR_BASE_5F.Cells[4,3] := '0';

                                   STGR_BASE_5.Cells[1,4] := STGR_LINHA_D2_C1.Cells[2,VSI_COMBINACOES4];
                                   STGR_BASE_5.Cells[2,4] := STGR_LINHA_D2_C1.Cells[3,VSI_COMBINACOES4];
                                   STGR_BASE_5.Cells[3,4] := '0';
                                   STGR_BASE_5.Cells[4,4] := '0';
                                   STGR_BASE_5F.Cells[1,4] := STGR_LINHA_D3_C2.Cells[2,VSI_COMBINACOES4];
                                   STGR_BASE_5F.Cells[2,4] := STGR_LINHA_D3_C2.Cells[3,VSI_COMBINACOES4];
                                   STGR_BASE_5F.Cells[3,4] := STGR_LINHA_D3_C2.Cells[4,VSI_COMBINACOES4];
                                   STGR_BASE_5F.Cells[4,4] := '0';
                                   if (VsI_COMBINACOES3 mod 2) = 0 then
                                         STGR_BASE_5.Repaint;
                                   //STGR_BASE_5F.Repaint;

                                   // ---------------------------------------
                                   // --  SOMATÓRIAS
                                   // ---------------------------------------
                                   VsI_FLAG_SOMATORIA1:=0;
                                  VsI_SOMA1 := STRtoINT(STGR_BASE_5.Cells[1,1] )
                                             + STRtoINT(STGR_BASE_5.Cells[1,2] )
                                             + STRtoINT(STGR_BASE_5.Cells[1,3] )
                                             + STRtoINT(STGR_BASE_5.Cells[1,4] )
                                             + STRtoINT(STGR_BASE_5.Cells[2,1] )
                                             + STRtoINT(STGR_BASE_5.Cells[2,2] )
                                             + STRtoINT(STGR_BASE_5.Cells[2,3] )
                                             + STRtoINT(STGR_BASE_5.Cells[2,4] )
                                             + STRtoINT(STGR_BASE_5.Cells[3,1] )
                                             + STRtoINT(STGR_BASE_5.Cells[3,2] )
                                             + STRtoINT(STGR_BASE_5.Cells[3,3] )
                                             + STRtoINT(STGR_BASE_5.Cells[3,4] )
                                             + STRtoINT(STGR_BASE_5.Cells[4,1] )
                                             + STRtoINT(STGR_BASE_5.Cells[4,2] )
                                             + STRtoINT(STGR_BASE_5.Cells[4,3] )
                                             + STRtoINT(STGR_BASE_5.Cells[4,4] )
                                             ;
                                   IF (VsI_SOMA1 >= (STRtoINT(ED_SOMAS_C1_INI.Text))) AND (VsI_SOMA1 <= (STRtoINT(ED_SOMAS_C1_FINAL.Text))) THEN
                                   BEGIN
                                        VsI_FLAG_SOMATORIA1:=1 ;
                                   END ELSE BEGIN
                                        CONTINUE;
                                   END; // IF
                                   VsI_FLAG_SOMATORIA2:=0;
                                  VsI_SOMA1 := STRtoINT(STGR_BASE_5F.Cells[1,1] )
                                             + STRtoINT(STGR_BASE_5F.Cells[1,2] )
                                             + STRtoINT(STGR_BASE_5F.Cells[1,3] )
                                             + STRtoINT(STGR_BASE_5F.Cells[1,4] )
                                             + STRtoINT(STGR_BASE_5F.Cells[2,1] )
                                             + STRtoINT(STGR_BASE_5F.Cells[2,2] )
                                             + STRtoINT(STGR_BASE_5F.Cells[2,3] )
                                             + STRtoINT(STGR_BASE_5F.Cells[2,4] )
                                             + STRtoINT(STGR_BASE_5F.Cells[3,1] )
                                             + STRtoINT(STGR_BASE_5F.Cells[3,2] )
                                             + STRtoINT(STGR_BASE_5F.Cells[3,3] )
                                             + STRtoINT(STGR_BASE_5F.Cells[3,4] )
                                             + STRtoINT(STGR_BASE_5F.Cells[4,1] )
                                             + STRtoINT(STGR_BASE_5F.Cells[4,2] )
                                             + STRtoINT(STGR_BASE_5F.Cells[4,3] )
                                             + STRtoINT(STGR_BASE_5F.Cells[4,4] )
                                             ;
                                   IF (VsI_SOMA1 >= (STRtoINT(ED_SOMAS_C2_INI.Text))) AND (VsI_SOMA1 <= (STRtoINT(ED_SOMAS_C2_FINAL.Text))) THEN
                                   BEGIN
                                        VsI_FLAG_SOMATORIA2:=1 ;
                                   END ELSE BEGIN
                                        CONTINUE;
                                   END; // IF

                                   IF (VsI_FLAG_SOMATORIA1=1) AND (VsI_FLAG_SOMATORIA2=1) THEN
                                   BEGIN
                                             // ===> Obrigatórios
                                             IF  STRtoINT(ED_EXC_OBR_1.Text) > 0 THEN
                                             BEGIN
                                                  IF  NOT(
                                                      (STRtoINT(STGR_BASE_5.Cells[1,1]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,1]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,1]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,2]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,2]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,2]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[4,2]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,3]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,3]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,3]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,4]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,4]) = STRtoINT(ED_EXC_OBR_1.Text))
                                                      )
                                                  THEN
                                                       CONTINUE;
                                                  IF  NOT(
                                                      (STRtoINT(STGR_BASE_5.Cells[1,1]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,1]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,1]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,2]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,2]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,2]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[4,2]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,3]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,3]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,3]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,4]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,4]) = STRtoINT(ED_EXC_OBR_2.Text))
                                                      )
                                                  THEN
                                                       CONTINUE;
                                                  IF  NOT(
                                                      (STRtoINT(STGR_BASE_5.Cells[1,1]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,1]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,1]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,2]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,2]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,2]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[4,2]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,3]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,3]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,3]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,4]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,4]) = STRtoINT(ED_EXC_OBR_3.Text))
                                                      )
                                                  THEN
                                                       CONTINUE;
                                             END; // IF
                                             // -- >> combinacçao 1
                                             STGR_COMB10.Cells[0,VI_LINHAS2+0] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+0] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+0] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+0] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+0] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+0] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+0] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+0] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+0] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+0] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+0] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+0);
                                             // -- >> combinacçao 2
                                             STGR_COMB10.Cells[0,VI_LINHAS2+1] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+1] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+1] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+1] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+1] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+1] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+1] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+1] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+1] := STGR_BASE_5.Cells[3,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+1] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+1] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+1);
                                             // -- >> combinacçao 3
                                             STGR_COMB10.Cells[0,VI_LINHAS2+2] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+2] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+2] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+2] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+2] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+2] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+2] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+2] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+2] := STGR_BASE_5.Cells[3,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+2] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+2] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+2);

                                             // -- >> combinacçao 4
                                             STGR_COMB10.Cells[0,VI_LINHAS2+3] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+3] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+3] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+3] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+3] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+3] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+3] := STGR_BASE_5.Cells[4,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+3] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+3] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+3] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+3] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+3);
                                             // -- >> combinacçao 5
                                             STGR_COMB10.Cells[0,VI_LINHAS2+4] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+4] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+4] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+4] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+4] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+4] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+4] := STGR_BASE_5.Cells[4,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+4] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+4] := STGR_BASE_5.Cells[3,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+4] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+4] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+4);
                                             // -- >> combinacçao 6
                                             STGR_COMB10.Cells[0,VI_LINHAS2+5] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+5] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+5] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+5] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+5] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+5] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+5] := STGR_BASE_5.Cells[4,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+5] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+5] := STGR_BASE_5.Cells[3,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+5] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+5] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+5);

                                            // -- >> combinacçao 7
                                             STGR_COMB10.Cells[0,VI_LINHAS2+6] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+6] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+6] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+6] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+6] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+6] := STGR_BASE_5.Cells[3,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+6] := STGR_BASE_5.Cells[4,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+6] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+6] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+6] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+6] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+6);
                                             // -- >> combinacçao 8
                                             STGR_COMB10.Cells[0,VI_LINHAS2+7] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+7] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+7] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+7] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+7] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+7] := STGR_BASE_5.Cells[3,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+7] := STGR_BASE_5.Cells[4,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+7] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+7] := STGR_BASE_5.Cells[3,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+7] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+7] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+7);
                                             // -- >> combinacçao 9
                                             STGR_COMB10.Cells[0,VI_LINHAS2+8] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+8] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+8] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+8] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+8] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+8] := STGR_BASE_5.Cells[3,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+8] := STGR_BASE_5.Cells[4,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+8] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+8] := STGR_BASE_5.Cells[3,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+8] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+8] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+8);

                                            // -- >> combinacçao 10
                                             STGR_COMB10.Cells[0,VI_LINHAS2+9] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+9] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+9] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+9] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+9] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+9] := STGR_BASE_5.Cells[3,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+9] := STGR_BASE_5.Cells[4,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+9] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+9] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+9] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+9] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+9);
                                             // -- >> combinacçao 11
                                             STGR_COMB10.Cells[0,VI_LINHAS2+10] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+10] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+10] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+10] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+10] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+10] := STGR_BASE_5.Cells[3,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+10] := STGR_BASE_5.Cells[4,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+10] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+10] := STGR_BASE_5.Cells[3,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+10] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+10] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+10);
                                             // -- >> combinacçao 12
                                             STGR_COMB10.Cells[0,VI_LINHAS2+11] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+11] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+11] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+11] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+11] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+11] := STGR_BASE_5.Cells[3,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+11] := STGR_BASE_5.Cells[4,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+11] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+11] := STGR_BASE_5.Cells[3,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+11] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+11] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+11);

                                             VI_LINHAS2 := VI_LINHAS2 + 12;
                                             VI_LINHAS1 := VI_LINHAS1 + 12;
                                             PR_GRAVAR_DADOS ('NAO', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_LINHA_A3_C1.RowCount-1));
                                        IF (VI_LINHAS2 MOD 120)=0 THEN
                                        BEGIN
                                                  PA_RESULTADO.Repaint;
                                                  STGR_BASE_5.Repaint;
                                                  STGR_COMB10.RowCount := VI_LINHAS2;
                                                  STGR_COMB10.Repaint;
                                                  LA_TOTAL_COMB.Caption := '% PROCESSADOS: '+  INTtoSTR(TRUNC(VI_COMBINACOES2/(STGR_LINHA_B4_C1.RowCount)*100))+ ' %  ';//INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
                                                  LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1)+'  ';
                                                  LA_QTD_COMB.Repaint;
                                                            PGBR_GERARCOMB0.Position := TRUNC(VI_COMBINACOES2/(STGR_LINHA_B4_C1.RowCount-1)*100);
                                                            PGBR_GERARCOMB0.Repaint;
                                                            LA_QTD_COMB.Repaint;
                                                  SLEEP(11); //9
                                        END; // IF
                                   END; // IF (VsI_FLAG_SOMATORIA1=1) AND (VsI_FLAG_SOMATORIA2=1)
                                   IF ( VsI_COMBINACOES4 MOD 4) =0 THEN
                                   BEGIN
                                        LA_TOTAL_COMB.Caption := '% PROCESSADOS: '+ INTtoSTR(TRUNC(VI_COMBINACOES2/(STGR_LINHA_B4_C1.RowCount-1)*100))+ ' %  ';//INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
                                        LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1)+'  ';
                                        LA_QTD_COMB.Repaint;
                                        PA_RESULTADO.Repaint;
                                        STGR_COMB10.RowCount := VI_LINHAS2;
                                        STGR_COMB10.Repaint;
                                   END;
                         END;// FOR VsI_COMBINACOES4
                         PGBR_GERARCOMB0.Position := TRUNC(VI_COMBINACOES2/(STGR_LINHA_B4_C1.RowCount-1)*100);
                         PGBR_GERARCOMB0.Repaint;
                         LA_QTD_COMB.Repaint;
                         STGR_COMB10.RowCount := VI_LINHAS2;
                         STGR_COMB10.Repaint;
                         SLEEP(35);  //95
                    END;// FOR VsI_COMBINACOES3
                            {   STGR_COMB10.RowCount := VI_LINHAS2;
                               STGR_COMB10.Repaint;
                              LA_TOTAL_COMB.Caption := 'TOTAL PROCESSADOS: '+INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
                              LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1)+'  ';
                              LA_QTD_COMB.Repaint;     }
                                        PGBR_GERARCOMB0.Position := TRUNC(VI_COMBINACOES2/(STGR_LINHA_B4_C1.RowCount-1)*100);
                                        PGBR_GERARCOMB0.Repaint;
                                        LA_QTD_COMB.Repaint;
                                        PANEL_TITULO_SIMULACAO.Repaint;
                                        Pa_bASE5.Repaint;
                                        STGR_COMB10.Repaint;
                                        PGBR_GERARCOMB.Repaint;
                                        SLEEP(11);   //29  ou 99
              // Self.WindowState := wsMinimized;
              // Self.WindowState :=  wsNormal;
              // SELF.Repaint;
               END;// FOR VI_COMBINACOES2
               //PGBR_GERARCOMB3.Position := 100;
                    LA_TOTAL_COMB.Caption := '% PROCESSADOS: '+  INTtoSTR(TRUNC(VI_COMBINACOES2/(STGR_LINHA_B4_C1.RowCount)*100))+ ' %  ';//INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
                    LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1)+'  ';
                    LA_QTD_COMB.Repaint;
               PGBR_GERARCOMB0.Position := 100;
               LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_COMBINACOES1)+ ' DE '+  INTtoSTR(STGR_LINHA_A3_C1.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(VI_COMBINACOES1/(STGR_LINHA_A3_C1.RowCount-1)*100))+ ' %  ';
               PGBR_GERARCOMB.Position := TRUNC(VI_COMBINACOES1/(STGR_LINHA_A3_C1.RowCount-1)*100);
               LA_GERAR_COMB.Repaint;
               PGBR_GERARCOMB.Repaint;
               STGR_COMB10.RowCount := VI_LINHAS2;
               STGR_COMB10.Repaint;
               IF   (PGBR_GERARCOMB.Position MOD 4) = 0 THEN
               BEGIN
                    Self.WindowState := wsMinimized;
                    Self.WindowState :=  wsNormal;
                    Pa_bASE5.Repaint;
                    PA_RESULTADO.Repaint;
                    STGR_COMB10.RowCount := VI_LINHAS2;
                    STGR_COMB10.Repaint;
                    PGBR_GERARCOMB.Repaint;               
                    SELF.Repaint;
                    SLEEP(90);
               END; // IF
               IF (STGR_COMB10.RowCount-1)>2
               THEN
                    STGR_COMB10.FixedRows := 1;
          END;// FOR VI_COMBINACOES1
     end;
    IF (CB_MODO_FILTRO.ItemIndex = 4) OR (CB_MODO_FILTRO.ItemIndex = 9) OR (CB_MODO_FILTRO.ItemIndex = 10) OR (CB_MODO_FILTRO.ItemIndex = 12) OR (CB_MODO_FILTRO.ItemIndex = 13) THEN
     BEGIN
     // *****************
     // **  MODO BD    **
     // ******************
         LA_MODO.Caption := 'MODO BD';
          IF (CB_MODO_FILTRO.ItemIndex = 4) OR (CB_MODO_FILTRO.ItemIndex = 10) THEN PR_GRAVAR_DADOS ('INICIO',VI_LINHAS2, 1, TRUNC(STGR_LINHA_A3_C1.RowCount-1));
          FOR VI_COMBINACOES1 := 1{23} TO TRUNC((STGR_LINHA_A3_C1.RowCount-1)/1) DO
          BEGIN
          VI_CONTAR_COMB1 := VI_CONTAR_COMB1 +1 ;
               IF (STGR_LINHA_A3_C1.Cells[1,VI_COMBINACOES1] = 'F') then
                    continue;
               LA_TOTAL_COMB.Caption := '% PROCESSADOS: 0 %    ';
               FOR VI_COMBINACOES2 := 1{4} TO  (STGR_LINHA_B4_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_B4_C1.Cells[1,VI_COMBINACOES2] = 'F') then
                         continue;
                    FOR VsI_COMBINACOES3 := 1 {7} TO {28}(STGR_LINHA_C2_C1.RowCount-1) DO
                    BEGIN
                         IF (STGR_LINHA_C2_C1.Cells[1,VsI_COMBINACOES3] = 'F') then
                              continue;
                         FOR VsI_COMBINACOES4 := 1 {10} TO {14} (STGR_LINHA_D3_C1.RowCount-1) DO
                         BEGIN
                              IF (STGR_LINHA_D3_C1.Cells[1,VsI_COMBINACOES4] = 'F') then
                                    continue;
                                   FOR VI_CONTAR :=1 TO 5 DO
                                   BEGIN
                                        STGR_BASE_5.Cells[VI_CONTAR,1] := '0';
                                        STGR_BASE_5.Cells[VI_CONTAR,2] := '0';
                                        STGR_BASE_5.Cells[VI_CONTAR,3] := '0';
                                        STGR_BASE_5.Cells[VI_CONTAR,4] := '0';
                                        STGR_BASE_5.Cells[VI_CONTAR,5] := '0';
                                   END; // FOR
                                   STGR_BASE_5.Cells[1,1] := STGR_LINHA_A3_C1.Cells[2,VI_COMBINACOES1];
                                   STGR_BASE_5.Cells[2,1] := STGR_LINHA_A3_C1.Cells[3,VI_COMBINACOES1];
                                   STGR_BASE_5.Cells[3,1] := STGR_LINHA_A3_C1.Cells[4,VI_COMBINACOES1];
                                   STGR_BASE_5.Cells[4,1] := '0';
                                   STGR_BASE_5F.Cells[1,1] := STGR_LINHA_A5_C2.Cells[2,VI_COMBINACOES1];
                                   STGR_BASE_5F.Cells[2,1] := STGR_LINHA_A5_C2.Cells[3,VI_COMBINACOES1];
                                   STGR_BASE_5F.Cells[3,1] := STGR_LINHA_A5_C2.Cells[4,VI_COMBINACOES1];
                                   STGR_BASE_5F.Cells[4,1] := INTtoSTR(STRtoINT(STGR_LINHA_A5_C2.Cells[5,VI_COMBINACOES1]) + STRtoINT(STGR_LINHA_A5_C2.Cells[6,VI_COMBINACOES1]));

                                   STGR_BASE_5.Cells[1,2] := STGR_LINHA_B4_C1.Cells[2,VI_COMBINACOES2];
                                   STGR_BASE_5.Cells[2,2] := STGR_LINHA_B4_C1.Cells[3,VI_COMBINACOES2];
                                   STGR_BASE_5.Cells[3,2] := STGR_LINHA_B4_C1.Cells[4,VI_COMBINACOES2];
                                   STGR_BASE_5.Cells[4,2] := STGR_LINHA_B4_C1.Cells[5,VI_COMBINACOES2];
                                   STGR_BASE_5F.Cells[1,2] := STGR_LINHA_B3_C2.Cells[2,VI_COMBINACOES2];
                                   STGR_BASE_5F.Cells[2,2] := STGR_LINHA_B3_C2.Cells[3,VI_COMBINACOES2];
                                   STGR_BASE_5F.Cells[3,2] := STGR_LINHA_B3_C2.Cells[4,VI_COMBINACOES2];
                                   STGR_BASE_5F.Cells[4,2] := '0';

                                   STGR_BASE_5.Cells[1,3] := STGR_LINHA_C2_C1.Cells[2,VSI_COMBINACOES3];
                                   STGR_BASE_5.Cells[2,3] := STGR_LINHA_C2_C1.Cells[3,VSI_COMBINACOES3];
                                   STGR_BASE_5.Cells[3,3] := '0';
                                   STGR_BASE_5.Cells[4,3] := '0';
                                   STGR_BASE_5F.Cells[1,3] := STGR_LINHA_C3_C2.Cells[2,VSI_COMBINACOES3];
                                   STGR_BASE_5F.Cells[2,3] := STGR_LINHA_C3_C2.Cells[3,VSI_COMBINACOES3];
                                   STGR_BASE_5F.Cells[3,3] := STGR_LINHA_C3_C2.Cells[4,VSI_COMBINACOES3];
                                   STGR_BASE_5F.Cells[4,3] := '0';

                                   STGR_BASE_5.Cells[1,4] := STGR_LINHA_D3_C1.Cells[2,VSI_COMBINACOES4];
                                   STGR_BASE_5.Cells[2,4] := STGR_LINHA_D3_C1.Cells[3,VSI_COMBINACOES4];
                                   STGR_BASE_5.Cells[3,4] := STGR_LINHA_D3_C1.Cells[4,VSI_COMBINACOES4];
                                   STGR_BASE_5.Cells[4,4] := '0';
                                   STGR_BASE_5F.Cells[1,4] := STGR_LINHA_D2_C2.Cells[2,VSI_COMBINACOES4];
                                   STGR_BASE_5F.Cells[2,4] := STGR_LINHA_D2_C2.Cells[3,VSI_COMBINACOES4];
                                   STGR_BASE_5F.Cells[3,4] := '0';
                                   STGR_BASE_5F.Cells[4,4] := '0';
                                   if (VsI_COMBINACOES3 mod 2) = 0 then
                                         STGR_BASE_5.Repaint;
                                   //STGR_BASE_5F.Repaint;

                                   // ---------------------------------------
                                   // --  SOMATÓRIAS
                                   // ---------------------------------------
                                   VsI_FLAG_SOMATORIA1:=0;
                                  VsI_SOMA1 := STRtoINT(STGR_BASE_5.Cells[1,1] )
                                             + STRtoINT(STGR_BASE_5.Cells[1,2] )
                                             + STRtoINT(STGR_BASE_5.Cells[1,3] )
                                             + STRtoINT(STGR_BASE_5.Cells[1,4] )
                                             + STRtoINT(STGR_BASE_5.Cells[2,1] )
                                             + STRtoINT(STGR_BASE_5.Cells[2,2] )
                                             + STRtoINT(STGR_BASE_5.Cells[2,3] )
                                             + STRtoINT(STGR_BASE_5.Cells[2,4] )
                                             + STRtoINT(STGR_BASE_5.Cells[3,1] )
                                             + STRtoINT(STGR_BASE_5.Cells[3,2] )
                                             + STRtoINT(STGR_BASE_5.Cells[3,3] )
                                             + STRtoINT(STGR_BASE_5.Cells[3,4] )
                                             + STRtoINT(STGR_BASE_5.Cells[4,1] )
                                             + STRtoINT(STGR_BASE_5.Cells[4,2] )
                                             + STRtoINT(STGR_BASE_5.Cells[4,3] )
                                             + STRtoINT(STGR_BASE_5.Cells[4,4] )
                                             ;
                                   IF (VsI_SOMA1 >= (STRtoINT(ED_SOMAS_C1_INI.Text))) AND (VsI_SOMA1 <= (STRtoINT(ED_SOMAS_C1_FINAL.Text))) THEN
                                   BEGIN
                                        VsI_FLAG_SOMATORIA1:=1 ;
                                   END ELSE BEGIN
                                        CONTINUE;
                                   END; // IF
                                   VsI_FLAG_SOMATORIA2:=0;
                                  VsI_SOMA1 := STRtoINT(STGR_BASE_5F.Cells[1,1] )
                                             + STRtoINT(STGR_BASE_5F.Cells[1,2] )
                                             + STRtoINT(STGR_BASE_5F.Cells[1,3] )
                                             + STRtoINT(STGR_BASE_5F.Cells[1,4] )
                                             + STRtoINT(STGR_BASE_5F.Cells[2,1] )
                                             + STRtoINT(STGR_BASE_5F.Cells[2,2] )
                                             + STRtoINT(STGR_BASE_5F.Cells[2,3] )
                                             + STRtoINT(STGR_BASE_5F.Cells[2,4] )
                                             + STRtoINT(STGR_BASE_5F.Cells[3,1] )
                                             + STRtoINT(STGR_BASE_5F.Cells[3,2] )
                                             + STRtoINT(STGR_BASE_5F.Cells[3,3] )
                                             + STRtoINT(STGR_BASE_5F.Cells[3,4] )
                                             + STRtoINT(STGR_BASE_5F.Cells[4,1] )
                                             + STRtoINT(STGR_BASE_5F.Cells[4,2] )
                                             + STRtoINT(STGR_BASE_5F.Cells[4,3] )
                                             + STRtoINT(STGR_BASE_5F.Cells[4,4] )
                                             ;
                                   IF (VsI_SOMA1 >= (STRtoINT(ED_SOMAS_C2_INI.Text))) AND (VsI_SOMA1 <= (STRtoINT(ED_SOMAS_C2_FINAL.Text))) THEN
                                   BEGIN
                                        VsI_FLAG_SOMATORIA2:=1 ;
                                   END ELSE BEGIN
                                        CONTINUE;
                                   END; // IF

                                   IF (VsI_FLAG_SOMATORIA1=1) AND (VsI_FLAG_SOMATORIA2=1) THEN
                                   BEGIN
                                             // ===> Obrigatórios
                                             IF  STRtoINT(ED_EXC_OBR_1.Text) > 0 THEN
                                             BEGIN
                                                  IF  NOT(
                                                      (STRtoINT(STGR_BASE_5.Cells[1,1]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,1]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,1]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,2]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,2]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,2]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[4,2]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,3]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,3]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,4]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,4]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,4]) = STRtoINT(ED_EXC_OBR_1.Text))
                                                      )
                                                  THEN
                                                       CONTINUE;
                                                  IF  NOT(
                                                      (STRtoINT(STGR_BASE_5.Cells[1,1]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,1]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,1]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,2]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,2]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,2]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[4,2]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,3]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,3]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,4]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,4]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,4]) = STRtoINT(ED_EXC_OBR_2.Text))
                                                      )
                                                  THEN
                                                       CONTINUE;
                                                  IF  NOT(
                                                      (STRtoINT(STGR_BASE_5.Cells[1,1]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,1]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,1]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,2]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,2]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,2]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[4,2]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,3]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,3]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,4]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,4]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,4]) = STRtoINT(ED_EXC_OBR_3.Text))
                                                      )
                                                  THEN
                                                       CONTINUE;
                                             END; // IF
                                             // -- >> combinacçao 1
                                             STGR_COMB10.Cells[0,VI_LINHAS2+0] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+0] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+0] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+0] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+0] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+0] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+0] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+0] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+0] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+0] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+0] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+0);
                                             // -- >> combinacçao 2
                                             STGR_COMB10.Cells[0,VI_LINHAS2+1] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+1] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+1] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+1] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+1] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+1] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+1] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+1] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+1] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+1] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+1] := STGR_BASE_5.Cells[3,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+1);
                                             // -- >> combinacçao 3
                                             STGR_COMB10.Cells[0,VI_LINHAS2+2] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+2] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+2] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+2] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+2] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+2] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+2] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+2] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+2] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+2] := STGR_BASE_5.Cells[2,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+2] := STGR_BASE_5.Cells[3,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+2);

                                             // -- >> combinacçao 4
                                             STGR_COMB10.Cells[0,VI_LINHAS2+3] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+3] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+3] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+3] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+3] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+3] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+3] := STGR_BASE_5.Cells[4,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+3] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+3] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+3] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+3] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+3);
                                             // -- >> combinacçao 5
                                             STGR_COMB10.Cells[0,VI_LINHAS2+4] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+4] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+4] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+4] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+4] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+4] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+4] := STGR_BASE_5.Cells[4,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+4] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+4] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+4] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+4] := STGR_BASE_5.Cells[3,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+4);
                                             // -- >> combinacçao 6
                                             STGR_COMB10.Cells[0,VI_LINHAS2+5] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+5] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+5] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+5] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+5] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+5] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+5] := STGR_BASE_5.Cells[4,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+5] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+5] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+5] := STGR_BASE_5.Cells[2,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+5] := STGR_BASE_5.Cells[3,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+5);

                                            // -- >> combinacçao 7
                                             STGR_COMB10.Cells[0,VI_LINHAS2+6] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+6] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+6] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+6] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+6] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+6] := STGR_BASE_5.Cells[3,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+6] := STGR_BASE_5.Cells[4,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+6] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+6] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+6] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+6] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+6);
                                             // -- >> combinacçao 8
                                             STGR_COMB10.Cells[0,VI_LINHAS2+7] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+7] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+7] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+7] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+7] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+7] := STGR_BASE_5.Cells[3,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+7] := STGR_BASE_5.Cells[4,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+7] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+7] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+7] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+7] := STGR_BASE_5.Cells[3,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+7);
                                             // -- >> combinacçao 9
                                             STGR_COMB10.Cells[0,VI_LINHAS2+8] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+8] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+8] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+8] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+8] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+8] := STGR_BASE_5.Cells[3,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+8] := STGR_BASE_5.Cells[4,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+8] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+8] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+8] := STGR_BASE_5.Cells[2,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+8] := STGR_BASE_5.Cells[3,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+8);

                                            // -- >> combinacçao 10
                                             STGR_COMB10.Cells[0,VI_LINHAS2+9] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+9] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+9] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+9] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+9] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+9] := STGR_BASE_5.Cells[3,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+9] := STGR_BASE_5.Cells[4,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+9] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+9] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+9] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+9] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+9);
                                             // -- >> combinacçao 11
                                             STGR_COMB10.Cells[0,VI_LINHAS2+10] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+10] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+10] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+10] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+10] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+10] := STGR_BASE_5.Cells[3,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+10] := STGR_BASE_5.Cells[4,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+10] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+10] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+10] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+10] := STGR_BASE_5.Cells[3,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+10);
                                             // -- >> combinacçao 12
                                             STGR_COMB10.Cells[0,VI_LINHAS2+11] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+11] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+11] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+11] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+11] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+11] := STGR_BASE_5.Cells[3,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+11] := STGR_BASE_5.Cells[4,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+11] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+11] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+11] := STGR_BASE_5.Cells[2,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+11] := STGR_BASE_5.Cells[3,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+11);

                                             VI_LINHAS2 := VI_LINHAS2 + 12;
                                             VI_LINHAS1 := VI_LINHAS1 + 12;
                                             PR_GRAVAR_DADOS ('NAO', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_LINHA_A3_C1.RowCount-1));
                                        IF (VI_LINHAS2 MOD 120)=0 THEN
                                        BEGIN
                                                  PA_RESULTADO.Repaint;
                                                  STGR_BASE_5.Repaint;
                                                  STGR_COMB10.RowCount := VI_LINHAS2;
                                                  STGR_COMB10.Repaint;
                                                  LA_TOTAL_COMB.Caption := '% PROCESSADOS: '+  INTtoSTR(TRUNC(VI_COMBINACOES2/(STGR_LINHA_B4_C1.RowCount)*100))+ ' %  ';//INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
                                                  LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1)+'  ';
                                                  LA_QTD_COMB.Repaint;
                                                            PGBR_GERARCOMB0.Position := TRUNC(VI_COMBINACOES2/(STGR_LINHA_B4_C1.RowCount-1)*100);
                                                            PGBR_GERARCOMB0.Repaint;
                                                            LA_QTD_COMB.Repaint;
                                                  SLEEP(11); //9
                                        END; // IF
                                   END; // IF (VsI_FLAG_SOMATORIA1=1) AND (VsI_FLAG_SOMATORIA2=1)
                                   IF ( VsI_COMBINACOES4 MOD 4) =0 THEN
                                   BEGIN
                                        LA_TOTAL_COMB.Caption := '% PROCESSADOS: '+ INTtoSTR(TRUNC(VI_COMBINACOES2/(STGR_LINHA_B4_C1.RowCount-1)*100))+ ' %  ';//INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
                                        LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1)+'  ';
                                        LA_QTD_COMB.Repaint;
                                        PA_RESULTADO.Repaint;
                                        STGR_COMB10.RowCount := VI_LINHAS2;
                                        STGR_COMB10.Repaint;
                                   END;
                         END;// FOR VsI_COMBINACOES4
                         PGBR_GERARCOMB0.Position := TRUNC(VI_COMBINACOES2/(STGR_LINHA_B4_C1.RowCount-1)*100);
                         PGBR_GERARCOMB0.Repaint;
                         LA_QTD_COMB.Repaint;
                         STGR_COMB10.RowCount := VI_LINHAS2;
                         STGR_COMB10.Repaint;
                         SLEEP(35);  //95
                    END;// FOR VsI_COMBINACOES3
                            {   STGR_COMB10.RowCount := VI_LINHAS2;
                               STGR_COMB10.Repaint;
                              LA_TOTAL_COMB.Caption := 'TOTAL PROCESSADOS: '+INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
                              LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1)+'  ';
                              LA_QTD_COMB.Repaint;     }
                                        PGBR_GERARCOMB0.Position := TRUNC(VI_COMBINACOES2/(STGR_LINHA_B4_C1.RowCount-1)*100);
                                        PGBR_GERARCOMB0.Repaint;
                                        LA_QTD_COMB.Repaint;
                                        PANEL_TITULO_SIMULACAO.Repaint;
                                        Pa_bASE5.Repaint;
                                        STGR_COMB10.Repaint;
                                        PGBR_GERARCOMB.Repaint;
                                        SLEEP(11);   //29  ou 99
              // Self.WindowState := wsMinimized;
              // Self.WindowState :=  wsNormal;
              // SELF.Repaint;
               END;// FOR VI_COMBINACOES2
               //PGBR_GERARCOMB3.Position := 100;
                    LA_TOTAL_COMB.Caption := '% PROCESSADOS: '+  INTtoSTR(TRUNC(VI_COMBINACOES2/(STGR_LINHA_B4_C1.RowCount)*100))+ ' %  ';//INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
                    LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1)+'  ';
                    LA_QTD_COMB.Repaint;
               PGBR_GERARCOMB0.Position := 100;
               LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_COMBINACOES1)+ ' DE '+  INTtoSTR(STGR_LINHA_A3_C1.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(VI_COMBINACOES1/(STGR_LINHA_A3_C1.RowCount-1)*100))+ ' %  ';
               PGBR_GERARCOMB.Position := TRUNC(VI_COMBINACOES1/(STGR_LINHA_A3_C1.RowCount-1)*100);
               LA_GERAR_COMB.Repaint;
               PGBR_GERARCOMB.Repaint;
               STGR_COMB10.RowCount := VI_LINHAS2;
               STGR_COMB10.Repaint;
               IF   (PGBR_GERARCOMB.Position MOD 4) = 0 THEN
               BEGIN
                    Self.WindowState := wsMinimized;
                    Self.WindowState :=  wsNormal;
                    Pa_bASE5.Repaint;
                    PA_RESULTADO.Repaint;
                    STGR_COMB10.RowCount := VI_LINHAS2;
                    STGR_COMB10.Repaint;
                    PGBR_GERARCOMB.Repaint;               
                    SELF.Repaint;
                    SLEEP(90);
               END; // IF
               IF (STGR_COMB10.RowCount-1)>2
               THEN
                    STGR_COMB10.FixedRows := 1;
          END;// FOR VI_COMBINACOES1
     END; // IF CB_MODO_FILTRO          
    IF (CB_MODO_FILTRO.ItemIndex = 5) OR (CB_MODO_FILTRO.ItemIndex = 10) OR (CB_MODO_FILTRO.ItemIndex = 12) OR (CB_MODO_FILTRO.ItemIndex = 13) THEN
     BEGIN
     // *****************
     // **  MODO CD    **
     // ******************
         LA_MODO.Caption := 'MODO CD';
          IF (CB_MODO_FILTRO.ItemIndex = 5) THEN PR_GRAVAR_DADOS ('INICIO',VI_LINHAS2, 1, TRUNC(STGR_LINHA_A3_C1.RowCount-1));
          FOR VI_COMBINACOES1 := 1{23} TO TRUNC((STGR_LINHA_A3_C1.RowCount-1)/1) DO
          BEGIN
          VI_CONTAR_COMB1 := VI_CONTAR_COMB1 +1 ;
               IF (STGR_LINHA_A3_C1.Cells[1,VI_COMBINACOES1] = 'F') then
                    continue;
               LA_TOTAL_COMB.Caption := '% PROCESSADOS: 0 %    ';
               FOR VI_COMBINACOES2 := 1{4} TO  (STGR_LINHA_B3_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_B3_C1.Cells[1,VI_COMBINACOES2] = 'F') then
                         continue;
                    FOR VsI_COMBINACOES3 := 1 {7} TO {28}(STGR_LINHA_c3_C1.RowCount-1) DO
                    BEGIN
                         IF (STGR_LINHA_c3_C1.Cells[1,VsI_COMBINACOES3] = 'F') then
                              continue;
                         FOR VsI_COMBINACOES4 := 1 {10} TO {14} (STGR_LINHA_D3_C1.RowCount-1) DO
                         BEGIN
                              IF (STGR_LINHA_D3_C1.Cells[1,VsI_COMBINACOES4] = 'F') then
                                    continue;
                                   FOR VI_CONTAR :=1 TO 5 DO
                                   BEGIN
                                        STGR_BASE_5.Cells[VI_CONTAR,1] := '0';
                                        STGR_BASE_5.Cells[VI_CONTAR,2] := '0';
                                        STGR_BASE_5.Cells[VI_CONTAR,3] := '0';
                                        STGR_BASE_5.Cells[VI_CONTAR,4] := '0';
                                        STGR_BASE_5.Cells[VI_CONTAR,5] := '0';
                                   END; // FOR
                                   STGR_BASE_5.Cells[1,1] := STGR_LINHA_A3_C1.Cells[2,VI_COMBINACOES1];
                                   STGR_BASE_5.Cells[2,1] := STGR_LINHA_A3_C1.Cells[3,VI_COMBINACOES1];
                                   STGR_BASE_5.Cells[3,1] := STGR_LINHA_A3_C1.Cells[4,VI_COMBINACOES1];
                                   STGR_BASE_5.Cells[4,1] := '0';
                                   STGR_BASE_5F.Cells[1,1] := STGR_LINHA_A5_C2.Cells[2,VI_COMBINACOES1];
                                   STGR_BASE_5F.Cells[2,1] := STGR_LINHA_A5_C2.Cells[3,VI_COMBINACOES1];
                                   STGR_BASE_5F.Cells[3,1] := STGR_LINHA_A5_C2.Cells[4,VI_COMBINACOES1];
                                   STGR_BASE_5F.Cells[4,1] := INTtoSTR(STRtoINT(STGR_LINHA_A5_C2.Cells[5,VI_COMBINACOES1]) + STRtoINT(STGR_LINHA_A5_C2.Cells[6,VI_COMBINACOES1]));

                                   STGR_BASE_5.Cells[1,2] := STGR_LINHA_B3_C1.Cells[2,VI_COMBINACOES2];
                                   STGR_BASE_5.Cells[2,2] := STGR_LINHA_B3_C1.Cells[3,VI_COMBINACOES2];
                                   STGR_BASE_5.Cells[3,2] := STGR_LINHA_B3_C1.Cells[4,VI_COMBINACOES2];
                                   STGR_BASE_5.Cells[4,2] := '0';
                                   STGR_BASE_5F.Cells[1,2] := STGR_LINHA_B4_C2.Cells[2,VI_COMBINACOES2];
                                   STGR_BASE_5F.Cells[2,2] := STGR_LINHA_B4_C2.Cells[3,VI_COMBINACOES2];
                                   STGR_BASE_5F.Cells[3,2] := STGR_LINHA_B4_C2.Cells[4,VI_COMBINACOES2];
                                   STGR_BASE_5F.Cells[4,2] := STGR_LINHA_B4_C2.Cells[5,VI_COMBINACOES2];

                                   STGR_BASE_5.Cells[1,3] := STGR_LINHA_c3_C1.Cells[2,VSI_COMBINACOES3];
                                   STGR_BASE_5.Cells[2,3] := STGR_LINHA_c3_C1.Cells[3,VSI_COMBINACOES3];
                                   STGR_BASE_5.Cells[3,3] := STGR_LINHA_c3_C1.Cells[4,VSI_COMBINACOES3];
                                   STGR_BASE_5.Cells[4,3] := '0';
                                   STGR_BASE_5F.Cells[1,3] := STGR_LINHA_c2_C2.Cells[2,VSI_COMBINACOES3];
                                   STGR_BASE_5F.Cells[2,3] := STGR_LINHA_c2_C2.Cells[3,VSI_COMBINACOES3];
                                   STGR_BASE_5F.Cells[3,3] := '0';
                                   STGR_BASE_5F.Cells[4,3] := '0';

                                   STGR_BASE_5.Cells[1,4] := STGR_LINHA_D3_C1.Cells[2,VSI_COMBINACOES4];
                                   STGR_BASE_5.Cells[2,4] := STGR_LINHA_D3_C1.Cells[3,VSI_COMBINACOES4];
                                   STGR_BASE_5.Cells[3,4] := STGR_LINHA_D3_C1.Cells[4,VSI_COMBINACOES4];
                                   STGR_BASE_5.Cells[4,4] := '0';
                                   STGR_BASE_5F.Cells[1,4] := STGR_LINHA_D2_C2.Cells[2,VSI_COMBINACOES4];
                                   STGR_BASE_5F.Cells[2,4] := STGR_LINHA_D2_C2.Cells[3,VSI_COMBINACOES4];
                                   STGR_BASE_5F.Cells[3,4] := '0';
                                   STGR_BASE_5F.Cells[4,4] := '0';
                                   if (VsI_COMBINACOES3 mod 2) = 0 then
                                         STGR_BASE_5.Repaint;
                                   //STGR_BASE_5F.Repaint;

                                   // ---------------------------------------
                                   // --  SOMATÓRIAS
                                   // ---------------------------------------
                                   VsI_FLAG_SOMATORIA1:=0;
                                  VsI_SOMA1 := STRtoINT(STGR_BASE_5.Cells[1,1] )
                                             + STRtoINT(STGR_BASE_5.Cells[1,2] )
                                             + STRtoINT(STGR_BASE_5.Cells[1,3] )
                                             + STRtoINT(STGR_BASE_5.Cells[1,4] )
                                             + STRtoINT(STGR_BASE_5.Cells[2,1] )
                                             + STRtoINT(STGR_BASE_5.Cells[2,2] )
                                             + STRtoINT(STGR_BASE_5.Cells[2,3] )
                                             + STRtoINT(STGR_BASE_5.Cells[2,4] )
                                             + STRtoINT(STGR_BASE_5.Cells[3,1] )
                                             + STRtoINT(STGR_BASE_5.Cells[3,2] )
                                             + STRtoINT(STGR_BASE_5.Cells[3,3] )
                                             + STRtoINT(STGR_BASE_5.Cells[3,4] )
                                             + STRtoINT(STGR_BASE_5.Cells[4,1] )
                                             + STRtoINT(STGR_BASE_5.Cells[4,2] )
                                             + STRtoINT(STGR_BASE_5.Cells[4,3] )
                                             + STRtoINT(STGR_BASE_5.Cells[4,4] )
                                             ;
                                   IF (VsI_SOMA1 >= (STRtoINT(ED_SOMAS_C1_INI.Text))) AND (VsI_SOMA1 <= (STRtoINT(ED_SOMAS_C1_FINAL.Text))) THEN
                                   BEGIN
                                        VsI_FLAG_SOMATORIA1:=1 ;
                                   END ELSE BEGIN
                                        CONTINUE;
                                   END; // IF
                                   VsI_FLAG_SOMATORIA2:=0;
                                  VsI_SOMA1 := STRtoINT(STGR_BASE_5F.Cells[1,1] )
                                             + STRtoINT(STGR_BASE_5F.Cells[1,2] )
                                             + STRtoINT(STGR_BASE_5F.Cells[1,3] )
                                             + STRtoINT(STGR_BASE_5F.Cells[1,4] )
                                             + STRtoINT(STGR_BASE_5F.Cells[2,1] )
                                             + STRtoINT(STGR_BASE_5F.Cells[2,2] )
                                             + STRtoINT(STGR_BASE_5F.Cells[2,3] )
                                             + STRtoINT(STGR_BASE_5F.Cells[2,4] )
                                             + STRtoINT(STGR_BASE_5F.Cells[3,1] )
                                             + STRtoINT(STGR_BASE_5F.Cells[3,2] )
                                             + STRtoINT(STGR_BASE_5F.Cells[3,3] )
                                             + STRtoINT(STGR_BASE_5F.Cells[3,4] )
                                             + STRtoINT(STGR_BASE_5F.Cells[4,1] )
                                             + STRtoINT(STGR_BASE_5F.Cells[4,2] )
                                             + STRtoINT(STGR_BASE_5F.Cells[4,3] )
                                             + STRtoINT(STGR_BASE_5F.Cells[4,4] )
                                             ;
                                   IF (VsI_SOMA1 >= (STRtoINT(ED_SOMAS_C2_INI.Text))) AND (VsI_SOMA1 <= (STRtoINT(ED_SOMAS_C2_FINAL.Text))) THEN
                                   BEGIN
                                        VsI_FLAG_SOMATORIA2:=1 ;
                                   END ELSE BEGIN
                                        CONTINUE;
                                   END; // IF

                                   IF (VsI_FLAG_SOMATORIA1=1) AND (VsI_FLAG_SOMATORIA2=1) THEN
                                   BEGIN
                                             // ===> Obrigatórios
                                             IF  STRtoINT(ED_EXC_OBR_1.Text) > 0 THEN
                                             BEGIN
                                                  IF  NOT(
                                                      (STRtoINT(STGR_BASE_5.Cells[1,1]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,1]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,1]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,2]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,2]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,2]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,3]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,3]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,3]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,4]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,4]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,4]) = STRtoINT(ED_EXC_OBR_1.Text))
                                                      )
                                                  THEN
                                                       CONTINUE;
                                                  IF  NOT(
                                                      (STRtoINT(STGR_BASE_5.Cells[1,1]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,1]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,1]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,2]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,2]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,2]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[4,2]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,3]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,3]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,3]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,4]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,4]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,4]) = STRtoINT(ED_EXC_OBR_2.Text))
                                                      )
                                                  THEN
                                                       CONTINUE;
                                                  IF  NOT(
                                                      (STRtoINT(STGR_BASE_5.Cells[1,1]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,1]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,1]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,2]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,2]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,2]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[4,2]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,3]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,3]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,3]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[1,4]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[2,4]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                      (STRtoINT(STGR_BASE_5.Cells[3,4]) = STRtoINT(ED_EXC_OBR_3.Text))
                                                      )
                                                  THEN
                                                       CONTINUE;
                                             END; // IF
                                             // -- >> combinacçao 1
                                             STGR_COMB10.Cells[0,VI_LINHAS2+0] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+0] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+0] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+0] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+0] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+0] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+0] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+0] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+0] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+0] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+0] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+0);
                                             // -- >> combinacçao 2
                                             STGR_COMB10.Cells[0,VI_LINHAS2+1] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+1] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+1] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+1] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+1] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+1] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+1] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+1] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+1] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+1] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+1] := STGR_BASE_5.Cells[3,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+1);
                                             // -- >> combinacçao 3
                                             STGR_COMB10.Cells[0,VI_LINHAS2+2] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+2] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+2] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+2] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+2] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+2] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+2] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+2] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+2] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+2] := STGR_BASE_5.Cells[2,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+2] := STGR_BASE_5.Cells[3,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+2);

                                             // -- >> combinacçao 4
                                             STGR_COMB10.Cells[0,VI_LINHAS2+3] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+3] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+3] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+3] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+3] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+3] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+3] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+3] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+3] := STGR_BASE_5.Cells[3,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+3] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+3] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+3);
                                             // -- >> combinacçao 5
                                             STGR_COMB10.Cells[0,VI_LINHAS2+4] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+4] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+4] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+4] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+4] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+4] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+4] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+4] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+4] := STGR_BASE_5.Cells[3,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+4] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+4] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+4);
                                             // -- >> combinacçao 6
                                             STGR_COMB10.Cells[0,VI_LINHAS2+5] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+5] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+5] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+5] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+5] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+5] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+5] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+5] := STGR_BASE_5.Cells[1,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+5] := STGR_BASE_5.Cells[3,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+5] := STGR_BASE_5.Cells[2,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+5] := STGR_BASE_5.Cells[3,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+5);

                                            // -- >> combinacçao 7
                                             STGR_COMB10.Cells[0,VI_LINHAS2+6] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+6] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+6] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+6] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+6] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+6] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+6] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+6] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+6] := STGR_BASE_5.Cells[3,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+6] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+6] := STGR_BASE_5.Cells[2,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+6);
                                             // -- >> combinacçao 8
                                             STGR_COMB10.Cells[0,VI_LINHAS2+7] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+7] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+7] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+7] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+7] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+7] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+7] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+7] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+7] := STGR_BASE_5.Cells[3,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+7] := STGR_BASE_5.Cells[1,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+7] := STGR_BASE_5.Cells[3,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+7);
                                             // -- >> combinacçao 9
                                             STGR_COMB10.Cells[0,VI_LINHAS2+8] := INTtoSTR(VI_LINHAS2);
                                             STGR_COMB10.Cells[1,VI_LINHAS2+8] := STGR_BASE_5.Cells[1,1];
                                             STGR_COMB10.Cells[2,VI_LINHAS2+8] := STGR_BASE_5.Cells[2,1];
                                             STGR_COMB10.Cells[3,VI_LINHAS2+8] := STGR_BASE_5.Cells[3,1];
                                             STGR_COMB10.Cells[4,VI_LINHAS2+8] := STGR_BASE_5.Cells[1,2];
                                             STGR_COMB10.Cells[5,VI_LINHAS2+8] := STGR_BASE_5.Cells[2,2];
                                             STGR_COMB10.Cells[6,VI_LINHAS2+8] := STGR_BASE_5.Cells[3,2] ;
                                             STGR_COMB10.Cells[7,VI_LINHAS2+8] := STGR_BASE_5.Cells[2,3] ;
                                             STGR_COMB10.Cells[8,VI_LINHAS2+8] := STGR_BASE_5.Cells[3,3] ;
                                             STGR_COMB10.Cells[9,VI_LINHAS2+8] := STGR_BASE_5.Cells[2,4] ;
                                             STGR_COMB10.Cells[10,VI_LINHAS2+8] := STGR_BASE_5.Cells[3,4];
                                             PR_ORDENAR_10 (VI_LINHAS2+8);

                                             VI_LINHAS2 := VI_LINHAS2 + 9;
                                             VI_LINHAS1 := VI_LINHAS1 + 9;
                                             PR_GRAVAR_DADOS ('NAO', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_LINHA_A3_C1.RowCount-1));
                                        IF (VI_LINHAS2 MOD 90)=0 THEN
                                        BEGIN
                                                  PA_RESULTADO.Repaint;
                                                  STGR_BASE_5.Repaint;
                                                  STGR_COMB10.RowCount := VI_LINHAS2;
                                                  STGR_COMB10.Repaint;
                                                  LA_TOTAL_COMB.Caption := '% PROCESSADOS: '+  INTtoSTR(TRUNC(VI_COMBINACOES2/(STGR_LINHA_B3_C1.RowCount)*100))+ ' %  ';//INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
                                                  LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1)+'  ';
                                                  LA_QTD_COMB.Repaint;
                                                            PGBR_GERARCOMB0.Position := TRUNC(VI_COMBINACOES2/(STGR_LINHA_B3_C1.RowCount-1)*100);
                                                            PGBR_GERARCOMB0.Repaint;
                                                            LA_QTD_COMB.Repaint;
                                                  SLEEP(11); //9
                                        END; // IF
                                   END; // IF (VsI_FLAG_SOMATORIA1=1) AND (VsI_FLAG_SOMATORIA2=1)
                                   IF ( VsI_COMBINACOES4 MOD 3) =0 THEN
                                   BEGIN
                                        LA_TOTAL_COMB.Caption := '% PROCESSADOS: '+ INTtoSTR(TRUNC(VI_COMBINACOES2/(STGR_LINHA_B3_C1.RowCount-1)*100))+ ' %  ';//INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
                                        LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1)+'  ';
                                        LA_QTD_COMB.Repaint;
                                        PA_RESULTADO.Repaint;
                                        STGR_COMB10.RowCount := VI_LINHAS2;
                                        STGR_COMB10.Repaint;
                                   END;
                         END;// FOR VsI_COMBINACOES4
                         PGBR_GERARCOMB0.Position := TRUNC(VI_COMBINACOES2/(STGR_LINHA_B3_C1.RowCount-1)*100);
                         PGBR_GERARCOMB0.Repaint;
                         LA_QTD_COMB.Repaint;
                         STGR_COMB10.RowCount := VI_LINHAS2;
                         STGR_COMB10.Repaint;
                         SLEEP(35);  //95
                    END;// FOR VsI_COMBINACOES3
                            {   STGR_COMB10.RowCount := VI_LINHAS2;
                               STGR_COMB10.Repaint;
                              LA_TOTAL_COMB.Caption := 'TOTAL PROCESSADOS: '+INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
                              LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1)+'  ';
                              LA_QTD_COMB.Repaint;     }
                                        PGBR_GERARCOMB0.Position := TRUNC(VI_COMBINACOES2/(STGR_LINHA_B3_C1.RowCount-1)*100);
                                        PGBR_GERARCOMB0.Repaint;
                                        LA_QTD_COMB.Repaint;
                                        PANEL_TITULO_SIMULACAO.Repaint;
                                        Pa_bASE5.Repaint;
                                        STGR_COMB10.Repaint;
                                        PGBR_GERARCOMB.Repaint;
                                        SLEEP(11);   //29  ou 99
              // Self.WindowState := wsMinimized;
              // Self.WindowState :=  wsNormal;
              // SELF.Repaint;
               END;// FOR VI_COMBINACOES2
               //PGBR_GERARCOMB3.Position := 100;
                    LA_TOTAL_COMB.Caption := '% PROCESSADOS: '+  INTtoSTR(TRUNC(VI_COMBINACOES2/(STGR_LINHA_B3_C1.RowCount)*100))+ ' %  ';//INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
                    LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1)+'  ';
                    LA_QTD_COMB.Repaint;
               PGBR_GERARCOMB0.Position := 100;
               LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_COMBINACOES1)+ ' DE '+  INTtoSTR(STGR_LINHA_A3_C1.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(VI_COMBINACOES1/(STGR_LINHA_A3_C1.RowCount-1)*100))+ ' %  ';
               PGBR_GERARCOMB.Position := TRUNC(VI_COMBINACOES1/(STGR_LINHA_A3_C1.RowCount-1)*100);
               LA_GERAR_COMB.Repaint;
               PGBR_GERARCOMB.Repaint;
               STGR_COMB10.RowCount := VI_LINHAS2;
               STGR_COMB10.Repaint;
               IF   (PGBR_GERARCOMB.Position MOD 4) = 0 THEN
               BEGIN
                    Self.WindowState := wsMinimized;
                    Self.WindowState :=  wsNormal;
                    Pa_bASE5.Repaint;
                    PA_RESULTADO.Repaint;
                    STGR_COMB10.RowCount := VI_LINHAS2;
                    STGR_COMB10.Repaint;
                    PGBR_GERARCOMB.Repaint;
                    SELF.Repaint;
                    SLEEP(90);
               END; // IF
               IF (STGR_COMB10.RowCount-1)>2
               THEN
                    STGR_COMB10.FixedRows := 1;
          END;// FOR VI_COMBINACOES1
     END; // IF CB_MODO_FILTRO

     LA_TOTAL_COMB.Caption := 'TOTAL PROCESSADOS: '+INTtoSTR(VI_COMBINACOES1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
     LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
     STGR_COMB10.Repaint;
     LA_QTD_COMB.Repaint;
     LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_CONTAR_COMB1)+ ' DE '+  INTtoSTR(VI_TOTAL_COMB1)+ ' - ' + INTtoSTR(TRUNC(VI_CONTAR_COMB1/VI_TOTAL_COMB1*100))+ ' %  ';
     //LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_COMBINACOES1)+ ' DE '+  INTtoSTR(STGR_GRUPO_A_TODOS5.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(VI_COMBINACOES1/(STGR_GRUPO_A_TODOS5.RowCount-1)*100))+ ' %  ';
     LA_GERAR_COMB.Repaint;
     PGBR_GERARCOMB0.Position := 100;
     PGBR_GERARCOMB.Position := 100;
     PR_GRAVAR_DADOS ('FIM', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_LINHA_A4_C1.RowCount-1));
     PGBR_GERARCOMB0.Repaint;
     PGBR_GERARCOMB.Repaint;
     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;
     LA_gFIM_GERAR.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
     // ==> ACERTANDO O PAINEL DE ENCERRAMENTO
     BBT_RECOMECAR.Enabled := false;
     BBT_PREPARAR.Enabled := false;
     //SHOWMESSAGE ('GERAÇÃO ENCERRADA:' +#13+#13+  LA_TOTAL_COMB.Caption +#13+ LA_QTD_COMB.Caption);
     LA_rTOTAL_COMB.Caption  := INTtoSTR(VI_COMBINACOES1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
     LA_rQTD_COMB.Caption    := INTtoSTR(VI_LINHAS1-1)+'     ';
     LA_rTOT_CALC.Caption    := INTtoSTR(VI_COMBINACOES1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5*6)+'   '    ;
     LA_rLogic_Comp.Caption  := INTtoSTR(VI_COMBINACOES1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5*32)+'   '   ;
     LA_rATRIBUICAO_DADOS.Caption    := FLOATtoSTR(TRUNC( STRtoFLOAT(TRIM(LA_rTOTAL_COMB.Caption))*20*25 + STRtoFLOAT(TRIM(LA_rTOTAL_COMB.Caption))*100 + STRtoFLOAT(TRIM(LA_rQTD_COMB.Caption)) *10 ));
     LA_rTOT_PROCESSAMENTO.Caption   := FLOATtoSTR(TRUNC ( STRtoFLOAT(TRIM(LA_rTOT_CALC.Caption)) + STRtoFLOAT(TRIM(LA_rLogic_Comp.Caption)) + STRtoFLOAT(TRIM(LA_rATRIBUICAO_DADOS.Caption)) + STRtoFLOAT(TRIM(LA_rTOTAL_COMB.Caption))) );
SELF.PR_SIMULAR_RECUPERANDODADOS('');

                   SELF.IBQ_COMBINACOES.SQL.Clear;
               SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(distinct(dados)) AS SOMADADOS FROM FILTRO_00C_10EXC2_DADOS;')  ;
               SELF.IBQ_COMBINACOES.Open;
               IBQ_COMBINACOES.First;
               VI_CONTAR_COMB1 := IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_00c_10EXC2_DEFINICAO SET HORA_TERMINO ='''+FORMATDATETIME('h:n:s',time())+''', QTD_DADOS= ''' +INTtoSTR(VI_CONTAR_COMB1)+ ''';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     LA_rTOTAL_100REPET.Caption := LA_TOTAL_100REPET.Caption;
     LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
     BBT_BLOCO_NOTAS.SetFocus;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_00c_10EXC2_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;    
     PA_REMOVEUREPET.Left := 870;
end;


PROCEDURE T_F_GERADOR_10_EXC_2.PR_SIMULAR_RECUPERANDODADOS(VC_TIPO: STRING);
VAR
     VI_AN_COMB1, VI_CONTAR : INTEGER;
BEGIN
       SELF.PR_LIMPAR_GRID10();
       IF (VC_TIPO='SIMULACAO') THEN SHOWMESSAGE('DADOS-2 - Retirando os repetidos');
       SELF.IBQ_COMBINACOES.Close;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(distinct(dados)) AS SOMADADOS FROM FILTRO_00C_10EXC2_DADOS;')  ;
       SELF.IBQ_COMBINACOES.Open;
       VI_CONTAR := SELF.IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT DISTINCT(DADOS), EXC1, EXC2, EXC3, EXC4, EXC5, EXC6, EXC7, EXC8, EXC9, EXC10   FROM FILTRO_00C_10EXC2_DADOS  ORDER BY DADOS;')  ;
       SELF.IBQ_COMBINACOES.Open;
           IF (VC_TIPO='SIMULACAO') THEN SHOWMESSAGE('Recuperando os dados');
       // ********************
       // **   ENCERRANDO   **
       // ********************
           Self.Repaint;
           Self.WindowState := wsMinimized;
           Self.WindowState :=  wsNormal;
           Self.Repaint;
       STGR_COMB10.RowCount := 0;
       SELF.IBQ_COMBINACOES.First;
       FOR VI_AN_COMB1:= 1 TO  VI_CONTAR DO
       BEGIN
           STGR_COMB10.Cells [0, VI_AN_COMB1] := INTtoSTR(VI_AN_COMB1);
           STGR_COMB10.Cells [1, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC1').AsString;
           STGR_COMB10.Cells [2, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC2').AsString;
           STGR_COMB10.Cells [3, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC3').AsString;
           STGR_COMB10.Cells [4, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC4').AsString;
           STGR_COMB10.Cells [5, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC5').AsString;
           STGR_COMB10.Cells [6, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC6').AsString;
           STGR_COMB10.Cells [7, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC7').AsString;
           STGR_COMB10.Cells [8, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC8').AsString;
           STGR_COMB10.Cells [9, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC9').AsString;
           STGR_COMB10.Cells [10, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC10').AsString;
               STGR_COMB10.RowCount := VI_AN_COMB1;
           SELF.IBQ_COMBINACOES.Next;
       END; // FOR VI_AN_COMB1
       STGR_COMB10.RowCount := VI_AN_COMB1;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM FILTRO_00c_10EXC2_DEFINICAO;')  ;
       SELF.IBQ_COMBINACOES.Open;
       STGR_COMB10.REPAINT;
           PGBR_REMREPET.Position := 100;
       LA_TOTAL_100REPET.Caption := INTtoSTR(STGR_COMB10.RowCount-1);
       STGR_COMB10.REPAINT;
       LA_TOTAL_100REPET.Repaint;

           Self.Repaint;
           Self.WindowState := wsMinimized;
           Self.WindowState :=  wsNormal;
           Self.Repaint;
     SHOWMESSAGE('DADOS CARREGADOS');           
END; //    PROCEDCURE SIMULAR_RECUPERANDODADOS();


procedure T_F_GERADOR_10_EXC_2.BBT_PA_REMOVEUREPETClick(Sender: TObject);
begin
     PA_REMOVEUREPET.Left := 5000;
     BBT_RECOMECAR.Enabled := false;
     BBT_PREPARAR.Enabled := false;
     BBT_GERAR_MENU.Enabled := false;
     PA_INICIAL.Enabled := TRUE;
     PA_INICIAL.Left := 520;
end;

procedure T_F_GERADOR_10_EXC_2.BBT_BLOCO_NOTASClick(Sender: TObject);
var
    VI_AN_COMB1, VI_CONTAR : INTEGER;
    VC_COMBINACOES : string;
begin
    MEM_COMBINACOES_TODAS.Clear;
   	MEM_COMBINACOES_TODAS.Lines.Add('TOTAL: ' + INTtoSTR(STGR_COMB10.RowCount-1)) ;
   	MEM_COMBINACOES_TODAS.Lines.Add('----------------------------') ;
    FOR VI_CONTAR := 1 TO STGR_COMB10.RowCount-1 DO
    BEGIN
		VC_COMBINACOES :=INTtoSTR(VI_CONTAR)+'=> ';
    	FOR VI_AN_COMB1 := 1 TO 10 DO
        BEGIN
			VC_COMBINACOES := VC_COMBINACOES + STGR_COMB10.Cells[VI_AN_COMB1,VI_CONTAR] +' ';
        END; // FOR VI_AN_COMB1
       	MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES) ;
    END; // FOR VI_CONTAR
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.SelectAll;
    MEM_COMBINACOES_TODAS.CopyToClipboard;
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.Lines.SaveToFile('C:\CXLOTOFACIL\EXCLUIDOS_5.TXT');
    winExec('Notepad.exe C:\CXLOTOFACIL\EXCLUIDOS_5.TXT', sw_shownormal);   // Nesse caso, abre um arquivo txt chamado teste.txt localizado no meu Desktop
   showmessage('BLOCO DE NOTAS GERADO');
end;

procedure T_F_GERADOR_10_EXC_2.BT_REAJUSTARClick(Sender: TObject);
begin
     PA_PREENCHIMENTO.Visible := TRUE;
     PA_PREENCHIMENTO.Enabled := TRUE;
     PA_GABARITO.Visible := TRUE;
     SCBX_GABARITO.Visible := TRUE;
     SCBX_GABARITO.Enabled := TRUE;
     PA_RESULTADO.Visible := TRUE;
     PA_RESULTADO.Enabled := TRUE;
     STGR_COMB10.Visible := TRUE;
     STGR_COMB10.Enabled := TRUE;
     RB_RESULTADOS.SetFocus;
     RB_RES_GABARITOS.SetFocus;
     PA_EXECUTAR_FILTRO.Enabled := TRUE;
     BBT_RECOMECAR.Enabled := false;
     BBT_PREPARAR.Enabled := TRUE;
     BBT_GERAR_MENU.Enabled := TRUE;
     BBT_CANCELAR_SAIR.Visible := false;       
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 2198;
end;


procedure T_F_GERADOR_10_EXC_2.BBT_CARREGARClick(Sender: TObject);
begin
    BBT_CANCELAR_SAIR.Visible := TRUE;
     SELF.PR_LIMPAR_GRID10();
     BBT_RECOMECAR.Click;
     PA_PREENCHIMENTO.Visible := false;
     PA_PREENCHIMENTO.Enabled := false;
     PA_GABARITO.Visible := TRUE;
     RB_RESULTADOS.SetFocus;
     PA_GABARITO.Visible := false;
     PA_EXECUTAR_FILTRO.Enabled := TRUE;
     BBT_PREPARAR.Enabled := false;
     BBT_GERAR_MENU.Enabled := false;
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 2198;
     PGBR_GERARCOMB0.Position := 100;
     PGBR_GERARCOMB.Position := 100;
     LA_TOTAL_COMB.Visible := false;
     LA_GERAR_COMB.Visible := false;
     LA_QTD_COMB.Visible := false;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_00c_10EXC2_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.PR_SIMULAR_RECUPERANDODADOS('');
end;




procedure T_F_GERADOR_10_EXC_2.BBT_CANCELARClick(Sender: TObject);
begin
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_00c_10EXC2_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT;')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
          SELF.Close;
end;


PROCEDURE T_F_GERADOR_10_EXC_2.PR_LIMPAR_GRID10 ();
BEGIN
    STGR_COMB10.CleanupInstance;
    STGR_COMB10.Free;
    STGR_COMB10:= TStringGrid.Create(SELF);
    STGR_COMB10.Parent:= PA_RESULTADO;

    STGR_COMB10.Left   := 721 ;
    STGR_COMB10.Top    := 45;
    STGR_COMB10.Width  := 1182;
    STGR_COMB10.Height := 279;
    STGR_COMB10.Align := alClient;
    STGR_COMB10.RowCount := 2;
    STGR_COMB10.ColCount  := 11 ;
    STGR_COMB10.DefaultColWidth := 54;
    STGR_COMB10.ColWidths[0] := 59;
    STGR_COMB10.FixedCols := 1  ;
    STGR_COMB10.FixedRows := 1  ;
    STGR_COMB10.Color     := $0095B4DC;
    STGR_COMB10.FixedColor := clMedGray;
    STGR_COMB10.Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
END;


procedure T_F_GERADOR_10_EXC_2.BBT_GERAR_MENUClick(Sender: TObject);
begin
     PA_GERAR.Left := 510;
end;




end.















                                             // ---------------------------------------
                                             // --  Contando a quantidade de números diferentes de 0, por linha
                                             // ---------------------------------------
                                             VSI_CONTAR_A  := 0;
                                             VSI_CONTAR_B  := 0;
                                             VSI_CONTAR_C  := 0;
                                             VSI_CONTAR_D  := 0;                                             
                                             VI_CONTASEL1 := 0;
                                             IF  STRtoINT(STGR_BASE_5.Cells[1,1]) >0 THEN VI_CONTASEL1 := VI_CONTASEL1 +1;
                                             IF  STRtoINT(STGR_BASE_5.Cells[2,1]) >0 THEN VI_CONTASEL1 := VI_CONTASEL1 +1;
                                             IF  STRtoINT(STGR_BASE_5.Cells[3,1]) >0 THEN VI_CONTASEL1 := VI_CONTASEL1 +1;
                                             IF  STRtoINT(STGR_BASE_5.Cells[4,1]) >0 THEN VI_CONTASEL1 := VI_CONTASEL1 +1;
                                             STGR_BASE_5.Cells[0,1] := INTtoSTR(VI_CONTASEL1);
                                             VSI_CONTAR_A  := VI_CONTASEL1;
                                             VI_CONTASEL1 := 0;
                                             IF  STRtoINT(STGR_BASE_5.Cells[1,2]) >0 THEN VI_CONTASEL1 := VI_CONTASEL1 +1;
                                             IF  STRtoINT(STGR_BASE_5.Cells[2,2]) >0 THEN VI_CONTASEL1 := VI_CONTASEL1 +1;
                                             IF  STRtoINT(STGR_BASE_5.Cells[3,2]) >0 THEN VI_CONTASEL1 := VI_CONTASEL1 +1;
                                             IF  STRtoINT(STGR_BASE_5.Cells[4,2]) >0 THEN VI_CONTASEL1 := VI_CONTASEL1 +1;
                                             STGR_BASE_5.Cells[0,2] := INTtoSTR(VI_CONTASEL1);
                                             VSI_CONTAR_B  := VI_CONTASEL1;

                                             VI_CONTASEL1 := 0;
                                             IF  STRtoINT(STGR_BASE_5.Cells[1,3]) >0 THEN VI_CONTASEL1 := VI_CONTASEL1 +1;
                                             IF  STRtoINT(STGR_BASE_5.Cells[2,3]) >0 THEN VI_CONTASEL1 := VI_CONTASEL1 +1;
                                             IF  STRtoINT(STGR_BASE_5.Cells[3,3]) >0 THEN VI_CONTASEL1 := VI_CONTASEL1 +1;
                                             IF  STRtoINT(STGR_BASE_5.Cells[4,3]) >0 THEN VI_CONTASEL1 := VI_CONTASEL1 +1;
                                             STGR_BASE_5.Cells[0,3] := INTtoSTR(VI_CONTASEL1);
                                             VSI_CONTAR_C  := VI_CONTASEL1;

                                             VI_CONTASEL1 := 0;
                                             IF  STRtoINT(STGR_BASE_5.Cells[1,4]) >0 THEN VI_CONTASEL1 := VI_CONTASEL1 +1;
                                             IF  STRtoINT(STGR_BASE_5.Cells[2,4]) >0 THEN VI_CONTASEL1 := VI_CONTASEL1 +1;
                                             IF  STRtoINT(STGR_BASE_5.Cells[3,4]) >0 THEN VI_CONTASEL1 := VI_CONTASEL1 +1;
                                             IF  STRtoINT(STGR_BASE_5.Cells[4,4]) >0 THEN VI_CONTASEL1 := VI_CONTASEL1 +1;
                                             STGR_BASE_5.Cells[0,4] := INTtoSTR(VI_CONTASEL1);
                                             VSI_CONTAR_D  := VI_CONTASEL1;
                                             STGR_BASE_5.Repaint;

                                             IF (VSI_CONTAR_A =3) AND (VSI_CONTAR_B=3) AND (VSI_CONTAR_C = 2) AND (VSI_CONTAR_D = 2) THEN
                                             BEGIN
