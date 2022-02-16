unit GERADOR_12p3_M1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DB, IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, Math, strutils,
  Buttons, ExtCtrls, Grids;

type
  T_F_GERADOR_12p3_M1 = class(TForm)
    SCBX_GABARITO: TScrollBox;
    Label7: TLabel;
    STGR_BASE_25: TStringGrid;
    PA_TOPO: TPanel;
    Label53: TLabel;
    BBT_CLOSE: TImage;
    BBT_RECOMECAR: TBitBtn;
    PA_RESULTADO: TPanel;
    STGR_COMB12: TStringGrid;
    STRGR_TODOS_NUMEROS: TStringGrid;
    PA_EXECUTAR_FILTRO: TPanel;
    BBT_GERAR_MENU: TBitBtn;
    BBT_CANCELAR_SAIR: TBitBtn;
    PANEL_TITULO_SIMULACAO: TPanel;
    LA_TOTAL_100REPET: TLabel;
    LA_GERAR_COMB: TLabel;
    LA_TOTAL_COMB: TLabel;
    PGBR_GERARCOMB: TProgressBar;
    PGBR_GERARCOMB0: TProgressBar;
    STGR_COMB03: TStringGrid;
    STGR_EXC08: TStringGrid;
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
    TRB_C1_INI: TTrackBar;
    PA_COLUNA2: TPanel;
    Label61: TLabel;
    ED_SOMAS_C2_INI: TEdit;
    TRB_C2_INI: TTrackBar;
    PA_COLUNA4: TPanel;
    Label25: TLabel;
    ED_SOMAS_C4_INI: TEdit;
    TRB_C4_INI: TTrackBar;
    PA_COLUNA3: TPanel;
    Label72: TLabel;
    ED_SOMAS_C3_INI: TEdit;
    TRB_C3_INI: TTrackBar;
    PA_FIXOS_1: TPanel;
    Label1: TLabel;
    ED_FIXOS_01_1: TEdit;
    ED_FIXOS_02_1: TEdit;
    ED_FIXOS_03_1: TEdit;
    ED_FIXOS_04_1: TEdit;
    ED_FIXOS_05_1: TEdit;
    PA_FIXOS_2: TPanel;
    Label2: TLabel;
    ED_FIXOS_01_2: TEdit;
    ED_FIXOS_02_2: TEdit;
    ED_FIXOS_03_2: TEdit;
    ED_FIXOS_04_2: TEdit;
    PA_FIXOS_3: TPanel;
    Label3: TLabel;
    ED_FIXOS_01_3: TEdit;
    ED_FIXOS_02_3: TEdit;
    ED_FIXOS_03_3: TEdit;
    PA_FIXOS_4: TPanel;
    Label4: TLabel;
    ED_FIXOS_01_C4: TEdit;
    ED_FIXOS_02_4: TEdit;
    STGR_EXC02: TStringGrid;
    STGR_SOBRAS_13: TStringGrid;
    ED_TSLEEP: TEdit;
    STGR_SOBRAS_10: TStringGrid;
    BBT_PA_REMOVEUREPET: TBitBtn;
    BBT_BLOCO_NOTAS: TBitBtn;
    MEM_COMBINACOES_TODAS: TMemo;
    TRB_C4_FINAL: TTrackBar;
    ED_SOMAS_C4_FINAL: TEdit;
    TRB_C3_FINAL: TTrackBar;
    ED_SOMAS_C3_FINAL: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BT_NOVA_SIMULACAOClick(Sender: TObject);
    procedure BT_REAJUSTARClick(Sender: TObject);
    procedure BBT_CARREGARClick(Sender: TObject);
    procedure BBT_SAIRClick(Sender: TObject);
    procedure BBT_CANCELARClick(Sender: TObject);
    procedure TRB_C1_INIChange(Sender: TObject);
    procedure TRB_C2_INIChange(Sender: TObject);
    procedure TRB_C3_INIChange(Sender: TObject);
    procedure TRB_C4_INIChange(Sender: TObject);
    procedure BBT_CLOSEClick(Sender: TObject);
    procedure BBT_GERAR_MENUClick(Sender: TObject);
    procedure BBT_GERAR_voltarClick(Sender: TObject);
    procedure BBT_GERARClick(Sender: TObject);
    procedure BBT_PA_REMOVEUREPETClick(Sender: TObject);
    procedure BBT_BLOCO_NOTASClick(Sender: TObject);
    procedure TRB_C4_FINALChange(Sender: TObject);
    procedure TRB_C3_FINALChange(Sender: TObject);
  private
    { Private declarations }
     PROCEDURE PR_SIMULAR_RECUPERANDODADOS();
  public
    { Public declarations }
  end;

var
  _F_GERADOR_12p3_M1: T_F_GERADOR_12p3_M1;

implementation

{$R *.dfm}

procedure T_F_GERADOR_12p3_M1.FormCreate(Sender: TObject);
var
     vsi_contar : smallint;
begin
     SELF.ClientWidth  := 1535;
     SELF.ClientHeight := 690;
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
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_12P3_M1_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
end;


