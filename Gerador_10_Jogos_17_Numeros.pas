unit Gerador_10_Jogos_17_Numeros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, DB, strutils,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase;

type
  T_F_GERADOR_10d17 = class(TForm)
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
    Label53: TLabel;
    BBT_CLOSE: TImage;
    BBT_RECOMECAR: TBitBtn;
    PA_RESULTADO: TPanel;
    STGR_COMB12: TStringGrid;
    STRGR_TODOS_NUMEROS: TStringGrid;
    PA_EXECUTAR_FILTRO: TPanel;
    BBT_PREPARAR_MENU: TBitBtn;
    BBT_GERAR_MENU: TBitBtn;
    PANEL_TITULO_SIMULACAO: TPanel;
    LA_TOTAL_100REPET: TLabel;
    Label87: TLabel;
    LA_GERAR_COMB: TLabel;
    LA_TOTAL_COMB: TLabel;
    PGBR_REMREPET: TProgressBar;
    PGBR_GERARCOMB0: TProgressBar;
    STGR_COMB05: TStringGrid;
    STGR_SOBRAS08: TStringGrid;
    SCBX_GABARITO: TScrollBox;
    Label3: TLabel;
    LA_BASE_08_100REP: TLabel;
    Label7: TLabel;
    LA_BASE_17_100REP: TLabel;
    STGR_BASE_08: TStringGrid;
    STGR_BASE_17: TStringGrid;
    PA_GERAR: TPanel;
    Panel2: TPanel;
    Label63: TLabel;
    BBT_GERAR: TBitBtn;
    BBT_GERAR_SAIR: TBitBtn;
    CB_MODO_FILTRO: TComboBox;
    PA_PREPARAR: TPanel;
    Label40: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    BBT_PREPARAR1: TBitBtn;
    BitBtn2: TBitBtn;
    CB_NUMEROS_OBRIGATORIOS: TComboBox;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBQ_COMBINACOES: TIBQuery;
    Label1: TLabel;
    BBT_CANCELAR_SAIR: TBitBtn;
    procedure BBT_PREPARAR1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BBT_CLOSEClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBT_PREPARAR_MENUClick(Sender: TObject);
    procedure BT_NOVA_SIMULACAOClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BBT_SAIRClick(Sender: TObject);
    procedure BBT_CANCELARClick(Sender: TObject);
    procedure BBT_GERARClick(Sender: TObject);
    procedure BBT_GERAR_MENUClick(Sender: TObject);
    procedure BBT_PA_REMOVEUREPETClick(Sender: TObject);
    procedure BT_REAJUSTARClick(Sender: TObject);
    procedure BBT_CARREGARClick(Sender: TObject);
    procedure BBT_GERAR_SAIRClick(Sender: TObject);
  private
    { Private declarations }
     PROCEDURE PR_SIMULAR_RECUPERANDODADOS(VC_TIPO: STRING);
  public
    { Public declarations }
  end;

var
  _F_GERADOR_10d17: T_F_GERADOR_10d17;

implementation

{$R *.dfm}



procedure T_F_GERADOR_10d17.FormCreate(Sender: TObject);
begin
     SELF.ClientWidth  := 1450;
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
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_10D17_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
end;


