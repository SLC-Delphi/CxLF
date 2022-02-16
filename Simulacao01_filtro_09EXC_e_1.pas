unit Simulacao01_filtro_09EXC_e_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, ComCtrls, StdCtrls, STRUTILS,
  Buttons, ExtCtrls, Menus, Grids;

type
  T_F_FILTRO_09_NS_E_1 = class(TForm)
    PopupMenu1: TPopupMenu;
    PA_TOPO: TPanel;
    BBT_CLOSE: TImage;
    Label34: TLabel;
    PA_GABARITO: TPanel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    RB_RESULTADOS: TRadioButton;
    RB_GABARITO: TRadioButton;
    RB_RES_GABARITOS: TRadioButton;
    PA_REMOVEUREPET: TPanel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    LA_rTOTAL_COMB: TLabel;
    LA_rQTD_COMB: TLabel;
    Label50: TLabel;
    LA_rTOTAL_100REPET: TLabel;
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
    BT_CARREGAR_SIMULACAO: TButton;
    BT_RECUPERAR_SIMULACAO: TButton;
    PA_GERAR: TPanel;
    Label64: TLabel;
    Label65: TLabel;
    RB_GERAR: TRadioButton;
    RB_GERAR_FILTRAR: TRadioButton;
    Panel2: TPanel;
    Label63: TLabel;
    BBT_GERAR_SIMULACAO: TBitBtn;
    BBT_GERAR_SAIR: TBitBtn;
    PA_FIMFILTRO: TPanel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    LA_fTOTAL_COMB: TLabel;
    LA_fQTD_COMB: TLabel;
    Label59: TLabel;
    LA_fTOTAL_100REPET: TLabel;
    Label62: TLabel;
    LA_fQTD_FILTRADOS: TLabel;
    BBT_FIMFILTRO: TBitBtn;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBQ_COMBINACOES: TIBQuery;
    SCBX_GABARITO: TScrollBox;
    Bevel3: TBevel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Label2: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label21: TLabel;
    LA_LINHA_1_100REP: TLabel;
    LA_LINHA_2_100REP: TLabel;
    LA_LINHA_4_100REP: TLabel;
    LA_LINHA_3_100REP: TLabel;
    Bevel4: TBevel;
    STGR_LINHA_1_C1: TStringGrid;
    STGR_LINHA_2_C1: TStringGrid;
    STGR_LINHA_3_C1: TStringGrid;
    STGR_LINHA_4_C1: TStringGrid;
    PA_RESULTADO: TPanel;
    STGR_COMB15: TStringGrid;
    STRGR_TODOS_NUMEROS: TStringGrid;
    PA_EXECUTAR_FILTRO: TPanel;
    BBT_PREPARAR: TBitBtn;
    BBT_GERAR_MENU: TBitBtn;
    PANEL_TITULO_SIMULACAO: TPanel;
    LA_QTD_FILTRADOS: TLabel;
    Label88: TLabel;
    LA_TOTAL_100REPET: TLabel;
    Label87: TLabel;
    LA_QTD_COMB: TLabel;
    LA_GERAR_COMB: TLabel;
    LA_TOTAL_COMB: TLabel;
    PGBR_FILTRARCOMB: TProgressBar;
    PGBR_REMREPET: TProgressBar;
    PGBR_GERARCOMB: TProgressBar;
    PGBR_GERARCOMB0: TProgressBar;
    PGBR_GERARCOMB3: TProgressBar;
    Pa_bASE5: TPanel;
    STGR_BASE_SOMA2: TStringGrid;
    PA_PREENCHIMENTO: TPanel;
    Label79: TLabel;
    Label78: TLabel;
    Label77: TLabel;
    Label76: TLabel;
    STGR_BASE_L4: TStringGrid;
    STGR_BASE_L3: TStringGrid;
    STGR_BASE_L2: TStringGrid;
    STGR_BASE_L1: TStringGrid;
    BBT_RECOMECAR: TBitBtn;
    BBT_701: TBitBtn;
    BBT_702: TBitBtn;
    BBT_711: TBitBtn;
    BBT_719: TBitBtn;
    BBT_720: TBitBtn;
    BBT_712: TBitBtn;
    BBT_703: TBitBtn;
    BBT_704: TBitBtn;
    BBT_713: TBitBtn;
    BBT_721: TBitBtn;
    BBT_722: TBitBtn;
    BBT_714: TBitBtn;
    BBT_705: TBitBtn;
    BBT_706: TBitBtn;
    BBT_715: TBitBtn;
    BBT_723: TBitBtn;
    BBT_724: TBitBtn;
    BBT_716: TBitBtn;
    BBT_707: TBitBtn;
    BBT_708: TBitBtn;
    BBT_717: TBitBtn;
    BBT_725: TBitBtn;
    BBT_718: TBitBtn;
    BBT_709: TBitBtn;
    BBT_710: TBitBtn;
    ED_fixoS_1: TEdit;
    PA_SOMA7_1: TPanel;
    Label25: TLabel;
    ED_SOMA7_INI: TEdit;
    ED_SOMA7_Final: TEdit;
    TRB_SOMA7_INI: TTrackBar;
    TRB_SOMA7_Final: TTrackBar;
    BBT_CLICK_TUDO: TButton;
    STGR_BASE_L1V: TStringGrid;
    STGR_BASE_L4V: TStringGrid;
    STGR_BASE_L3V: TStringGrid;
    STGR_BASE_L2V: TStringGrid;
    STGR_BASE_SOMA1: TStringGrid;
    STGR_BASE_SOMA12_1: TStringGrid;
    STGR_BASE_SOMA12_2: TStringGrid;
    Label1: TLabel;
    STGR_LINHA_1_C2: TStringGrid;
    Label4: TLabel;
    STGR_LINHA_2_C2: TStringGrid;
    Label6: TLabel;
    STGR_LINHA_3_C2: TStringGrid;
    Label8: TLabel;
    STGR_LINHA_4_C2: TStringGrid;
    Panel1: TPanel;
    Label3: TLabel;
    ED_SOMA12_INI: TEdit;
    ED_SOMA12_Final: TEdit;
    TRB_SOMA12_INI: TTrackBar;
    TRB_SOMA12_Final: TTrackBar;
    PA_FIXOS: TPanel;
    Label39: TLabel;
    ED_FIXOS_01: TEdit;
    ED_FIXOS_02: TEdit;
    ED_FIXOS_03: TEdit;
    ED_FIXOS_04: TEdit;
    ED_FIXOS_05: TEdit;
    PA_EXCLUIDOS: TPanel;
    Label32: TLabel;
    ED_EXC_01: TEdit;
    ED_EXC_02: TEdit;
    ED_EXC_03: TEdit;
    ED_EXC_04: TEdit;
    ED_EXC_05: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
    procedure TRB_SOMA7_INIChange(Sender: TObject);
    procedure TRB_SOMA7_FinalChange(Sender: TObject);
    procedure BBT_RECOMECARClick(Sender: TObject);
    procedure BBT_CLICK_TUDOClick(Sender: TObject);
    procedure BBT_PREPARARClick(Sender: TObject);
    procedure BT_NOVA_SIMULACAOClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BBT_CLOSEClick(Sender: TObject);
    procedure BBT_GERAR_MENUClick(Sender: TObject);
    procedure BBT_GERAR_SIMULACAOClick(Sender: TObject);
    procedure BBT_GERAR_SAIRClick(Sender: TObject);
    procedure BBT_PA_REMOVEUREPETClick(Sender: TObject);
    procedure BT_CARREGAR_SIMULACAOClick(Sender: TObject);
    procedure RB_RESULTADOSClick(Sender: TObject);
    procedure TRB_SOMA12_INIChange(Sender: TObject);
    procedure TRB_SOMA12_FinalChange(Sender: TObject);
  private
    { Private declarations }
     PROCEDURE PR_BOTOES_MODELO_12345 (VI_NUMERO: INTEGER);
     PROCEDURE PR_SIMULAR_RECUPERANDODADOS(VC_TIPO: STRING);     
     PROCEDURE PR_LIMPAR_GRID10();
  public
    { Public declarations }
  end;

var
  _F_FILTRO_09_NS_E_1: T_F_FILTRO_09_NS_E_1;

implementation

{$R *.dfm}

procedure T_F_FILTRO_09_NS_E_1.FormCreate(Sender: TObject);
VAR
    VI_CONTAR : INTEGER;
begin
     SELF.ClientWidth  := 1373;
     SELF.ClientHeight := 730;
     SELF.Top  := 69;
     SELF.Left := 9;
    FOR VI_CONTAR := 2 TO 18 DO
    BEGIN
        STGR_COMB15.Cells [VI_CONTAR,1] := '0';
    END;
    STGR_COMB15.RowCount := 2;
    FOR VI_CONTAR := 1 TO 6 DO
    BEGIN
        STGR_BASE_L1.Cells[VI_CONTAR,0] := '0';
        STGR_BASE_L2.Cells[VI_CONTAR,0] := '0';
        STGR_BASE_L3.Cells[VI_CONTAR,0] := '0';
        STGR_BASE_L4.Cells[VI_CONTAR,0] := '0';
    END;
    STGR_COMB15.Cells[0,0] := 'QTD';
    STGR_COMB15.Cells[1,0] := '100REP';
    FOR VI_CONTAR := 1 TO 15 DO
    BEGIN
        STGR_COMB15.Cells [VI_CONTAR+1,0] := '-'+INTtoSTR(VI_CONTAR)+'-';
    END;
     FOR VI_CONTAR :=1 TO 25 DO
     BEGIN
          STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0] :=INTtoSTR(VI_CONTAR);
          STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
     END; // FOR VI_CONTAR
    ED_fixoS_1.Text := '00';     
    FOR VI_CONTAR := 1 TO 3 DO
    BEGIN
        STGR_BASE_L1V.Cells [1, VI_CONTAR] := '0';
        STGR_BASE_L1V.Cells [2, VI_CONTAR] := '0';
        STGR_BASE_L2V.Cells [1, VI_CONTAR] := '0';
        STGR_BASE_L2V.Cells [2, VI_CONTAR] := '0';
        STGR_BASE_L3V.Cells [1, VI_CONTAR] := '0';
        STGR_BASE_L3V.Cells [2, VI_CONTAR] := '0';
        STGR_BASE_L4V.Cells [1, VI_CONTAR] := '0';
        STGR_BASE_L4V.Cells [2, VI_CONTAR] := '0';
    END;
     PA_REMOVEUREPET.Left := 5000;
     PA_FIMFILTRO.Left := 5000;
     PA_GABARITO.Visible := false;
     PA_PREENCHIMENTO.Visible := false;
     SCBX_GABARITO.Visible := false;
     PA_RESULTADO.Visible := false;
     PA_INICIAL.Left := 450;
     PA_INICIAL.Visible := TRUE;
    PA_EXECUTAR_FILTRO.Enabled := false;
     PA_GERAR.Visible := false;
     PA_GERAR.Enabled := false;
     PA_GERAR.Left := 4500;
     PA_GERAR.Repaint;
     bbt_close.Left := SELF.ClientWidth-555;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_0009EXC1_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     PA_INICIAL.Repaint;
end;


procedure T_F_FILTRO_09_NS_E_1.FormShow(Sender: TObject);
begin
     PA_REMOVEUREPET.Left := 5000;
     PA_FIMFILTRO.Left := 5000;
     PA_GABARITO.Visible := false;
     PA_PREENCHIMENTO.Visible := false;
     SCBX_GABARITO.Visible := false;
     PA_RESULTADO.Visible := false;
     PA_INICIAL.Left := 450;
     PA_INICIAL.Visible := TRUE;
    PA_EXECUTAR_FILTRO.Enabled := false;
     PA_GERAR.Visible := false;
     PA_GERAR.Enabled := false;
     PA_GERAR.Left := 4500;
     PA_GERAR.Repaint;
   //  BT_NOVA_SIMULACAO.Click;
end;