procedure T_F_GERADOR_12p3_M1.FormClose(Sender: TObject;
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



procedure T_F_GERADOR_12p3_M1.BBT_CLOSEClick(Sender: TObject);
begin
     SELF.Close;
end;




procedure T_F_GERADOR_12p3_M1.BT_NOVA_SIMULACAOClick(Sender: TObject);
begin
     PA_RESULTADO.Enabled := TRUE;
     SCBX_GABARITO.Visible := TRUE;
     SCBX_GABARITO.Enabled := TRUE;
     PA_RESULTADO.Visible := TRUE;
     PA_RESULTADO.Enabled := TRUE;
     PA_EXECUTAR_FILTRO.Enabled := TRUE;
     BBT_GERAR_MENU.Enabled := TRUE;
     BBT_GERAR_MENU.Enabled := TRUE;
     BBT_CANCELAR_SAIR.Visible := false;     
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 2198;
     SCBX_GABARITO.Top:=247;
     SCBX_GABARITO.Repaint;
end;


procedure T_F_GERADOR_12p3_M1.BT_REAJUSTARClick(Sender: TObject);
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
end;


procedure T_F_GERADOR_12p3_M1.BBT_CARREGARClick(Sender: TObject);
begin
    BBT_CANCELAR_SAIR.Visible := TRUE;
            STGR_COMB03.RowCount := 2;
            STGR_COMB12.RowCount := 2;
            STGR_EXC08.RowCount := 2;
            STGR_EXC02.RowCount := 2;
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
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_12P3_M1_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.PR_SIMULAR_RECUPERANDODADOS();
   // BBT_BLOCO_NOTAS.Click;
end;


procedure T_F_GERADOR_12p3_M1.BBT_SAIRClick(Sender: TObject);
begin
     SELF.Close;
end;


procedure T_F_GERADOR_12p3_M1.BBT_CANCELARClick(Sender: TObject);
begin
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_12P3_M1_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT;')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
          SELF.Close;
end;


procedure T_F_GERADOR_12p3_M1.TRB_C1_INIChange(Sender: TObject);
begin
     IF TRB_C1_INI.Position = 1 THEN
          ED_SOMAS_C1_INI.Text := '156';
     IF TRB_C1_INI.Position = 2 THEN
          ED_SOMAS_C1_INI.Text := '154 - 156 - 158';
end;



procedure T_F_GERADOR_12p3_M1.TRB_C2_INIChange(Sender: TObject);
begin
     IF TRB_C2_INI.Position = 1 THEN
          ED_SOMAS_C2_INI.Text := '104';
     IF TRB_C2_INI.Position = 2 THEN
          ED_SOMAS_C2_INI.Text := '102 - 104 - 106';
end;



procedure T_F_GERADOR_12p3_M1.TRB_C3_INIChange(Sender: TObject);
begin
     IF TRB_C3_INI.Position = 1 THEN
          ED_SOMAS_C3_INI.Text := '06';
     IF TRB_C3_INI.Position = 2 THEN
          ED_SOMAS_C3_INI.Text := '08';
     IF TRB_C3_INI.Position = 3 THEN
          ED_SOMAS_C3_INI.Text := '10';
     IF TRB_C3_INI.Position = 4 THEN
          ED_SOMAS_C3_INI.Text := '12';
     IF TRB_C3_INI.Position = 5 THEN
          ED_SOMAS_C3_INI.Text := '14';
     IF TRB_C3_INI.Position = 6 THEN
          ED_SOMAS_C3_INI.Text := '16';
     IF TRB_C3_INI.Position = 7 THEN
          ED_SOMAS_C3_INI.Text := '18';
     IF TRB_C3_INI.Position = 8 THEN
          ED_SOMAS_C3_INI.Text := '20';
     IF TRB_C3_INI.Position = 9 THEN
          ED_SOMAS_C3_INI.Text := '22';
     IF TRB_C3_INI.Position = 10 THEN
          ED_SOMAS_C3_INI.Text := '24';
     IF TRB_C3_INI.Position = 11 THEN
          ED_SOMAS_C3_INI.Text := '26';
     IF TRB_C3_INI.Position = 12 THEN
          ED_SOMAS_C3_INI.Text := '28';
     IF TRB_C3_INI.Position = 13 THEN
          ED_SOMAS_C3_INI.Text := '30';
     IF TRB_C3_INI.Position = 14 THEN
          ED_SOMAS_C3_INI.Text := '32';
     IF TRB_C3_INI.Position = 15 THEN
          ED_SOMAS_C3_INI.Text := '34';
     IF TRB_C3_INI.Position = 16 THEN
          ED_SOMAS_C3_INI.Text := '36';
     IF TRB_C3_INI.Position = 17 THEN
          ED_SOMAS_C3_INI.Text := '38';
     IF TRB_C3_INI.Position = 18 THEN
          ED_SOMAS_C3_INI.Text := '40';
     IF TRB_C3_INI.Position = 19 THEN
          ED_SOMAS_C3_INI.Text := '42';
     IF TRB_C3_INI.Position = 20 THEN
          ED_SOMAS_C3_INI.Text := '44';
     IF TRB_C3_INI.Position = 21 THEN
          ED_SOMAS_C3_INI.Text := '46';
     IF TRB_C3_INI.Position = 22 THEN
          ED_SOMAS_C3_INI.Text := '48';
     IF TRB_C3_INI.Position = 23 THEN
          ED_SOMAS_C3_INI.Text := '50';
     IF TRB_C3_INI.Position = 24 THEN
          ED_SOMAS_C3_INI.Text := '52';
     IF TRB_C3_INI.Position = 25 THEN
          ED_SOMAS_C3_INI.Text := '54';
     IF TRB_C3_INI.Position = 26 THEN
          ED_SOMAS_C3_INI.Text := '56';
     IF TRB_C3_INI.Position = 27 THEN
          ED_SOMAS_C3_INI.Text := '58';
     IF TRB_C3_INI.Position = 28 THEN
          ED_SOMAS_C3_INI.Text := '60';
     IF TRB_C3_INI.Position = 29 THEN
          ED_SOMAS_C3_INI.Text := '62';
     IF TRB_C3_INI.Position = 30 THEN
          ED_SOMAS_C3_INI.Text := '64';
     IF TRB_C3_INI.Position = 31 THEN
          ED_SOMAS_C3_INI.Text := '66';
     IF TRB_C3_INI.Position = 32 THEN
          ED_SOMAS_C3_INI.Text := '68';
     IF TRB_C3_INI.Position = 33 THEN
          ED_SOMAS_C3_INI.Text := '70';
     IF TRB_C3_INI.Position = 34 THEN
          ED_SOMAS_C3_INI.Text := '72';
end;


procedure T_F_GERADOR_12p3_M1.TRB_C3_FINALChange(Sender: TObject);
begin
     IF TRB_C3_FINAL.Position = 1 THEN
          ED_SOMAS_C3_FINAL.Text := '06';
     IF TRB_C3_FINAL.Position = 2 THEN
          ED_SOMAS_C3_FINAL.Text := '08';
     IF TRB_C3_FINAL.Position = 3 THEN
          ED_SOMAS_C3_FINAL.Text := '10';
     IF TRB_C3_FINAL.Position = 4 THEN
          ED_SOMAS_C3_FINAL.Text := '12';
     IF TRB_C3_FINAL.Position = 5 THEN
          ED_SOMAS_C3_FINAL.Text := '14';
     IF TRB_C3_FINAL.Position = 6 THEN
          ED_SOMAS_C3_FINAL.Text := '16';
     IF TRB_C3_FINAL.Position = 7 THEN
          ED_SOMAS_C3_FINAL.Text := '18';
     IF TRB_C3_FINAL.Position = 8 THEN
          ED_SOMAS_C3_FINAL.Text := '20';
     IF TRB_C3_FINAL.Position = 9 THEN
          ED_SOMAS_C3_FINAL.Text := '22';
     IF TRB_C3_FINAL.Position = 10 THEN
          ED_SOMAS_C3_FINAL.Text := '24';
     IF TRB_C3_FINAL.Position = 11 THEN
          ED_SOMAS_C3_FINAL.Text := '26';
     IF TRB_C3_FINAL.Position = 12 THEN
          ED_SOMAS_C3_FINAL.Text := '28';
     IF TRB_C3_FINAL.Position = 13 THEN
          ED_SOMAS_C3_FINAL.Text := '30';
     IF TRB_C3_FINAL.Position = 14 THEN
          ED_SOMAS_C3_FINAL.Text := '32';
     IF TRB_C3_FINAL.Position = 15 THEN
          ED_SOMAS_C3_FINAL.Text := '34';
     IF TRB_C3_FINAL.Position = 16 THEN
          ED_SOMAS_C3_FINAL.Text := '36';
     IF TRB_C3_FINAL.Position = 17 THEN
          ED_SOMAS_C3_FINAL.Text := '38';
     IF TRB_C3_FINAL.Position = 18 THEN
          ED_SOMAS_C3_FINAL.Text := '40';
     IF TRB_C3_FINAL.Position = 19 THEN
          ED_SOMAS_C3_FINAL.Text := '42';
     IF TRB_C3_FINAL.Position = 20 THEN
          ED_SOMAS_C3_FINAL.Text := '44';
     IF TRB_C3_FINAL.Position = 21 THEN
          ED_SOMAS_C3_FINAL.Text := '46';
     IF TRB_C3_FINAL.Position = 22 THEN
          ED_SOMAS_C3_FINAL.Text := '48';
     IF TRB_C3_FINAL.Position = 23 THEN
          ED_SOMAS_C3_FINAL.Text := '50';
     IF TRB_C3_FINAL.Position = 24 THEN
          ED_SOMAS_C3_FINAL.Text := '52';
     IF TRB_C3_FINAL.Position = 25 THEN
          ED_SOMAS_C3_FINAL.Text := '54';
     IF TRB_C3_FINAL.Position = 26 THEN
          ED_SOMAS_C3_FINAL.Text := '56';
     IF TRB_C3_FINAL.Position = 27 THEN
          ED_SOMAS_C3_FINAL.Text := '58';
     IF TRB_C3_FINAL.Position = 28 THEN
          ED_SOMAS_C3_FINAL.Text := '60';
     IF TRB_C3_FINAL.Position = 29 THEN
          ED_SOMAS_C3_FINAL.Text := '62';
     IF TRB_C3_FINAL.Position = 30 THEN
          ED_SOMAS_C3_FINAL.Text := '64';
     IF TRB_C3_FINAL.Position = 31 THEN
          ED_SOMAS_C3_FINAL.Text := '66';
     IF TRB_C3_FINAL.Position = 32 THEN
          ED_SOMAS_C3_FINAL.Text := '68';
     IF TRB_C3_FINAL.Position = 33 THEN
          ED_SOMAS_C3_FINAL.Text := '70';
     IF TRB_C3_FINAL.Position = 34 THEN
          ED_SOMAS_C3_FINAL.Text := '72';
end;


procedure T_F_GERADOR_12p3_M1.TRB_C4_INIChange(Sender: TObject);
begin
     IF TRB_C4_INI.Position = 1 THEN
          ED_SOMAS_C4_INI.Text := '03';
     IF TRB_C4_INI.Position = 2 THEN
          ED_SOMAS_C4_INI.Text := '05';
     IF TRB_C4_INI.Position = 3 THEN
          ED_SOMAS_C4_INI.Text := '07';
     IF TRB_C4_INI.Position = 4 THEN
          ED_SOMAS_C4_INI.Text := '09';
     IF TRB_C4_INI.Position = 5 THEN
          ED_SOMAS_C4_INI.Text := '11';
     IF TRB_C4_INI.Position = 6 THEN
          ED_SOMAS_C4_INI.Text := '13';
     IF TRB_C4_INI.Position = 7 THEN
          ED_SOMAS_C4_INI.Text := '15';
     IF TRB_C4_INI.Position = 8 THEN
          ED_SOMAS_C4_INI.Text := '17';
     IF TRB_C4_INI.Position = 9 THEN
          ED_SOMAS_C4_INI.Text := '19';
     IF TRB_C4_INI.Position = 10 THEN
          ED_SOMAS_C4_INI.Text := '21';
     IF TRB_C4_INI.Position = 11 THEN
          ED_SOMAS_C4_INI.Text := '23';
     IF TRB_C4_INI.Position = 12 THEN
          ED_SOMAS_C4_INI.Text := '25';
     IF TRB_C4_INI.Position = 13 THEN
          ED_SOMAS_C4_INI.Text := '27';
     IF TRB_C4_INI.Position = 14 THEN
          ED_SOMAS_C4_INI.Text := '29';
     IF TRB_C4_INI.Position = 15 THEN
          ED_SOMAS_C4_INI.Text := '31';
     IF TRB_C4_INI.Position = 16 THEN
          ED_SOMAS_C4_INI.Text := '33';
     IF TRB_C4_INI.Position = 17 THEN
          ED_SOMAS_C4_INI.Text := '35';
     IF TRB_C4_INI.Position = 18 THEN
          ED_SOMAS_C4_INI.Text := '37';
     IF TRB_C4_INI.Position = 19 THEN
          ED_SOMAS_C4_INI.Text := '39';
     IF TRB_C4_INI.Position = 20 THEN
          ED_SOMAS_C4_INI.Text := '41';
     IF TRB_C4_INI.Position = 21 THEN
          ED_SOMAS_C4_INI.Text := '43';
     IF TRB_C4_INI.Position = 22 THEN
          ED_SOMAS_C4_INI.Text := '45';
     IF TRB_C4_INI.Position = 23 THEN
          ED_SOMAS_C4_INI.Text := '47';
     IF TRB_C4_INI.Position = 24 THEN
          ED_SOMAS_C4_INI.Text := '49';
end;



procedure T_F_GERADOR_12p3_M1.TRB_C4_FINALChange(Sender: TObject);
begin
     IF TRB_C4_FINAL.Position = 1 THEN
          ED_SOMAS_C4_FINAL.Text := '03';
     IF TRB_C4_FINAL.Position = 2 THEN
          ED_SOMAS_C4_FINAL.Text := '05';
     IF TRB_C4_FINAL.Position = 3 THEN
          ED_SOMAS_C4_FINAL.Text := '07';
     IF TRB_C4_FINAL.Position = 4 THEN
          ED_SOMAS_C4_FINAL.Text := '09';
     IF TRB_C4_FINAL.Position = 5 THEN
          ED_SOMAS_C4_FINAL.Text := '11';
     IF TRB_C4_FINAL.Position = 6 THEN
          ED_SOMAS_C4_FINAL.Text := '13';
     IF TRB_C4_FINAL.Position = 7 THEN
          ED_SOMAS_C4_FINAL.Text := '15';
     IF TRB_C4_FINAL.Position = 8 THEN
          ED_SOMAS_C4_FINAL.Text := '17';
     IF TRB_C4_FINAL.Position = 9 THEN
          ED_SOMAS_C4_FINAL.Text := '19';
     IF TRB_C4_FINAL.Position = 10 THEN
          ED_SOMAS_C4_FINAL.Text := '21';
     IF TRB_C4_FINAL.Position = 11 THEN
          ED_SOMAS_C4_FINAL.Text := '23';
     IF TRB_C4_FINAL.Position = 12 THEN
          ED_SOMAS_C4_FINAL.Text := '25';
     IF TRB_C4_FINAL.Position = 13 THEN
          ED_SOMAS_C4_FINAL.Text := '27';
     IF TRB_C4_FINAL.Position = 14 THEN
          ED_SOMAS_C4_FINAL.Text := '29';
     IF TRB_C4_FINAL.Position = 15 THEN
          ED_SOMAS_C4_FINAL.Text := '31';
     IF TRB_C4_FINAL.Position = 16 THEN
          ED_SOMAS_C4_FINAL.Text := '33';
     IF TRB_C4_FINAL.Position = 17 THEN
          ED_SOMAS_C4_FINAL.Text := '35';
     IF TRB_C4_FINAL.Position = 18 THEN
          ED_SOMAS_C4_FINAL.Text := '37';
     IF TRB_C4_FINAL.Position = 19 THEN
          ED_SOMAS_C4_FINAL.Text := '39';
     IF TRB_C4_FINAL.Position = 20 THEN
          ED_SOMAS_C4_FINAL.Text := '41';
     IF TRB_C4_FINAL.Position = 21 THEN
          ED_SOMAS_C4_FINAL.Text := '43';
     IF TRB_C4_FINAL.Position = 22 THEN
          ED_SOMAS_C4_FINAL.Text := '45';
     IF TRB_C4_FINAL.Position = 23 THEN
          ED_SOMAS_C4_FINAL.Text := '47';
     IF TRB_C4_FINAL.Position = 24 THEN
          ED_SOMAS_C4_FINAL.Text := '49';
end;




procedure T_F_GERADOR_12p3_M1.BBT_GERAR_MENUClick(Sender: TObject);
begin
     PA_GERAR.Visible := TRUE;
     PA_GERAR.Enabled := TRUE;
     PA_GERAR.Top  := 245;
     PA_GERAR.Left := 460;
     PA_GERAR.Repaint;
end;


procedure T_F_GERADOR_12p3_M1.BBT_GERAR_voltarClick(Sender: TObject);
begin
     PA_GERAR.Enabled := false;
     PA_GERAR.Left := 4500;
     PA_GERAR.Repaint;
end;









procedure T_F_GERADOR_12p3_M1.BBT_GERARClick(Sender: TObject);


    FUNCTION FN_ORDENAR_SIMULACAO_15 (VI_LINHAS9: INTEGER) :STRING;
    var
        VI_CONTAR : INTEGER;
        VC_COMBINACOES_15 : STRING ;
    begin
          // ************************
      	// **  Ordena os dados   **
	     // ************************
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
        END; // FOR VI_CONTAR
        // ----> MONTADO E VERIFICANDO TODOS OS DÍGITOS
        FOR VI_CONTAR :=3 TO 14 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB12.Cells[VI_CONTAR,1])) ,1]:='V';
        END; // FOR VI_CONTAR1
        FOR VI_CONTAR :=3 TO 5 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB03.Cells[VI_CONTAR,VI_LINHAS9])) ,1]:='V';
        END; // FOR VI_CONTAR1
        VC_COMBINACOES_15 := '';
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
            BEGIN
                VC_COMBINACOES_15 := VC_COMBINACOES_15 + RIGHTSTR ('0'+TRIM(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) +' ' ;
            END; // IF (STRGR_TODOS_NUMEROS
        END; // FOR VI_CONTAR
        Result := VC_COMBINACOES_15;
    end; // PROCEDURE ORDENAR_SIMULACAO_12


    PROCEDURE PR_GRAVAR_DADOS_v0 (VC_BEGIN_END: STRING; VI_COMBINACOES_C1:INTEGER; VI_TOTCOMBINACOES_C1:INTEGER);
    VAR
        VI_TOTALGERADO, VI_AN_COMB1, VI_CNTCELULAS : INTEGER;
        VC_QUERY : STRING;
        VC_DESC_SOMAc1, VC_DESC_SOMAc2, VC_DADOS1, VC_COMBINACOES_03, VC_COMBINACOES_12, VC_COMBINACOES_15 : STRING;
        VC_COMBINACOES_ns_08, VC_COMBINACOES_ns_02 : STRING;
    BEGIN
        IF (VC_BEGIN_END = 'INICIO') THEN
        BEGIN
            if (TRB_C1_INI.Position) = 1 then
               VC_DESC_SOMAc1:= '12 nº = 156.' ;
            if (TRB_C1_INI.Position) = 2 then
               VC_DESC_SOMAc1:= '12 nº = 154 a 158.';
            if (TRB_C2_INI.Position) = 1 then
               VC_DESC_SOMAc2:= '8 nº = 104.' ;
            if (TRB_C2_INI.Position) = 2 then
               VC_DESC_SOMAc2:= '8 nº = 102.';

            VC_QUERY  := 'INSERT INTO FILTRO_12P3_M1_DEFINICAO (SOMAS_c1, SOMAS_c2, SOMAS_c3, SOMAS_c4, fixos_c1, fixos_c2, fixos_c3, fixos_c4, DATA_DEFINICAO, HORA_DEFINICAO, QTD_DADOS) '+
                              ' VALUES('#39+ VC_DESC_SOMAc1 + #39 +',' +#39+ VC_DESC_SOMAc2 + #39 +',' +#39+ ED_SOMAS_C3_INI.Text + #39 +',' +#39+ ED_SOMAS_C4_INI.Text
                               + #39 +',' +#39+ (ED_FIXOS_01_1.Text +' - '+ ED_FIXOS_02_1.Text +' - '+ ED_FIXOS_03_1.Text)
                               + #39 +',' +#39+ (ED_FIXOS_01_2.Text +' - '+ ED_FIXOS_02_2.Text +' - '+ ED_FIXOS_03_2.Text)
                               + #39 +',' +#39+ (ED_FIXOS_01_3.Text +' - '+ ED_FIXOS_02_3.Text +' - '+ ED_FIXOS_03_3.Text)
                               + #39 +',' +#39+ '';
              VC_QUERY  := VC_QUERY + #39 +',' +#39+ STRINGREPLACE(FORMATDATETIME('d/m/yyyy',DATE()),'/','.',[]) + #39 +',' +#39+ FORMATDATETIME('h:n:s',time()) ;
            VC_QUERY  := VC_QUERY   + #39+ ' ,''0'' );';
                SELF.IBQ_COMBINACOES.SQL.Clear;
                SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
             SELF.IBQ_COMBINACOES.SQL.Clear;
             SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
             SELF.IBQ_COMBINACOES.ExecSQL;                
        END; // IF (VC_BEGIN_END = 'SIM')
        //VI_TOTALGERADO := STGR_COMB10.RowCount-1;
   {
        IF ((VI_LINHAS2/3995) = (VI_LINHAS2 DIV 3995))
         or ((VI_LINHAS2/3997) = (VI_LINHAS2 DIV 3997))
         or ((VI_LINHAS2/3999) = (VI_LINHAS2 DIV 3999))
         OR (VC_BEGIN_END = 'ENCERRANDO')
         OR (VC_BEGIN_END = 'FIM')
        THEN
        BEGIN
        }
            // ************************
            // **   BANCO DE DADOS   **
            // ************************
            STGR_COMB12.Repaint;
            Self.Repaint;
           // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
            FOR VI_AN_COMB1:= 1 TO  TRUNC((STGR_COMB03.RowCount-1)/1) DO
            BEGIN
                // obs: verificar o evento BeFOREInSERT DA ibq_COMBINACOES
                VC_COMBINACOES_03 :='';
                VC_COMBINACOES_12 :='';
                VC_COMBINACOES_ns_08 :='';
                VC_COMBINACOES_ns_02 :='';
                FOR VI_CNTCELULAS := 3 TO 5 DO
                BEGIN
                    VC_COMBINACOES_03 := VC_COMBINACOES_03 + RIGHTSTR ('0'+TRIM(STGR_COMB03.Cells[VI_CNTCELULAS,VI_AN_COMB1]),2) +' ';
                END; // FOR VI_CNTCELULAS
                FOR VI_CNTCELULAS := 3 TO 14 DO
                BEGIN
                    VC_COMBINACOES_12 := VC_COMBINACOES_12 + RIGHTSTR ('0'+TRIM(STGR_COMB12.Cells[VI_CNTCELULAS,1]),2) +' ';
                END; // FOR VI_CNTCELULAS
                FOR VI_CNTCELULAS := 3 TO 10 DO
                BEGIN
                    VC_COMBINACOES_ns_08 := VC_COMBINACOES_ns_08 + RIGHTSTR ('0'+TRIM(STGR_EXC08.Cells[VI_CNTCELULAS,VI_AN_COMB1]),2) +' ';
                END; // FOR VI_CNTCELULAS
                FOR VI_CNTCELULAS := 3 TO 4 DO
                BEGIN
                    VC_COMBINACOES_ns_02 := VC_COMBINACOES_ns_02 + RIGHTSTR ('0'+TRIM(STGR_EXC02.Cells[VI_CNTCELULAS,VI_AN_COMB1]),2) +' ';
                END; // FOR VI_CNTCELULAS
                VC_COMBINACOES_15 := FN_ORDENAR_SIMULACAO_15 (VI_AN_COMB1);
                IF (TRIM(STGR_COMB03.Cells[2,VI_AN_COMB1]) = '3') THEN
                BEGIN
                     VC_QUERY  := 'INSERT INTO FILTRO_12P3_M1_DADOS (DADOS_12, DADOS_03, DADOS_NS_08, DADOS_NS_02, DADOS_15, DADOS_NS_10, '
                     +' N01, N02, N03, N04, N05, N06, N07, N08, N09, N10, N11, N12, N13, N14, N15, NS01, NS02, NS03, NS04, NS05, NS06, NS07, NS08, NS09, NS10 ) '
                     +' VALUES(' +#39+ TRIM(VC_COMBINACOES_12) + #39 +','+#39+TRIM(VC_COMBINACOES_03)+ #39 +','+#39+TRIM(VC_COMBINACOES_NS_08)+ #39 +','+#39+TRIM(VC_COMBINACOES_NS_02)+ #39 +','+#39+TRIM(VC_COMBINACOES_15)+ #39 +','+#39+TRIM(VC_COMBINACOES_NS_08+ ' - '+VC_COMBINACOES_NS_02)
                          + #39 +','+#39+STGR_COMB12.Cells[3,1] + #39 +','+#39+STGR_COMB12.Cells[4,1]
                          + #39 +','+#39+STGR_COMB12.Cells[5,1] + #39 +','+#39+STGR_COMB12.Cells[6,1]
                          + #39 +','+#39+STGR_COMB12.Cells[7,1]+ #39 +','+#39+STGR_COMB12.Cells[8,1]
                          + #39 +','+#39+STGR_COMB12.Cells[9,1] + #39 +','+#39+STGR_COMB12.Cells[10,1]
                          + #39 +','+#39+STGR_COMB12.Cells[11,1] + #39 +','+#39+STGR_COMB12.Cells[12,1]
                          + #39 +','+#39+STGR_COMB12.Cells[13,1] + #39 +','+#39+STGR_COMB12.Cells[14,1]
                          + #39 +','+#39+STGR_COMB03.Cells[3,VI_AN_COMB1]+ #39 +','+#39+STGR_COMB03.Cells[4,VI_AN_COMB1]
                          + #39 +','+#39+STGR_COMB03.Cells[5,VI_AN_COMB1]
                          + #39 +','+#39+STGR_EXC08.Cells[3,VI_AN_COMB1]    + #39 +','+#39+STGR_EXC08.Cells[4,VI_AN_COMB1]    + #39 +','+#39+STGR_EXC08.Cells[5,VI_AN_COMB1]
                          + #39 +','+#39+STGR_EXC08.Cells[6,VI_AN_COMB1]    + #39 +','+#39+STGR_EXC08.Cells[7,VI_AN_COMB1]    + #39 +','+#39+STGR_EXC08.Cells[8,VI_AN_COMB1]
                          + #39 +','+#39+STGR_EXC08.Cells[9,VI_AN_COMB1]    + #39 +','+#39+STGR_EXC08.Cells[10,VI_AN_COMB1]
                          + #39 +','+#39+STGR_EXC02.Cells[3,VI_AN_COMB1]    + #39 +','+#39+STGR_EXC02.Cells[4,VI_AN_COMB1]
                           + #39 +');';
                     SELF.IBQ_COMBINACOES.SQL.Clear;
                     SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                     SELF.IBQ_COMBINACOES.ExecSQL;
                END; // IF (TRIM(STGR_COMB03.Cells[1,VI_AN_COMB1]) = '3')
            END; // FOR VI_AN_COMB1
            SELF.IBQ_COMBINACOES.SQL.Clear;
            VC_QUERY  := 'UPDATE FILTRO_12P3_M1_DEFINICAO SET CONTADOR_C1 =' + #39+ INTtoSTR(VI_COMBINACOES_C1) +#39+';';
            SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
            SLEEP(19);
             SELF.IBQ_COMBINACOES.SQL.Clear;
             {
        END; // IF ((VI_LINHAS2/3995)
        }
    END; // PROCEDURE GRAVAR_DADOS


var
     VI_CNTCELULAS, VI_CONTAR, VI_CONTASEL1: integer;
     VI_COMBINACOES1, VI_COMBINACOES2, VI_COMBINACOES3, VI_CONTAR_COMB1 : INTEGER ;
     Vsi_COMB12_1, Vsi_COMB12_2, Vsi_COMB12_3, Vsi_COMB12_4, Vsi_COMB12_5, Vsi_COMB12_6, Vsi_COMB12_7, Vsi_COMB12_8, Vsi_COMB12_9, Vsi_COMB12_0, Vsi_COMB12_A, Vsi_COMB12_B: SMALLINT;
     Vsi_COMb3_1, Vsi_COMB3_2, Vsi_COMb3_3, Vsi_SOMAINI, Vsi_SOMAFINAL : SMALLINT;
     Vsi_COMb8_1, Vsi_COMB8_2, Vsi_COMb8_3, Vsi_COMB8_4, Vsi_COMB8_5, Vsi_COMB8_6, Vsi_COMB8_7, Vsi_COMB8_8 : SMALLINT;
       VI_LINHAS12, VI_LINHAS03, VI_LINHAS08, VI_SOMA12, VI_FLAG12 , VI_SOMA03, VI_SOMA08, VI_FLAG08, VI_SOMA02: INTEGER;
       VI_FLAG_FX12, VI_FLAG_FX12B, VI_FLAG_FX03, VI_FLAG_FX08B, VI_FLAG_FX08 : INTEGER;
       VS_NUMEROSPRINCIPAIS: STRING;
       VDB_CALCULO_TOTAL: DOUBLE;
begin
     FOR VI_CONTAR :=1 TO 25 DO
     BEGIN
          STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0] :=INTtoSTR(VI_CONTAR);
          STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
     END; // FOR VI_CONTAR
     STGR_COMB12.Cells [0,0] := 'QTD';
     STGR_COMB12.Cells [1,0] := '+';
     STGR_COMB12.Cells [2,0] := 'FLAG';
     FOR VI_CONTASEL1 := 3 TO 14 DO
     BEGIN
        STGR_COMB12.Cells [VI_CONTASEL1,0] := '-'+INTtoSTR(VI_CONTASEL1-2)+'-';
        STGR_COMB12.Cells [VI_CONTASEL1,1] := '00';
     END;
     STGR_COMB12.ColWidths [0]:= 45;
     STGR_COMB12.ColWidths [1]:= 35;
     STGR_COMB12.RowCount := 2;
     STGR_COMB12.Repaint;
     FOR VI_CONTASEL1 := 3 TO 10 DO
     BEGIN
        STGR_EXC08.Cells [VI_CONTASEL1,0] := '-'+INTtoSTR(VI_CONTASEL1-2)+'-';
        STGR_EXC08.Cells [VI_CONTASEL1,1] := '00';
     END;
     STGR_EXC08.ColWidths [0]:= 40;
     STGR_EXC08.ColWidths [1]:= 40;
     STGR_EXC08.RowCount := 2;
     STGR_EXC08.Repaint;
     FOR VI_CONTASEL1 := 3 TO 5 DO
     BEGIN
        STGR_COMB03.Cells [VI_CONTASEL1,0] := '-'+INTtoSTR(VI_CONTASEL1-2)+'-';
        STGR_COMB03.Cells [VI_CONTASEL1,1] := '00';
     END;
     STGR_COMB03.Cells [0,0] := 'QTD';
     STGR_COMB03.Cells [1,0] := '+';
     STGR_COMB03.Cells [2,0] := 'FLAG';
     STGR_COMB03.ColWidths [0]:= 50;
     STGR_COMB03.ColWidths [1]:= 50;
     STGR_COMB03.RowCount := 2;
     STGR_COMB03.Repaint;
     FOR VI_CONTASEL1 := 3 TO 04 DO
     BEGIN
        STGR_EXC02.Cells [VI_CONTASEL1,0] := '-'+INTtoSTR(VI_CONTASEL1-2)+'-';
        STGR_EXC02.Cells [VI_CONTASEL1,1] := '00';
     END;
     STGR_EXC02.Cells [0,0] := 'QTD';
     STGR_EXC02.Cells [1,0] := '+';
     STGR_EXC02.Cells [2,0] := 'FLAG';
     STGR_EXC02.ColWidths [0]:= 40;
     STGR_EXC02.ColWidths [2]:= 40;
     STGR_EXC02.RowCount := 2;
     STGR_EXC02.Repaint;

     PGBR_GERARCOMB0.Position :=0 ;
     PGBR_GERARCOMB0.Repaint;
     PGBR_GERARCOMB.Position := 0;
     PGBR_GERARCOMB.Repaint;
     LA_TOTAL_COMB.Caption := 'GERAR:               ';
     LA_GERAR_COMB.Caption := '#:                   ';
     LA_TOTAL_100REPET.Caption := '000000';
     LA_TOTAL_100REPET.Repaint;
     LA_TOTAL_COMB.Repaint;
     LA_GERAR_COMB.Repaint;
     PA_GERAR.Enabled := false;
     PA_GERAR.Left := 4500;

     // ***************************
     // **  CONFERINDO OS FIXOS  **
     // ***************************
     if (STRtoINT(ED_FIXOS_02_1.Text) >0) AND (STRtoINT(ED_FIXOS_01_1.Text) = 0) then
     BEGIN
          SHOWMESSAGE ('Erro de preenchimento, o número fixo anterior tem de ser diferente de 0 .Favor corrigir.');
          ED_FIXOS_01_1.SetFocus;
          EXIT;
     END;
     if (STRtoINT(ED_FIXOS_03_1.Text) >0) AND (STRtoINT(ED_FIXOS_02_1.Text) = 0) then
     BEGIN
          SHOWMESSAGE ('Erro de preenchimento, o número fixo anterior tem de ser diferente de 0 .Favor corrigir.');
          ED_FIXOS_02_1.SetFocus;
          EXIT;
     END;

     if (STRtoINT(ED_FIXOS_02_2.Text) >0) AND (STRtoINT(ED_FIXOS_01_2.Text) = 0) then
     BEGIN
          SHOWMESSAGE ('Erro de preenchimento, o número fixo anterior tem de ser diferente de 0 .Favor corrigir.');
          ED_FIXOS_01_2.SetFocus;
          EXIT;
     END;
     if (STRtoINT(ED_FIXOS_03_2.Text) >0) AND (STRtoINT(ED_FIXOS_02_2.Text) = 0) then
     BEGIN
          SHOWMESSAGE ('Erro de preenchimento, o número fixo anterior tem de ser diferente de 0 .Favor corrigir.');
          ED_FIXOS_02_2.SetFocus;
          EXIT;
     END;

     if (STRtoINT(ED_FIXOS_02_3.Text) >0) AND (STRtoINT(ED_FIXOS_01_3.Text) = 0) then
     BEGIN
          SHOWMESSAGE ('Erro de preenchimento, o número fixo anterior tem de ser diferente de 0 .Favor corrigir.');
          ED_FIXOS_01_3.SetFocus;
          EXIT;
     END;
     if (STRtoINT(ED_FIXOS_03_3.Text) >0) AND (STRtoINT(ED_FIXOS_02_3.Text) = 0) then
     BEGIN
          SHOWMESSAGE ('Erro de preenchimento, o número fixo anterior tem de ser diferente de 0 .Favor corrigir.');
          ED_FIXOS_02_3.SetFocus;
          EXIT;
     END;
     // ***************************
     // **  CONFERINDO OS FIXOS  **
     // ***************************
     if (STRtoINT(ED_FIXOS_01_C4.Text) >0) then
          IF (STRtoINT(ED_FIXOS_01_C4.Text) = STRtoINT(ED_FIXOS_01_2.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C4.Text) = STRtoINT(ED_FIXOS_02_2.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C4.Text) = STRtoINT(ED_FIXOS_03_2.Text ) ) or
            (STRtoINT(ED_FIXOS_01_C4.Text) = STRtoINT(ED_FIXOS_04_2.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O(s) número(s) fixo(s) da 4ª coluna não pode(m) ser igual(is) ao(s) da 2ª coluna.');
                 ED_FIXOS_01_C4.SetFocus;
                 EXIT;
          END; // IF
     if (STRtoINT(ED_FIXOS_02_4.Text) >0) then
          IF (STRtoINT(ED_FIXOS_02_4.Text) = STRtoINT(ED_FIXOS_01_2.Text ) ) OR
            (STRtoINT(ED_FIXOS_02_4.Text) = STRtoINT(ED_FIXOS_02_2.Text ) ) OR
            (STRtoINT(ED_FIXOS_02_4.Text) = STRtoINT(ED_FIXOS_03_2.Text ) ) or
            (STRtoINT(ED_FIXOS_02_4.Text) = STRtoINT(ED_FIXOS_04_2.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O(s) número(s) fixo(s) da 4ª coluna não pode(m) ser igual(is) ao(s) da 2ª coluna.');
                 ED_FIXOS_02_4.SetFocus;
                 EXIT;
          END; // IF
     // ***************************
     // **  CONFERINDO OS FIXOS  **
     // ***************************
     if (STRtoINT(ED_FIXOS_01_3.Text) >0) then
          IF (STRtoINT(ED_FIXOS_01_3.Text) = STRtoINT(ED_FIXOS_01_1.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_3.Text) = STRtoINT(ED_FIXOS_02_1.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_3.Text) = STRtoINT(ED_FIXOS_03_1.Text ) ) or
            (STRtoINT(ED_FIXOS_01_3.Text) = STRtoINT(ED_FIXOS_04_1.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_3.Text) = STRtoINT(ED_FIXOS_05_1.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O(s) número(s) fixo(s) da 3ª coluna não pode(m) ser igual(is) ao(s) da 1ª coluna.');
                 ED_FIXOS_01_3.SetFocus;
                 EXIT;
          END; // IF
     if (STRtoINT(ED_FIXOS_02_3.Text) >0) then
          IF (STRtoINT(ED_FIXOS_02_3.Text) = STRtoINT(ED_FIXOS_01_1.Text ) ) OR
            (STRtoINT(ED_FIXOS_02_3.Text) = STRtoINT(ED_FIXOS_02_1.Text ) ) OR
            (STRtoINT(ED_FIXOS_02_3.Text) = STRtoINT(ED_FIXOS_03_1.Text ) ) or
            (STRtoINT(ED_FIXOS_02_3.Text) = STRtoINT(ED_FIXOS_04_1.Text ) ) OR
            (STRtoINT(ED_FIXOS_02_3.Text) = STRtoINT(ED_FIXOS_05_1.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O(s) número(s) fixo(s) da 3ª coluna não pode(m) ser igual(is) ao(s) da 1ª coluna.');
                 ED_FIXOS_02_3.SetFocus;
                 EXIT;
          END; // IF
     if (STRtoINT(ED_FIXOS_03_3.Text) >0) then
          IF (STRtoINT(ED_FIXOS_03_3.Text) = STRtoINT(ED_FIXOS_01_1.Text ) ) OR
            (STRtoINT(ED_FIXOS_03_3.Text) = STRtoINT(ED_FIXOS_02_1.Text ) ) OR
            (STRtoINT(ED_FIXOS_03_3.Text) = STRtoINT(ED_FIXOS_03_1.Text ) ) or
            (STRtoINT(ED_FIXOS_03_3.Text) = STRtoINT(ED_FIXOS_04_1.Text ) ) OR
            (STRtoINT(ED_FIXOS_03_3.Text) = STRtoINT(ED_FIXOS_05_1.Text ) ) 
          THEN
          BEGIN
                 SHOWMESSAGE ('O(s) número(s) fixo(s) da 3ª coluna não pode(m) ser igual(is) ao(s) da 1ª coluna.');
                 ED_FIXOS_03_3.SetFocus;
                 EXIT;
          END; // IF
     // ********************
     // **  LIMITE SOMAS  **
     // ********************
     CASE TRB_C1_INI.Position OF
     1:
          Vsi_SOMAINI := 156   ;
     2:
          Vsi_SOMAINI := 154   ;
     END ; // CASE
     CASE TRB_C1_INI.Position OF
     1:
          Vsi_SOMAFINAL := 156   ;
     2:
          Vsi_SOMAFINAL := 158   ;
     END; // CASE

     CASE TRB_C2_INI.Position OF
     1:
          Vsi_SOMAINI := Vsi_SOMAINI + 104   ;
     2:
          Vsi_SOMAINI := Vsi_SOMAINI + 102   ;
     END ; // CASE
     CASE TRB_C2_INI.Position OF
     1:
          Vsi_SOMAFINAL := Vsi_SOMAFINAL + 104   ;
     2:
          Vsi_SOMAFINAL := Vsi_SOMAFINAL + 106   ;
     END; // CASE

     IF (STRtoINT(ED_SOMAS_C3_INI.Text)) > (STRtoINT(ED_SOMAS_C3_FINAL.Text)) THEN
     BEGIN
          SHOWMESSAGE ('O número final não pode ser maior que o inicial.');
          TRB_C3_INI.SetFocus;
          exit;
     END; // IF

     IF (STRtoINT(ED_SOMAS_C4_INI.Text)) > (STRtoINT(ED_SOMAS_C4_FINAL.Text)) THEN
     BEGIN
          SHOWMESSAGE ('O número inicial não pode ser maior que o final.');
          TRB_C4_INI.SetFocus;
          exit;
     END; // IF

     Vsi_SOMAINI := Vsi_SOMAINI + STRtoINT(ED_SOMAS_C3_INI.Text);
     Vsi_SOMAFINAL := Vsi_SOMAFINAL + STRtoINT(ED_SOMAS_C3_FINAL.Text) ;
     IF ((325-Vsi_SOMAFINAL) > STRtoINT(ED_SOMAS_C4_FINAL.Text)) THEN
     BEGIN
          SHOWMESSAGE ('O menor valor possivel para o valor Inical da 4ª coluna é: ' +  intTOstr(325-Vsi_SOMAFINAL));
          TRB_C4_INI.SetFocus;
          exit;
     END;
     IF ((325-Vsi_SOMAINI) < STRtoINT(ED_SOMAS_C4_FINAL.Text)) THEN
     BEGIN
          SHOWMESSAGE ('O Maior valor possivel para o valor final da 4ª coluna é: ' + intTOstr(325-Vsi_SOMAINI));
          TRB_C4_INI.SetFocus;
          exit;
     END;
     // =====================================
     // ||||=============================||||
     // |||| 	GERANDO AS COMBINAÇÕES   ||||
     // ||||=============================||||
     // =====================================
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_12P3_M1_DEFINICAO')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_12P3_M1_DADOS')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;

     BBT_GERAR_MENU.Enabled := false;
     LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
     LA_rTOTAL_COMB.Caption  := '25';
     PR_GRAVAR_DADOS_v0 ('INICIO',1, 15);


     VI_LINHAS03 := 1;
     VI_LINHAS12 := 1;
     FOR Vsi_COMb12_1 := 1 TO  {15} 15 DO
     BEGIN
          SLEEP(600);
          PGBR_GERARCOMB.Position := 0;
          PGBR_GERARCOMB.Repaint;
          FOR Vsi_COMb12_2 := Vsi_COMb12_1+1 TO  16 DO
          BEGIN
               FOR Vsi_COMb12_3 := Vsi_COMb12_2+1 TO  17 DO
               BEGIN
                    FOR Vsi_COMb12_4 := Vsi_COMb12_3+1 TO  18 DO
                    BEGIN
                         FOR Vsi_COMb12_5 := Vsi_COMb12_4+1 TO  19 DO
                         BEGIN
                              FOR Vsi_COMb12_6 := Vsi_COMb12_5+1 TO  20 DO
                              BEGIN
                                   FOR Vsi_COMb12_7 := Vsi_COMb12_6+1 TO  21 DO
                                   BEGIN
                                   FOR Vsi_COMb12_8 := Vsi_COMb12_7+1 TO  22 DO
                                   BEGIN
                                   FOR Vsi_COMb12_9 := Vsi_COMb12_8+1 TO  23 DO
                                   BEGIN
                                   FOR Vsi_COMb12_0 := Vsi_COMb12_9+1 TO  24 DO
                                   BEGIN
                                        FOR Vsi_COMb12_A := Vsi_COMb12_0+1 TO  25 DO
                                        BEGIN
                                        FOR Vsi_COMb12_B := Vsi_COMb12_A+1 TO  25 DO
                                        BEGIN
                                             // PARES
                                             VI_CNTCELULAS := 0;
                                             IF (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_1,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                             IF (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_2,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                             IF (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_3,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                             IF (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_4,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                             IF (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_5,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                             IF (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_6,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                             IF (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_7,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                             IF (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_8,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                             IF (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_9,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                             IF (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_0,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                             IF (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_A,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                             IF (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_B,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                             IF  NOT (VI_CNTCELULAS =6) THEN
                                                  CONTINUE;
                                             VI_SOMA12  :=  STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_1,1])
                                                + STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_2,1])+ STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_3,1])
                                                + STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_4,1])+ STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_5,1])
                                                + STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_6,1])+ STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_7,1])
                                                + STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_8,1])+ STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_9,1])
                                                + STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_0,1])+ STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_A,1])
                                                + STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_B,1]);
                                             VI_FLAG12 := 0;
                                             CASE TRB_C1_INI.Position OF
                                             1:
                                                  IF (VI_SOMA12 = 156) THEN
                                                       VI_FLAG12 := 1 ;
                                             2:
                                                  IF (VI_SOMA12 >= 154) AND (VI_SOMA12 <= 158) THEN
                                                       VI_FLAG12 := 1 ;
                                             END; // CASE
                                             IF (VI_FLAG12 = 1) THEN
                                             BEGIN
                                                  VI_FLAG_FX12 := 0;
                                                  IF  STRtoINT(ED_FIXOS_01_1.Text) > 0 THEN
                                                  BEGIN
                                                       IF (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_1,1]) = STRtoINT(ED_FIXOS_01_1.Text))
                                                       or   (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_2,1]) = STRtoINT(ED_FIXOS_01_1.Text))
                                                       or   (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_3,1]) = STRtoINT(ED_FIXOS_01_1.Text))
                                                       or   (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_4,1]) = STRtoINT(ED_FIXOS_01_1.Text))
                                                       or   (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_5,1]) = STRtoINT(ED_FIXOS_01_1.Text))
                                                       or   (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_6,1]) = STRtoINT(ED_FIXOS_01_1.Text))
                                                       or   (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_7,1]) = STRtoINT(ED_FIXOS_01_1.Text))
                                                       or   (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_8,1]) = STRtoINT(ED_FIXOS_01_1.Text))
                                                       or   (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_9,1]) = STRtoINT(ED_FIXOS_01_1.Text))
                                                       or   (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_0,1]) = STRtoINT(ED_FIXOS_01_1.Text))
                                                       or   (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_A,1]) = STRtoINT(ED_FIXOS_01_1.Text))
                                                       or (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_B,1]) = STRtoINT(ED_FIXOS_01_1.Text))
                                                       THEN
                                                       BEGIN
                                                                 IF  STRtoINT(ED_FIXOS_02_1.Text) > 0 THEN
                                                                 BEGIN
                                                                           //
                                                                           // OBS: durante o preenchimento, o segundo fixo só pode ser maior que zero seo primeiro também for
                                                                           // conferencia ja feita, so chega aqui com preenchimento correto.
                                                                           //
                                                                           IF (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_1,1]) = STRtoINT(ED_FIXOS_02_1.Text))
                                                                           or  (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_2,1]) = STRtoINT(ED_FIXOS_02_1.Text))
                                                                           or  (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_3,1]) = STRtoINT(ED_FIXOS_02_1.Text))
                                                                           or  (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_4,1]) = STRtoINT(ED_FIXOS_02_1.Text))
                                                                           or  (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_5,1]) = STRtoINT(ED_FIXOS_02_1.Text))
                                                                           or  (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_6,1]) = STRtoINT(ED_FIXOS_02_1.Text))
                                                                           or  (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_7,1]) = STRtoINT(ED_FIXOS_02_1.Text))
                                                                           or  (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_8,1]) = STRtoINT(ED_FIXOS_02_1.Text))
                                                                           or  (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_9,1]) = STRtoINT(ED_FIXOS_02_1.Text))
                                                                           or  (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_0,1]) = STRtoINT(ED_FIXOS_02_1.Text))
                                                                           or  (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_A,1]) = STRtoINT(ED_FIXOS_02_1.Text))
                                                                           or (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_B,1]) = STRtoINT(ED_FIXOS_02_1.Text))
                                                                           THEN
                                                                           BEGIN
                                                                                IF  STRtoINT(ED_FIXOS_03_1.Text) > 0 THEN
                                                                                BEGIN
                                                                                     IF (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_1,1]) = STRtoINT(ED_FIXOS_03_1.Text))
                                                                                     or  (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_2,1]) = STRtoINT(ED_FIXOS_03_1.Text))
                                                                                     or  (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_3,1]) = STRtoINT(ED_FIXOS_03_1.Text))
                                                                                     or  (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_4,1]) = STRtoINT(ED_FIXOS_03_1.Text))
                                                                                     or  (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_5,1]) = STRtoINT(ED_FIXOS_03_1.Text))
                                                                                     or  (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_6,1]) = STRtoINT(ED_FIXOS_03_1.Text))
                                                                                     or  (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_7,1]) = STRtoINT(ED_FIXOS_03_1.Text))
                                                                                     or  (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_8,1]) = STRtoINT(ED_FIXOS_03_1.Text))
                                                                                     or  (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_9,1]) = STRtoINT(ED_FIXOS_03_1.Text))
                                                                                     or  (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_0,1]) = STRtoINT(ED_FIXOS_03_1.Text))
                                                                                     or  (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_A,1]) = STRtoINT(ED_FIXOS_03_1.Text))
                                                                                     or (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_B,1]) = STRtoINT(ED_FIXOS_03_1.Text))
                                                                                     THEN
                                                                                          VI_FLAG_FX12 := 1;
                                                                                END ELSE  // IF  STRtoINT(ED_FIXOS_03_1.Text
                                                                                BEGIN
                                                                                     VI_FLAG_FX12 := 1;
                                                                                END; // IF  STRtoINT(ED_FIXOS_03_1.Text
                                                                           END // if  (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_1,1]) = STRtoINT(ED_FIXOS_02_1.Text)) OR

                                                                 END ELSE // IF  STRtoINT(ED_FIXOS_02_1.Text
                                                                 BEGIN
                                                                      VI_FLAG_FX12 := 1;
                                                                 END ; // IF  STRtoINT(ED_FIXOS_02_1.Text
                                                            END; // IF STRtoINT(ED_FIXOS_02_1.Text) > 0

                                                  END ELSE  // IF  STRtoINT(ED_FIXOS_01_1.Text) > 0
                                                  BEGIN
                                                       VI_FLAG_FX12 := 1 ;
                                                  END; //IF  STRtoINT(ED_FIXOS_01_1.Text) > 0
                                                            VI_FLAG_FX12B :=0 ;
                                                                 IF  STRtoINT(ED_FIXOS_03_2.Text) > 0 THEN
                                                                 BEGIN
                                                                    if  (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_1,1]) = STRtoINT(ED_FIXOS_04_1.Text)) OR
                                                                          (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_2,1]) = STRtoINT(ED_FIXOS_04_1.Text)) OR
                                                                          (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_3,1]) = STRtoINT(ED_FIXOS_04_1.Text)) OR
                                                                          (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_4,1]) = STRtoINT(ED_FIXOS_04_1.Text)) OR
                                                                          (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_5,1]) = STRtoINT(ED_FIXOS_04_1.Text)) OR
                                                                          (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_6,1]) = STRtoINT(ED_FIXOS_04_1.Text)) OR
                                                                          (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_7,1]) = STRtoINT(ED_FIXOS_04_1.Text)) OR
                                                                          (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_8,1]) = STRtoINT(ED_FIXOS_04_1.Text))  OR
                                                                          (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_9,1]) = STRtoINT(ED_FIXOS_04_1.Text)) OR
                                                                          (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_0,1]) = STRtoINT(ED_FIXOS_04_1.Text)) OR
                                                                          (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_A,1]) = STRtoINT(ED_FIXOS_04_1.Text)) OR
                                                                          (STRtoINT(STGR_BASE_25.Cells[Vsi_COMb12_B,1]) = STRtoINT(ED_FIXOS_04_1.Text))
                                                                      THEN
                                                                           VI_FLAG_FX12B := 1;
                                                                 END ELSE
                                                                 BEGIN
                                                                                VI_FLAG_FX12B := 1;
                                                                 END ; // IF  STRtoINT(ED_FIXOS_02_3.Text
                                                  IF (VI_FLAG_FX12 = 0) OR (VI_FLAG_FX12B = 0) THEN
                                                       CONTINUE;
                                                  STGR_COMB12.Cells[0,VI_LINHAS12] := INTtoSTR(VI_LINHAS12);
                                                  STGR_COMB12.Cells[1,VI_LINHAS12] := INTtoSTR(VI_SOMA12);
                                                  STGR_COMB12.Cells[2,VI_LINHAS12] := '1';
                                                  STGR_COMB12.Cells[3,VI_LINHAS12] := STGR_BASE_25.Cells[Vsi_COMb12_1,1];
                                                  STGR_COMB12.Cells[4,VI_LINHAS12] := STGR_BASE_25.Cells[Vsi_COMb12_2,1];
                                                  STGR_COMB12.Cells[5,VI_LINHAS12] := STGR_BASE_25.Cells[Vsi_COMb12_3,1];
                                                  STGR_COMB12.Cells[6,VI_LINHAS12] := STGR_BASE_25.Cells[Vsi_COMb12_4,1];
                                                  STGR_COMB12.Cells[7,VI_LINHAS12] := STGR_BASE_25.Cells[Vsi_COMb12_5,1];
                                                  STGR_COMB12.Cells[8,VI_LINHAS12] := STGR_BASE_25.Cells[Vsi_COMb12_6,1];
                                                  STGR_COMB12.Cells[9,VI_LINHAS12] := STGR_BASE_25.Cells[Vsi_COMb12_7,1];
                                                  STGR_COMB12.Cells[10,VI_LINHAS12] := STGR_BASE_25.Cells[Vsi_COMb12_8,1];
                                                  STGR_COMB12.Cells[11,VI_LINHAS12] := STGR_BASE_25.Cells[Vsi_COMb12_9,1];
                                                  STGR_COMB12.Cells[12,VI_LINHAS12] := STGR_BASE_25.Cells[Vsi_COMb12_0,1];
                                                  STGR_COMB12.Cells[13,VI_LINHAS12] := STGR_BASE_25.Cells[Vsi_COMb12_a,1];
                                                  STGR_COMB12.Cells[14,VI_LINHAS12] := STGR_BASE_25.Cells[Vsi_COMb12_b,1];
                                                 // STGR_COMB12.Repaint;
                                                 // SLEEP(STRtoINT(ED_TSLEEP.Text));
                                                //  VI_LINHAS12 := VI_LINHAS12 + 1;

                                                  // ----------------------------------------------
                                                  // --  MONTANDO AS 13 SOBRAS DO CONJUNTO DE 12 --
                                                  // ----------------------------------------------
                                                     FOR VI_CONTAR :=1 TO 25 DO
                                                     BEGIN
                                                         STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,2] :='F';
                                                     END; // FOR VI_CONTAR
                                                     FOR VI_CONTAR :=3 TO 14 DO
                                                     BEGIN
                                                         STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB12.Cells[VI_CONTAR,1])) ,2]:='V';
                                                     END; // FOR VI_CONTAR1
                                                     VI_CNTCELULAS := 1;
                                                     FOR VI_CONTAR :=1 TO 25 DO
                                                     BEGIN
                                                         IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,2]='F') THEN
                                                         BEGIN
                                                             STGR_SOBRAS_13.Cells[VI_CNTCELULAS, 1] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                                                             VI_CNTCELULAS := VI_CNTCELULAS + 1;
                                                         END; // IF (STRGR_TODOS_NUMEROS
                                                     END; // FOR VI_CONTAR
                                                  // ----------------------------------------------
                                                   FOR VI_CONTASEL1 := 3 TO 04 DO
                                                   BEGIN
                                                      STGR_EXC02.Cells [VI_CONTASEL1,0] := '-'+INTtoSTR(VI_CONTASEL1-2)+'-';
                                                      STGR_EXC02.Cells [VI_CONTASEL1,1] := '00';
                                                   END;
                                                   STGR_EXC02.ColWidths [0]:= 40;
                                                   STGR_EXC02.ColWidths [2]:= 40;
                                                   STGR_EXC02.RowCount := 2;
                                                  // STGR_EXC02.Repaint;
                                                  FOR VI_CONTAR := 3 TO 5 DO
                                                  BEGIN
                                                     STGR_COMB03.Cells [VI_CONTAR,0] := '-'+INTtoSTR(VI_CONTAR-2)+'-';
                                                     STGR_COMB03.Cells [VI_CONTAR,1] := '00';
                                                  END;
                                                  STGR_COMB03.Cells[1,1] := '0';
                                                  STGR_COMB03.Cells[2,1] := '1';
                                                  STGR_COMB03.ColWidths [0]:= 50;
                                                  STGR_COMB03.ColWidths [1]:= 50;
                                                  STGR_COMB03.RowCount := 2;
                                                  //STGR_COMB03.Repaint;                                                  
                                                            //STGR_COMB03.Repaint;
                                                  FOR VI_CONTASEL1 := 3 TO 10 DO
                                                  BEGIN
                                                     STGR_EXC08.Cells [VI_CONTASEL1,0] := '-'+INTtoSTR(VI_CONTASEL1-2)+'-';
                                                     STGR_EXC08.Cells [VI_CONTASEL1,1] := '00';
                                                  END;
                                                  STGR_EXC08.Cells[1,1] := '0';
                                                  STGR_EXC08.ColWidths [0]:= 40;
                                                  STGR_EXC08.ColWidths [1]:= 40;
                                                  STGR_EXC08.RowCount := 2;
                                                  //STGR_EXC08.Repaint;
                                                                 VI_LINHAS03 := 1;
                                                  VI_LINHAS08 := 1;
                                                  FOR Vsi_COMb3_1 := 1 TO  11 DO
                                                  BEGIN
                                                       FOR Vsi_COMb3_2 := Vsi_COMb3_1+1 TO  12 DO
                                                       BEGIN
                                                            FOR Vsi_COMb3_3 := Vsi_COMb3_2+1 TO  13 DO
                                                            BEGIN
                                                                 // PARES
                                                                 VI_CNTCELULAS := 0;
                                                                 IF (STRtoINT(STGR_SOBRAS_13.Cells[Vsi_COMb3_1,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                                                 IF (STRtoINT(STGR_SOBRAS_13.Cells[Vsi_COMb3_2,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                                                 IF (STRtoINT(STGR_SOBRAS_13.Cells[Vsi_COMb3_3,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                                                 IF  NOT (VI_CNTCELULAS =1) THEN
                                                                      CONTINUE;
                                                                 //---
                                                                 VI_SOMA03  :=  STRtoINT(STGR_SOBRAS_13.Cells[Vsi_COMb3_1,1])
                                                                    + STRtoINT(STGR_SOBRAS_13.Cells[Vsi_COMb3_2,1])+ STRtoINT(STGR_SOBRAS_13.Cells[Vsi_COMb3_3,1]) ;
                                                                 IF (VI_SOMA03 >= STRtoINT(ED_SOMAS_C3_INI.Text)) AND (VI_SOMA03 <= STRtoINT(ED_SOMAS_C3_FINAL.Text)) THEN
                                                                 BEGIN
                                                                      //---
                                                                      VI_FLAG_FX03 := 0;
                                                                      IF  STRtoINT(ED_FIXOS_01_3.Text) > 0 THEN
                                                                      BEGIN
                                                                           IF  (STRtoINT(STGR_SOBRAS_13.Cells[Vsi_COMb3_1,1]) = STRtoINT(ED_FIXOS_01_3.Text)) OR
                                                                               (STRtoINT(STGR_SOBRAS_13.Cells[Vsi_COMb3_2,1]) = STRtoINT(ED_FIXOS_01_3.Text)) OR
                                                                               (STRtoINT(STGR_SOBRAS_13.Cells[Vsi_COMb3_3,1]) = STRtoINT(ED_FIXOS_01_3.Text))
                                                                           THEN
                                                                           BEGIN
                                                                                IF  STRtoINT(ED_FIXOS_02_3.Text) > 0 THEN
                                                                                BEGIN
                                                                                     //
                                                                                     // OBS: durante o preenchimento, o segundo fixo só pode ser maior que zero seo primeiro também for
                                                                                     // conferencia ja feita, so chega aqui com preenchimento correto.
                                                                                     //
                                                                                     if  (STRtoINT(STGR_SOBRAS_13.Cells[Vsi_COMb3_1,1]) = STRtoINT(ED_FIXOS_02_3.Text)) OR
                                                                                         (STRtoINT(STGR_SOBRAS_13.Cells[Vsi_COMb3_2,1]) = STRtoINT(ED_FIXOS_02_3.Text)) OR
                                                                                         (STRtoINT(STGR_SOBRAS_13.Cells[Vsi_COMb3_3,1]) = STRtoINT(ED_FIXOS_02_3.Text))
                                                                                     THEN
                                                                                          VI_FLAG_FX03 := 1;
                                                                                END ELSE
                                                                                BEGIN
                                                                                               VI_FLAG_FX03 := 1;
                                                                                END ; // IF  STRtoINT(ED_FIXOS_02_3.Text
                                                                           END; // IF
                                                                      END ELSE
                                                                      BEGIN
                                                                                     VI_FLAG_FX03 := 1 ;
                                                                      END; // IF  STRtoINT(ED_FIXOS_01_3.Text
                                                                      IF (VI_FLAG_FX03 = 0) THEN
                                                                           CONTINUE;
                                                                      //STGR_COMB12.Repaint;
                                                                      //STGR_SOBRAS_13.Repaint;
                                                                      STGR_COMB03.Cells[0,VI_LINHAS03] := INTtoSTR(VI_LINHAS03);
                                                                      STGR_COMB03.Cells[1,VI_LINHAS03] := INTtoSTR(VI_SOMA03);
                                                                      STGR_COMB03.Cells[2,VI_LINHAS03] := '1';
                                                                      STGR_COMB03.Cells[3,VI_LINHAS03] := STGR_SOBRAS_13.Cells[Vsi_COMb3_1,1];
                                                                      STGR_COMB03.Cells[4,VI_LINHAS03] := STGR_SOBRAS_13.Cells[Vsi_COMb3_2,1];
                                                                      STGR_COMB03.Cells[5,VI_LINHAS03] := STGR_SOBRAS_13.Cells[Vsi_COMb3_3,1];
                                                                     // VI_LINHAS03 := VI_LINHAS03 + 1;
                                                                           STGR_COMB12.Cells[2,VI_LINHAS12] := '2';
                                                                     // STGR_COMB03.RowCount := VI_LINHAS03;
                                                                     // STGR_COMB03.Repaint;





                                                                      // ------------------------------------------------
                                                                      // --  MONTANDO AS 10 SOBRAS DO CONJUNTO DE 12+3 --
                                                                      // ------------------------------------------------
                                                                         FOR VI_CONTAR :=1 TO 25 DO
                                                                         BEGIN
                                                                             STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,2] :='F';
                                                                         END; // FOR VI_CONTAR
                                                                         FOR VI_CONTAR :=3 TO 14 DO
                                                                         BEGIN
                                                                             STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB12.Cells[VI_CONTAR,1])) ,2]:='V';
                                                                         END; // FOR VI_CONTAR1
                                                                         FOR VI_CONTAR :=3 TO 5 DO
                                                                         BEGIN
                                                                             STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB03.Cells[VI_CONTAR,VI_LINHAS03])) ,2]:='V';
                                                                         END; // FOR VI_CONTAR1
                                                                         VI_CNTCELULAS := 1;
                                                                         FOR VI_CONTAR :=1 TO 25 DO
                                                                         BEGIN
                                                                             IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,2]='F') THEN
                                                                             BEGIN
                                                                                 STGR_SOBRAS_10.Cells[VI_CNTCELULAS, 1] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                                                                                 VI_CNTCELULAS := VI_CNTCELULAS + 1;
                                                                             END; // IF (STRGR_TODOS_NUMEROS
                                                                         END; // FOR VI_CONTAR
                                                                      // ----------------------------------------------
                                                                      //STGR_COMB03.Repaint;
                                                                      //VI_LINHAS08 := 1;
                                                                      FOR Vsi_COMb8_1 := 1 TO  3 DO
                                                                      BEGIN
                                                                      FOR Vsi_COMb8_2 := Vsi_COMb8_1+1 TO  4 DO
                                                                      BEGIN
                                                                           FOR Vsi_COMb8_3 := Vsi_COMb8_2+1 TO  5 DO
                                                                           BEGIN
                                                                           FOR Vsi_COMb8_4 := Vsi_COMb8_3+1 TO  6 DO
                                                                           BEGIN
                                                                                FOR Vsi_COMb8_5 := Vsi_COMb8_4+1 TO  7 DO
                                                                                BEGIN
                                                                                FOR Vsi_COMb8_6 := Vsi_COMb8_5+1 TO  9 DO
                                                                                BEGIN
                                                                                     FOR Vsi_COMb8_7 := Vsi_COMb8_6+1 TO  10 DO
                                                                                     BEGIN
                                                                                          FOR Vsi_COMb8_8 := Vsi_COMb8_7+1 TO  10 DO
                                                                                          BEGIN
                                                                                               // PARES
                                                                                               VI_CNTCELULAS := 0;
                                                                                               IF (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_1,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                                                                               IF (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_2,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                                                                               IF (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_3,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                                                                               IF (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_4,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                                                                               IF (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_5,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                                                                               IF (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_6,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                                                                               IF (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_7,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                                                                               IF (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_8,1]) MOD 2) =0 THEN VI_CNTCELULAS := VI_CNTCELULAS +1;
                                                                                               IF  NOT (VI_CNTCELULAS =4) THEN
                                                                                                    CONTINUE;
                                                                                               //---
                                                                                               VI_SOMA08  :=  STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_1,1])
                                                                                                  + STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_2,1])+ STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_3,1])
                                                                                                  + STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_4,1])+ STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_5,1])
                                                                                                  + STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_6,1])+ STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_7,1])
                                                                                                  + STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_8,1]) ;

                                                                                               VI_FLAG08 := 0;
                                                                                               CASE TRB_C2_INI.Position OF
                                                                                               1:
                                                                                                    IF (VI_SOMA08 = 104) THEN
                                                                                                         VI_FLAG08 := 1 ;
                                                                                               2:
                                                                                                    IF (VI_SOMA08 >= 102) AND (VI_SOMA08 <= 106) THEN
                                                                                                              VI_FLAG08 := 1 ;
                                                                                               END; // CASE
                                                                                               IF (VI_FLAG08 = 0) THEN
                                                                                                    CONTINUE;

                                                                                               VI_FLAG_FX08 := 0;
                                                                                               IF  STRtoINT(ED_FIXOS_01_2.Text) > 0 THEN
                                                                                               BEGIN
                                                                                                    IF  (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_1,1]) = STRtoINT(ED_FIXOS_01_2.Text)) OR
                                                                                                        (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_2,1]) = STRtoINT(ED_FIXOS_01_2.Text)) OR
                                                                                                        (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_3,1]) = STRtoINT(ED_FIXOS_01_2.Text)) OR
                                                                                                        (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_4,1]) = STRtoINT(ED_FIXOS_01_2.Text)) OR
                                                                                                        (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_5,1]) = STRtoINT(ED_FIXOS_01_2.Text)) OR
                                                                                                        (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_6,1]) = STRtoINT(ED_FIXOS_01_2.Text)) OR
                                                                                                        (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_7,1]) = STRtoINT(ED_FIXOS_01_2.Text)) OR
                                                                                                        (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_8,1]) = STRtoINT(ED_FIXOS_01_2.Text))
                                                                                                    THEN
                                                                                                    BEGIN
                                                                                                         IF  STRtoINT(ED_FIXOS_02_2.Text) > 0 THEN
                                                                                                         BEGIN
                                                                                                              //
                                                                                                              // OBS: durante o preenchimento, o segundo fixo só pode ser maior que zero seo primeiro também for
                                                                                                              // conferencia ja feita, so chega aqui com preenchimento correto.
                                                                                                              //
                                                                                                              if  (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_1,1]) = STRtoINT(ED_FIXOS_02_2.Text)) OR
                                                                                                                  (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_2,1]) = STRtoINT(ED_FIXOS_02_2.Text)) OR
                                                                                                                  (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_3,1]) = STRtoINT(ED_FIXOS_02_2.Text)) OR
                                                                                                                  (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_4,1]) = STRtoINT(ED_FIXOS_02_2.Text)) OR
                                                                                                                  (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_5,1]) = STRtoINT(ED_FIXOS_02_2.Text)) OR
                                                                                                                  (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_6,1]) = STRtoINT(ED_FIXOS_02_2.Text)) OR
                                                                                                                  (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_7,1]) = STRtoINT(ED_FIXOS_02_2.Text)) OR
                                                                                                                  (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_8,1]) = STRtoINT(ED_FIXOS_02_2.Text))
                                                                                                              THEN
                                                                                                                   VI_FLAG_FX08 := 1;
                                                                                                         END ELSE
                                                                                                        BEGIN
                                                                                                                        VI_FLAG_FX08 := 1;
                                                                                                         END ; // IF  STRtoINT(ED_FIXOS_02_2.Text
                                                                                                    END; // IF
                                                                                               END ELSE
                                                                                               BEGIN
                                                                                                              VI_FLAG_FX08 := 1 ;
                                                                                               END; // IF  STRtoINT(ED_FIXOS_01_2.Text
                                                                                               VI_FLAG_FX08B :=0 ;
                                                                                                    IF  STRtoINT(ED_FIXOS_03_2.Text) > 0 THEN
                                                                                                    BEGIN
                                                                                                       if  (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_1,1]) = STRtoINT(ED_FIXOS_03_2.Text)) OR
                                                                                                             (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_2,1]) = STRtoINT(ED_FIXOS_03_2.Text)) OR
                                                                                                             (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_3,1]) = STRtoINT(ED_FIXOS_03_2.Text)) OR
                                                                                                             (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_4,1]) = STRtoINT(ED_FIXOS_03_2.Text)) OR
                                                                                                             (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_5,1]) = STRtoINT(ED_FIXOS_03_2.Text)) OR
                                                                                                             (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_6,1]) = STRtoINT(ED_FIXOS_03_2.Text)) OR
                                                                                                             (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_7,1]) = STRtoINT(ED_FIXOS_03_2.Text)) OR
                                                                                                             (STRtoINT(STGR_SOBRAS_10.Cells[Vsi_COMb8_8,1]) = STRtoINT(ED_FIXOS_03_2.Text))
                                                                                                         THEN
                                                                                                              VI_FLAG_FX08B := 1;
                                                                                                    END ELSE
                                                                                                    BEGIN
                                                                                                                   VI_FLAG_FX08B := 1;
                                                                                                    END ; // IF  STRtoINT(ED_FIXOS_02_3.Text

                                                                                               IF (VI_FLAG_FX08 = 0) OR (VI_FLAG_FX08B = 0) THEN
                                                                                                    CONTINUE;

                                                                                                              STGR_COMB03.Cells[0,VI_LINHAS03] := INTtoSTR(VI_LINHAS03);
                                                                                                              STGR_COMB03.Cells[1,VI_LINHAS03] := INTtoSTR(VI_SOMA03);
                                                                                                              STGR_COMB03.Cells[2,VI_LINHAS03] := '1';
                                                                                                              STGR_COMB03.Cells[3,VI_LINHAS03] := STGR_SOBRAS_13.Cells[Vsi_COMb3_1,1];
                                                                                                              STGR_COMB03.Cells[4,VI_LINHAS03] := STGR_SOBRAS_13.Cells[Vsi_COMb3_2,1];
                                                                                                              STGR_COMB03.Cells[5,VI_LINHAS03] := STGR_SOBRAS_13.Cells[Vsi_COMb3_3,1];

                                                                                                    //STGR_SOBRAS_10.Repaint;
                                                                                                    STGR_EXC08.Cells[0,0] := INTtoSTR(VI_LINHAS08);
                                                                                                    STGR_EXC08.Cells[0,VI_LINHAS08] := INTtoSTR(VI_LINHAS08);
                                                                                                    STGR_EXC08.Cells[1,VI_LINHAS08] := INTtoSTR(VI_SOMA08);
                                                                                                    STGR_EXC08.Cells[2,VI_LINHAS08] := '1';
                                                                                                    STGR_EXC08.Cells[3,VI_LINHAS08] := STGR_SOBRAS_10.Cells[Vsi_COMb8_1,1];
                                                                                                    STGR_EXC08.Cells[4,VI_LINHAS08] := STGR_SOBRAS_10.Cells[Vsi_COMb8_2,1];
                                                                                                    STGR_EXC08.Cells[5,VI_LINHAS08] := STGR_SOBRAS_10.Cells[Vsi_COMb8_3,1];
                                                                                                    STGR_EXC08.Cells[6,VI_LINHAS08] := STGR_SOBRAS_10.Cells[Vsi_COMb8_4,1];
                                                                                                    STGR_EXC08.Cells[7,VI_LINHAS08] := STGR_SOBRAS_10.Cells[Vsi_COMb8_5,1];
                                                                                                    STGR_EXC08.Cells[8,VI_LINHAS08] := STGR_SOBRAS_10.Cells[Vsi_COMb8_6,1];
                                                                                                    STGR_EXC08.Cells[9,VI_LINHAS08] := STGR_SOBRAS_10.Cells[Vsi_COMb8_7,1];
                                                                                                    STGR_EXC08.Cells[10,VI_LINHAS08] := STGR_SOBRAS_10.Cells[Vsi_COMb8_8,1];

                                                                                                             VS_NUMEROSPRINCIPAIS:= STGR_SOBRAS_10.Cells[Vsi_COMb8_1,1] + '-' +   STGR_SOBRAS_10.Cells[Vsi_COMb8_2,1] + '-' +
                                                                                                                           STGR_SOBRAS_10.Cells[Vsi_COMb8_3,1] + '-' +   STGR_SOBRAS_10.Cells[Vsi_COMb8_4,1] + '-' +
                                                                                                                           STGR_SOBRAS_10.Cells[Vsi_COMb8_5,1] + '-' +   STGR_SOBRAS_10.Cells[Vsi_COMb8_6,1] + '-' +
                                                                                                                           STGR_SOBRAS_10.Cells[Vsi_COMb8_7,1] + '-' +   STGR_SOBRAS_10.Cells[Vsi_COMb8_8,1];
                                                                                                              // pega o primeiro numero que sobrou
                                                                                                              VI_CONTAR :=0;
                                                                                                              FOR VI_CONTASEL1 := 1 TO 10 DO
                                                                                                              BEGIN
                                                                                                                   IF (POS(STGR_SOBRAS_10.Cells[VI_CONTASEL1,1], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                                                                                   BEGIN
                                                                                                                        VI_CONTAR := VI_CONTAR +1;
                                                                                                                        IF (VI_CONTAR=1) THEN
                                                                                                                        begin
                                                                                                                             STGR_EXC02.Cells[3,VI_LINHAS03] := STGR_SOBRAS_10.Cells[VI_CONTASEL1,1];
                                                                                                                             VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                                                                                  STGR_SOBRAS_10.Cells[VI_CONTASEL1,1];
                                                                                                                        end; // if
                                                                                                                   END;
                                                                                                              END; // FOR VI_CONTASEL1
                                                                                                              // pega o segundo numero que sobrou
                                                                                                              VI_CONTAR :=0;
                                                                                                              FOR VI_CONTASEL1 := 1 TO 10 DO
                                                                                                              BEGIN
                                                                                                                   IF (POS(STGR_SOBRAS_10.Cells[VI_CONTASEL1,1], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                                                                                   BEGIN
                                                                                                                        VI_CONTAR := VI_CONTAR +1;
                                                                                                                        IF (VI_CONTAR=1) THEN
                                                                                                                        begin
                                                                                                                             STGR_EXC02.Cells[4,VI_LINHAS03] := STGR_SOBRAS_10.Cells[VI_CONTASEL1,1];
                                                                                                                             VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                                                                                  STGR_SOBRAS_10.Cells[VI_CONTASEL1,1];
                                                                                                                        end; // if
                                                                                                                   END;
                                                                                                              END; // FOR VI_CONTASEL1
                                                                                                              VI_FLAG_FX08 := 0;
                                                                                                                   IF  STRtoINT(ED_FIXOS_01_C4.Text) > 0 THEN
                                                                                                                   BEGIN
                                                                                                                           if  (STRtoINT(STGR_EXC02.Cells[3,VI_LINHAS03]) = STRtoINT(ED_FIXOS_01_C4.Text)) OR
                                                                                                                               (STRtoINT(STGR_EXC02.Cells[4,VI_LINHAS03]) = STRtoINT(ED_FIXOS_01_C4.Text))
                                                                                                                             THEN
                                                                                                                                  VI_FLAG_FX08 := 1;
                                                                                                                   END ELSE
                                                                                                                   BEGIN
                                                                                                                                  VI_FLAG_FX08 := 1;
                                                                                                                   END ; // IF  STRtoINT(ED_FIXOS_02_3.Text
                                                                                                                   IF (VI_FLAG_FX08 = 0)  THEN
                                                                                                                        CONTINUE;

                                                                                                              VI_SOMA02  :=  STRtoINT(STGR_EXC02.Cells[3,VI_LINHAS03])
                                                                                                                 + STRtoINT(STGR_EXC02.Cells[4,VI_LINHAS03]);
                                                                                                              STGR_EXC02.Cells[0,VI_LINHAS08] := INTtoSTR(VI_LINHAS08);
                                                                                                              stGR_EXC02.Cells[1,VI_LINHAS08] := INTtoSTR(VI_SOMA02);

                                                                                                    //VI_LINHAS03 := VI_LINHAS03 + 1;
                                                                                                    IF (VI_SOMA02 >= STRtoINT(ED_SOMAS_C4_INI.Text)) AND (VI_SOMA02 <= STRtoINT(ED_SOMAS_C4_FINAL.Text)) THEN
                                                                                                    BEGIN
                                                                                                         stGR_EXC02.Cells[2,VI_LINHAS08]  := '1';
                                                                                                         STGR_EXC08.Cells[2,VI_LINHAS08]  := '2';
                                                                                                         STGR_COMB03.Cells[2,VI_LINHAS03] := '3';
                                                                                                         STGR_COMB12.Cells[2,VI_LINHAS12] := '4';
                                                                                                         //STGR_COMB12.Repaint;
                                                                                                    VI_LINHAS03 := VI_LINHAS03 + 1;
                                                                                                    STGR_COMB03.RowCount := VI_LINHAS03;
                                                                                                    //STGR_COMB03.Repaint;

                                                                                                    VI_LINHAS08 := VI_LINHAS08 + 1;
                                                                                                    STGR_EXC08.RowCount := VI_LINHAS08;
                                                                                                    //STGR_EXC08.Repaint;
                                                                                                    STGR_EXC02.RowCount := VI_LINHAS08;
                                                                                                    //STGR_EXC02.Repaint;
                                                                                                    SLEEP(STRtoINT(ED_TSLEEP.Text)*1);
                                                                                                    END ;{ELSE
                                                                                                    BEGIN
                                                                                                         stGR_EXC02.Cells[2,VI_LINHAS08]  := '0';
                                                                                                    END;}
                                                                                          END; // FOR Vsi_COMb8_8
                                                                                     END; // FOR Vsi_COMb8_7 :=
                                                                                END; // FOR Vsi_COMb8_6
                                                                                END; // FOR Vsi_COMb8_5 :=
                                                                           END; // FOR Vsi_COMb8_4 :=
                                                                           END; // FOR Vsi_COMb8_3 :=
                                                                           END; // FOR Vsi_COMb8_2 :=
                                                                      END; // FOR Vsi_COMb8_1 :=
                                                                      //STGR_COMB03.Repaint;
                                                                      //STGR_SOBRAS_10.Repaint;
                                                                      SLEEP(STRtoINT(ED_TSLEEP.Text)*1);
                                                                 END; //IF (VI_SOMA03 = STRtoINT(ED_SOMAS_C3_INI.Text))
                                                            END; // FOR Vsi_COMb3_3 :=
                                                       END; // FOR Vsi_COMB3_2 :=
                                                  END; // FOR Vsi_COMb3_1 :=
                                                   //SLEEP(STRtoINT(ED_TSLEEP.Text)*1);
                                                  PR_GRAVAR_DADOS_v0 ('',Vsi_COMb12_1, 15);
                                             END; // IF (VI_FLAG12 = 1)
                                        END; // FOR Vsi_COMb12_B :=
                                        END; // FOR Vsi_COMb12_A :=
                                   END; // FOR Vsi_COMb12_0 :=
                                   END; // FOR Vsi_COMb12_9 :=
                                   END; // FOR Vsi_COMb12_8 :=
                                   END; // FOR Vsi_COMb12_7 :=
                                   STGR_COMB03.FixedRows := 1;
                                   STGR_COMB03.Repaint;
                                   STGR_COMB12.Repaint;
                              END; // FOR Vsi_COMb12_6 :=
                         END; // FOR Vsi_COMb12_5 :=
                    END; // FOR Vsi_COMb12_4 :=
                    IF (Vsi_COMb12_3 <= 10) AND ((Vsi_COMb12_3 MOD 2) = 0) THEN
                    BEGIN
                         PGBR_GERARCOMB.Position := CEIL((Vsi_COMb12_2)*6.25);
                         PGBR_GERARCOMB.Repaint;
                         STGR_COMB12.Repaint;
                         Self.WindowState := wsMinimized;
                         Self.WindowState :=  wsNormal;
                         SELF.Repaint;
                    END;
               END; // FOR Vsi_COMb12_3 :=
               IF (Vsi_COMb12_2 >= 9) AND ((Vsi_COMb12_2 <= 14)) THEN
               BEGIN
                    PGBR_GERARCOMB.Position := CEIL((Vsi_COMb12_2)*6.25);
                    PGBR_GERARCOMB.Repaint;
                    PGBR_GERARCOMB0.Position := CEIL((Vsi_COMb12_1)*6.666);
                    PGBR_GERARCOMB0.Repaint;
                    STGR_COMB12.Repaint;
                    Self.WindowState := wsMinimized;
                    Self.WindowState :=  wsNormal;
                    SELF.Repaint;
               END;
          END; // FOR Vsi_COMb12_2 :=
          IF ((Vsi_COMb12_1 MOD 2) = 1) THEN
          BEGIN
               PGBR_GERARCOMB.Position := CEIL((Vsi_COMb12_2)*6.25);
               PGBR_GERARCOMB.Repaint;
               PGBR_GERARCOMB0.Position := CEIL((Vsi_COMb12_1)*6.666);
               PGBR_GERARCOMB0.Repaint;
               try
                    STGR_COMB12.FixedRows := 1;
               except
                    //
               end;
               STGR_COMB12.Repaint;
               Self.WindowState := wsMinimized;
               Self.WindowState :=  wsNormal;
               SELF.Repaint;
          END;
     END; // FOR Vsi_COMb12_1 :=
     PR_GRAVAR_DADOS_v0 ('FIM', 15, 15);
     STGR_COMB12.RowCount := 2;
     STGR_COMB12.Repaint;
     PGBR_GERARCOMB0.Position :=0 ;
     PGBR_GERARCOMB0.Repaint;
     PGBR_GERARCOMB0.Position :=100 ;
     PGBR_GERARCOMB0.Repaint;

     LA_gFIM_GERAR.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
     SELF.PR_SIMULAR_RECUPERANDODADOS();
                   SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(DISTINCT(DADOS_15)) AS SOMADADOS15 FROM Filtro_12p3_m1_dados ORDER BY SOMADADOS15;')  ;
               SELF.IBQ_COMBINACOES.Open;
               IBQ_COMBINACOES.First;
               VI_CONTAR_COMB1 := IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS15').AsInteger;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_12P3_M1_DEFINICAO SET HORA_TERMINO ='''+FORMATDATETIME('h:n:s',time())+''', QTD_DADOS= ''' +INTtoSTR(VI_CONTAR_COMB1)+ ''';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
     VDB_CALCULO_TOTAL := 5200300; // 25! / (13! * 12!) DE 25 tiram-se 12 sobram 13
     VDB_CALCULO_TOTAL := VDB_CALCULO_TOTAL +  21772800; // 13! / (3! * 10!)       De 13 tiram-se 3 sobram 10
     VDB_CALCULO_TOTAL := VDB_CALCULO_TOTAL +  80640; // 10! / (8! * 2!)
     LA_rTOTAL_COMB.Caption := FLOATtoSTR(VDB_CALCULO_TOTAL);

    // LA_rTOTAL_COMB.Caption:= INTtoSTR();           CEIL
     LA_rTOT_CALC.Caption  := INTtoSTR( STRtoINT(LA_rTOTAL_COMB.Caption)*2 );
     LA_rLogic_Comp.Caption:= INTtoSTR( STRtoINT(LA_rTOTAL_COMB.Caption)*11 );
     LA_rATRIBUICAO_DADOS.Caption  := INTtoSTR( ((STGR_COMB12.RowCount-1)*12) + ((STGR_COMB12.RowCount-1)*8) + ((STGR_COMB12.RowCount-1)*3) + ((STGR_COMB12.RowCount-1)*2));
     LA_rTOT_PROCESSAMENTO.Caption := INTtoSTR( STRtoINT(LA_rATRIBUICAO_DADOS.Caption)+ STRtoINT(LA_rLogic_Comp.Caption)+ STRtoINT(LA_rTOT_CALC.Caption) );

     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;

            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_12P3_M1_DEFINICAO SET QTD_DADOS = 25 ;')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_12P3_M1_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;

     PA_REMOVEUREPET.Left := 1100;
end;




PROCEDURE T_F_GERADOR_12p3_M1.PR_SIMULAR_RECUPERANDODADOS();
VAR
     VI_AN_COMB1, VI_CONTAR : INTEGER;
BEGIN
            STGR_COMB03.RowCount := 2;
            STGR_COMB12.RowCount := 2;
            STGR_EXC08.RowCount := 2;
            STGR_EXC02.RowCount := 2;            
//       SELF.PR_LIMPAR_GRID10();
       SELF.IBQ_COMBINACOES.Close;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(DISTINCT(DADOS_15)) AS SOMADADOS15 FROM Filtro_12p3_m1_dados ORDER BY SOMADADOS15;')  ;
       SELF.IBQ_COMBINACOES.Open;
       VI_CONTAR := SELF.IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS15').AsInteger;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT DISTINCT(DADOS_15), DADOS_12, N01, N02, N03, N04, N05, N06, N07, N08, N09, N10, N11, N12, N13, N14, N15, NS01, NS02, NS03, NS04, NS05, NS06, NS07, NS08, NS09, NS10 FROM Filtro_12p3_m1_dados  ORDER BY DADOS_15')  ;
       SELF.IBQ_COMBINACOES.Open;
       // ********************
       // **   ENCERRANDO   **
       // ********************
           Self.Repaint;
           Self.WindowState := wsMinimized;
           Self.WindowState :=  wsNormal;
           Self.Repaint;
       SELF.IBQ_COMBINACOES.First;

       FOR VI_AN_COMB1:= 1 TO  VI_CONTAR DO
       BEGIN
           STGR_COMB03.Cells [0, VI_AN_COMB1] := INTtoSTR(VI_AN_COMB1);
           STGR_COMB03.Cells [1, VI_AN_COMB1] := '';
           STGR_COMB03.Cells [2, VI_AN_COMB1] := '';
           STGR_COMB03.Cells [3, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('N13').AsString;
           STGR_COMB03.Cells [4, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('N14').AsString;
           STGR_COMB03.Cells [5, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('N15').AsString;


           STGR_EXC08.Cells [0, VI_AN_COMB1] := INTtoSTR(VI_AN_COMB1);
           STGR_EXC08.Cells [1, VI_AN_COMB1] :=  '' ;
           STGR_EXC08.Cells [2, VI_AN_COMB1] :=  '' ;
           STGR_EXC08.Cells [3, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS01').AsString;
           STGR_EXC08.Cells [4, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS02').AsString;
           STGR_EXC08.Cells [5, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS03').AsString;
           STGR_EXC08.Cells [6, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS04').AsString;
           STGR_EXC08.Cells [7, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS05').AsString;
           STGR_EXC08.Cells [8, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS06').AsString;
           STGR_EXC08.Cells [9, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS07').AsString;
           STGR_EXC08.Cells [10, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS08').AsString;
           STGR_EXC02.Cells [0, VI_AN_COMB1] := INTtoSTR(VI_AN_COMB1);
           STGR_EXC02.Cells [1, VI_AN_COMB1] := '';
           STGR_EXC02.Cells [2, VI_AN_COMB1] := '';
           STGR_EXC02.Cells [3, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS09').AsString;
           STGR_EXC02.Cells [4, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS10').AsString;


                STGR_COMB12.Cells [0, VI_AN_COMB1] := INTtoSTR(VI_AN_COMB1);
                STGR_COMB12.Cells [1, VI_AN_COMB1] := '';
                STGR_COMB12.Cells [2, VI_AN_COMB1] := '';
                STGR_COMB12.Cells [3, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_12').AsString,1,2);
                STGR_COMB12.Cells [4, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_12').AsString,4,2);
                STGR_COMB12.Cells [5, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_12').AsString,7,2);
                STGR_COMB12.Cells [6, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_12').AsString,10,2);
                STGR_COMB12.Cells [7, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_12').AsString,13,2);
                STGR_COMB12.Cells [8, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_12').AsString,16,2);
                STGR_COMB12.Cells [9, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_12').AsString,19,2);
                STGR_COMB12.Cells [10, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_12').AsString,22,2);
                STGR_COMB12.Cells [11, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_12').AsString,25,2);
                STGR_COMB12.Cells [12, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_12').AsString,28,2);
                STGR_COMB12.Cells [13, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_12').AsString,31,2);
                STGR_COMB12.Cells [14, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_12').AsString,34,2);

           STGR_COMB12.RowCount := VI_AN_COMB1;
           STGR_COMB03.RowCount := VI_AN_COMB1;
           STGR_EXC08.RowCount := VI_AN_COMB1;
           STGR_EXC02.RowCount := VI_AN_COMB1;
           SELF.IBQ_COMBINACOES.Next;
       END; // FOR VI_AN_COMB1     }
           STGR_COMB12.RowCount := VI_AN_COMB1;
           STGR_COMB03.RowCount := VI_AN_COMB1;
           STGR_EXC08.RowCount := VI_AN_COMB1;
           STGR_EXC02.RowCount := VI_AN_COMB1;
           STGR_COMB12.FixedRows := 1;
           STGR_COMB03.FixedRows := 1;
           STGR_EXC08.FixedRows := 1;
           STGR_EXC02.FixedRows := 1;
       LA_TOTAL_100REPET.Caption := INTtoSTR(VI_AN_COMB1-1);
       LA_TOTAL_100REPET.Repaint;
       LA_rTOTAL_100REPET.Caption := INTtoSTR(VI_AN_COMB1-1);
       LA_TOTAL_100REPET.Repaint;       

       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(DADOS_15) AS SOMADADOS15 FROM Filtro_12p3_m1_dados ORDER BY SOMADADOS15;')  ;
       SELF.IBQ_COMBINACOES.Open;
       VI_CONTAR := SELF.IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS15').AsInteger;
       LA_rQTD_COMB.Caption := INTtoSTR(VI_CONTAR);
       LA_rQTD_COMB.Repaint;

           Self.Repaint;
           Self.WindowState := wsMinimized;
           Self.WindowState :=  wsNormal;
           Self.Repaint;
     SHOWMESSAGE('DADOS CARREGADOS');
END;


procedure T_F_GERADOR_12p3_M1.BBT_PA_REMOVEUREPETClick(Sender: TObject);
begin
     PA_REMOVEUREPET.Left := 5000;
     BBT_RECOMECAR.Enabled := false;
     BBT_GERAR_MENU.Enabled := false;
     PA_INICIAL.Enabled := TRUE;
     BT_NOVA_SIMULACAO.Enabled := false;
     BT_REAJUSTAR.Enabled := TRUE;
     BBT_CARREGAR.Enabled := false;
     PA_INICIAL.Left := 520;
end;


procedure T_F_GERADOR_12p3_M1.BBT_BLOCO_NOTASClick(Sender: TObject);
var
    VI_AN_COMB1, VI_CONTAR : INTEGER;
    VC_COMBINACOES, VC_COMBINACOES2 : string;
begin
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
    MEM_COMBINACOES_TODAS.Lines.SaveToFile('C:\CXLOTOFACIL\EXCLUIDOS_8_1_MOD1.TXT');
    winExec('Notepad.exe C:\CXLOTOFACIL\EXCLUIDOS_8_1_MOD1.TXT', sw_shownormal);   // Nesse caso, abre um arquivo txt
   showmessage('BLOCO DE NOTAS GERADO');
end;





end.