procedure T_F_GERADOR_10d17.FormClose(Sender: TObject;
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


procedure T_F_GERADOR_10d17.BBT_CLOSEClick(Sender: TObject);
begin
     SELF.Close;
end;




procedure T_F_GERADOR_10d17.BT_NOVA_SIMULACAOClick(Sender: TObject);
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


procedure T_F_GERADOR_10d17.BBT_SAIRClick(Sender: TObject);
begin
     SELF.Close;
end;



procedure T_F_GERADOR_10d17.BBT_CANCELARClick(Sender: TObject);
begin
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_10D17_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT;')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
          SELF.Close;
end;



procedure T_F_GERADOR_10d17.BBT_PREPARAR_MENUClick(Sender: TObject);
begin
     PA_PREPARAR.Visible := TRUE;
     PA_PREPARAR.Enabled := TRUE;
     PA_PREPARAR.Top  := 245;
     PA_PREPARAR.Left := 460;
     PA_PREPARAR.Repaint;
end;



procedure T_F_GERADOR_10d17.BitBtn2Click(Sender: TObject);
begin
     PA_PREPARAR.Visible := false;
     PA_PREPARAR.Enabled := false;
     PA_PREPARAR.Left := 4500;
     PA_PREPARAR.Repaint;
end;


procedure T_F_GERADOR_10d17.BBT_PREPARAR1Click(Sender: TObject);
VAR
     vi_contar1 : integer;
begin
     FOR vi_contar1 := 2 TO 18 DO
     BEGIN
          STGR_BASE_17.Cells[vi_contar1,0] := INTtoSTR(vi_contar1-1);
     END;
     FOR vi_contar1 := 2 TO 9 DO
     BEGIN
          STGR_BASE_08.Cells[vi_contar1,0] := INTtoSTR(vi_contar1-1);
     END;
     //01
          STGR_BASE_17.Cells[0,1] := '01';
          STGR_BASE_17.Cells[01,1] := 'V';
     STGR_BASE_17.Cells[02,1] := '01';
     STGR_BASE_17.Cells[03,1] := '02';
     STGR_BASE_17.Cells[04,1] := '03';
     STGR_BASE_17.Cells[05,1] := '04';
     STGR_BASE_17.Cells[06,1] := '06';
     STGR_BASE_17.Cells[07,1] := '09';
     STGR_BASE_17.Cells[08,1] := '11';
     STGR_BASE_17.Cells[09,1] := '12';
     STGR_BASE_17.Cells[10,1] := '13';
     STGR_BASE_17.Cells[11,1] := '14';
     STGR_BASE_17.Cells[12,1] := '15';
     STGR_BASE_17.Cells[13,1] := '19';
     STGR_BASE_17.Cells[14,1] := '20';
     STGR_BASE_17.Cells[15,1] := '21';
     STGR_BASE_17.Cells[16,1] := '22';
     STGR_BASE_17.Cells[17,1] := '24';
     STGR_BASE_17.Cells[18,1] := '25';
          STGR_BASE_08.Cells[0,1]:= '01';
          STGR_BASE_08.Cells[01,1]:= 'V';
     STGR_BASE_08.Cells[02,1] := '05';
     STGR_BASE_08.Cells[03,1] := '07';
     STGR_BASE_08.Cells[04,1] := '08';
     STGR_BASE_08.Cells[05,1] := '10';
     STGR_BASE_08.Cells[06,1] := '16';
     STGR_BASE_08.Cells[07,1] := '17';
     STGR_BASE_08.Cells[08,1] := '18';
     STGR_BASE_08.Cells[09,1] := '23';
     //02
          STGR_BASE_17.Cells[00,2] := '02';
          STGR_BASE_17.Cells[01,2] := 'V';
     STGR_BASE_17.Cells[02,2] := '02';
     STGR_BASE_17.Cells[03,2] := '03';
     STGR_BASE_17.Cells[04,2] := '04';
     STGR_BASE_17.Cells[05,2] := '05';
     STGR_BASE_17.Cells[06,2] := '06';
     STGR_BASE_17.Cells[07,2] := '07';
     STGR_BASE_17.Cells[08,2] := '09';
     STGR_BASE_17.Cells[09,2] := '12';
     STGR_BASE_17.Cells[10,2] := '13';
     STGR_BASE_17.Cells[11,2] := '14';
     STGR_BASE_17.Cells[12,2] := '15';
     STGR_BASE_17.Cells[13,2] := '19';
     STGR_BASE_17.Cells[14,2] := '20';
     STGR_BASE_17.Cells[15,2] := '21';
     STGR_BASE_17.Cells[16,2] := '22';
     STGR_BASE_17.Cells[17,2] := '24';
     STGR_BASE_17.Cells[18,2] := '25';
         STGR_BASE_08.Cells[00,2] := '02';
          STGR_BASE_08.Cells[01,2] := 'V';
     STGR_BASE_08.Cells[02,2] := '01';
     STGR_BASE_08.Cells[03,2] := '08';
     STGR_BASE_08.Cells[04,2] := '10';
     STGR_BASE_08.Cells[05,2] := '11';
     STGR_BASE_08.Cells[06,2] := '16';
     STGR_BASE_08.Cells[07,2] := '17';
     STGR_BASE_08.Cells[08,2] := '18';
     STGR_BASE_08.Cells[09,2] := '23';
     //03
          STGR_BASE_17.Cells[00,3] := '03';
          STGR_BASE_17.Cells[01,3] := 'V';
     STGR_BASE_17.Cells[02,3] := '01';
     STGR_BASE_17.Cells[03,3] := '02';
     STGR_BASE_17.Cells[04,3] := '03';
     STGR_BASE_17.Cells[05,3] := '04';
     STGR_BASE_17.Cells[06,3] := '06';
     STGR_BASE_17.Cells[07,3] := '10';
     STGR_BASE_17.Cells[08,3] := '11';
     STGR_BASE_17.Cells[09,3] := '13';
     STGR_BASE_17.Cells[10,3] := '14';
     STGR_BASE_17.Cells[11,3] := '15';
     STGR_BASE_17.Cells[12,3] := '16';
     STGR_BASE_17.Cells[13,3] := '17';
     STGR_BASE_17.Cells[14,3] := '18';
     STGR_BASE_17.Cells[15,3] := '20';
     STGR_BASE_17.Cells[16,3] := '22';
     STGR_BASE_17.Cells[17,3] := '24';
     STGR_BASE_17.Cells[18,3] := '25';
          STGR_BASE_08.Cells[00,3] := '03';
          STGR_BASE_08.Cells[01,3] := 'V';
     STGR_BASE_08.Cells[02,3] := '05';
     STGR_BASE_08.Cells[03,3] := '07';
     STGR_BASE_08.Cells[04,3] := '08';
     STGR_BASE_08.Cells[05,3] := '09';
     STGR_BASE_08.Cells[06,3] := '12';
     STGR_BASE_08.Cells[07,3] := '19';
     STGR_BASE_08.Cells[08,3] := '21';
     STGR_BASE_08.Cells[09,3] := '23';
     //04
          STGR_BASE_17.Cells[00,4] := '04';
          STGR_BASE_17.Cells[01,4] := 'V';
     STGR_BASE_17.Cells[02,4] := '01';
     STGR_BASE_17.Cells[03,4] := '02';
     STGR_BASE_17.Cells[04,4] := '03';
     STGR_BASE_17.Cells[05,4] := '04';
     STGR_BASE_17.Cells[06,4] := '08';
     STGR_BASE_17.Cells[07,4] := '09';
     STGR_BASE_17.Cells[08,4] := '11';
     STGR_BASE_17.Cells[09,4] := '12';
     STGR_BASE_17.Cells[10,4] := '13';
     STGR_BASE_17.Cells[11,4] := '14';
     STGR_BASE_17.Cells[12,4] := '15';
     STGR_BASE_17.Cells[13,4] := '17';
     STGR_BASE_17.Cells[14,4] := '18';
     STGR_BASE_17.Cells[15,4] := '22';
     STGR_BASE_17.Cells[16,4] := '23';
     STGR_BASE_17.Cells[17,4] := '24';
     STGR_BASE_17.Cells[18,4] := '25';
          STGR_BASE_08.Cells[00,4] := '04';
          STGR_BASE_08.Cells[01,4] := 'V';
     STGR_BASE_08.Cells[02,4] := '05';
     STGR_BASE_08.Cells[03,4] := '06';
     STGR_BASE_08.Cells[04,4] := '07';
     STGR_BASE_08.Cells[05,4] := '10';
     STGR_BASE_08.Cells[06,4] := '16';
     STGR_BASE_08.Cells[07,4] := '19';
     STGR_BASE_08.Cells[08,4] := '20';
     STGR_BASE_08.Cells[09,4] := '21';
     //05
          STGR_BASE_17.Cells[00,5] := '05';
          STGR_BASE_17.Cells[01,5] := 'V';
     STGR_BASE_17.Cells[02,5] := '02';
     STGR_BASE_17.Cells[03,5] := '03';
     STGR_BASE_17.Cells[04,5] := '04';
     STGR_BASE_17.Cells[05,5] := '05';
     STGR_BASE_17.Cells[06,5] := '06';
     STGR_BASE_17.Cells[07,5] := '07';
     STGR_BASE_17.Cells[08,5] := '11';
     STGR_BASE_17.Cells[09,5] := '12';
     STGR_BASE_17.Cells[10,5] := '13';
     STGR_BASE_17.Cells[11,5] := '14';
     STGR_BASE_17.Cells[12,5] := '15';
     STGR_BASE_17.Cells[13,5] := '19';
     STGR_BASE_17.Cells[14,5] := '20';
     STGR_BASE_17.Cells[15,5] := '21';
     STGR_BASE_17.Cells[16,5] := '22';
     STGR_BASE_17.Cells[17,5] := '23';
     STGR_BASE_17.Cells[18,5] := '24';
          STGR_BASE_08.Cells[00,5] := '05';
          STGR_BASE_08.Cells[01,5] := 'V';
     STGR_BASE_08.Cells[02,5] := '01';
     STGR_BASE_08.Cells[03,5] := '08';
     STGR_BASE_08.Cells[04,5] := '09';
     STGR_BASE_08.Cells[05,5] := '10';
     STGR_BASE_08.Cells[06,5] := '16';
     STGR_BASE_08.Cells[07,5] := '17';
     STGR_BASE_08.Cells[08,5] := '18';
     STGR_BASE_08.Cells[09,5] := '25';
     //06
          STGR_BASE_17.Cells[00,6] := '06';
          STGR_BASE_17.Cells[01,6] := 'V';
     STGR_BASE_17.Cells[02,6] := '01';
     STGR_BASE_17.Cells[03,6] := '03';
     STGR_BASE_17.Cells[04,6] := '04';
     STGR_BASE_17.Cells[05,6] := '05';
     STGR_BASE_17.Cells[06,6] := '09';
     STGR_BASE_17.Cells[07,6] := '10';
     STGR_BASE_17.Cells[08,6] := '11';
     STGR_BASE_17.Cells[09,6] := '12';
     STGR_BASE_17.Cells[10,6] := '13';
     STGR_BASE_17.Cells[11,6] := '14';
     STGR_BASE_17.Cells[12,6] := '15';
     STGR_BASE_17.Cells[13,6] := '16';
     STGR_BASE_17.Cells[14,6] := '17';
     STGR_BASE_17.Cells[15,6] := '20';
     STGR_BASE_17.Cells[16,6] := '22';
     STGR_BASE_17.Cells[17,6] := '24';
     STGR_BASE_17.Cells[18,6] := '25';
          STGR_BASE_08.Cells[00,6] := '06';
          STGR_BASE_08.Cells[01,6] := 'V';
     STGR_BASE_08.Cells[02,6] := '02';
     STGR_BASE_08.Cells[03,6] := '06';
     STGR_BASE_08.Cells[04,6] := '07';
     STGR_BASE_08.Cells[05,6] := '08';
     STGR_BASE_08.Cells[06,6] := '18';
     STGR_BASE_08.Cells[07,6] := '19';
     STGR_BASE_08.Cells[08,6] := '21';
     STGR_BASE_08.Cells[09,6] := '23';
     //07
          STGR_BASE_17.Cells[00,7] := '07';
          STGR_BASE_17.Cells[01,7] := 'V';
     STGR_BASE_17.Cells[02,7] := '01';
     STGR_BASE_17.Cells[03,7] := '02';
     STGR_BASE_17.Cells[04,7] := '03';
     STGR_BASE_17.Cells[05,7] := '04';
     STGR_BASE_17.Cells[06,7] := '05';
     STGR_BASE_17.Cells[07,7] := '07';
     STGR_BASE_17.Cells[08,7] := '08';
     STGR_BASE_17.Cells[09,7] := '11';
     STGR_BASE_17.Cells[10,7] := '13';
     STGR_BASE_17.Cells[11,7] := '14';
     STGR_BASE_17.Cells[12,7] := '18';
     STGR_BASE_17.Cells[13,7] := '20';
     STGR_BASE_17.Cells[14,7] := '21';
     STGR_BASE_17.Cells[15,7] := '22';
     STGR_BASE_17.Cells[16,7] := '23';
     STGR_BASE_17.Cells[17,7] := '24';
     STGR_BASE_17.Cells[18,7] := '25';
          STGR_BASE_08.Cells[00,7] := '07';
          STGR_BASE_08.Cells[01,7] := 'V';
     STGR_BASE_08.Cells[02,7] := '06';
     STGR_BASE_08.Cells[03,7] := '09';
     STGR_BASE_08.Cells[04,7] := '10';
     STGR_BASE_08.Cells[05,7] := '12';
     STGR_BASE_08.Cells[06,7] := '15';
     STGR_BASE_08.Cells[07,7] := '16';
     STGR_BASE_08.Cells[08,7] := '17';
     STGR_BASE_08.Cells[09,7] := '19';
     //08
          STGR_BASE_17.Cells[00,8] := '08';
          STGR_BASE_17.Cells[01,8] := 'V';
     STGR_BASE_17.Cells[02,8] := '01';
     STGR_BASE_17.Cells[03,8] := '02';
     STGR_BASE_17.Cells[04,8] := '03';
     STGR_BASE_17.Cells[05,8] := '04';
     STGR_BASE_17.Cells[06,8] := '05';
     STGR_BASE_17.Cells[07,8] := '06';
     STGR_BASE_17.Cells[08,8] := '08';
     STGR_BASE_17.Cells[09,8] := '12';
     STGR_BASE_17.Cells[10,8] := '13';
     STGR_BASE_17.Cells[11,8] := '15';
     STGR_BASE_17.Cells[12,8] := '17';
     STGR_BASE_17.Cells[13,8] := '20';
     STGR_BASE_17.Cells[14,8] := '21';
     STGR_BASE_17.Cells[15,8] := '22';
     STGR_BASE_17.Cells[16,8] := '23';
     STGR_BASE_17.Cells[17,8] := '24';
     STGR_BASE_17.Cells[18,8] := '25';
          STGR_BASE_08.Cells[00,8] := '08';
          STGR_BASE_08.Cells[01,8] := 'V';
     STGR_BASE_08.Cells[02,8] := '07';
     STGR_BASE_08.Cells[03,8] := '09';
     STGR_BASE_08.Cells[04,8] := '10';
     STGR_BASE_08.Cells[05,8] := '11';
     STGR_BASE_08.Cells[06,8] := '14';
     STGR_BASE_08.Cells[07,8] := '16';
     STGR_BASE_08.Cells[08,8] := '18';
     STGR_BASE_08.Cells[09,8] := '19';
     //09
          STGR_BASE_17.Cells[00,9] := '09';
          STGR_BASE_17.Cells[01,9] := 'V';
     STGR_BASE_17.Cells[02,9] := '01';
     STGR_BASE_17.Cells[03,9] := '02';
     STGR_BASE_17.Cells[04,9] := '03';
     STGR_BASE_17.Cells[05,9] := '04';
     STGR_BASE_17.Cells[06,9] := '07';
     STGR_BASE_17.Cells[07,9] := '08';
     STGR_BASE_17.Cells[08,9] := '11';
     STGR_BASE_17.Cells[09,9] := '12';
     STGR_BASE_17.Cells[10,9] := '13';
     STGR_BASE_17.Cells[11,9] := '14';
     STGR_BASE_17.Cells[12,9] := '17';
     STGR_BASE_17.Cells[13,9] := '18';
     STGR_BASE_17.Cells[14,9] := '19';
     STGR_BASE_17.Cells[15,9] := '21';
     STGR_BASE_17.Cells[16,9] := '22';
     STGR_BASE_17.Cells[17,9] := '24';
     STGR_BASE_17.Cells[18,9] := '25';
          STGR_BASE_08.Cells[00,9] := '09';
          STGR_BASE_08.Cells[01,9] := 'V';
     STGR_BASE_08.Cells[02,9] := '05';
     STGR_BASE_08.Cells[03,9] := '06';
     STGR_BASE_08.Cells[04,9] := '09';
     STGR_BASE_08.Cells[05,9] := '10';
     STGR_BASE_08.Cells[06,9] := '15';
     STGR_BASE_08.Cells[07,9] := '16';
     STGR_BASE_08.Cells[08,9] := '20';
     STGR_BASE_08.Cells[09,9] := '23';
     //10
          STGR_BASE_17.Cells[00,10] := '10';
          STGR_BASE_17.Cells[01,10] := 'V';
     STGR_BASE_17.Cells[02,10] := '01';
     STGR_BASE_17.Cells[03,10] := '02';
     STGR_BASE_17.Cells[04,10] := '04';
     STGR_BASE_17.Cells[05,10] := '05';
     STGR_BASE_17.Cells[06,10] := '06';
     STGR_BASE_17.Cells[07,10] := '07';
     STGR_BASE_17.Cells[08,10] := '11';
     STGR_BASE_17.Cells[09,10] := '12';
     STGR_BASE_17.Cells[10,10] := '13';
     STGR_BASE_17.Cells[11,10] := '14';
     STGR_BASE_17.Cells[12,10] := '15';
     STGR_BASE_17.Cells[13,10] := '17';
     STGR_BASE_17.Cells[14,10] := '20';
     STGR_BASE_17.Cells[15,10] := '22';
     STGR_BASE_17.Cells[16,10] := '23';
     STGR_BASE_17.Cells[17,10] := '24';
     STGR_BASE_17.Cells[18,10] := '25';
          STGR_BASE_08.Cells[00,10] := '10';
          STGR_BASE_08.Cells[01,10] := 'V';
     STGR_BASE_08.Cells[02,10] := '03';
     STGR_BASE_08.Cells[03,10] := '08';
     STGR_BASE_08.Cells[04,10] := '09';
     STGR_BASE_08.Cells[05,10] := '10';
     STGR_BASE_08.Cells[06,10] := '16';
     STGR_BASE_08.Cells[07,10] := '18';
     STGR_BASE_08.Cells[08,10] := '19';
     STGR_BASE_08.Cells[09,10] := '21';

     STGR_BASE_17.RowCount := 11;
     STGR_BASE_08.RowCount := 11;

     if (CB_NUMEROS_OBRIGATORIOS.ItemIndex >=1) THEN
     BEGIN
          //11
               STGR_BASE_17.Cells[00,11] := '11';
               STGR_BASE_17.Cells[01,11] := 'V';
          STGR_BASE_17.Cells[02,11] := '01';
          STGR_BASE_17.Cells[03,11] := '02';
          STGR_BASE_17.Cells[04,11] := '03';
          STGR_BASE_17.Cells[05,11] := '06';
          STGR_BASE_17.Cells[06,11] := '07';
          STGR_BASE_17.Cells[07,11] := '09';
          STGR_BASE_17.Cells[08,11] := '10';
          STGR_BASE_17.Cells[09,11] := '12';
          STGR_BASE_17.Cells[10,11] := '13';
          STGR_BASE_17.Cells[11,11] := '14';
          STGR_BASE_17.Cells[12,11] := '15';
          STGR_BASE_17.Cells[13,11] := '16';
          STGR_BASE_17.Cells[14,11] := '20';
          STGR_BASE_17.Cells[15,11] := '21';
          STGR_BASE_17.Cells[16,11] := '23';
          STGR_BASE_17.Cells[17,11] := '24';
          STGR_BASE_17.Cells[18,11] := '25';
               STGR_BASE_08.Cells[00,11] := '11';
               STGR_BASE_08.Cells[01,11] := 'V';
          STGR_BASE_08.Cells[02,11] := '04';
          STGR_BASE_08.Cells[03,11] := '05';
          STGR_BASE_08.Cells[04,11] := '08';
          STGR_BASE_08.Cells[05,11] := '11';
          STGR_BASE_08.Cells[06,11] := '17';
          STGR_BASE_08.Cells[07,11] := '18';
          STGR_BASE_08.Cells[08,11] := '19';
          STGR_BASE_08.Cells[09,11] := '22';
          //12
               STGR_BASE_17.Cells[00,12] := '12';
               STGR_BASE_17.Cells[01,12] := 'V';
          STGR_BASE_17.Cells[02,12] := '01';
          STGR_BASE_17.Cells[03,12] := '02';
          STGR_BASE_17.Cells[04,12] := '03';
          STGR_BASE_17.Cells[05,12] := '05';
          STGR_BASE_17.Cells[06,12] := '06';
          STGR_BASE_17.Cells[07,12] := '08';
          STGR_BASE_17.Cells[08,12] := '09';
          STGR_BASE_17.Cells[09,12] := '11';
          STGR_BASE_17.Cells[10,12] := '13';
          STGR_BASE_17.Cells[11,12] := '14';
          STGR_BASE_17.Cells[12,12] := '18';
          STGR_BASE_17.Cells[13,12] := '19';
          STGR_BASE_17.Cells[14,12] := '20';
          STGR_BASE_17.Cells[15,12] := '21';
          STGR_BASE_17.Cells[16,12] := '22';
          STGR_BASE_17.Cells[17,12] := '23';
          STGR_BASE_17.Cells[18,12] := '24';
               STGR_BASE_08.Cells[00,12] := '12';
               STGR_BASE_08.Cells[01,12] := 'V';
          STGR_BASE_08.Cells[02,12] := '04';
          STGR_BASE_08.Cells[03,12] := '07';
          STGR_BASE_08.Cells[04,12] := '10';
          STGR_BASE_08.Cells[05,12] := '12';
          STGR_BASE_08.Cells[06,12] := '15';
          STGR_BASE_08.Cells[07,12] := '16';
          STGR_BASE_08.Cells[08,12] := '17';
          STGR_BASE_08.Cells[09,12] := '25';
          //13
               STGR_BASE_17.Cells[00,13] := '13';
               STGR_BASE_17.Cells[01,13] := 'V';
          STGR_BASE_17.Cells[02,13] := '01';
          STGR_BASE_17.Cells[03,13] := '02';
          STGR_BASE_17.Cells[04,13] := '04';
          STGR_BASE_17.Cells[05,13] := '05';
          STGR_BASE_17.Cells[06,13] := '06';
          STGR_BASE_17.Cells[07,13] := '07';
          STGR_BASE_17.Cells[08,13] := '11';
          STGR_BASE_17.Cells[09,13] := '12';
          STGR_BASE_17.Cells[10,13] := '13';
          STGR_BASE_17.Cells[11,13] := '14';
          STGR_BASE_17.Cells[12,13] := '15';
          STGR_BASE_17.Cells[13,13] := '19';
          STGR_BASE_17.Cells[14,13] := '20';
          STGR_BASE_17.Cells[15,13] := '21';
          STGR_BASE_17.Cells[16,13] := '22';
          STGR_BASE_17.Cells[17,13] := '24';
          STGR_BASE_17.Cells[18,13] := '25';
               STGR_BASE_08.Cells[00,13] := '13';
               STGR_BASE_08.Cells[01,13] := 'V';
          STGR_BASE_08.Cells[02,13] := '03';
          STGR_BASE_08.Cells[03,13] := '08';
          STGR_BASE_08.Cells[04,13] := '09';
          STGR_BASE_08.Cells[05,13] := '10';
          STGR_BASE_08.Cells[06,13] := '16';
          STGR_BASE_08.Cells[07,13] := '17';
          STGR_BASE_08.Cells[08,13] := '18';
          STGR_BASE_08.Cells[09,13] := '23';
          //14
               STGR_BASE_17.Cells[00,14] := '14';
               STGR_BASE_17.Cells[01,14] := 'V';
          STGR_BASE_17.Cells[02,14] := '01';
          STGR_BASE_17.Cells[03,14] := '05';
          STGR_BASE_17.Cells[04,14] := '06';
          STGR_BASE_17.Cells[05,14] := '08';
          STGR_BASE_17.Cells[06,14] := '09';
          STGR_BASE_17.Cells[07,14] := '10';
          STGR_BASE_17.Cells[08,14] := '11';
          STGR_BASE_17.Cells[09,14] := '12';
          STGR_BASE_17.Cells[10,14] := '13';
          STGR_BASE_17.Cells[11,14] := '14';
          STGR_BASE_17.Cells[12,14] := '15';
          STGR_BASE_17.Cells[13,14] := '16';
          STGR_BASE_17.Cells[14,14] := '17';
          STGR_BASE_17.Cells[15,14] := '18';
          STGR_BASE_17.Cells[16,14] := '20';
          STGR_BASE_17.Cells[17,14] := '21';
          STGR_BASE_17.Cells[18,14] := '25';
               STGR_BASE_08.Cells[00,14] := '14';
               STGR_BASE_08.Cells[01,14] := 'V';
          STGR_BASE_08.Cells[02,14] := '02';
          STGR_BASE_08.Cells[03,14] := '03';
          STGR_BASE_08.Cells[04,14] := '04';
          STGR_BASE_08.Cells[05,14] := '07';
          STGR_BASE_08.Cells[06,14] := '19';
          STGR_BASE_08.Cells[07,14] := '22';
          STGR_BASE_08.Cells[08,14] := '23';
          STGR_BASE_08.Cells[09,14] := '24';
          //15
               STGR_BASE_17.Cells[00,15] := '15';
               STGR_BASE_17.Cells[01,15] := 'V';
          STGR_BASE_17.Cells[02,15] := '01';
          STGR_BASE_17.Cells[03,15] := '02';
          STGR_BASE_17.Cells[04,15] := '03';
          STGR_BASE_17.Cells[05,15] := '05';
          STGR_BASE_17.Cells[06,15] := '06';
          STGR_BASE_17.Cells[07,15] := '08';
          STGR_BASE_17.Cells[08,15] := '11';
          STGR_BASE_17.Cells[09,15] := '12';
          STGR_BASE_17.Cells[10,15] := '13';
          STGR_BASE_17.Cells[11,15] := '14';
          STGR_BASE_17.Cells[12,15] := '15';
          STGR_BASE_17.Cells[13,15] := '18';
          STGR_BASE_17.Cells[14,15] := '20';
          STGR_BASE_17.Cells[15,15] := '21';
          STGR_BASE_17.Cells[16,15] := '23';
          STGR_BASE_17.Cells[17,15] := '24';
          STGR_BASE_17.Cells[18,15] := '25';
               STGR_BASE_08.Cells[00,15] := '15';
               STGR_BASE_08.Cells[01,15] := 'V';
          STGR_BASE_08.Cells[02,15] := '04';
          STGR_BASE_08.Cells[03,15] := '07';
          STGR_BASE_08.Cells[04,15] := '09';
          STGR_BASE_08.Cells[05,15] := '10';
          STGR_BASE_08.Cells[06,15] := '16';
          STGR_BASE_08.Cells[07,15] := '17';
          STGR_BASE_08.Cells[08,15] := '19';
          STGR_BASE_08.Cells[09,15] := '22';

          STGR_BASE_17.RowCount := 16;
          STGR_BASE_08.RowCount := 16;
     END; // if (CB_NUMEROS_OBRIGATORIOS.ItemIndex >=1)

     if (CB_NUMEROS_OBRIGATORIOS.ItemIndex >=2) THEN
     BEGIN
          //16
               STGR_BASE_17.Cells[00,16] := '16';
               STGR_BASE_17.Cells[01,16] := 'V';
          STGR_BASE_17.Cells[02,16] := '01';
          STGR_BASE_17.Cells[03,16] := '02';
          STGR_BASE_17.Cells[04,16] := '03';
          STGR_BASE_17.Cells[05,16] := '07';
          STGR_BASE_17.Cells[06,16] := '08';
          STGR_BASE_17.Cells[07,16] := '10';
          STGR_BASE_17.Cells[08,16] := '11';
          STGR_BASE_17.Cells[09,16] := '12';
          STGR_BASE_17.Cells[10,16] := '13';
          STGR_BASE_17.Cells[11,16] := '14';
          STGR_BASE_17.Cells[12,16] := '15';
          STGR_BASE_17.Cells[13,16] := '17';
          STGR_BASE_17.Cells[14,16] := '19';
          STGR_BASE_17.Cells[15,16] := '20';
          STGR_BASE_17.Cells[16,16] := '22';
          STGR_BASE_17.Cells[17,16] := '23';
          STGR_BASE_17.Cells[18,16] := '24';
               STGR_BASE_08.Cells[00,16] := '16';
               STGR_BASE_08.Cells[01,16] := 'V';
          STGR_BASE_08.Cells[02,16] := '04';
          STGR_BASE_08.Cells[03,16] := '05';
          STGR_BASE_08.Cells[04,16] := '06';
          STGR_BASE_08.Cells[05,16] := '09';
          STGR_BASE_08.Cells[06,16] := '16';
          STGR_BASE_08.Cells[07,16] := '18';
          STGR_BASE_08.Cells[08,16] := '21';
          STGR_BASE_08.Cells[09,16] := '25';
          //17
               STGR_BASE_17.Cells[00,17] := '17';
               STGR_BASE_17.Cells[01,17] := 'V';
          STGR_BASE_17.Cells[02,17] := '01';
          STGR_BASE_17.Cells[03,17] := '02';
          STGR_BASE_17.Cells[04,17] := '03';
          STGR_BASE_17.Cells[05,17] := '07';
          STGR_BASE_17.Cells[06,17] := '08';
          STGR_BASE_17.Cells[07,17] := '09';
          STGR_BASE_17.Cells[08,17] := '10';
          STGR_BASE_17.Cells[09,17] := '11';
          STGR_BASE_17.Cells[10,17] := '13';
          STGR_BASE_17.Cells[11,17] := '14';
          STGR_BASE_17.Cells[12,17] := '16';
          STGR_BASE_17.Cells[13,17] := '18';
          STGR_BASE_17.Cells[14,17] := '19';
          STGR_BASE_17.Cells[15,17] := '21';
          STGR_BASE_17.Cells[16,17] := '22';
          STGR_BASE_17.Cells[17,17] := '23';
          STGR_BASE_17.Cells[18,17] := '24';
               STGR_BASE_08.Cells[00,17] := '17';
               STGR_BASE_08.Cells[01,17] := 'V';
          STGR_BASE_08.Cells[02,17] := '04';
          STGR_BASE_08.Cells[03,17] := '05';
          STGR_BASE_08.Cells[04,17] := '06';
          STGR_BASE_08.Cells[05,17] := '12';
          STGR_BASE_08.Cells[06,17] := '15';
          STGR_BASE_08.Cells[07,17] := '17';
          STGR_BASE_08.Cells[08,17] := '20';
          STGR_BASE_08.Cells[09,17] := '25';
          //18
               STGR_BASE_17.Cells[00,18] := '18';
               STGR_BASE_17.Cells[01,18] := 'V';
          STGR_BASE_17.Cells[02,18] := '01';
          STGR_BASE_17.Cells[03,18] := '02';
          STGR_BASE_17.Cells[04,18] := '05';
          STGR_BASE_17.Cells[05,18] := '07';
          STGR_BASE_17.Cells[06,18] := '08';
          STGR_BASE_17.Cells[07,18] := '09';
          STGR_BASE_17.Cells[08,18] := '11';
          STGR_BASE_17.Cells[09,18] := '12';
          STGR_BASE_17.Cells[10,18] := '13';
          STGR_BASE_17.Cells[11,18] := '14';
          STGR_BASE_17.Cells[12,18] := '15';
          STGR_BASE_17.Cells[13,18] := '16';
          STGR_BASE_17.Cells[14,18] := '17';
          STGR_BASE_17.Cells[15,18] := '20';
          STGR_BASE_17.Cells[16,18] := '22';
          STGR_BASE_17.Cells[17,18] := '24';
          STGR_BASE_17.Cells[18,18] := '25';
               STGR_BASE_08.Cells[00,18] := '18';
               STGR_BASE_08.Cells[01,18] := 'V';
          STGR_BASE_08.Cells[02,18] := '03';
          STGR_BASE_08.Cells[03,18] := '04';
          STGR_BASE_08.Cells[04,18] := '06';
          STGR_BASE_08.Cells[05,18] := '10';
          STGR_BASE_08.Cells[06,18] := '18';
          STGR_BASE_08.Cells[07,18] := '19';
          STGR_BASE_08.Cells[08,18] := '21';
          STGR_BASE_08.Cells[09,18] := '23';
          //19
               STGR_BASE_17.Cells[00,19] := '19';
               STGR_BASE_17.Cells[01,19] := 'V';
          STGR_BASE_17.Cells[02,19] := '02';
          STGR_BASE_17.Cells[03,19] := '03';
          STGR_BASE_17.Cells[04,19] := '04';
          STGR_BASE_17.Cells[05,19] := '05';
          STGR_BASE_17.Cells[06,19] := '06';
          STGR_BASE_17.Cells[07,19] := '07';
          STGR_BASE_17.Cells[08,19] := '08';
          STGR_BASE_17.Cells[09,19] := '11';
          STGR_BASE_17.Cells[10,19] := '13';
          STGR_BASE_17.Cells[11,19] := '14';
          STGR_BASE_17.Cells[12,19] := '15';
          STGR_BASE_17.Cells[13,19] := '19';
          STGR_BASE_17.Cells[14,19] := '20';
          STGR_BASE_17.Cells[15,19] := '22';
          STGR_BASE_17.Cells[16,19] := '23';
          STGR_BASE_17.Cells[17,19] := '24';
          STGR_BASE_17.Cells[18,19] := '25';
               STGR_BASE_08.Cells[00,19] := '19';
               STGR_BASE_08.Cells[01,19] := 'V';
          STGR_BASE_08.Cells[02,19] := '01';
          STGR_BASE_08.Cells[03,19] := '09';
          STGR_BASE_08.Cells[04,19] := '10';
          STGR_BASE_08.Cells[05,19] := '12';
          STGR_BASE_08.Cells[06,19] := '16';
          STGR_BASE_08.Cells[07,19] := '17';
          STGR_BASE_08.Cells[08,19] := '18';
          STGR_BASE_08.Cells[09,19] := '21';
          //20
               STGR_BASE_17.Cells[00,20] := '20';
               STGR_BASE_17.Cells[01,20] := 'V';
          STGR_BASE_17.Cells[02,20] := '01';
          STGR_BASE_17.Cells[03,20] := '02';
          STGR_BASE_17.Cells[04,20] := '03';
          STGR_BASE_17.Cells[05,20] := '05';
          STGR_BASE_17.Cells[06,20] := '06';
          STGR_BASE_17.Cells[07,20] := '08';
          STGR_BASE_17.Cells[08,20] := '09';
          STGR_BASE_17.Cells[09,20] := '11';
          STGR_BASE_17.Cells[10,20] := '13';
          STGR_BASE_17.Cells[11,20] := '14';
          STGR_BASE_17.Cells[12,20] := '16';
          STGR_BASE_17.Cells[13,20] := '19';
          STGR_BASE_17.Cells[14,20] := '20';
          STGR_BASE_17.Cells[15,20] := '22';
          STGR_BASE_17.Cells[16,20] := '23';
          STGR_BASE_17.Cells[17,20] := '24';
          STGR_BASE_17.Cells[18,20] := '25';
               STGR_BASE_08.Cells[00,20] := '20';
               STGR_BASE_08.Cells[01,20] := 'V';
          STGR_BASE_08.Cells[02,20] := '04';
          STGR_BASE_08.Cells[03,20] := '07';
          STGR_BASE_08.Cells[04,20] := '10';
          STGR_BASE_08.Cells[05,20] := '12';
          STGR_BASE_08.Cells[06,20] := '15';
          STGR_BASE_08.Cells[07,20] := '17';
          STGR_BASE_08.Cells[08,20] := '18';
          STGR_BASE_08.Cells[09,20] := '21';

          STGR_BASE_17.RowCount := 21;
          STGR_BASE_08.RowCount := 21;
     END; // if (CB_NUMEROS_OBRIGATORIOS.ItemIndex >=2)

     SELF.IBQ_COMBINACOES.Close;
     SELF.IBQ_COMBINACOES.Open;
     IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_10D17_DEFINICAO')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_10D17_DADOS_GR')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM FILTRO_10D17_DEFINICAO; ')  ;
     SELF.IBQ_COMBINACOES.Open;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_10D17_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
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