procedure T_F_FILTRO_09_NS_E_1.FormClose(Sender: TObject;
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




procedure T_F_FILTRO_09_NS_E_1.BBT_CLOSEClick(Sender: TObject);
begin
     SELF.Close;
end;



procedure T_F_FILTRO_09_NS_E_1.TRB_SOMA7_INIChange(Sender: TObject);
begin
     IF TRB_SOMA7_INI.Position = 1 THEN
          ED_SOMA7_INI.Text := '85';
     IF TRB_SOMA7_INI.Position = 2 THEN
          ED_SOMA7_INI.Text := '86';
     IF TRB_SOMA7_INI.Position = 3 THEN
          ED_SOMA7_INI.Text := '87';
     IF TRB_SOMA7_INI.Position = 4 THEN
          ED_SOMA7_INI.Text := '88';
     IF TRB_SOMA7_INI.Position = 5 THEN
          ED_SOMA7_INI.Text := '89';
     IF TRB_SOMA7_INI.Position = 6 THEN
          ED_SOMA7_INI.Text := '90';
     IF TRB_SOMA7_INI.Position = 7 THEN
          ED_SOMA7_INI.Text := '91';
     IF TRB_SOMA7_INI.Position = 8 THEN
          ED_SOMA7_INI.Text := '92';
     IF TRB_SOMA7_INI.Position = 9 THEN
          ED_SOMA7_INI.Text := '93';
     IF TRB_SOMA7_INI.Position = 10 THEN
          ED_SOMA7_INI.Text := '94';
     IF TRB_SOMA7_INI.Position = 11 THEN
          ED_SOMA7_INI.Text := '95';
     IF TRB_SOMA7_INI.Position = 12 THEN
          ED_SOMA7_INI.Text := '96';
     IF TRB_SOMA7_INI.Position = 13 THEN
          ED_SOMA7_INI.Text := '97';
end;


procedure T_F_FILTRO_09_NS_E_1.TRB_SOMA7_FinalChange(Sender: TObject);
begin
     IF TRB_SOMA7_Final.Position = 1 THEN
          ED_SOMA7_Final.Text := '85';
     IF TRB_SOMA7_Final.Position = 2 THEN
          ED_SOMA7_Final.Text := '86';
     IF TRB_SOMA7_Final.Position = 3 THEN
          ED_SOMA7_Final.Text := '87';
     IF TRB_SOMA7_Final.Position = 4 THEN
          ED_SOMA7_Final.Text := '88';
     IF TRB_SOMA7_Final.Position = 5 THEN
          ED_SOMA7_Final.Text := '89';
     IF TRB_SOMA7_Final.Position = 6 THEN
          ED_SOMA7_Final.Text := '90';
     IF TRB_SOMA7_Final.Position = 7 THEN
          ED_SOMA7_Final.Text := '91';
     IF TRB_SOMA7_Final.Position = 8 THEN
          ED_SOMA7_Final.Text := '92';
     IF TRB_SOMA7_Final.Position = 9 THEN
          ED_SOMA7_Final.Text := '93';
     IF TRB_SOMA7_Final.Position = 10 THEN
          ED_SOMA7_Final.Text := '94';
     IF TRB_SOMA7_Final.Position = 11 THEN
          ED_SOMA7_Final.Text := '95';
     IF TRB_SOMA7_Final.Position = 12 THEN
          ED_SOMA7_Final.Text := '96';
     IF TRB_SOMA7_Final.Position = 13 THEN
          ED_SOMA7_Final.Text := '97';
end;



procedure T_F_FILTRO_09_NS_E_1.TRB_SOMA12_INIChange(Sender: TObject);
begin
     IF TRB_SOMA12_INI.Position = 1 THEN
          ED_SOMA12_INI.Text := '150';
     IF TRB_SOMA12_INI.Position = 2 THEN
          ED_SOMA12_INI.Text := '151';
     IF TRB_SOMA12_INI.Position = 3 THEN
          ED_SOMA12_INI.Text := '152';
     IF TRB_SOMA12_INI.Position = 4 THEN
          ED_SOMA12_INI.Text := '153';
     IF TRB_SOMA12_INI.Position = 5 THEN
          ED_SOMA12_INI.Text := '154';
     IF TRB_SOMA12_INI.Position = 6 THEN
          ED_SOMA12_INI.Text := '155';
     IF TRB_SOMA12_INI.Position = 7 THEN
          ED_SOMA12_INI.Text := '156';
     IF TRB_SOMA12_INI.Position = 8 THEN
          ED_SOMA12_INI.Text := '157';
     IF TRB_SOMA12_INI.Position = 9 THEN
          ED_SOMA12_INI.Text := '158';
     IF TRB_SOMA12_INI.Position = 10 THEN
          ED_SOMA12_INI.Text := '159';
     IF TRB_SOMA12_INI.Position = 11 THEN
          ED_SOMA12_INI.Text := '160';
     IF TRB_SOMA12_INI.Position = 12 THEN
          ED_SOMA12_INI.Text := '161';
     IF TRB_SOMA12_INI.Position = 13 THEN
          ED_SOMA12_INI.Text := '162';
end;



procedure T_F_FILTRO_09_NS_E_1.TRB_SOMA12_FinalChange(Sender: TObject);
begin
     IF TRB_SOMA12_Final.Position = 1 THEN
          ED_SOMA12_Final.Text := '150';
     IF TRB_SOMA12_Final.Position = 2 THEN
          ED_SOMA12_Final.Text := '151';
     IF TRB_SOMA12_Final.Position = 3 THEN
          ED_SOMA12_Final.Text := '152';
     IF TRB_SOMA12_Final.Position = 4 THEN
          ED_SOMA12_Final.Text := '153';
     IF TRB_SOMA12_Final.Position = 5 THEN
          ED_SOMA12_Final.Text := '154';
     IF TRB_SOMA12_Final.Position = 6 THEN
          ED_SOMA12_Final.Text := '155';
     IF TRB_SOMA12_Final.Position = 7 THEN
          ED_SOMA12_Final.Text := '156';
     IF TRB_SOMA12_Final.Position = 8 THEN
          ED_SOMA12_Final.Text := '157';
     IF TRB_SOMA12_Final.Position = 9 THEN
          ED_SOMA12_Final.Text := '158';
     IF TRB_SOMA12_Final.Position = 10 THEN
          ED_SOMA12_Final.Text := '159';
     IF TRB_SOMA12_Final.Position = 11 THEN
          ED_SOMA12_Final.Text := '160';
     IF TRB_SOMA12_Final.Position = 12 THEN
          ED_SOMA12_Final.Text := '161';
     IF TRB_SOMA12_Final.Position = 13 THEN
          ED_SOMA12_Final.Text := '162';
end;



procedure T_F_FILTRO_09_NS_E_1.BBT_RECOMECARClick(Sender: TObject);
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
    FOR VI_CONTAR := 2 TO 18 DO
    BEGIN
        STGR_COMB15.Cells [VI_CONTAR,1] := '0';
    END;
    STGR_COMB15.RowCount := 2;
    FOR VI_CONTAR := 1 TO 6 DO
    BEGIN
        STGR_BASE_L1.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_L2.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_L3.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_L4.Cells [VI_CONTAR,0] := '0';
    END;
    ED_fixoS_1.Text := '00';
    FOR VI_CONTAR := 1 TO 3 DO
    BEGIN
        STGR_BASE_L1V.Cells [1, VI_CONTAR] := '0';
        STGR_BASE_L1V.Cells [2, VI_CONTAR] := '0';
        STGR_BASE_L2V.Cells [1, VI_CONTAR] := '0';
        STGR_BASE_L2V.Cells [2, VI_CONTAR] := '0';
        STGR_BASE_L3V.Cells [1, VI_CONTAR] := '0';
        STGR_BASE_L3V.Cells [2, VI_CONTAR] := '0';
        STGR_BASE_L4V.Cells [1, VI_CONTAR] := '0';
        STGR_BASE_L4V.Cells [2, VI_CONTAR] := '0';
    END;
    ED_fixoS_1.Text := '00';     
end;


procedure T_F_FILTRO_09_NS_E_1.BBT_CLICK_TUDOClick(Sender: TObject);
begin
     BBT_701.Click;
     BBT_702.Click;
     BBT_707.Click;
     BBT_708.Click;
     BBT_703.Click;
     BBT_704.Click;
     BBT_709.Click;
     BBT_711.Click;
     BBT_705.Click;
     BBT_706.Click;
     BBT_710.Click;
     BBT_712.Click;

     BBT_718.Click;
     BBT_719.Click;
     BBT_724.Click;
     BBT_725.Click;
     BBT_715.Click;
     BBT_717.Click;
     BBT_714.Click;
     BBT_722.Click;
     BBT_723.Click;
     BBT_716.Click;
     BBT_720.Click;
     BBT_721.Click;

     BBT_713.Click;
   //  ED_fixoS_1.Text := '13';
   {  STGR_BASE_L1V.Cells[1,1] := '01';
     STGR_BASE_L1V.Cells[2,1] := '02';
     STGR_BASE_L1V.Cells[1,2] := '03';
     STGR_BASE_L1V.Cells[2,2] := '04';
     STGR_BASE_L1V.Cells[1,3] := '05';
     STGR_BASE_L1V.Cells[2,3] := '06';
     STGR_BASE_L1.Cells[1,0] := '01';
     STGR_BASE_L1.Cells[2,0] := '02';
     STGR_BASE_L1.Cells[3,0] := '03';
     STGR_BASE_L1.Cells[4,0] := '04';
     STGR_BASE_L1.Cells[5,0] := '05';
     STGR_BASE_L1.Cells[6,0] := '06';

     STGR_BASE_L4V.Cells[1,1] := '24';
     STGR_BASE_L4V.Cells[2,1] := '25';
     STGR_BASE_L4V.Cells[1,2] := '22';
     STGR_BASE_L4V.Cells[2,2] := '23';
     STGR_BASE_L4V.Cells[1,3] := '20';
     STGR_BASE_L4V.Cells[2,3] := '21';
     STGR_BASE_L4.Cells[1,0] := '24';
     STGR_BASE_L4.Cells[2,0] := '25';
     STGR_BASE_L4.Cells[3,0] := '22';
     STGR_BASE_L4.Cells[4,0] := '23';
     STGR_BASE_L4.Cells[5,0] := '20';
     STGR_BASE_L4.Cells[6,0] := '21';

     STGR_BASE_L2V.Cells[1,1] := '07';
     STGR_BASE_L2V.Cells[2,1] := '08';
     STGR_BASE_L2V.Cells[1,2] := '09';
     STGR_BASE_L2V.Cells[2,2] := '11';
     STGR_BASE_L2V.Cells[1,3] := '10';
     STGR_BASE_L2V.Cells[2,3] := '12';
     STGR_BASE_L2.Cells[1,0] := '07';
     STGR_BASE_L2.Cells[2,0] := '08';
     STGR_BASE_L2.Cells[3,0] := '09';
     STGR_BASE_L2.Cells[4,0] := '11';
     STGR_BASE_L2.Cells[5,0] := '10';
     STGR_BASE_L2.Cells[6,0] := '12';

     STGR_BASE_L3V.Cells[1,1] := '18';
     STGR_BASE_L3V.Cells[2,1] := '19';
     STGR_BASE_L3V.Cells[1,2] := '15';
     STGR_BASE_L3V.Cells[2,2] := '17';
     STGR_BASE_L3V.Cells[1,3] := '14';
     STGR_BASE_L3V.Cells[2,3] := '16';
     STGR_BASE_L3.Cells[1,0] := '18';
     STGR_BASE_L3.Cells[2,0] := '19';
     STGR_BASE_L3.Cells[3,0] := '15';
     STGR_BASE_L3.Cells[4,0] := '17';
     STGR_BASE_L3.Cells[5,0] := '14';
     STGR_BASE_L3.Cells[6,0] := '16';  }
end;



procedure T_F_FILTRO_09_NS_E_1.BBT_PREPARARClick(Sender: TObject);
var
     VI_CONTADOR, VI_CONTAR, VI_LINHAS2, VI_COMBINACOES1, VI_COMBINACOES2: integer;
     VI_COMBINACOES3 : SMALLINT;
     VI_CNTCELULAS: SMALLINT;
     VS_NUMEROSPRINCIPAIS: STRING;     
begin
          // desinvertendo
                 STGR_BASE_L4.Cells [1,0]  :=  STGR_BASE_L4V.Cells[1,1];
                 STGR_BASE_L4.Cells [2,0]  :=  STGR_BASE_L4V.Cells[2,1];
                 STGR_BASE_L4.Cells [3,0]  :=  STGR_BASE_L4V.Cells[1,2];
                 STGR_BASE_L4.Cells [4,0]  :=  STGR_BASE_L4V.Cells[2,2];
                 STGR_BASE_L4.Cells [5,0]  :=  STGR_BASE_L4V.Cells[1,3];
                 STGR_BASE_L4.Cells [6,0]  :=  STGR_BASE_L4V.Cells[2,3];

                 STGR_BASE_L3.Cells [1,0]  :=  STGR_BASE_L3V.Cells[1,1];
                 STGR_BASE_L3.Cells [2,0]  :=  STGR_BASE_L3V.Cells[2,1];
                 STGR_BASE_L3.Cells [3,0]  :=  STGR_BASE_L3V.Cells[1,2];
                 STGR_BASE_L3.Cells [4,0]  :=  STGR_BASE_L3V.Cells[2,2];
                 STGR_BASE_L3.Cells [5,0]  :=  STGR_BASE_L3V.Cells[1,3];
                 STGR_BASE_L3.Cells [6,0]  :=  STGR_BASE_L3V.Cells[2,3];

                 STGR_BASE_L2.Cells [1,0]  :=  STGR_BASE_L2V.Cells[1,1];
                 STGR_BASE_L2.Cells [2,0]  :=  STGR_BASE_L2V.Cells[2,1];
                 STGR_BASE_L2.Cells [3,0]  :=  STGR_BASE_L2V.Cells[1,2];
                 STGR_BASE_L2.Cells [4,0]  :=  STGR_BASE_L2V.Cells[2,2];
                 STGR_BASE_L2.Cells [5,0]  :=  STGR_BASE_L2V.Cells[1,3];
                 STGR_BASE_L2.Cells [6,0]  :=  STGR_BASE_L2V.Cells[2,3];

                 STGR_BASE_L1.Cells [1,0]  :=  STGR_BASE_L1V.Cells[1,1];
                 STGR_BASE_L1.Cells [2,0]  :=  STGR_BASE_L1V.Cells[2,1];
                 STGR_BASE_L1.Cells [3,0]  :=  STGR_BASE_L1V.Cells[1,2];
                 STGR_BASE_L1.Cells [4,0]  :=  STGR_BASE_L1V.Cells[2,2];
                 STGR_BASE_L1.Cells [5,0]  :=  STGR_BASE_L1V.Cells[1,3];
                 STGR_BASE_L1.Cells [6,0]  :=  STGR_BASE_L1V.Cells[2,3];
     FOR VI_CONTAR := 1 TO 15 DO
     BEGIN
        STGR_COMB15.Cells [VI_CONTAR+1,0] := '-'+INTtoSTR(VI_CONTAR)+'-';
        STGR_COMB15.Cells [VI_CONTAR+1,1] := '00';
     END;
     STGR_COMB15.RowCount := 2;
     STGR_COMB15.Repaint;
     PGBR_GERARCOMB.Position := 0;
     PGBR_GERARCOMB0.Position :=0;
     PGBR_GERARCOMB3.Position :=0;
     PGBR_GERARCOMB.Repaint;
     PGBR_GERARCOMB0.Repaint;
     PGBR_GERARCOMB3.Repaint;
     PGBR_REMREPET.Position := 00;
     PGBR_REMREPET.Repaint;
     PGBR_FILTRARCOMB.Position := 0;
     PGBR_FILTRARCOMB.Repaint;
     LA_LINHA_1_100REP.Caption := '00';
     LA_LINHA_2_100REP.Caption := '00';
     LA_LINHA_3_100REP.Caption := '00';
     LA_LINHA_4_100REP.Caption := '00';
     LA_TOTAL_COMB.Caption := 'GERAR:               ';
     LA_GERAR_COMB.Caption := '#:                   ';
     LA_QTD_COMB.Caption := '000000';
     LA_QTD_FILTRADOS.Caption := '0000000';
     LA_QTD_FILTRADOS.Repaint;
     LA_TOTAL_100REPET.Caption := '000000';
     LA_TOTAL_100REPET.Repaint;
     LA_TOTAL_COMB.Repaint;
     LA_GERAR_COMB.Repaint;
     LA_QTD_COMB.Repaint;
    // ==========================================
    // ||||==================================||||
    // |||| 	Conferindo numeros válidos   ||||
    // ||||==================================||||
    // ==========================================
        // **************
        // **  LINHA 1 **
        // **************
//    IF (STRtoINT(STGR_BASE_L4.Cells [5,0] ) =0) THEN
//    BEGIN
//       SHOWMESSAGE ('TERMINE O PREENCHIMENTO.');
//       ED_fixoS_L4.SetFocus;
//       EXIT;
//   END; // IF
        // ***************************
        // **  CONFERINDO OS EXCLUIDOS **
        // ***************************
  {   IF (STRtoINT(ED_EXC_01.Text) = 0  ) OR
       (STRtoINT(ED_EXC_02.Text) = 0  ) OR
       (STRtoINT(ED_EXC_03.Text) = 0  ) THEN
     BEGIN
            SHOWMESSAGE ('NÚMERO EXCLUÍDO NÃO PODE SER 0.');
            ED_EXC_01.SetFocus;
            EXIT;
     END; // IF    }
{
    IF (STRtoINT(ED_FIXOS_01.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
       (STRtoINT(ED_FIXOS_01.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
       (STRtoINT(ED_FIXOS_01.Text) = STRtoINT(ED_EXC_03.Text ) )
    THEN
    BEGIN
            SHOWMESSAGE ('O NÚMERO FIXO DOS NÚMEROS A GERAR TEM DE SER DIFERENTE DOS EXCLUÍDOS.');
            ED_FIXOS_01.SetFocus;
            EXIT;
    END; // IF
    IF (STRtoINT(ED_FIXOS_02.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
       (STRtoINT(ED_FIXOS_02.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
       (STRtoINT(ED_FIXOS_02.Text) = STRtoINT(ED_EXC_03.Text ) )
    THEN
    BEGIN
            SHOWMESSAGE ('O NÚMERO FIXO DOS NÚMEROS A GERAR TEM DE SER DIFERENTE DOS EXCLUÍDOS.');
            ED_FIXOS_02.SetFocus;
            EXIT;
    END; // IF
    IF (STRtoINT(ED_FIXOS_03.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
       (STRtoINT(ED_FIXOS_03.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
       (STRtoINT(ED_FIXOS_03.Text) = STRtoINT(ED_EXC_03.Text ) )
    THEN
    BEGIN
            SHOWMESSAGE ('O NÚMERO FIXO DOS NÚMEROS A GERAR TEM DE SER DIFERENTE DOS EXCLUÍDOS.');
            ED_FIXOS_02.SetFocus;
            EXIT;
    END; // IF
    IF (STRtoINT(ED_FIXOS_04.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
       (STRtoINT(ED_FIXOS_04.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
       (STRtoINT(ED_FIXOS_04.Text) = STRtoINT(ED_EXC_03.Text ) )
    THEN
    BEGIN
            SHOWMESSAGE ('O NÚMERO FIXO DOS NÚMEROS A GERAR TEM DE SER DIFERENTE DOS EXCLUÍDOS.');
            ED_FIXOS_02.SetFocus;
            EXIT;
    END; // IF
        // ***************************
        // **  Verificando números inicias e finais **
        // ***************************
     if (STRtoINT(ED_FIXOS_01.Text)=00) then
     begin
          SHOWMESSAGE ('O PRIMEIRO NUMERO FIXO É ZERO, PORTANDO OS DEMAIS NÃO TERÃO EFEITO E SERÃO ZERADO.');
          ED_FIXOS_02.Text := '00';
          ED_FIXOS_03.Text := '00';
          ED_FIXOS_04.Text := '00';
          ED_FIXOS_01.SetFocus;
     end
     ELSE if (STRtoINT(ED_FIXOS_02.Text)=0) or (STRtoINT(ED_FIXOS_03.Text)=0) or (STRtoINT(ED_FIXOS_04.Text)=0)then
     begin
          SHOWMESSAGE ('APENAS O PRIMEIRO NUMERO FIXO PODE SER ZERO.');
          ED_FIXOS_02.SetFocus;          
     end; // IF   }

     IF (STRtoINT(ED_SOMA7_INI.Text)) > (STRtoINT(ED_SOMA7_Final.Text)) THEN
     BEGIN
       SHOWMESSAGE ('ORDEM NUMÉRICA - POR FAVOR.');
       TRB_SOMA7_INI.SetFocus;
       EXIT;
     END;

        // ******************
        // **  LINHA_1 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 5 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
          BEGIN
               FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
               BEGIN
                    STGR_LINHA_1_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_1_C1.Cells [1,VI_LINHAS2]:= 'V';
                    STGR_LINHA_1_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0];
                    STGR_LINHA_1_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L1.Cells[VI_COMBINACOES2,0];
                    STGR_LINHA_1_C1.Cells [4,VI_LINHAS2]:= STGR_BASE_L1.Cells[VI_COMBINACOES3,0];
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_L1.Cells[VI_COMBINACOES2,0]+ '-' +
                              STGR_BASE_L1.Cells[VI_COMBINACOES3,0];
                                   // pega o primeiro numero que sobrou
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 6 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                             begin
                                                  STGR_LINHA_1_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                  VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                       STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                             end; // if
                                        END;
                                   END; // FOR VI_CONTADOR
                                   // pega o segundo numero que sobrou
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 6 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                             begin
                                                  STGR_LINHA_1_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                  VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                       STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                             end; // if
                                        END;
                                   END; // FOR VI_CONTADOR
                                   // pega o terceiro numero que sobrou
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 6 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                                  STGR_LINHA_1_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                        END;
                                   END; // FOR VI_CONTADOR
                         VI_LINHAS2 := VI_LINHAS2 +1;
                         STGR_LINHA_1_C1.RowCount := VI_LINHAS2;
                         STGR_LINHA_1_C2.RowCount := VI_LINHAS2;
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_1_C1.Repaint;
     STGR_LINHA_1_C2.Repaint;
                    // -------------------------------
                    // --  Removendo os EXCLUIDOS DA COLUNA  --
                    // -------------------------------
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_1_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                   (STRtoINT(STGR_LINHA_1_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) or
                   (STRtoINT(STGR_LINHA_1_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                   THEN
               BEGIN
                   STGR_LINHA_1_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_1_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                   (STRtoINT(STGR_LINHA_1_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) or
                   (STRtoINT(STGR_LINHA_1_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                   THEN
               BEGIN
                   STGR_LINHA_1_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_1_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                   (STRtoINT(STGR_LINHA_1_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) or
                   (STRtoINT(STGR_LINHA_1_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                   THEN
               BEGIN
                   STGR_LINHA_1_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_1_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) OR
                   (STRtoINT(STGR_LINHA_1_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) or
                   (STRtoINT(STGR_LINHA_1_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                   THEN
               BEGIN
                   STGR_LINHA_1_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_1_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                   (STRtoINT(STGR_LINHA_1_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) or
                   (STRtoINT(STGR_LINHA_1_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                   THEN
               BEGIN
                   STGR_LINHA_1_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1

     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1_C1.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_1_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_LINHA_1_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_LINHA_1_100REP.Repaint;


        // ******************
        // **  LINHA_2 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 5 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
          BEGIN
               FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
               BEGIN
                    STGR_LINHA_2_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_2_C1.Cells [1,VI_LINHAS2]:= 'V';
                    STGR_LINHA_2_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0];
                    STGR_LINHA_2_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L2.Cells[VI_COMBINACOES2,0];
                    STGR_LINHA_2_C1.Cells [4,VI_LINHAS2]:= STGR_BASE_L2.Cells[VI_COMBINACOES3,0];
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_L2.Cells[VI_COMBINACOES2,0]+ '-' +
                              STGR_BASE_L2.Cells[VI_COMBINACOES3,0];
                                   // pega o primeiro numero que sobrou
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 6 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                             begin
                                                  STGR_LINHA_2_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                  VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                       STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                             end; // if
                                        END;
                                   END; // FOR VI_CONTADOR
                                   // pega o segundo numero que sobrou
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 6 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                             begin
                                                  STGR_LINHA_2_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                  VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                       STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                             end; // if
                                        END;
                                   END; // FOR VI_CONTADOR
                                   // pega o terceiro numero que sobrou
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 6 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                                  STGR_LINHA_2_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                        END;
                                   END; // FOR VI_CONTADOR
                         VI_LINHAS2 := VI_LINHAS2 +1;
                         STGR_LINHA_2_C1.RowCount := VI_LINHAS2;
                         STGR_LINHA_2_C2.RowCount := VI_LINHAS2;
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_2_C1.Repaint;
     STGR_LINHA_2_C2.Repaint;
                    // -------------------------------
                    // --  Removendo os EXCLUIDOS DA COLUNA  --
                    // -------------------------------
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_2_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_2_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                   (STRtoINT(STGR_LINHA_2_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) or
                   (STRtoINT(STGR_LINHA_2_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                   THEN
               BEGIN
                   STGR_LINHA_2_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_2_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_2_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_2_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                   (STRtoINT(STGR_LINHA_2_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) or
                   (STRtoINT(STGR_LINHA_2_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                   THEN
               BEGIN
                   STGR_LINHA_2_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_2_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_2_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_2_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                   (STRtoINT(STGR_LINHA_2_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) or
                   (STRtoINT(STGR_LINHA_2_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                   THEN
               BEGIN
                   STGR_LINHA_2_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_2_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_2_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_2_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) OR
                   (STRtoINT(STGR_LINHA_2_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) or
                   (STRtoINT(STGR_LINHA_2_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                   THEN
               BEGIN
                   STGR_LINHA_2_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_2_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_2_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_2_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                   (STRtoINT(STGR_LINHA_2_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) or
                   (STRtoINT(STGR_LINHA_2_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                   THEN
               BEGIN
                   STGR_LINHA_2_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_2_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1

     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_2_C1.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_2_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_LINHA_2_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_LINHA_2_100REP.Repaint;


        // ******************
        // **  LINHA_3 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 5 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
          BEGIN
                    STGR_LINHA_3_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_3_C1.Cells [1,VI_LINHAS2]:= 'V';
                    STGR_LINHA_3_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0];
                    STGR_LINHA_3_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L3.Cells[VI_COMBINACOES2,0];
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_L3.Cells[VI_COMBINACOES2,0];
                                   // pega o primeiro numero que sobrou
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 6 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                             begin
                                                  STGR_LINHA_3_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                  VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                       STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                             end; // if
                                        END;
                                   END; // FOR VI_CONTADOR
                                   // pega o segundo numero que sobrou
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 6 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                             begin
                                                  STGR_LINHA_3_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                  VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                       STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                             end; // if
                                        END;
                                   END; // FOR VI_CONTADOR
                                   // pega o terceiro numero que sobrou
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 6 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                             begin
                                                  STGR_LINHA_3_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                  VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                       STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                             end; // if
                                        END;
                                   END; // FOR VI_CONTADOR
                                   // pega o quarto numero que sobrou
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 6 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                                  STGR_LINHA_3_C2.Cells[5,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                        END;
                                   END; // FOR VI_CONTADOR
                         VI_LINHAS2 := VI_LINHAS2 +1;
                         STGR_LINHA_3_C1.RowCount := VI_LINHAS2;
                         STGR_LINHA_3_C2.RowCount := VI_LINHAS2;                         
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_3_C1.Repaint;
     STGR_LINHA_3_C2.Repaint;
                    // -------------------------------
                    // --  Removendo os EXCLUIDOS DA COLUNA  --
                    // -------------------------------
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                   (STRtoINT(STGR_LINHA_3_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                   THEN
               BEGIN
                   STGR_LINHA_3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_3_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                   (STRtoINT(STGR_LINHA_3_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                   THEN
               BEGIN
                   STGR_LINHA_3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_3_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                   (STRtoINT(STGR_LINHA_3_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                   THEN
               BEGIN
                   STGR_LINHA_3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_3_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) OR
                   (STRtoINT(STGR_LINHA_3_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                   THEN
               BEGIN
                   STGR_LINHA_3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_3_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                   (STRtoINT(STGR_LINHA_3_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                   THEN
               BEGIN
                   STGR_LINHA_3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_3_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_3_C1.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_3_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_LINHA_3_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_LINHA_3_100REP.Repaint;

        // ******************
        // **  LINHA_4 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 6 DO
     BEGIN
                    STGR_LINHA_4_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_4_C1.Cells [1,VI_LINHAS2]:= 'V';
                    STGR_LINHA_4_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0];
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0] ;
                                   // pega o primeiro numero que sobrou
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 6 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                             begin
                                                  STGR_LINHA_4_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                  VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                       STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                             end; // if
                                        END;
                                   END; // FOR VI_CONTADOR
                                   // pega o segundo numero que sobrou
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 6 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                             begin
                                                  STGR_LINHA_4_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                  VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                       STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                             end; // if
                                        END;
                                   END; // FOR VI_CONTADOR
                                   // pega o terceiro numero que sobrou
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 6 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                             begin
                                                  STGR_LINHA_4_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                  VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                       STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                             end; // if
                                        END;
                                   END; // FOR VI_CONTADOR
                                   // pega o quarto numero que sobrou                                   
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 6 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                             begin
                                                  STGR_LINHA_4_C2.Cells[5,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                  VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                       STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                             end; // if
                                        END;
                                   END; // FOR VI_CONTADOR
                                   // pega o quinto numero que sobrou
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 6 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                                  STGR_LINHA_4_C2.Cells[6,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                        END;
                                   END; // FOR VI_CONTADOR
                         VI_LINHAS2 := VI_LINHAS2 +1;
                         STGR_LINHA_4_C1.RowCount := VI_LINHAS2;
                         STGR_LINHA_4_C2.RowCount := VI_LINHAS2;
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_4_C1.Repaint;
     STGR_LINHA_4_C2.Repaint;
                    // -------------------------------
                    // --  Removendo os EXCLUIDOS DA COLUNA  --
                    // -------------------------------
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                   THEN
               BEGIN
                   STGR_LINHA_4_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                   THEN
               BEGIN
                   STGR_LINHA_4_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                   THEN
               BEGIN
                   STGR_LINHA_4_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                   THEN
               BEGIN
                   STGR_LINHA_4_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                   THEN
               BEGIN
                   STGR_LINHA_4_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_C1.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_4_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_LINHA_4_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_LINHA_4_100REP.Repaint;
     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;
            SELF.IBQ_COMBINACOES.Close;
            SELF.IBQ_COMBINACOES.Open;
            IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_0009EXC1_DEFINICAO')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_0009EXC1_DADOS')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM FILTRO_0009EXC1_DEFINICAO; ')  ;
            SELF.IBQ_COMBINACOES.Open;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_0009EXC1_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;     
     showmessage('OK');
end;



procedure T_F_FILTRO_09_NS_E_1.BT_NOVA_SIMULACAOClick(Sender: TObject);
begin
     PA_PREENCHIMENTO.Visible := TRUE;
     PA_PREENCHIMENTO.Enabled := TRUE;
     PA_PREENCHIMENTO.Top := 35;
     PA_PREENCHIMENTO.Repaint;
     PA_GABARITO.Visible := TRUE;
     PA_RESULTADO.Visible := TRUE;
     PA_RESULTADO.Enabled := TRUE;
     RB_RESULTADOS.SetFocus;
     RB_RES_GABARITOS.SetFocus;     
     SCBX_GABARITO.Visible := TRUE;
     SCBX_GABARITO.Enabled := TRUE;
     STGR_COMB15.Visible := TRUE;
     STGR_COMB15.Enabled := TRUE;
     PA_EXECUTAR_FILTRO.Enabled := TRUE;
     BBT_PREPARAR.Enabled := TRUE;
     BBT_GERAR_MENU.Enabled := TRUE;
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 2198;
     SCBX_GABARITO.Top:=247;
     SCBX_GABARITO.Repaint;
end;


PROCEDURE T_F_FILTRO_09_NS_E_1.PR_BOTOES_MODELO_12345 (VI_NUMERO: INTEGER);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3, VI_CONTAR4 : INTEGER;
BEGIN
   FOR VI_CONTAR := 1 TO 6 DO
    BEGIN
        IF (STRtoINT (STGR_BASE_L1.Cells [VI_CONTAR,0]) = 0) THEN
        BEGIN
            STGR_BASE_L1.Cells [VI_CONTAR,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
            EXIT;
        END ELSE
        IF (VI_CONTAR = 6) THEN
        BEGIN
            FOR VI_CONTAR2 :=1 TO 6 DO
            BEGIN
                IF (STRtoINT (STGR_BASE_L2.Cells [VI_CONTAR2,0]) = 0) THEN
                BEGIN
                    STGR_BASE_L2.Cells [VI_CONTAR2,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                    EXIT;
                END ELSE
                IF (VI_CONTAR2 = 6) THEN
                BEGIN
                    FOR VI_CONTAR3 :=1 TO 6 DO
                    BEGIN
                        IF (STRtoINT (STGR_BASE_L3.Cells [VI_CONTAR3,0]) = 0) THEN
                        BEGIN
                            STGR_BASE_L3.Cells [VI_CONTAR3,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                            EXIT  ;
                        END ELSE
                        IF (VI_CONTAR3 = 6) THEN
                        BEGIN
                            FOR VI_CONTAR4 :=1 TO 6 DO
                            BEGIN
                                IF (STRtoINT (STGR_BASE_L4.Cells [VI_CONTAR4,0]) = 0) THEN
                                BEGIN
                                    STGR_BASE_L4.Cells [VI_CONTAR4,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                                    EXIT ;
                                END ELSE
                                IF (VI_CONTAR4 = 6) THEN
                                begin
                                   ED_fixoS_1.Text := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);; // IF VI_CONTAR4
                                END; // IF
                               STGR_BASE_L3V.Cells[1,2] := STGR_BASE_L4.Cells [1,0];
                               STGR_BASE_L3V.Cells[2,2] := STGR_BASE_L4.Cells [2,0];
                               STGR_BASE_L2V.Cells[1,3] := STGR_BASE_L4.Cells [3,0];
                               STGR_BASE_L2V.Cells[2,3] := STGR_BASE_L4.Cells [4,0];
                               STGR_BASE_L3V.Cells[1,3] := STGR_BASE_L4.Cells [5,0];
                               STGR_BASE_L3V.Cells[2,3] := STGR_BASE_L4.Cells [6,0];
                            END; // FOR VI_CONTAR4
                        END; // IF (VI_CONTAR3
                          STGR_BASE_L2V.Cells[1,1] := STGR_BASE_L3.Cells [1,0];
                          STGR_BASE_L2V.Cells[2,1] := STGR_BASE_L3.Cells [2,0];
                          STGR_BASE_L3V.Cells[1,1] := STGR_BASE_L3.Cells [3,0];
                          STGR_BASE_L3V.Cells[2,1] := STGR_BASE_L3.Cells [4,0];
                          STGR_BASE_L2V.Cells[1,2] := STGR_BASE_L3.Cells [5,0];
                          STGR_BASE_L2V.Cells[2,2] := STGR_BASE_L3.Cells [6,0];
                    END;// FOR VI_CONTAR3
                END; // IF (STRtoINT
                STGR_BASE_L4V.Cells[1,2] := STGR_BASE_L2.Cells [1,0];
                STGR_BASE_L4V.Cells[2,2] := STGR_BASE_L2.Cells [2,0];
                STGR_BASE_L1V.Cells[1,3] := STGR_BASE_L2.Cells [3,0];
                STGR_BASE_L1V.Cells[2,3] := STGR_BASE_L2.Cells [4,0];
                STGR_BASE_L4V.Cells[1,3] := STGR_BASE_L2.Cells [5,0];
                STGR_BASE_L4V.Cells[2,3] := STGR_BASE_L2.Cells [6,0];
            END; // FOR VI_CONTAR 2
        END;// IF (STRtoINT
          STGR_BASE_L1V.Cells[1,1] := STGR_BASE_L1.Cells [1,0];
          STGR_BASE_L1V.Cells[2,1] := STGR_BASE_L1.Cells [2,0];
          STGR_BASE_L4V.Cells[1,1] := STGR_BASE_L1.Cells [3,0];
          STGR_BASE_L4V.Cells[2,1] := STGR_BASE_L1.Cells [4,0];
          STGR_BASE_L1V.Cells[1,2] := STGR_BASE_L1.Cells [5,0];
          STGR_BASE_L1V.Cells[2,2] := STGR_BASE_L1.Cells [6,0];
    END; // VI_CONTAR1
END;





procedure T_F_FILTRO_09_NS_E_1.BBT_701Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(1);
    BBT_701.Enabled := FALSE;
end;

procedure T_F_FILTRO_09_NS_E_1.BBT_702Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(2);
    BBT_702.Enabled := FALSE;
end;

procedure T_F_FILTRO_09_NS_E_1.BBT_703Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(3);
    BBT_703.Enabled := FALSE;
end;

procedure T_F_FILTRO_09_NS_E_1.BBT_704Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(4);
    BBT_704.Enabled := FALSE;
end;

procedure T_F_FILTRO_09_NS_E_1.BBT_705Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(5);
    BBT_705.Enabled := FALSE;
end;

procedure T_F_FILTRO_09_NS_E_1.BBT_706Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(6);
    BBT_706.Enabled := FALSE;
end;

procedure T_F_FILTRO_09_NS_E_1.BBT_707Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(7);
    BBT_707.Enabled := FALSE;
end;

procedure T_F_FILTRO_09_NS_E_1.BBT_708Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(8);
    BBT_708.Enabled := FALSE;
end;

procedure T_F_FILTRO_09_NS_E_1.BBT_710Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(10);
    BBT_710.Enabled := FALSE;
end;

procedure T_F_FILTRO_09_NS_E_1.BBT_709Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(9);
    BBT_709.Enabled := FALSE;
end;

procedure T_F_FILTRO_09_NS_E_1.BBT_711Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(11);
    BBT_711.Enabled := FALSE;
end;

procedure T_F_FILTRO_09_NS_E_1.BBT_712Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(12);
    BBT_712.Enabled := FALSE;
end;

procedure T_F_FILTRO_09_NS_E_1.BBT_713Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(13);
    BBT_713.Enabled := FALSE;
end;

procedure T_F_FILTRO_09_NS_E_1.BBT_714Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(14);
    BBT_714.Enabled := FALSE;
end;

procedure T_F_FILTRO_09_NS_E_1.BBT_715Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(15);
    BBT_715.Enabled := FALSE;
end;

procedure T_F_FILTRO_09_NS_E_1.BBT_716Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(16);
    BBT_716.Enabled := FALSE;
end;

procedure T_F_FILTRO_09_NS_E_1.BBT_717Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(17);
    BBT_717.Enabled := FALSE;
end;

procedure T_F_FILTRO_09_NS_E_1.BBT_718Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(18);
    BBT_718.Enabled := FALSE;
end;

procedure T_F_FILTRO_09_NS_E_1.BBT_719Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(19);
    BBT_719.Enabled := FALSE;
end;

procedure T_F_FILTRO_09_NS_E_1.BBT_720Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(20);
    BBT_720.Enabled := FALSE;
end;

procedure T_F_FILTRO_09_NS_E_1.BBT_721Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(21);
    BBT_721.Enabled := FALSE;
end;

procedure T_F_FILTRO_09_NS_E_1.BBT_722Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(22);
    BBT_722.Enabled := FALSE;
end;

procedure T_F_FILTRO_09_NS_E_1.BBT_723Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(23);
    BBT_723.Enabled := FALSE;
end;

procedure T_F_FILTRO_09_NS_E_1.BBT_724Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(24);
    BBT_724.Enabled := FALSE;
end;

procedure T_F_FILTRO_09_NS_E_1.BBT_725Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(25);
    BBT_725.Enabled := FALSE;
end;







procedure T_F_FILTRO_09_NS_E_1.BBT_GERAR_MENUClick(Sender: TObject);
begin
    {IF (STRtoINT(STGR_BASE_L4.Cells [5,0] ) =0) THEN
    BEGIN
       SHOWMESSAGE ('TERMINE O PREENCHIMENTO.');
       ED_FIXOS_01.SetFocus;
       EXIT;
   END; // IF  }
     PA_GERAR.Visible := TRUE;
     PA_GERAR.Enabled := TRUE;
     PA_GERAR.Left := 460;
end;



procedure T_F_FILTRO_09_NS_E_1.BBT_GERAR_SIMULACAOClick(Sender: TObject);
var
     VI_LINHAS1, VI_LINHAS2, VI_COMBINACOES1, VI_COMBINACOES2, VI_CONTAR_CELULAS, VI_CONTASEL1, VI_CONTASEL2, VI_CONTAR_COMB1: integer;
     VsI_COMBINACOES3, VsI_COMBINACOES4, VsI_COMBINACOES5: SMALLINT;
     VI_TOTAL_COMB1, VI_FLAG_SOMATORIA1, VI_FLAG_SOMATORIA2, VI_FLAG_SOMATORIA3, VI_FLAG_SOMATORIA4: SMALLINT;
     Vsi_COMb7_1, Vsi_COMB7_2, Vsi_COMb7_3, Vsi_COMB7_4, Vsi_COMB7_5, Vsi_COMB7_6, Vsi_COMB7_7, VI_LINHAS7 : SMALLINT;
     Vsi_COMB12_1, Vsi_COMB12_2, Vsi_COMB12_3, Vsi_COMB12_4, Vsi_COMB12_5, Vsi_COMB12_6, Vsi_COMB12_7, Vsi_COMB12_8, Vsi_COMB12_9, Vsi_COMB12_0, Vsi_COMB12_A, Vsi_COMB12_B, VI_LINHAS12: SMALLINT;

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
        FOR VI_CONTAR :=2 TO 11 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB15.Cells[VI_CONTAR,VI_LINHAS9])) ,1]:='V';
        END; // FOR VI_CONTAR1
        VI_CNTCELULAS := 2;
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
            BEGIN
                STGR_COMB15.Cells [VI_CNTCELULAS, VI_LINHAS9] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                VI_CNTCELULAS := VI_CNTCELULAS + 1;
            END; // IF (STRGR_TODOS_NUMEROS
        END; // FOR VI_CONTAR
    end; // PROCEDURE ORDENAR_SIMULACAO_15

    PROCEDURE PR_GRAVAR_DADOS (VC_BEGIN_END: STRING; OUT VI_LINHAS2:INTEGER; VI_COMBINACOES_C1:INTEGER; VI_TOTCOMBINACOES_C1:INTEGER);
    VAR
        VI_TOTALGERADO, VI_AN_COMB1, VI_CNTCELULAS : INTEGER;
        VC_QUERY : STRING;
        VC_DADOS1, VC_DADOS2, VC_DADOS3, VC_DADOS4, VC_DADOS5, VC_COMBINACOES : STRING;
    BEGIN
        IF (VC_BEGIN_END = 'INICIO') THEN
        BEGIN
            VC_DADOS1 := RIGHTSTR ('0'+STGR_BASE_L1.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L1.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L1.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L1.Cells[4,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L1.Cells[5,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L1.Cells[6,0],2);
            VC_DADOS2 := RIGHTSTR ('0'+STGR_BASE_L2.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L2.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L2.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L2.Cells[4,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L2.Cells[5,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L2.Cells[6,0],2);
            VC_DADOS3 := RIGHTSTR ('0'+STGR_BASE_L3.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L3.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L3.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L3.Cells[4,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L3.Cells[5,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L3.Cells[6,0],2);
            VC_DADOS4 := RIGHTSTR ('0'+STGR_BASE_L4.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L4.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L4.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L4.Cells[4,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L4.Cells[5,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L4.Cells[6,0],2);
                SELF.IBQ_COMBINACOES.SQL.Clear;
            VC_QUERY  := 'INSERT INTO FILTRO_0009EXC1_DEFINICAO (LINHA_1, LINHA_2, LINHA_3, LINHA_4, SOMA_COL_1_INI, SOMA_COL_1_FINAL,';
            VC_QUERY  := VC_QUERY +' EXC_1, EXC_2, EXC_3, EXC_4, EXC_5, CONTADOR_C1, TOTAL_CONTADOR_C1, ';
            VC_QUERY  := VC_QUERY +' EXC_OBR_1, EXC_OBR_2, EXC_OBR_3, DATA_DEFINICAO, HORA_DEFINICAO, SOMA_12N_INI, SOMA_12N_FINAL, QTD_DADOS) VALUES('+#39+ VC_DADOS1 + #39 +','  +#39+ VC_DADOS2 + #39 +','  +#39+ VC_DADOS3 + #39 +','  +#39+ VC_DADOS4;
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_SOMA7_INI.Text    + #39 +','+#39+ ED_SOMA7_Final.Text  ;
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_FIXOS_01.Text          + #39 +','+#39+ ED_FIXOS_02.Text          + #39 +','+#39+ ED_FIXOS_03.Text       + #39 +','+#39+ ED_FIXOS_04.Text          + #39 +','+#39+ ED_FIXOS_05.Text       + #39 +','+#39+ INTtoSTR(VI_COMBINACOES_C1)       + #39 +','+#39+ INTtoSTR(VI_TOTCOMBINACOES_C1);
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_EXC_01.Text       + #39 +','+#39+ ED_EXC_02.Text       + #39 +','+#39+ ED_EXC_03.Text     + #39 +',' +#39+ STRINGREPLACE(FORMATDATETIME('d/m/yyyy',DATE()),'/','.',[]) + #39 +',' +#39+ FORMATDATETIME('h:n:s',time());
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_SOMA12_INI.Text    + #39 +','+#39+ ED_SOMA12_Final.Text  +#39+ ' ,''0'' );';
                SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
             SELF.IBQ_COMBINACOES.SQL.Clear;
             SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
             SELF.IBQ_COMBINACOES.ExecSQL;                
        END; // IF (VC_BEGIN_END = 'SIM')
        //VI_TOTALGERADO := STGR_COMB15.RowCount-1;
        IF ((VI_LINHAS2/5995) = (VI_LINHAS2 DIV 5995))
            or ((VI_LINHAS2/5997) = (VI_LINHAS2 DIV 5997))
            or ((VI_LINHAS2/5999) = (VI_LINHAS2 DIV 5999))
            OR (VC_BEGIN_END = 'ENCERRANDO')
            OR (VC_BEGIN_END = 'FIM')
            THEN
        BEGIN
       {IF (VC_BEGIN_END = 'FIM') THEN
        BEGIN  }
            // ************************
            // **   BANCO DE DADOS   **
            // ************************
            STGR_COMB15.Repaint;
            Self.Repaint;
           // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
            FOR VI_AN_COMB1:= 1 TO  TRUNC((STGR_COMB15.RowCount-1)/1) DO
            BEGIN
                // obs: verificar o evento BeFOREInSERT DA ibq_COMBINACOES
                VC_COMBINACOES :='';
                FOR VI_CNTCELULAS := 2 TO 11 DO
                BEGIN
                    VC_COMBINACOES := VC_COMBINACOES + STGR_COMB15.Cells[VI_CNTCELULAS,VI_AN_COMB1] +' ';
                END; // FOR VI_CNTCELULAS
                VC_QUERY  := 'INSERT INTO FILTRO_0009EXC1_DADOS_temp (EXC1, EXC2, EXC3, EXC4, EXC5, EXC6, EXC7, EXC8, EXC9, EXC10, DADOS) VALUES(' +#39+ STGR_COMB15.Cells[2,VI_AN_COMB1] + #39 +','+#39+ STGR_COMB15.Cells[3,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB15.Cells[4,VI_AN_COMB1] + #39 +','+#39+STGR_COMB15.Cells[5,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB15.Cells[6,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB15.Cells[7,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB15.Cells[8,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB15.Cells[9,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB15.Cells[10,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB15.Cells[11,VI_AN_COMB1]
                     + #39 +','+#39+TRIM(VC_COMBINACOES) + #39 +');';
                SELF.IBQ_COMBINACOES.SQL.Clear;
                SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
            END;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            VC_QUERY  := 'UPDATE FILTRO_0009EXC1_DEFINICAO SET CONTADOR_C1 =' + #39+ INTtoSTR(VI_COMBINACOES_C1) +#39+';';
            SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
            VI_LINHAS2:=1;
            STGR_COMB15.RowCount := VI_LINHAS2;
             SELF.IBQ_COMBINACOES.SQL.Clear;

               IF VC_BEGIN_END = 'FIM' THEN
               BEGIN
                    SELF.IBQ_COMBINACOES.SQL.Clear;
                    SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_0009EXC1_DADOS')  ;
                    SELF.IBQ_COMBINACOES.ExecSQL;
                    SELF.IBQ_COMBINACOES.SQL.Clear;
                    SELF.IBQ_COMBINACOES.SQL.Add('execute procedure FILTRO_0_09EXC1_DADOS_100REPET' )  ;
                    SELF.IBQ_COMBINACOES.ExecSQL;
                    SELF.IBQ_COMBINACOES.SQL.Clear;
                    SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_0009EXC1_DADOS_temp')  ;
                    SELF.IBQ_COMBINACOES.ExecSQL;
                       SELF.IBQ_COMBINACOES.SQL.Clear;
                       SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                       SELF.IBQ_COMBINACOES.ExecSQL;
               END;// IF
             IF ((VI_LINHAS2/5995) = (VI_LINHAS2 DIV 5995))
                 or ((VI_LINHAS2/5997) = (VI_LINHAS2 DIV 5997))
                 or ((VI_LINHAS2/5998) = (VI_LINHAS2 DIV 5998))
                 OR (VC_BEGIN_END = 'ENCERRANDO') THEN
             BEGIN
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('execute procedure FILTRO_0_09EXC1_DADOS_100REPET' )  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                {  SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_0009EXC1_DADOS_temp')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;      }
             end;
        END; // IF (VI_TOTALGERADO/1000)
       // IF (VC_FINALIZAR = 'SIM') THEN SHOWMESSAGE('ETAPA - OK');
    END; // PROCEDURE GRAVAR_DADOS    
    
BEGIN
     LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
     FOR VI_CONTASEL1 := 1 TO 10 DO
     BEGIN
        STGR_COMB15.Cells [VI_CONTASEL1+1,0] := '-'+INTtoSTR(VI_CONTASEL1)+'-';
        STGR_COMB15.Cells [VI_CONTASEL1+1,1] := '00';
     END;
     STGR_COMB15.RowCount := 2;
     STGR_COMB15.Repaint;
     PGBR_GERARCOMB3.Position :=0 ;
     PGBR_GERARCOMB3.Repaint;
     PGBR_GERARCOMB0.Position :=0;
     PGBR_GERARCOMB0.Repaint;
     PGBR_GERARCOMB.Position := 0;
     PGBR_GERARCOMB.Repaint;
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
     PA_GERAR.Enabled := false;
     PA_GERAR.Left := 4500;
     // =====================================
     // ||||=============================||||
     // |||| 	GERANDO AS COMBINAÇÕES   ||||
     // ||||=============================||||
     // =====================================
     VI_CONTAR_COMB1 := 1;
     VI_LINHAS2 := 1;
     VI_LINHAS1 := VI_LINHAS2;
     VI_TOTAL_COMB1  := STRtoINT(LA_LINHA_1_100REP.Caption);
     PR_GRAVAR_DADOS ('INICIO',VI_LINHAS2, 1, TRUNC(STGR_LINHA_1_C1.RowCount-1));
     FOR VI_COMBINACOES1 := 1{2} TO {6} TRUNC((STGR_LINHA_1_C1.RowCount-1)/1) DO
     BEGIN
          IF (STGR_LINHA_1_C1.Cells[1,VI_COMBINACOES1] = 'F') then
               continue;
          VI_CONTAR_COMB1 := VI_CONTAR_COMB1 +1 ;
          FOR VI_COMBINACOES2 := 1{16} TO {18} (STGR_LINHA_2_C1.RowCount-1) DO
          BEGIN
               IF (STGR_LINHA_2_C1.Cells[1,VI_COMBINACOES2] = 'F') then
                    continue;
               FOR VsI_COMBINACOES3 := 1 TO {4}(STGR_LINHA_3_C1.RowCount-1) DO
               BEGIN
                    if (VsI_COMBINACOES3 mod 2) = 0 then
                    begin
                        PGBR_GERARCOMB3.Position := TRUNC(VsI_COMBINACOES3/(STGR_LINHA_3_C1.RowCount-1)*100);
                        PGBR_GERARCOMB3.Repaint;
                        SLEEP (4);
                    end; // if
                    IF (STGR_LINHA_3_C1.Cells[1,VsI_COMBINACOES3] = 'F') then
                         continue;
                    FOR VsI_COMBINACOES4 := 1{22} TO {24} (STGR_LINHA_4_C1.RowCount-1) DO
                    BEGIN
                         IF (STGR_LINHA_4_C1.Cells[1,VsI_COMBINACOES4] = 'F') then
                              continue;
                         // BASE 9 NUMEROS PARA ANALISE COMBINATORIA COM 7 E SOMA
                         STGR_BASE_SOMA1.Cells[1,1] := STGR_LINHA_1_C1.Cells[2,VI_COMBINACOES1];
                         STGR_BASE_SOMA1.Cells[2,1] := STGR_LINHA_1_C1.Cells[3,VI_COMBINACOES1];
                         STGR_BASE_SOMA1.Cells[3,1] := STGR_LINHA_1_C1.Cells[4,VI_COMBINACOES1];
                         STGR_BASE_SOMA1.Cells[4,1] := STGR_LINHA_2_C1.Cells[2,VI_COMBINACOES2];
                         STGR_BASE_SOMA1.Cells[5,1] := STGR_LINHA_2_C1.Cells[3,VI_COMBINACOES2];
                         STGR_BASE_SOMA1.Cells[6,1] := STGR_LINHA_2_C1.Cells[4,VI_COMBINACOES2];
                         STGR_BASE_SOMA1.Cells[7,1] := STGR_LINHA_3_C1.Cells[2,VsI_COMBINACOES3];
                         STGR_BASE_SOMA1.Cells[8,1] := STGR_LINHA_3_C1.Cells[3,VsI_COMBINACOES3];
                         STGR_BASE_SOMA1.Cells[9,1] := STGR_LINHA_4_C1.Cells[2,VsI_COMBINACOES4];
                         // BASE 15 NUMEROS PARA ANALISE COMBINATORIA COM 12 E SOMA
                         STGR_BASE_SOMA12_1.Cells[1,1] := STGR_LINHA_1_C2.Cells[2,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[2,1] := STGR_LINHA_1_C2.Cells[3,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[3,1] := STGR_LINHA_1_C2.Cells[4,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[4,1] := STGR_LINHA_2_C2.Cells[2,VI_COMBINACOES2];
                         STGR_BASE_SOMA12_1.Cells[5,1] := STGR_LINHA_2_C2.Cells[3,VI_COMBINACOES2];
                         STGR_BASE_SOMA12_1.Cells[6,1] := STGR_LINHA_2_C2.Cells[4,VI_COMBINACOES2];
                         STGR_BASE_SOMA12_1.Cells[7,1] := STGR_LINHA_3_C2.Cells[2,VsI_COMBINACOES3];
                         STGR_BASE_SOMA12_1.Cells[8,1] := STGR_LINHA_3_C2.Cells[3,VsI_COMBINACOES3];
                         STGR_BASE_SOMA12_1.Cells[9,1] := STGR_LINHA_3_C2.Cells[4,VsI_COMBINACOES3];
                         STGR_BASE_SOMA12_1.Cells[10,1] := STGR_LINHA_3_C2.Cells[5,VsI_COMBINACOES3];
                         STGR_BASE_SOMA12_1.Cells[11,1] := STGR_LINHA_4_C2.Cells[2,VsI_COMBINACOES4];
                         STGR_BASE_SOMA12_1.Cells[12,1] := STGR_LINHA_4_C2.Cells[3,VsI_COMBINACOES4];
                         STGR_BASE_SOMA12_1.Cells[13,1] := STGR_LINHA_4_C2.Cells[4,VsI_COMBINACOES4];
                         STGR_BASE_SOMA12_1.Cells[14,1] := STGR_LINHA_4_C2.Cells[5,VsI_COMBINACOES4];
                         STGR_BASE_SOMA12_1.Cells[15,1] := STGR_LINHA_4_C2.Cells[6,VsI_COMBINACOES4];
                         // --------------------------------------------------------------
                         // --  MONTANDO AS COMBINAÇÕES POSSÍVEL PARA REALIZAR A SOMA 7 --
                         // --------------------------------------------------------------
                         VI_LINHAS7 := 1;
                         STGR_BASE_SOMA2.Cells[1,0]  := 'F';                         
                         FOR Vsi_COMb7_1 := 1 TO  7 DO
                         BEGIN
                              FOR Vsi_COMb7_2 := Vsi_COMb7_1+1 TO  8 DO
                              BEGIN
                                   FOR Vsi_COMb7_3 := Vsi_COMb7_2+1 TO  9 DO
                                   BEGIN
                                        FOR Vsi_COMb7_4 := Vsi_COMb7_3+1 TO  9 DO
                                        BEGIN
                                             FOR Vsi_COMb7_5 := Vsi_COMb7_4+1 TO  9 DO
                                             BEGIN
                                                  FOR Vsi_COMb7_6 := Vsi_COMb7_5+1 TO  9 DO
                                                  BEGIN
                                                       FOR Vsi_COMb7_7 := Vsi_COMb7_6+1 TO  9 DO
                                                       BEGIN
                                                            STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]  := '0';
                                                            STGR_BASE_SOMA2.Cells[1,VI_LINHAS7]  := 'F';
                                                            STGR_BASE_SOMA2.Cells[2,VI_LINHAS7]  := INTtoSTR(VI_LINHAS7);
                                                            STGR_BASE_SOMA2.Cells[3,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_1,1] ;
                                                            STGR_BASE_SOMA2.Cells[4,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_2,1] ;
                                                            STGR_BASE_SOMA2.Cells[5,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_3,1] ;
                                                            STGR_BASE_SOMA2.Cells[6,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_4,1] ;
                                                            STGR_BASE_SOMA2.Cells[7,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_5,1] ;
                                                            STGR_BASE_SOMA2.Cells[8,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_6,1] ;
                                                            STGR_BASE_SOMA2.Cells[9,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_7,1] ;
                                                            STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA2.Cells[3,VI_LINHAS7])
                                                               + STRtoINT(STGR_BASE_SOMA2.Cells[4,VI_LINHAS7])+ STRtoINT(STGR_BASE_SOMA2.Cells[5,VI_LINHAS7]) + STRtoINT(STGR_BASE_SOMA2.Cells[6,VI_LINHAS7])
                                                               + STRtoINT(STGR_BASE_SOMA2.Cells[7,VI_LINHAS7])+ STRtoINT(STGR_BASE_SOMA2.Cells[8,VI_LINHAS7]) + STRtoINT(STGR_BASE_SOMA2.Cells[9,VI_LINHAS7]) );
                                                            if (STRtoINT(STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]) >= STRtoINT(ED_SOMA7_INI.Text) ) and (STRtoINT(STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]) <= STRtoINT(ED_SOMA7_Final.Text)) THEN
                                                                 STGR_BASE_SOMA2.Cells[1,VI_LINHAS7]  := 'V'
                                                            ELSE
                                                                 STGR_BASE_SOMA2.Cells[1,VI_LINHAS7]  := 'F';

                                                            VI_LINHAS7 := VI_LINHAS7 +1 ;
                                                       END; // FOR Vsi_COMb7_7 :=
                                                  END; // FOR Vsi_COMb7_6 :=
                                             END; // FOR Vsi_COMb7_5 :=
                                        END; // FOR Vsi_COMb7_4 :=
                                   END; // FOR Vsi_COMb7_3 :=
                              END; // FOR Vsi_COMb7_2 :=
                         END; // FOR Vsi_COMb7_1 :=
                         STGR_BASE_SOMA2.RowCount := VI_LINHAS7;
                         for VsI_COMBINACOES5 := 1 to STGR_BASE_SOMA2.RowCount-1 do
                         begin
                              IF (STGR_BASE_SOMA2.Cells[1,VsI_COMBINACOES5] = 'V') THEN STGR_BASE_SOMA2.Cells[1,0]  := 'V';
                         end; // for VsI_COMBINACOES5
                         IF (STGR_BASE_SOMA2.Cells[1,0] = 'F') THEN
                              CONTINUE;
                         // --------------------------------------------------------------
                         // --  MONTANDO AS COMBINAÇÕES POSSÍVEL PARA REALIZAR A SOMA 12 --
                         // --------------------------------------------------------------
                         VI_LINHAS12 := 1;
                         STGR_BASE_SOMA12_2.Cells[1,0]  := 'F';                         
                         FOR Vsi_COMb12_1 := 1 TO  12 DO
                         BEGIN
                              FOR Vsi_COMb12_2 := Vsi_COMb12_1+1 TO  13 DO
                              BEGIN
                                   FOR Vsi_COMb12_3 := Vsi_COMb12_2+1 TO  14 DO
                                   BEGIN
                                        FOR Vsi_COMb12_4 := Vsi_COMb12_3+1 TO  15 DO
                                        BEGIN
                                             FOR Vsi_COMb12_5 := Vsi_COMb12_4+1 TO  15 DO
                                             BEGIN
                                                  FOR Vsi_COMb12_6 := Vsi_COMb12_5+1 TO  15 DO
                                                  BEGIN
                                                       FOR Vsi_COMb12_7 := Vsi_COMb12_6+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_8 := Vsi_COMb12_7+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_9 := Vsi_COMb12_8+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_0 := Vsi_COMb12_9+1 TO  15 DO
                                                       BEGIN
                                                            FOR Vsi_COMb12_A := Vsi_COMb12_0+1 TO  15 DO
                                                            BEGIN
                                                            FOR Vsi_COMb12_B := Vsi_COMb12_A+1 TO  15 DO
                                                            BEGIN
                                                                      STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]  := '0';
                                                                      STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'F';
                                                                      STGR_BASE_SOMA12_2.Cells[2,VI_LINHAS12]  := INTtoSTR(VI_LINHAS12);
                                                                      STGR_BASE_SOMA12_2.Cells[3,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_1,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[4,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_2,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[5,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_3,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[6,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_4,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[7,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_5,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[8,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_6,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[9,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_7,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[10,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_8,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[11,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_9,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[12,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_0,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[13,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_A,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[14,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_B,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA12_2.Cells[3,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[4,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[5,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[6,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[7,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[8,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[9,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[10,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[11,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[12,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[13,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[14,VI_LINHAS12])
                                                                         );
                                                                      if (STRtoINT(STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]) >= STRtoINT(ED_SOMA12_INI.Text) ) and (STRtoINT(STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]) <= STRtoINT(ED_SOMA12_Final.Text)) THEN
                                                                           STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'V'
                                                                      ELSE
                                                                           STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'F';

                                                                 VI_LINHAS12 := VI_LINHAS12 +1 ;
                                                            END; // FOR Vsi_COMb12_A :=
                                                            END; // FOR Vsi_COMb12_B :=
                                                       END; // FOR Vsi_COMb12_0 :=
                                                       END; // FOR Vsi_COMb12_9 :=
                                                       END; // FOR Vsi_COMb12_8 :=
                                                       END; // FOR Vsi_COMb12_7 :=
                                                  END; // FOR Vsi_COMb12_6 :=
                                             END; // FOR Vsi_COMb12_5 :=
                                        END; // FOR Vsi_COMb12_4 :=
                                   END; // FOR Vsi_COMb12_3 :=
                              END; // FOR Vsi_COMb12_2 :=
                         END; // FOR Vsi_COMb12_1 :=
                         STGR_BASE_SOMA12_2.RowCount := VI_LINHAS12;

                         for VsI_COMBINACOES5 := 1 to STGR_BASE_SOMA12_2.RowCount-1 do
                         begin
                              IF (STGR_BASE_SOMA12_2.Cells[1,VsI_COMBINACOES5] = 'V') THEN STGR_BASE_SOMA12_2.Cells[1,0]  := 'V';
                         end; // for VsI_COMBINACOES5
                         IF (STGR_BASE_SOMA12_2.Cells[1,0] = 'F') THEN
                              CONTINUE;

                         {
                                   STGR_BASE_SOMA2.Cells[1,0]  := 'F';
                              // - 1
                              STGR_BASE_SOMA2.Cells[2,1]  :=  STGR_BASE_SOMA1.Cells[1,1]  ;
                              STGR_BASE_SOMA2.Cells[3,1]  :=  STGR_BASE_SOMA1.Cells[2,1]  ;
                              STGR_BASE_SOMA2.Cells[4,1]  :=  STGR_BASE_SOMA1.Cells[3,1]  ;
                              STGR_BASE_SOMA2.Cells[5,1]  :=  STGR_BASE_SOMA1.Cells[4,1]  ;
                              STGR_BASE_SOMA2.Cells[6,1]  :=  STGR_BASE_SOMA1.Cells[5,1]  ;
                              STGR_BASE_SOMA2.Cells[7,1]  :=  STGR_BASE_SOMA1.Cells[6,1]  ;
                              STGR_BASE_SOMA2.Cells[8,1]  :=  STGR_BASE_SOMA1.Cells[7,1]  ;
                              STGR_BASE_SOMA2.Cells[9,1]  :=  STGR_BASE_SOMA1.Cells[8,1]  ;
                              STGR_BASE_SOMA2.Cells[0,1]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA2.Cells[2,1]) + STRtoINT(STGR_BASE_SOMA2.Cells[3,1])
                                 + STRtoINT(STGR_BASE_SOMA2.Cells[4,1])+ STRtoINT(STGR_BASE_SOMA2.Cells[5,1]) + STRtoINT(STGR_BASE_SOMA2.Cells[6,1])
                                 + STRtoINT(STGR_BASE_SOMA2.Cells[7,1])+ STRtoINT(STGR_BASE_SOMA2.Cells[8,1]) + STRtoINT(STGR_BASE_SOMA2.Cells[9,1]) );
                              if (STRtoINT(STGR_BASE_SOMA2.Cells[0,1]) >= STRtoINT(ED_SOMA7_INI.Text) ) and (STRtoINT(STGR_BASE_SOMA2.Cells[0,1]) <= STRtoINT(ED_SOMA7_Final.Text)) THEN
                                   STGR_BASE_SOMA2.Cells[1,1]  := 'V'
                              ELSE
                                   STGR_BASE_SOMA2.Cells[1,1]  := 'F';
                              // - 2
                              STGR_BASE_SOMA2.Cells[2,2]  :=  STGR_BASE_SOMA1.Cells[1,1]  ;
                              STGR_BASE_SOMA2.Cells[3,2]  :=  STGR_BASE_SOMA1.Cells[2,1]  ;
                              STGR_BASE_SOMA2.Cells[4,2]  :=  STGR_BASE_SOMA1.Cells[3,1]  ;
                              STGR_BASE_SOMA2.Cells[5,2]  :=  STGR_BASE_SOMA1.Cells[4,1]  ;
                              STGR_BASE_SOMA2.Cells[6,2]  :=  STGR_BASE_SOMA1.Cells[5,1]  ;
                              STGR_BASE_SOMA2.Cells[7,2]  :=  STGR_BASE_SOMA1.Cells[6,1]  ;
                              STGR_BASE_SOMA2.Cells[8,2]  :=  STGR_BASE_SOMA1.Cells[7,1]  ;
                              STGR_BASE_SOMA2.Cells[9,2]  :=  STGR_BASE_SOMA1.Cells[9,1]  ;
                              STGR_BASE_SOMA2.Cells[0,2]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA2.Cells[2,2]) + STRtoINT(STGR_BASE_SOMA2.Cells[3,2])
                                 + STRtoINT(STGR_BASE_SOMA2.Cells[4,2])+ STRtoINT(STGR_BASE_SOMA2.Cells[5,2]) + STRtoINT(STGR_BASE_SOMA2.Cells[6,2])
                                 + STRtoINT(STGR_BASE_SOMA2.Cells[7,2])+ STRtoINT(STGR_BASE_SOMA2.Cells[8,2]) + STRtoINT(STGR_BASE_SOMA2.Cells[9,2]) );
                              if (STRtoINT(STGR_BASE_SOMA2.Cells[0,2]) >= STRtoINT(ED_SOMA7_INI.Text) ) and (STRtoINT(STGR_BASE_SOMA2.Cells[0,2]) <= STRtoINT(ED_SOMA7_Final.Text)) THEN
                                   STGR_BASE_SOMA2.Cells[1,2]  := 'V'
                              ELSE
                                   STGR_BASE_SOMA2.Cells[1,2]  := 'F';                                                               // - 3
                              STGR_BASE_SOMA2.Cells[2,3]  :=  STGR_BASE_SOMA1.Cells[1,1]  ;
                              STGR_BASE_SOMA2.Cells[3,3]  :=  STGR_BASE_SOMA1.Cells[2,1]  ;
                              STGR_BASE_SOMA2.Cells[4,3]  :=  STGR_BASE_SOMA1.Cells[3,1]  ;
                              STGR_BASE_SOMA2.Cells[5,3]  :=  STGR_BASE_SOMA1.Cells[4,1]  ;
                              STGR_BASE_SOMA2.Cells[6,3]  :=  STGR_BASE_SOMA1.Cells[5,1]  ;
                              STGR_BASE_SOMA2.Cells[7,3]  :=  STGR_BASE_SOMA1.Cells[6,1]  ;
                              STGR_BASE_SOMA2.Cells[8,3]  :=  STGR_BASE_SOMA1.Cells[8,1]  ;
                              STGR_BASE_SOMA2.Cells[9,3]  :=  STGR_BASE_SOMA1.Cells[9,1]  ;
                              STGR_BASE_SOMA2.Cells[0,3]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA2.Cells[2,3]) + STRtoINT(STGR_BASE_SOMA2.Cells[3,3])
                                 + STRtoINT(STGR_BASE_SOMA2.Cells[4,3])+ STRtoINT(STGR_BASE_SOMA2.Cells[5,3]) + STRtoINT(STGR_BASE_SOMA2.Cells[6,3])
                                 + STRtoINT(STGR_BASE_SOMA2.Cells[7,3])+ STRtoINT(STGR_BASE_SOMA2.Cells[8,3]) + STRtoINT(STGR_BASE_SOMA2.Cells[9,3]) );
                              if (STRtoINT(STGR_BASE_SOMA2.Cells[0,3]) >= STRtoINT(ED_SOMA7_INI.Text) ) and (STRtoINT(STGR_BASE_SOMA2.Cells[0,3]) <= STRtoINT(ED_SOMA7_Final.Text)) THEN
                                   STGR_BASE_SOMA2.Cells[1,3]  := 'V'
                              ELSE
                                   STGR_BASE_SOMA2.Cells[1,3]  := 'F';
                              // - 4
                              STGR_BASE_SOMA2.Cells[2,4]  :=  STGR_BASE_SOMA1.Cells[1,1]  ;
                              STGR_BASE_SOMA2.Cells[3,4]  :=  STGR_BASE_SOMA1.Cells[2,1]  ;
                              STGR_BASE_SOMA2.Cells[4,4]  :=  STGR_BASE_SOMA1.Cells[3,1]  ;
                              STGR_BASE_SOMA2.Cells[5,4]  :=  STGR_BASE_SOMA1.Cells[4,1]  ;
                              STGR_BASE_SOMA2.Cells[6,4]  :=  STGR_BASE_SOMA1.Cells[5,1]  ;
                              STGR_BASE_SOMA2.Cells[7,4]  :=  STGR_BASE_SOMA1.Cells[7,1]  ;
                              STGR_BASE_SOMA2.Cells[8,4]  :=  STGR_BASE_SOMA1.Cells[8,1]  ;
                              STGR_BASE_SOMA2.Cells[9,4]  :=  STGR_BASE_SOMA1.Cells[9,1]  ;
                              STGR_BASE_SOMA2.Cells[0,4]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA2.Cells[2,4]) + STRtoINT(STGR_BASE_SOMA2.Cells[3,4])
                                 + STRtoINT(STGR_BASE_SOMA2.Cells[4,4])+ STRtoINT(STGR_BASE_SOMA2.Cells[5,4]) + STRtoINT(STGR_BASE_SOMA2.Cells[6,4])
                                 + STRtoINT(STGR_BASE_SOMA2.Cells[7,4])+ STRtoINT(STGR_BASE_SOMA2.Cells[8,4]) + STRtoINT(STGR_BASE_SOMA2.Cells[9,4]) );
                              if (STRtoINT(STGR_BASE_SOMA2.Cells[0,4]) >= STRtoINT(ED_SOMA7_INI.Text) ) and (STRtoINT(STGR_BASE_SOMA2.Cells[0,4]) <= STRtoINT(ED_SOMA7_Final.Text)) THEN
                                   STGR_BASE_SOMA2.Cells[1,4]  := 'V'
                              ELSE
                                   STGR_BASE_SOMA2.Cells[1,4]  := 'F';
                              // - 5
                              STGR_BASE_SOMA2.Cells[2,5]  :=  STGR_BASE_SOMA1.Cells[1,1]  ;
                              STGR_BASE_SOMA2.Cells[3,5]  :=  STGR_BASE_SOMA1.Cells[2,1]  ;
                              STGR_BASE_SOMA2.Cells[4,5]  :=  STGR_BASE_SOMA1.Cells[3,1]  ;
                              STGR_BASE_SOMA2.Cells[5,5]  :=  STGR_BASE_SOMA1.Cells[4,1]  ;
                              STGR_BASE_SOMA2.Cells[6,5]  :=  STGR_BASE_SOMA1.Cells[6,1]  ;
                              STGR_BASE_SOMA2.Cells[7,5]  :=  STGR_BASE_SOMA1.Cells[7,1]  ;
                              STGR_BASE_SOMA2.Cells[8,5]  :=  STGR_BASE_SOMA1.Cells[8,1]  ;
                              STGR_BASE_SOMA2.Cells[9,5]  :=  STGR_BASE_SOMA1.Cells[9,1]  ;
                              STGR_BASE_SOMA2.Cells[0,5]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA2.Cells[2,5]) + STRtoINT(STGR_BASE_SOMA2.Cells[3,5])
                                 + STRtoINT(STGR_BASE_SOMA2.Cells[4,5])+ STRtoINT(STGR_BASE_SOMA2.Cells[5,5]) + STRtoINT(STGR_BASE_SOMA2.Cells[6,5])
                                 + STRtoINT(STGR_BASE_SOMA2.Cells[7,5])+ STRtoINT(STGR_BASE_SOMA2.Cells[8,5]) + STRtoINT(STGR_BASE_SOMA2.Cells[9,5]) );
                              if (STRtoINT(STGR_BASE_SOMA2.Cells[0,5]) >= STRtoINT(ED_SOMA7_INI.Text) ) and (STRtoINT(STGR_BASE_SOMA2.Cells[0,5]) <= STRtoINT(ED_SOMA7_Final.Text)) THEN
                                   STGR_BASE_SOMA2.Cells[1,5]  := 'V'
                              ELSE
                                   STGR_BASE_SOMA2.Cells[1,5]  := 'F';
                              // - 6
                              STGR_BASE_SOMA2.Cells[2,6]  :=  STGR_BASE_SOMA1.Cells[1,1]  ;
                              STGR_BASE_SOMA2.Cells[3,6]  :=  STGR_BASE_SOMA1.Cells[2,1]  ;
                              STGR_BASE_SOMA2.Cells[4,6]  :=  STGR_BASE_SOMA1.Cells[3,1]  ;
                              STGR_BASE_SOMA2.Cells[5,6]  :=  STGR_BASE_SOMA1.Cells[5,1]  ;
                              STGR_BASE_SOMA2.Cells[6,6]  :=  STGR_BASE_SOMA1.Cells[6,1]  ;
                              STGR_BASE_SOMA2.Cells[7,6]  :=  STGR_BASE_SOMA1.Cells[7,1]  ;
                              STGR_BASE_SOMA2.Cells[8,6]  :=  STGR_BASE_SOMA1.Cells[8,1]  ;
                              STGR_BASE_SOMA2.Cells[9,6]  :=  STGR_BASE_SOMA1.Cells[9,1]  ;
                              STGR_BASE_SOMA2.Cells[0,6]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA2.Cells[2,6]) + STRtoINT(STGR_BASE_SOMA2.Cells[3,6])
                                 + STRtoINT(STGR_BASE_SOMA2.Cells[4,6])+ STRtoINT(STGR_BASE_SOMA2.Cells[5,6]) + STRtoINT(STGR_BASE_SOMA2.Cells[6,6])
                                 + STRtoINT(STGR_BASE_SOMA2.Cells[7,6])+ STRtoINT(STGR_BASE_SOMA2.Cells[8,6]) + STRtoINT(STGR_BASE_SOMA2.Cells[9,6]) );
                              if (STRtoINT(STGR_BASE_SOMA2.Cells[0,6]) >= STRtoINT(ED_SOMA7_INI.Text) ) and (STRtoINT(STGR_BASE_SOMA2.Cells[0,6]) <= STRtoINT(ED_SOMA7_Final.Text)) THEN
                                   STGR_BASE_SOMA2.Cells[1,6]  := 'V'
                              ELSE
                                   STGR_BASE_SOMA2.Cells[1,6]  := 'F';
                              // - 7
                              STGR_BASE_SOMA2.Cells[2,7]  :=  STGR_BASE_SOMA1.Cells[1,1]  ;
                              STGR_BASE_SOMA2.Cells[3,7]  :=  STGR_BASE_SOMA1.Cells[2,1]  ;
                              STGR_BASE_SOMA2.Cells[4,7]  :=  STGR_BASE_SOMA1.Cells[4,1]  ;
                              STGR_BASE_SOMA2.Cells[5,7]  :=  STGR_BASE_SOMA1.Cells[5,1]  ;
                              STGR_BASE_SOMA2.Cells[6,7]  :=  STGR_BASE_SOMA1.Cells[6,1]  ;
                              STGR_BASE_SOMA2.Cells[7,7]  :=  STGR_BASE_SOMA1.Cells[7,1]  ;
                              STGR_BASE_SOMA2.Cells[8,7]  :=  STGR_BASE_SOMA1.Cells[8,1]  ;
                              STGR_BASE_SOMA2.Cells[9,7]  :=  STGR_BASE_SOMA1.Cells[9,1]  ;
                              STGR_BASE_SOMA2.Cells[0,7]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA2.Cells[2,7]) + STRtoINT(STGR_BASE_SOMA2.Cells[3,7])
                                 + STRtoINT(STGR_BASE_SOMA2.Cells[4,7])+ STRtoINT(STGR_BASE_SOMA2.Cells[5,7]) + STRtoINT(STGR_BASE_SOMA2.Cells[6,7])
                                 + STRtoINT(STGR_BASE_SOMA2.Cells[7,7])+ STRtoINT(STGR_BASE_SOMA2.Cells[8,7]) + STRtoINT(STGR_BASE_SOMA2.Cells[9,7]) );
                              if (STRtoINT(STGR_BASE_SOMA2.Cells[0,7]) >= STRtoINT(ED_SOMA7_INI.Text) ) and (STRtoINT(STGR_BASE_SOMA2.Cells[0,7]) <= STRtoINT(ED_SOMA7_Final.Text)) THEN
                                   STGR_BASE_SOMA2.Cells[1,7]  := 'V'
                              ELSE
                                   STGR_BASE_SOMA2.Cells[1,7]  := 'F';
                              // - 8
                              STGR_BASE_SOMA2.Cells[2,8]  :=  STGR_BASE_SOMA1.Cells[1,1]  ;
                              STGR_BASE_SOMA2.Cells[3,8]  :=  STGR_BASE_SOMA1.Cells[3,1]  ;
                              STGR_BASE_SOMA2.Cells[4,8]  :=  STGR_BASE_SOMA1.Cells[4,1]  ;
                              STGR_BASE_SOMA2.Cells[5,8]  :=  STGR_BASE_SOMA1.Cells[5,1]  ;
                              STGR_BASE_SOMA2.Cells[6,8]  :=  STGR_BASE_SOMA1.Cells[6,1]  ;
                              STGR_BASE_SOMA2.Cells[7,8]  :=  STGR_BASE_SOMA1.Cells[7,1]  ;
                              STGR_BASE_SOMA2.Cells[8,8]  :=  STGR_BASE_SOMA1.Cells[8,1]  ;
                              STGR_BASE_SOMA2.Cells[9,8]  :=  STGR_BASE_SOMA1.Cells[9,1]  ;
                              STGR_BASE_SOMA2.Cells[0,8]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA2.Cells[2,8]) + STRtoINT(STGR_BASE_SOMA2.Cells[3,8])
                                 + STRtoINT(STGR_BASE_SOMA2.Cells[4,8])+ STRtoINT(STGR_BASE_SOMA2.Cells[5,8]) + STRtoINT(STGR_BASE_SOMA2.Cells[6,8])
                                 + STRtoINT(STGR_BASE_SOMA2.Cells[7,8])+ STRtoINT(STGR_BASE_SOMA2.Cells[8,8]) + STRtoINT(STGR_BASE_SOMA2.Cells[9,8]) );
                              if (STRtoINT(STGR_BASE_SOMA2.Cells[0,8]) >= STRtoINT(ED_SOMA7_INI.Text) ) and (STRtoINT(STGR_BASE_SOMA2.Cells[0,8]) <= STRtoINT(ED_SOMA7_Final.Text)) THEN
                                   STGR_BASE_SOMA2.Cells[1,8]  := 'V'
                              ELSE
                                   STGR_BASE_SOMA2.Cells[1,8]  := 'F';
                              // - 9
                              STGR_BASE_SOMA2.Cells[2,9]  :=  STGR_BASE_SOMA1.Cells[2,1]  ;
                              STGR_BASE_SOMA2.Cells[3,9]  :=  STGR_BASE_SOMA1.Cells[3,1]  ;
                              STGR_BASE_SOMA2.Cells[4,9]  :=  STGR_BASE_SOMA1.Cells[4,1]  ;
                              STGR_BASE_SOMA2.Cells[5,9]  :=  STGR_BASE_SOMA1.Cells[5,1]  ;
                              STGR_BASE_SOMA2.Cells[6,9]  :=  STGR_BASE_SOMA1.Cells[6,1]  ;
                              STGR_BASE_SOMA2.Cells[7,9]  :=  STGR_BASE_SOMA1.Cells[7,1]  ;
                              STGR_BASE_SOMA2.Cells[8,9]  :=  STGR_BASE_SOMA1.Cells[8,1]  ;
                              STGR_BASE_SOMA2.Cells[9,9]  :=  STGR_BASE_SOMA1.Cells[9,1]  ;
                              STGR_BASE_SOMA2.Cells[0,9]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA2.Cells[2,9]) + STRtoINT(STGR_BASE_SOMA2.Cells[3,9])
                                 + STRtoINT(STGR_BASE_SOMA2.Cells[4,9])+ STRtoINT(STGR_BASE_SOMA2.Cells[5,9]) + STRtoINT(STGR_BASE_SOMA2.Cells[6,9])
                                 + STRtoINT(STGR_BASE_SOMA2.Cells[7,9])+ STRtoINT(STGR_BASE_SOMA2.Cells[8,9]) + STRtoINT(STGR_BASE_SOMA2.Cells[9,9]) );
                              if (STRtoINT(STGR_BASE_SOMA2.Cells[0,9]) >= STRtoINT(ED_SOMA7_INI.Text) ) and (STRtoINT(STGR_BASE_SOMA2.Cells[0,9]) <= STRtoINT(ED_SOMA7_Final.Text)) THEN
                                   STGR_BASE_SOMA2.Cells[1,9]  := 'V'
                              ELSE
                                   STGR_BASE_SOMA2.Cells[1,9]  := 'F';
                              for VsI_COMBINACOES5 := 1 to 9 do
                              begin
                                   IF (STGR_BASE_SOMA2.Cells[1,VsI_COMBINACOES5] = 'V') THEN STGR_BASE_SOMA2.Cells[1,0]  := 'V';
                              end; // for VsI_COMBINACOES5
                              IF (STGR_BASE_SOMA2.Cells[1,0] = 'F') THEN
                                   CONTINUE;
                                   }
                         // ---------------------------------------
                         // --  MONTANDO O RESULTADO POR COLUNA  --
                         // ---------------------------------------
                         STGR_COMB15.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                         STGR_COMB15.Cells[1,VI_LINHAS2] := 'V';
                         STGR_COMB15.Cells[11,VI_LINHAS2] := ED_fixoS_1.Text;
                         STGR_COMB15.Cells[2,VI_LINHAS2] := STGR_LINHA_1_C1.Cells[2,VI_COMBINACOES1];
                         STGR_COMB15.Cells[3,VI_LINHAS2] := STGR_LINHA_1_C1.Cells[3,VI_COMBINACOES1];
                         STGR_COMB15.Cells[4,VI_LINHAS2] := STGR_LINHA_1_C1.Cells[4,VI_COMBINACOES1];
                         STGR_COMB15.Cells[5,VI_LINHAS2] := STGR_LINHA_2_C1.Cells[2,VI_COMBINACOES2];
                         STGR_COMB15.Cells[6,VI_LINHAS2] := STGR_LINHA_2_C1.Cells[3,VI_COMBINACOES2];
                         STGR_COMB15.Cells[7,VI_LINHAS2] := STGR_LINHA_2_C1.Cells[4,VI_COMBINACOES2];
                         STGR_COMB15.Cells[8,VI_LINHAS2] := STGR_LINHA_3_C1.Cells[2,VsI_COMBINACOES3];
                         STGR_COMB15.Cells[9,VI_LINHAS2] := STGR_LINHA_3_C1.Cells[3,VsI_COMBINACOES3];
                         STGR_COMB15.Cells[10,VI_LINHAS2] := STGR_LINHA_4_C1.Cells[2,VsI_COMBINACOES4];
                              // ******************
                              // ***  NÚMEROS FIXOS
                              IF  STRtoINT(ED_FIXOS_01.Text) > 0 THEN
                              BEGIN
                                   IF  NOT(
                                       (STRtoINT(STGR_COMB15.Cells[2,VI_LINHAS2]) = STRtoINT(ED_FIXOS_01.Text)) OR
                                       (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_FIXOS_01.Text)) OR
                                       (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_FIXOS_01.Text)) OR
                                       (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_FIXOS_01.Text)) OR
                                       (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_FIXOS_01.Text)) OR
                                       (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_FIXOS_01.Text)) OR
                                       (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_FIXOS_01.Text)) OR
                                       (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_FIXOS_01.Text)) OR
                                       (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_FIXOS_01.Text)) OR
                                       (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_FIXOS_01.Text))
                                       )
                                   THEN
                                        CONTINUE
                                   ELSE
                                        IF  STRtoINT(ED_FIXOS_02.Text) > 0 THEN
                                        BEGIN
                                             IF  NOT(
                                                 (STRtoINT(STGR_COMB15.Cells[2,VI_LINHAS2]) = STRtoINT(ED_FIXOS_02.Text)) OR
                                                 (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_FIXOS_02.Text)) OR
                                                 (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_FIXOS_02.Text)) OR
                                                 (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_FIXOS_02.Text)) OR
                                                 (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_FIXOS_02.Text)) OR
                                                 (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_FIXOS_02.Text)) OR
                                                 (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_FIXOS_02.Text)) OR
                                                 (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_FIXOS_02.Text)) OR
                                                 (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_FIXOS_02.Text)) OR
                                                 (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_FIXOS_02.Text))
                                                 )
                                             THEN
                                                  CONTINUE
                                             ELSE
                                                  IF  STRtoINT(ED_FIXOS_03.Text) > 0 THEN
                                                  BEGIN
                                                       IF  NOT(
                                                           (STRtoINT(STGR_COMB15.Cells[2,VI_LINHAS2]) = STRtoINT(ED_FIXOS_03.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_FIXOS_03.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_FIXOS_03.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_FIXOS_03.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_FIXOS_03.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_FIXOS_03.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_FIXOS_03.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_FIXOS_03.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_FIXOS_03.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_FIXOS_03.Text))
                                                           )
                                                       THEN
                                                            CONTINUE
                                                      {ELSE
                                                            IF  STRtoINT(ED_FIXOS_04.Text) > 0 THEN
                                                            BEGIN
                                                                 IF  NOT(
                                                                     (STRtoINT(STGR_COMB15.Cells[2,VI_LINHAS2]) = STRtoINT(ED_FIXOS_04.Text)) OR
                                                                     (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_FIXOS_04.Text)) OR
                                                                     (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_FIXOS_04.Text)) OR
                                                                     (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_FIXOS_04.Text)) OR
                                                                     (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_FIXOS_04.Text)) OR
                                                                     (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_FIXOS_04.Text)) OR
                                                                     (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_FIXOS_04.Text)) OR
                                                                     (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_FIXOS_04.Text)) OR
                                                                     (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_FIXOS_04.Text)) OR
                                                                     (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_FIXOS_04.Text))
                                                                     )
                                                                 THEN
                                                                      CONTINUE
                                                                 ELSE
                                                                      IF  STRtoINT(ED_FIXOS_05.Text) > 0 THEN
                                                                      BEGIN
                                                                           IF  NOT(
                                                                               (STRtoINT(STGR_COMB15.Cells[2,VI_LINHAS2]) = STRtoINT(ED_FIXOS_05.Text)) OR
                                                                               (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_FIXOS_05.Text)) OR
                                                                               (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_FIXOS_05.Text)) OR
                                                                               (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_FIXOS_05.Text)) OR
                                                                               (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_FIXOS_05.Text)) OR
                                                                               (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_FIXOS_05.Text)) OR
                                                                               (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_FIXOS_05.Text)) OR
                                                                               (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_FIXOS_05.Text)) OR
                                                                               (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_FIXOS_05.Text)) OR
                                                                               (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_FIXOS_05.Text))
                                                                               )
                                                                           THEN
                                                                                CONTINUE;
                                                                      END;  // IF IF  STRtoINT(ED_FIXOS_05.Text)
                                                            END; // IF IF  STRtoINT(ED_FIXOS_04.Text)  }
                                                  END; // IF IF  STRtoINT(ED_FIXOS_03.Text)
                                        END; // IF  IF  STRtoINT(ED_FIXOS_02.Text)
                              END; // IF IF  STRtoINT(ED_FIXOS_01.Text)

                              PR_ORDENAR_SIMULACAO_15 (VI_LINHAS2);
                              PR_GRAVAR_DADOS ('NAO', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_LINHA_1_C1.RowCount-1));
                              VI_LINHAS2 := VI_LINHAS2+1;
                              VI_LINHAS1 := VI_LINHAS1+1;
                    END; // FOR VsI_COMBINACOES4
                   STGR_BASE_SOMA2.REPAINT  ;
               END; //  FOR VI_COMBINACOES03
               PGBR_GERARCOMB3.Position := 100;               
               STGR_BASE_SOMA12_2.REPAINT  ;
               PGBR_GERARCOMB0.Position := TRUNC(VI_COMBINACOES2/(STGR_LINHA_2_C2.RowCount-1)*100);
               IF   (PGBR_GERARCOMB0.Position MOD 15) = 0 THEN
               BEGIN
                    Self.WindowState := wsMinimized;
                    Self.WindowState :=  wsNormal;
                    SELF.Repaint;
               END;
               PGBR_GERARCOMB0.Repaint;
               SLEEP(5);              
           END; //  FOR VI_COMBINACOES02
              STGR_BASE_SOMA2.REPAINT  ;
              STGR_BASE_SOMA12_2.REPAINT  ;
                    LA_TOTAL_COMB.Caption := 'TOTAL PROCESSADOS: '+INTtoSTR(VI_COMBINACOES1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4)+'   ';
                    LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
                    LA_QTD_COMB.Repaint;
          LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_COMBINACOES1)+ ' DE '+  INTtoSTR(STGR_LINHA_1_C1.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(VI_COMBINACOES1/(STGR_LINHA_1_C1.RowCount-1)*100))+ ' %  ';
          PGBR_GERARCOMB.Position := TRUNC(VI_COMBINACOES1/(STGR_LINHA_1_C1.RowCount-1)*100);
          LA_GERAR_COMB.Repaint;
          PGBR_GERARCOMB.Repaint;
          STGR_COMB15.RowCount := VI_LINHAS2;
          STGR_COMB15.Repaint;
          SLEEP (8);
          Self.WindowState := wsMinimized;
          Self.WindowState :=  wsNormal;
          SELF.Repaint;
     END; // FOR VI_COMBINACOES01
    { PR_GRAVAR_DADOS ('FIM', VI_LINHAS2, VI_COMBINACOES01, TRUNC(STGR_LINHA_1_C1.RowCount-1));  }
     //PGBR_GERARCOMB0.Repaint;
     LA_TOTAL_COMB.Caption := 'TOTAL PROCESSADOS: '+INTtoSTR(VI_COMBINACOES1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
     LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS2-1);
     STGR_COMB15.Repaint;
     LA_QTD_COMB.Repaint;
     LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_CONTAR_COMB1)+ ' DE '+  INTtoSTR(VI_TOTAL_COMB1)+ ' - ' + INTtoSTR(TRUNC(VI_CONTAR_COMB1/VI_TOTAL_COMB1*100))+ ' %  ';
     //LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_COMBINACOES1)+ ' DE '+  INTtoSTR(STGR_GRUPO_A_TODOS5.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(VI_COMBINACOES1/(STGR_GRUPO_A_TODOS5.RowCount-1)*100))+ ' %  ';
     LA_GERAR_COMB.Repaint;     
     PGBR_GERARCOMB0.Position := 100;
     PGBR_GERARCOMB.Position := 100;
          PR_GRAVAR_DADOS ('FIM', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_LINHA_1_C1.RowCount-1));
     PGBR_GERARCOMB0.Repaint;
     PGBR_GERARCOMB.Repaint;

     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;
     LA_gFIM_GERAR.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
     // ==> ACERTANDO O PAINEL DE ENCERRAMENTO
     BBT_RECOMECAR.Enabled := false;
     BBT_PREPARAR.Enabled := false;
     LA_rTOTAL_COMB.Caption  := INTtoSTR(VI_COMBINACOES1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4)+'   ';
     LA_rQTD_COMB.Caption    := INTtoSTR(VI_LINHAS1-1)+'     ';

     SELF.PR_SIMULAR_RECUPERANDODADOS('');
                   SELF.IBQ_COMBINACOES.SQL.Clear;
               SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(distinct(dados)) AS SOMADADOS FROM FILTRO_0009EXC1_DADOS;')  ;
               SELF.IBQ_COMBINACOES.Open;
               IBQ_COMBINACOES.First;
               VI_CONTAR_COMB1 := IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_0009EXC1_DEFINICAO SET HORA_TERMINO ='''+FORMATDATETIME('h:n:s',time())+''', QTD_DADOS= ''' +INTtoSTR(VI_CONTAR_COMB1)+ ''';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     LA_rTOTAL_100REPET.Caption := LA_TOTAL_100REPET.Caption;
     LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_0009EXC1_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     PA_REMOVEUREPET.Left := 370;            
end;



PROCEDURE T_F_FILTRO_09_NS_E_1.PR_LIMPAR_GRID10 ();
BEGIN
    STGR_COMB15.CleanupInstance;
    STGR_COMB15.Free;
    STGR_COMB15:= TStringGrid.Create(SELF);
    STGR_COMB15.Parent:= PA_RESULTADO;
       STGR_COMB15.Left := 481        ;
       STGR_COMB15.Top := 42          ;
       STGR_COMB15.Width := 502       ;
       STGR_COMB15.Height := 234      ;
       STGR_COMB15.TabStop := False   ;
       STGR_COMB15.Align := alClient  ;
       STGR_COMB15.Color := 14413823  ;
       STGR_COMB15.ColCount := 12     ;
       STGR_COMB15.DefaultColWidth := 38;
       STGR_COMB15.FixedColor := clTeal ;
       STGR_COMB15.FixedCols := 2       ;
       STGR_COMB15.RowCount := 2        ;
    STGR_COMB15.Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
END;



PROCEDURE T_F_FILTRO_09_NS_E_1.PR_SIMULAR_RECUPERANDODADOS(VC_TIPO: STRING);
VAR
     VI_AN_COMB1, VI_CONTAR : INTEGER;
BEGIN
       SELF.PR_LIMPAR_GRID10();
       IF (VC_TIPO='SIMULACAO') THEN SHOWMESSAGE('DADOS-2 - Retirando os repetidos');
       SELF.IBQ_COMBINACOES.Close;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(distinct(dados)) AS SOMADADOS FROM FILTRO_0009EXC1_DADOS;')  ;
       SELF.IBQ_COMBINACOES.Open;
       VI_CONTAR := SELF.IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT DISTINCT(DADOS), EXC1, EXC2, EXC3, EXC4, EXC5, EXC6, EXC7, EXC8, EXC9, EXC10   FROM FILTRO_0009EXC1_DADOS  ORDER BY DADOS;')  ;
       SELF.IBQ_COMBINACOES.Open;
           IF (VC_TIPO='SIMULACAO') THEN SHOWMESSAGE('Recuperando os dados');
       // ********************
       // **   ENCERRANDO   **
       // ********************
           Self.Repaint;
           Self.WindowState := wsMinimized;
           Self.WindowState :=  wsNormal;
           Self.Repaint;
       STGR_COMB15.RowCount := 0;
       SELF.IBQ_COMBINACOES.First;
       FOR VI_AN_COMB1:= 1 TO  VI_CONTAR DO
       BEGIN
           STGR_COMB15.Cells [0, VI_AN_COMB1] := INTtoSTR(VI_AN_COMB1);
           STGR_COMB15.Cells [2, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC1').AsString;
           STGR_COMB15.Cells [3, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC2').AsString;
           STGR_COMB15.Cells [4, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC3').AsString;
           STGR_COMB15.Cells [5, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC4').AsString;
           STGR_COMB15.Cells [6, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC5').AsString;
           STGR_COMB15.Cells [7, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC6').AsString;
           STGR_COMB15.Cells [8, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC7').AsString;
           STGR_COMB15.Cells [9, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC8').AsString;
           STGR_COMB15.Cells [10, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC9').AsString;
           STGR_COMB15.Cells [11, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC10').AsString;
               STGR_COMB15.RowCount := VI_AN_COMB1;
           SELF.IBQ_COMBINACOES.Next;
       END; // FOR VI_AN_COMB1
       STGR_COMB15.RowCount := VI_AN_COMB1;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM FILTRO_0009EXC1_DEFINICAO;')  ;
       SELF.IBQ_COMBINACOES.Open;
       STGR_COMB15.REPAINT;
           PGBR_REMREPET.Position := 100;
       LA_TOTAL_100REPET.Caption := INTtoSTR(STGR_COMB15.RowCount-1);
       STGR_COMB15.REPAINT;
       LA_TOTAL_100REPET.Repaint;

           Self.Repaint;
           Self.WindowState := wsMinimized;
           Self.WindowState :=  wsNormal;
           Self.Repaint;
     SHOWMESSAGE('DADOS CARREGADOS');           
END; //    PROCEDCURE SIMULAR_RECUPERANDODADOS();



procedure T_F_FILTRO_09_NS_E_1.BBT_GERAR_SAIRClick(Sender: TObject);
begin
     SELF.Close;
end;

procedure T_F_FILTRO_09_NS_E_1.BBT_PA_REMOVEUREPETClick(Sender: TObject);
begin
     PA_REMOVEUREPET.Left := 5000;
     BBT_RECOMECAR.Enabled := TRUE;
     BBT_PREPARAR.Enabled := TRUE;
     BBT_GERAR_MENU.Enabled    := TRUE;
    BBT_CLOSE.OnClick (Sender);
end;



procedure T_F_FILTRO_09_NS_E_1.BT_CARREGAR_SIMULACAOClick(Sender: TObject);
begin
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
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_0009EXC1_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.PR_SIMULAR_RECUPERANDODADOS('');
end;

procedure T_F_FILTRO_09_NS_E_1.RB_RESULTADOSClick(Sender: TObject);
begin
     SCBX_GABARITO.Visible := false;
     PA_RESULTADO.Visible  := TRUE;
end;






end.