procedure T_F_GERADOR_10d17.BBT_GERAR_MENUClick(Sender: TObject);
begin
     PA_GERAR.Visible := TRUE;
     PA_GERAR.Enabled := TRUE;
     PA_GERAR.Top  := 245;
     PA_GERAR.Left := 460;
     PA_GERAR.Repaint;
end;







procedure T_F_GERADOR_10d17.BBT_GERARClick(Sender: TObject);
var
     VI_COMBINACOES1, VI_COMBINACOES2, VI_COMBINACOES3, VI_COMBINACOES4, VI_COMBINACOES5, VI_CONTADOR, VI_CONTAR: integer;
     VI_TOTAL_COMB1, VI_FLAG_SOMATORIA1, VI_FLAG_SOMATORIA2, VI_CONTASEL1: SMALLINT;
     Vsi_COMb7_1, Vsi_COMB7_2, Vsi_COMb7_3, Vsi_COMB7_4, Vsi_COMB7_5, Vsi_COMB7_6, Vsi_COMB7_7, Vsi_COMB7_8 : SMALLINT;
       VI_CONTAR_COMB1, VI_LINHAS1, VI_LINHAS7, VI_SOMA05: INTEGER;
       VS_NUMEROSPRINCIPAIS: STRING;


    PROCEDURE PR_ORDENAR_SIMULACAO_05 (VI_LINHAS9: INTEGER);
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
        FOR VI_CONTAR :=2 TO 6 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB05.Cells[VI_CONTAR,VI_LINHAS9])) ,1]:='V';
        END; // FOR VI_CONTAR1
        VI_CNTCELULAS := 2;
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
            BEGIN
                STGR_COMB05.Cells[VI_CNTCELULAS, VI_LINHAS9] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                VI_CNTCELULAS := VI_CNTCELULAS + 1;
            END; // IF (STRGR_TODOS_NUMEROS
        END; // FOR VI_CONTAR
    end; // PROCEDURE ORDENAR_SIMULACAO_05


    PROCEDURE PR_ORDENAR_SIMULACAO_12 (VI_LINHAS9: INTEGER);
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
        FOR VI_CONTAR :=1 TO 12 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB12.Cells[VI_CONTAR,VI_LINHAS9])) ,1]:='V';
        END; // FOR VI_CONTAR1
        VI_CNTCELULAS := 1;
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
            BEGIN
                STGR_COMB12.Cells[VI_CNTCELULAS, VI_LINHAS9] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                VI_CNTCELULAS := VI_CNTCELULAS + 1;
            END; // IF (STRGR_TODOS_NUMEROS
        END; // FOR VI_CONTAR
    end; // PROCEDURE ORDENAR_SIMULACAO_12


    PROCEDURE PR_GRAVAR_DADOS (VC_BEGIN_END: STRING; OUT VI_LINHAS2:INTEGER; VI_COMBINACOES_C1:INTEGER; VI_TOTCOMBINACOES_C1:INTEGER);
    VAR
        VI_TOTALGERADO, VI_AN_COMB1, VI_CNTCELULAS : INTEGER;
        VC_QUERY : STRING;
        VC_DESC_SOMA, VC_DADOS1, VC_COMBINACOES05, VC_COMBINACOES12, VC_COMBINACOES08 : STRING;
    BEGIN
        IF (VC_BEGIN_END = 'INICIO') THEN
        BEGIN
            IF (CB_NUMEROS_OBRIGATORIOS.ItemIndex) = 0 THEN
               VC_DADOS1 := '10' ;
            IF (CB_NUMEROS_OBRIGATORIOS.ItemIndex) = 1 THEN
               VC_DADOS1 := '15' ;
            IF (CB_NUMEROS_OBRIGATORIOS.ItemIndex) = 2 THEN
               VC_DADOS1 := '20' ;
            if (CB_MODO_FILTRO.ItemIndex) = 0 then
               VC_DESC_SOMA:= '12 nº soma é 156;  5 nº soma é 65 e 8 nº soma é 104.' ;
            if (CB_MODO_FILTRO.ItemIndex) = 1 then
               VC_DESC_SOMA:= '12 nº soma é de 155 a 157; 5 nº soma é 63 a 66 e 8 nº soma é 103 a 105.';

            VC_QUERY  := 'INSERT INTO FILTRO_10D17_DEFINICAO (QTD_CONJUNTOS, SOMAS_1, DATA_DEFINICAO, HORA_DEFINICAO, QTD_DADOS) VALUES('#39+ VC_DADOS1 + #39 +',' +#39+ VC_DESC_SOMA;
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
        IF ((VI_LINHAS2/3995) = (VI_LINHAS2 DIV 3995))
            or ((VI_LINHAS2/3997) = (VI_LINHAS2 DIV 3997))
            or ((VI_LINHAS2/3999) = (VI_LINHAS2 DIV 3999))
            OR (VC_BEGIN_END = 'ENCERRANDO')
            OR (VC_BEGIN_END = 'FIM')
            THEN
        BEGIN
            // ************************
            // **   BANCO DE DADOS   **
            // ************************
            STGR_COMB05.Repaint;
            Self.Repaint;
           // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
            FOR VI_AN_COMB1:= 1 TO  TRUNC((STGR_COMB05.RowCount-1)/1) DO
            BEGIN
                // obs: verificar o evento BeFOREInSERT DA ibq_COMBINACOES
                VC_COMBINACOES05 :='';
                VC_COMBINACOES12 :='';
                VC_COMBINACOES08 :='';
                FOR VI_CNTCELULAS := 3 TO 7 DO
                BEGIN
                    VC_COMBINACOES05 := VC_COMBINACOES05 + TRIM(STGR_COMB05.Cells[VI_CNTCELULAS,VI_AN_COMB1]) +' ';
                END; // FOR VI_CNTCELULAS
                FOR VI_CNTCELULAS := 1 TO 12 DO
                BEGIN
                    VC_COMBINACOES12 := VC_COMBINACOES12 + TRIM(STGR_COMB12.Cells[VI_CNTCELULAS,VI_AN_COMB1]) +' ';
                END; // FOR VI_CNTCELULAS
                FOR VI_CNTCELULAS := 1 TO 8 DO
                BEGIN
                    VC_COMBINACOES08 := VC_COMBINACOES08 + TRIM(STGR_SOBRAS08.Cells[VI_CNTCELULAS,VI_AN_COMB1]) +' ';
                END; // FOR VI_CNTCELULAS
                IF (TRIM(STGR_COMB05.Cells[1,VI_AN_COMB1]) = 'V') THEN
                BEGIN
                     VC_QUERY  := 'INSERT INTO FILTRO_10D17_DADOS_GR (DADOS_05, DADOS_12, DADOS_NS,'
                     +' N_1, N_2, N_3, N_4, N_5, NS01, NS02, NS03, NS04, NS05, NS06, NS07, NS08 ) VALUES(' +#39+ TRIM(VC_COMBINACOES05) + #39 +','+#39+TRIM(VC_COMBINACOES12)+ #39 +','+#39+TRIM(VC_COMBINACOES08)
                          + #39 +','+#39+STGR_COMB05.Cells[3,VI_AN_COMB1] + #39 +','+#39+STGR_COMB05.Cells[4,VI_AN_COMB1]
                          + #39 +','+#39+STGR_COMB05.Cells[5,VI_AN_COMB1] + #39 +','+#39+STGR_COMB05.Cells[6,VI_AN_COMB1]
                          + #39 +','+#39+STGR_COMB05.Cells[7,VI_AN_COMB1]    + #39 +','+#39+STGR_SOBRAS08.Cells[1,VI_AN_COMB1]    + #39 +','+#39+STGR_SOBRAS08.Cells[2,VI_AN_COMB1]    + #39 +','+#39+STGR_SOBRAS08.Cells[3,VI_AN_COMB1]
                          + #39 +','+#39+STGR_SOBRAS08.Cells[4,VI_AN_COMB1]    + #39 +','+#39+STGR_SOBRAS08.Cells[5,VI_AN_COMB1]
                          + #39 +','+#39+STGR_SOBRAS08.Cells[6,VI_AN_COMB1]    + #39 +','+#39+STGR_SOBRAS08.Cells[7,VI_AN_COMB1]    + #39 +','+#39+STGR_SOBRAS08.Cells[8,VI_AN_COMB1]
                           + #39 +');';
                     SELF.IBQ_COMBINACOES.SQL.Clear;
                     SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                     SELF.IBQ_COMBINACOES.ExecSQL;
                END; // IF
            END; // FOR VI_AN_COMB1
            SELF.IBQ_COMBINACOES.SQL.Clear;
            VC_QUERY  := 'UPDATE FILTRO_10D17_DEFINICAO SET CONTADOR_C1 =' + #39+ INTtoSTR(VI_COMBINACOES_C1) +#39+';';
            SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
            VI_LINHAS2:=1;
            STGR_COMB05.RowCount := VI_LINHAS2;
            STGR_COMB12.RowCount := VI_LINHAS2;
            STGR_SOBRAS08.RowCount := VI_LINHAS2;
            SLEEP(19);
             SELF.IBQ_COMBINACOES.SQL.Clear;
              (*
               IF VC_BEGIN_END = 'FIM' THEN
               BEGIN
                    SELF.IBQ_COMBINACOES.SQL.Clear;
                    SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_0008EXC2_DADOS')  ;
                    SELF.IBQ_COMBINACOES.ExecSQL;
                    SELF.IBQ_COMBINACOES.SQL.Clear;
                    SELF.IBQ_COMBINACOES.SQL.Add('execute procedure FILTRO_0_08EXC2_DADOS_100REPET' )  ;
                    SELF.IBQ_COMBINACOES.ExecSQL;
                    SELF.IBQ_COMBINACOES.SQL.Clear;
                    SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_0008EXC2_DADOS_temp')  ;
                    SELF.IBQ_COMBINACOES.ExecSQL;
                       SELF.IBQ_COMBINACOES.SQL.Clear;
                       SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                       SELF.IBQ_COMBINACOES.ExecSQL;
               END;// IF

             IF ((VI_LINHAS2/3995) = (VI_LINHAS2 DIV 3995))
                 or ((VI_LINHAS2/3997) = (VI_LINHAS2 DIV 3997))
                 or ((VI_LINHAS2/3998) = (VI_LINHAS2 DIV 3998))
                 OR (VC_BEGIN_END = 'ENCERRANDO') THEN
             BEGIN
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('execute procedure FILTRO_0_08EXC2_DADOS_100REPET' )  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                {  SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_0009EXC2_DADOS_temp')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;      }
             end;
             *)
        END; // IF (VI_TOTALGERADO/1000)
       // IF (VC_FINALIZAR = 'SIM') THEN SHOWMESSAGE('ETAPA - OK');
    END; // PROCEDURE GRAVAR_DADOS


begin
     LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
     FOR VI_CONTASEL1 := 3 TO 7 DO
     BEGIN
        STGR_COMB05.Cells [VI_CONTASEL1,0] := '-'+INTtoSTR(VI_CONTASEL1-2)+'-';
        STGR_COMB05.Cells [VI_CONTASEL1,1] := '00';
     END;
     STGR_COMB05.ColWidths [2]:= 55;
     STGR_COMB05.RowCount := 2;
     STGR_COMB05.Repaint;
     FOR VI_CONTASEL1 := 1 TO 12 DO
     BEGIN
        STGR_COMB12.Cells [VI_CONTASEL1,0] := '-'+INTtoSTR(VI_CONTASEL1)+'-';
        STGR_COMB12.Cells [VI_CONTASEL1,1] := '00';
     END;
     STGR_COMB12.ColWidths [0]:= 45;
     STGR_COMB12.RowCount := 2;
     STGR_COMB12.Repaint;
     FOR VI_CONTASEL1 := 1 TO 08 DO
     BEGIN
        STGR_SOBRAS08.Cells [VI_CONTASEL1,0] := '-'+INTtoSTR(VI_CONTASEL1)+'-';
        STGR_SOBRAS08.Cells [VI_CONTASEL1,1] := '00';
     END;
     STGR_SOBRAS08.ColWidths [0]:= 45;
     STGR_SOBRAS08.RowCount := 2;
     STGR_SOBRAS08.Repaint;


     PGBR_GERARCOMB0.Position :=0 ;
     PGBR_GERARCOMB0.Repaint;
     PGBR_REMREPET.Position := 0;
     PGBR_REMREPET.Repaint;
     LA_TOTAL_COMB.Caption := 'GERAR:               ';
     LA_GERAR_COMB.Caption := '#:                   ';
     LA_TOTAL_100REPET.Caption := '000000';
     LA_TOTAL_100REPET.Repaint;
     LA_TOTAL_COMB.Repaint;
     LA_GERAR_COMB.Repaint;
     PA_GERAR.Enabled := false;
     PA_GERAR.Left := 4500;
     // =====================================
     // ||||=============================||||
     // |||| 	GERANDO AS COMBINAÇÕES   ||||
     // ||||=============================||||
     // =====================================
                  LA_rTOTAL_COMB.Caption  := INTtoSTR(STGR_BASE_17.RowCount-1);

     PR_GRAVAR_DADOS ('INICIO',VI_LINHAS7, 1, TRUNC(STGR_BASE_17.RowCount-1));
     VI_LINHAS7 := 1;
     VI_LINHAS1 := 1;
     FOR VI_COMBINACOES1 := 1{2} TO {6} TRUNC((STGR_BASE_17.RowCount-1)/1) DO
     BEGIN
                         // ----------------------------------------------------------------------
                         // --  MONTANDO AS COMBINAÇÕES POSSÍVEL PARA REALIZAR A SOMA 6, 7 ou 8 --
                         // ----------------------------------------------------------------------
                         STGR_COMB05.Cells[1,0]  := 'F';
                              FOR Vsi_COMb7_1 := 2 TO  16 DO
                              BEGIN
                                   FOR Vsi_COMb7_2 := Vsi_COMb7_1+1 TO  17 DO
                                   BEGIN
                                        FOR Vsi_COMb7_3 := Vsi_COMb7_2+1 TO  18 DO
                                        BEGIN
                                             FOR Vsi_COMb7_4 := Vsi_COMb7_3+1 TO  18 DO
                                             BEGIN
                                                  FOR Vsi_COMb7_5 := Vsi_COMb7_4+1 TO  18 DO
                                                  BEGIN
                                                            VI_SOMA05  :=  STRtoINT(STGR_BASE_17.Cells[Vsi_COMb7_1,VI_COMBINACOES1])
                                                               + STRtoINT(STGR_BASE_17.Cells[Vsi_COMb7_2,VI_COMBINACOES1])+ STRtoINT(STGR_BASE_17.Cells[Vsi_COMb7_3,VI_COMBINACOES1])
                                                               + STRtoINT(STGR_BASE_17.Cells[Vsi_COMb7_4,VI_COMBINACOES1])+ STRtoINT(STGR_BASE_17.Cells[Vsi_COMb7_5,VI_COMBINACOES1]) ;

                                                           { if (CB_MODO_FILTRO.ItemIndex =0) AND (VI_SOMA05<>156) THEN
                                                                 CONTINUE;
                                                            if (CB_MODO_FILTRO.ItemIndex =1) AND (NOT(VI_SOMA05<155) OR (VI_SOMA05>156)) THEN
                                                                 CONTINUE; }
                                                            STGR_COMB05.Cells[0,VI_LINHAS7]  := INTtoSTR(VI_SOMA05);
                                                            STGR_COMB05.Cells[1,VI_LINHAS7]  := 'F';
                                                            STGR_COMB05.Cells[2,VI_LINHAS7]  := INTtoSTR(VI_LINHAS7) ;
                                                            STGR_COMB05.Cells[3,VI_LINHAS7]  :=  STGR_BASE_17.Cells[Vsi_COMb7_1,VI_COMBINACOES1] ;
                                                            STGR_COMB05.Cells[4,VI_LINHAS7]  :=  STGR_BASE_17.Cells[Vsi_COMb7_2,VI_COMBINACOES1] ;
                                                            STGR_COMB05.Cells[5,VI_LINHAS7]  :=  STGR_BASE_17.Cells[Vsi_COMb7_3,VI_COMBINACOES1] ;
                                                            STGR_COMB05.Cells[6,VI_LINHAS7]  :=  STGR_BASE_17.Cells[Vsi_COMb7_4,VI_COMBINACOES1] ;
                                                            STGR_COMB05.Cells[7,VI_LINHAS7]  :=  STGR_BASE_17.Cells[Vsi_COMb7_5,VI_COMBINACOES1] ;
                                                            //
                                                            STGR_SOBRAS08.Cells[0,VI_LINHAS7]  := INTtoSTR(VI_LINHAS7) ;
                                                            STGR_SOBRAS08.Cells[1,VI_LINHAS7]  :=  STGR_BASE_08.Cells[2,VI_COMBINACOES1] ;
                                                            STGR_SOBRAS08.Cells[2,VI_LINHAS7]  :=  STGR_BASE_08.Cells[3,VI_COMBINACOES1] ;
                                                            STGR_SOBRAS08.Cells[3,VI_LINHAS7]  :=  STGR_BASE_08.Cells[4,VI_COMBINACOES1] ;
                                                            STGR_SOBRAS08.Cells[4,VI_LINHAS7]  :=  STGR_BASE_08.Cells[5,VI_COMBINACOES1] ;
                                                            STGR_SOBRAS08.Cells[5,VI_LINHAS7]  :=  STGR_BASE_08.Cells[6,VI_COMBINACOES1] ;
                                                            STGR_SOBRAS08.Cells[6,VI_LINHAS7]  :=  STGR_BASE_08.Cells[7,VI_COMBINACOES1] ;
                                                            STGR_SOBRAS08.Cells[7,VI_LINHAS7]  :=  STGR_BASE_08.Cells[8,VI_COMBINACOES1] ;
                                                            STGR_SOBRAS08.Cells[8,VI_LINHAS7]  :=  STGR_BASE_08.Cells[9,VI_COMBINACOES1] ;
                                                       // ----------------------------------------------
                                                       // --  MONTANDO AS 12 SOBRAS DO CONJUNTO DE 17 --
                                                       // ----------------------------------------------
                                                            STGR_COMB12.Cells[0,VI_LINHAS7] := INTtoSTR(VI_LINHAS7);
                                                            VS_NUMEROSPRINCIPAIS:= STGR_BASE_17.Cells[Vsi_COMb7_1,VI_COMBINACOES1] + '-' +
                                                            STGR_BASE_17.Cells[Vsi_COMb7_2,VI_COMBINACOES1]+ '-' +
                                                            STGR_BASE_17.Cells[Vsi_COMb7_3,VI_COMBINACOES1]+ '-' +
                                                            STGR_BASE_17.Cells[Vsi_COMb7_4,VI_COMBINACOES1]+ '-' +
                                                            STGR_BASE_17.Cells[Vsi_COMb7_5,VI_COMBINACOES1]+ '-';
                                                                 // pega o primeiro numero que sobrou
                                                                 VI_CONTAR :=0;
                                                                 FOR VI_CONTADOR := 2 TO 18 DO
                                                                 BEGIN
                                                                      IF (POS(STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                                      BEGIN
                                                                           VI_CONTAR := VI_CONTAR +1;
                                                                           IF (VI_CONTAR=1) THEN
                                                                           begin
                                                                               STGR_COMB12.Cells[1,VI_LINHAS7] := STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1];
                                                                                VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                                     STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1];
                                                                           end; // if
                                                                      END;
                                                                 END; // FOR VI_CONTADOR
                                                                 // pega o segundo numero que sobrou
                                                                 VI_CONTAR :=0;
                                                                 FOR VI_CONTADOR := 2 TO 18 DO
                                                                 BEGIN
                                                                      IF (POS(STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                                      BEGIN
                                                                           VI_CONTAR := VI_CONTAR +1;
                                                                           IF (VI_CONTAR=1) THEN
                                                                           begin
                                                                                STGR_COMB12.Cells[2,VI_LINHAS7] := STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1];
                                                                                VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                                     STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1];
                                                                           end; // if
                                                                      END;
                                                                 END; // FOR VI_CONTADOR
                                                                 // pega o terceiro numero que sobrou
                                                                 VI_CONTAR :=0;
                                                                 FOR VI_CONTADOR := 2 TO 18 DO
                                                                 BEGIN
                                                                      IF (POS(STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                                      BEGIN
                                                                           VI_CONTAR := VI_CONTAR +1;
                                                                           IF (VI_CONTAR=1) THEN
                                                                           begin
                                                                                STGR_COMB12.Cells[3,VI_LINHAS7] := STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1];
                                                                                VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                                     STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1];
                                                                           end;
                                                                      END;
                                                                 END; // FOR VI_CONTADOR
                                                                 // pega o quarto numero que sobrou
                                                                 VI_CONTAR :=0;
                                                                 FOR VI_CONTADOR := 2 TO 18 DO
                                                                 BEGIN
                                                                      IF (POS(STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                                      BEGIN
                                                                           VI_CONTAR := VI_CONTAR +1;
                                                                           IF (VI_CONTAR=1) THEN
                                                                           BEGIN
                                                                                STGR_COMB12.Cells[4,VI_LINHAS7] := STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1];
                                                                                VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                                     STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1];
                                                                           END;
                                                                      END;
                                                                 END; // FOR VI_CONTADOR
                                                                 // pega o quinto numero que sobrou
                                                                 VI_CONTAR :=0;
                                                                 FOR VI_CONTADOR := 2 TO 18 DO
                                                                 BEGIN
                                                                      IF (POS(STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                                      BEGIN
                                                                           VI_CONTAR := VI_CONTAR +1;
                                                                           IF (VI_CONTAR=1) THEN
                                                                           BEGIN
                                                                                STGR_COMB12.Cells[5,VI_LINHAS7] := STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1];
                                                                                VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                                     STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1];
                                                                           END;
                                                                      END;
                                                                 END; // FOR VI_CONTADOR
                                                                 // pega o Sexto numero que sobrou
                                                                 VI_CONTAR :=0;
                                                                 FOR VI_CONTADOR := 2 TO 18 DO
                                                                 BEGIN
                                                                      IF (POS(STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                                      BEGIN
                                                                           VI_CONTAR := VI_CONTAR +1;
                                                                           IF (VI_CONTAR=1) THEN
                                                                           BEGIN
                                                                                STGR_COMB12.Cells[6,VI_LINHAS7] := STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1];
                                                                                VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                                     STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1];
                                                                           END;
                                                                      END;
                                                                 END; // FOR VI_CONTADOR
                                                                 // pega o Sétimo numero que sobrou
                                                                 VI_CONTAR :=0;
                                                                 FOR VI_CONTADOR := 2 TO 18 DO
                                                                 BEGIN
                                                                      IF (POS(STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                                      BEGIN
                                                                           VI_CONTAR := VI_CONTAR +1;
                                                                           IF (VI_CONTAR=1) THEN
                                                                           BEGIN
                                                                                STGR_COMB12.Cells[7,VI_LINHAS7] := STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1];
                                                                                VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                                     STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1];
                                                                           END;
                                                                      END;
                                                                 END; // FOR VI_CONTADOR
                                                                 // pega o Oitavo numero que sobrou
                                                                 VI_CONTAR :=0;
                                                                 FOR VI_CONTADOR := 2 TO 17 DO
                                                                 BEGIN
                                                                      IF (POS(STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                                      BEGIN
                                                                           VI_CONTAR := VI_CONTAR +1;
                                                                           IF (VI_CONTAR=1) THEN
                                                                           BEGIN
                                                                                STGR_COMB12.Cells[8,VI_LINHAS7] := STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1];
                                                                                VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                                     STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1];
                                                                           END;
                                                                      END;
                                                                 END; // FOR VI_CONTADOR
                                                                 // pega o Nono numero que sobrou
                                                                 VI_CONTAR :=0;
                                                                 FOR VI_CONTADOR := 2 TO 18 DO
                                                                 BEGIN
                                                                      IF (POS(STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                                      BEGIN
                                                                           VI_CONTAR := VI_CONTAR +1;
                                                                           IF (VI_CONTAR=1) THEN
                                                                           BEGIN
                                                                                STGR_COMB12.Cells[9,VI_LINHAS7] := STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1];
                                                                                VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                                     STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1];
                                                                           END;
                                                                      END;
                                                                 END; // FOR VI_CONTADOR
                                                                 // pega o Décimo numero que sobrou
                                                                 VI_CONTAR :=0;
                                                                 FOR VI_CONTADOR := 2 TO 18 DO
                                                                 BEGIN
                                                                      IF (POS(STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                                      BEGIN
                                                                           VI_CONTAR := VI_CONTAR +1;
                                                                           IF (VI_CONTAR=1) THEN
                                                                           BEGIN
                                                                                STGR_COMB12.Cells[10,VI_LINHAS7] := STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1];
                                                                                VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                                     STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1];
                                                                           END;
                                                                      END;
                                                                 END; // FOR VI_CONTADOR
                                                                 // pega o Décimo Primeiro numero que sobrou
                                                                 VI_CONTAR :=0;
                                                                 FOR VI_CONTADOR := 2 TO 18 DO
                                                                 BEGIN
                                                                      IF (POS(STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                                      BEGIN
                                                                           VI_CONTAR := VI_CONTAR +1;
                                                                           IF (VI_CONTAR=1) THEN
                                                                           BEGIN
                                                                                STGR_COMB12.Cells[11,VI_LINHAS7] := STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1];
                                                                                VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                                     STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1];
                                                                           END;
                                                                      END;
                                                                 END; // FOR VI_CONTADOR
                                                                 // pega o Décimo Segundo numero que sobrou
                                                                 VI_CONTAR :=0;
                                                                 FOR VI_CONTADOR := 2 TO 18 DO
                                                                 BEGIN
                                                                      IF (POS(STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                                      BEGIN
                                                                           VI_CONTAR := VI_CONTAR +1;
                                                                           IF (VI_CONTAR=1) THEN
                                                                           BEGIN
                                                                                STGR_COMB12.Cells[12,VI_LINHAS7] := STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1];
                                                                                VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                                     STGR_BASE_17.Cells[VI_CONTADOR,VI_COMBINACOES1];
                                                                           END;
                                                                      END;
                                                                 END; // FOR VI_CONTADOR
                                                       // ----------------------------------------------
                                                            if (CB_MODO_FILTRO.ItemIndex =0) AND (VI_SOMA05=65) THEN
                                                                 STGR_COMB05.Cells[1,VI_LINHAS7]  := 'V';
                                                            if (CB_MODO_FILTRO.ItemIndex =1) THEN
                                                                  IF ((VI_SOMA05>=64) AND (VI_SOMA05<=66)) THEN
                                                                      STGR_COMB05.Cells[1,VI_LINHAS7]  := 'V';
                                                            VI_LINHAS7 := VI_LINHAS7 +1;
                                                            VI_LINHAS1 := VI_LINHAS1 +1;
                                                            STGR_COMB05.RowCount := VI_LINHAS7;
                                                            STGR_COMB12.RowCount := VI_LINHAS7;
                                                            STGR_SOBRAS08.RowCount := VI_LINHAS7;
                                                            PR_GRAVAR_DADOS ('NAO', VI_LINHAS7, VI_COMBINACOES1, TRUNC(STGR_BASE_17.RowCount-1));
                                                  END; // FOR Vsi_COMb7_5 :=
                                             END; // FOR Vsi_COMb7_4 :=
                                        END; // FOR Vsi_COMb7_3 :=
                                   END; // FOR Vsi_COMb7_2 :=
                                   LA_TOTAL_COMB.Caption := 'TOTAL PROCESSADOS: '+INTtoSTR(VI_COMBINACOES1)+'   ';
                                   LA_TOTAL_COMB.Repaint;
                                   LA_TOTAL_COMB.Repaint;
                                   LA_TOTAL_COMB.Repaint;
                              END; // FOR Vsi_COMb7_1 :=
                              STGR_COMB05.Repaint;
                              STGR_COMB12.Repaint;
                              STGR_SOBRAS08.Repaint;
                              PGBR_GERARCOMB0.Position :=  TRUNC(VI_COMBINACOES1/(STGR_BASE_17.RowCount-1)*100);
                              sleep(15);
                              if  ((VI_COMBINACOES1 MOD 2) = 0) then
                              BEGIN
                                  Self.WindowState := wsMinimized;
                                  Self.WindowState :=  wsNormal;
                                  SELF.Repaint;
                              END; // IF
     END; // FOR VI_COMVINACOES 1 :=
     STGR_COMB05.RowCount := VI_LINHAS7;
     STGR_COMB12.RowCount := VI_LINHAS7;
     STGR_SOBRAS08.RowCount := VI_LINHAS7;
     TRY
           STGR_COMB12.FixedRows := 1;
           STGR_COMB05.FixedRows := 1;
           STGR_SOBRAS08.FixedRows := 1 ;
     EXCEPT
          //
     END; // TRY
     STGR_COMB05.Repaint;
     STGR_COMB12.Repaint;
     STGR_SOBRAS08.Repaint ;
     PGBR_GERARCOMB0.Position :=  100;
     PR_GRAVAR_DADOS ('FIM', VI_LINHAS7, VI_COMBINACOES1, TRUNC(STGR_BASE_17.RowCount-1));

     LA_rTOTAL_COMB.Caption:= INTtoSTR(VI_LINHAS1-1);
     LA_rTOT_CALC.Caption  := INTtoSTR(VI_LINHAS1*5);
     LA_rLogic_Comp.Caption:= INTtoSTR(VI_LINHAS1*3);
     LA_rATRIBUICAO_DADOS.Caption  := INTtoSTR(VI_LINHAS1*13);
     LA_rTOT_PROCESSAMENTO.Caption := INTtoSTR( (VI_LINHAS1-1)+(VI_LINHAS1*5)+(VI_LINHAS1*3)+(VI_LINHAS1*13) );

     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;
     LA_gFIM_GERAR.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
     // ==> ACERTANDO O PAINEL DE ENCERRAMENTO
     BBT_RECOMECAR.Enabled := false;
     BBT_PREPARAR_MENU.Enabled := false;
     LA_rQTD_COMB.Caption    := INTtoSTR(VI_LINHAS1-1)+'     ';

     SELF.PR_SIMULAR_RECUPERANDODADOS('');
                   SELF.IBQ_COMBINACOES.SQL.Clear;
               SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(distinct(dADOS_05 || '' '' || DADOS_12)) AS SOMADADOS FROM FILTRO_10D17_DADOS_GR;')  ;
               SELF.IBQ_COMBINACOES.Open;
               IBQ_COMBINACOES.First;
               VI_CONTAR_COMB1 := IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_10D17_DEFINICAO SET HORA_TERMINO ='''+FORMATDATETIME('h:n:s',time())+''', QTD_DADOS= ''' +INTtoSTR(VI_CONTAR_COMB1)+ ''';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     LA_rTOTAL_100REPET.Caption := LA_TOTAL_100REPET.Caption;
     LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_10D17_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;   
     PA_REMOVEUREPET.Left := 1100;

end;




procedure T_F_GERADOR_10d17.BBT_PA_REMOVEUREPETClick(Sender: TObject);
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




PROCEDURE T_F_GERADOR_10d17.PR_SIMULAR_RECUPERANDODADOS(VC_TIPO: STRING);
VAR
     VI_AN_COMB1, VI_CONTAR : INTEGER;
BEGIN
            STGR_COMB05.RowCount := 2;
            STGR_COMB12.RowCount := 2;
            STGR_SOBRAS08.RowCount := 2;
//       SELF.PR_LIMPAR_GRID10();
       IF (VC_TIPO='SIMULACAO') THEN SHOWMESSAGE('DADOS-2 - Retirando os repetidos');
       SELF.IBQ_COMBINACOES.Close;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(distinct(dADOS_05 || '' '' || DADOS_12)) AS SOMADADOS FROM FILTRO_10D17_DADOS_GR;')  ;
       SELF.IBQ_COMBINACOES.Open;
       VI_CONTAR := SELF.IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT DADOS_05, DADOS_12, DADOS_NS, NS01, NS02, NS03, NS04, NS05, NS06, NS07, NS08, N_1, N_2, N_3, N_4, N_5 FROM FILTRO_10D17_DADOS_GR  ORDER BY DADOS_05;')  ;
       SELF.IBQ_COMBINACOES.Open;
           IF (VC_TIPO='SIMULACAO') THEN SHOWMESSAGE('Recuperando os dados');
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
           STGR_COMB05.Cells [0, VI_AN_COMB1] := INTtoSTR(VI_AN_COMB1);
           STGR_COMB05.Cells [3, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('N_1').AsString;
           STGR_COMB05.Cells [4, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('N_2').AsString;
           STGR_COMB05.Cells [5, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('N_3').AsString;
           STGR_COMB05.Cells [6, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('N_4').AsString;
           STGR_COMB05.Cells [7, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('N_5').AsString;

           STGR_SOBRAS08.Cells [0, VI_AN_COMB1] := INTtoSTR(VI_AN_COMB1);
           STGR_SOBRAS08.Cells [1, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS01').AsString;
           STGR_SOBRAS08.Cells [2, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS02').AsString;
           STGR_SOBRAS08.Cells [3, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS03').AsString;
           STGR_SOBRAS08.Cells [4, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS04').AsString;
           STGR_SOBRAS08.Cells [5, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS05').AsString;
           STGR_SOBRAS08.Cells [6, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS06').AsString;
           STGR_SOBRAS08.Cells [7, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS07').AsString;
           STGR_SOBRAS08.Cells [8, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS08').AsString;

                STGR_COMB12.Cells [0, VI_AN_COMB1] := INTtoSTR(VI_AN_COMB1);
                STGR_COMB12.Cells [1, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_12').AsString,1,2);
                STGR_COMB12.Cells [2, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_12').AsString,4,2);
                STGR_COMB12.Cells [3, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_12').AsString,7,2);
                STGR_COMB12.Cells [4, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_12').AsString,10,2);
                STGR_COMB12.Cells [5, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_12').AsString,13,2);
                STGR_COMB12.Cells [6, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_12').AsString,16,2);
                STGR_COMB12.Cells [7, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_12').AsString,19,2);
                STGR_COMB12.Cells [8, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_12').AsString,22,2);
                STGR_COMB12.Cells [9, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_12').AsString,25,2);
                STGR_COMB12.Cells [10, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_12').AsString,28,2);
                STGR_COMB12.Cells [11, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_12').AsString,31,2);
                STGR_COMB12.Cells [12, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_12').AsString,34,2);

           STGR_COMB12.RowCount := VI_AN_COMB1;
           STGR_COMB05.RowCount := VI_AN_COMB1;
           STGR_SOBRAS08.RowCount := VI_AN_COMB1;
           SELF.IBQ_COMBINACOES.Next;
       END; // FOR VI_AN_COMB1
           STGR_COMB12.RowCount := VI_AN_COMB1;
           STGR_COMB05.RowCount := VI_AN_COMB1;
           STGR_SOBRAS08.RowCount := VI_AN_COMB1;
           STGR_COMB12.FixedRows := 1;
           STGR_COMB05.FixedRows := 1;
           STGR_SOBRAS08.FixedRows := 1;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM FILTRO_10D17_DADOS_GR;')  ;
       SELF.IBQ_COMBINACOES.Open;
           PGBR_REMREPET.Position := 100;
       LA_TOTAL_100REPET.Caption := INTtoSTR(STGR_COMB05.RowCount-1);
       LA_TOTAL_100REPET.Repaint;
           Self.Repaint;
           Self.WindowState := wsMinimized;
           Self.WindowState :=  wsNormal;
           Self.Repaint;
     SHOWMESSAGE('DADOS CARREGADOS');           
END; //    PROCEDCURE SIMULAR_RECUPERANDODADOS();



procedure T_F_GERADOR_10d17.BT_REAJUSTARClick(Sender: TObject);
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



procedure T_F_GERADOR_10d17.BBT_CARREGARClick(Sender: TObject);
begin
    BBT_CANCELAR_SAIR.Visible := TRUE;
            STGR_COMB05.RowCount := 2;
            STGR_COMB12.RowCount := 2;
            STGR_SOBRAS08.RowCount := 2;
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
     LA_TOTAL_COMB.Visible := false;
     LA_GERAR_COMB.Visible := false;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_10D17_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.PR_SIMULAR_RECUPERANDODADOS('');
end;



procedure T_F_GERADOR_10d17.BBT_GERAR_SAIRClick(Sender: TObject);
begin
     PA_GERAR.Enabled := false;
     PA_GERAR.Left := 4500;
     PA_GERAR.Repaint;
end;



end.
