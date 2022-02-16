unit Ranqueadorr_18_Jogos_17_NumerosMod1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, DB, strutils, Math,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase;

Type
   T_F_Ranqueador_18_Jogos_17_NumerosMod1 = Class(TForm)
      Pa_REMOVEUREPET: TPanel;
      Label44: TLabel;
      Label45: TLabel;
      Label46: TLabel;
      Label47: TLabel;
      La_rTOTAL_COMB: TLabel;
      La_rQTD_COMB: TLabel;
      Label58: TLabel;
      La_gINICIO_100REPET: TLabel;
      Label60: TLabel;
      Label49: TLabel;
      La_gFIM_100REPET: TLabel;
      La_gFIM_GERAR: TLabel;
      Label50: TLabel;
      La_rTOTAL_100REPET: TLabel;
      Bbt_Pa_REMOVEUREPET: TBitBtn;
      Pa_INICIAL: TPanel;
      Label55: TLabel;
      Bt_NOVA_SIMULACAO: TButton;
      Bt_REAJUSTAR: TButton;
      Bbt_SAIR: TButton;
      Bbt_CARREGAR: TButton;
      Bbt_CANCELAR: TBitBtn;
      Mem_COMBINACOES_TODAS: TMemo;
      La_rTOT_PROCESSAMENTO: TLabel;
      La_rATRIBUICAO_DADOS: TLabel;
      La_rLogic_Comp: TLabel;
      La_rTOT_CALC: TLabel;
      Label39: TLabel;
      Label41: TLabel;
      Label43: TLabel;
      Label42: TLabel;
      Pa_TOPO: TPanel;
      Label53: TLabel;
      Bbt_CLOSE: TImage;
      Bbt_RECOMECAR: TBitBtn;
      Pa_GERAR: TPanel;
      Panel2: TPanel;
      Label63: TLabel;
      Bbt_GERAR: TBitBtn;
      Bbt_GERAR_SAIR: TBitBtn;
      Pa_PREPARAR: TPanel;
      Panel1: TPanel;
      Label2: TLabel;
      Bbt_PREPARAR1: TBitBtn;
      BitBtn2: TBitBtn;
      IBDatabase1: TIBDatabase;
      IBTransaction1: TIBTransaction;
      Ibq_COMBINACOES: TIBQuery;
      Ibq_E_SORTEIO_15N: TIBQuery;
      Ds_E_SORTEIO_15N: TDataSource;
      Cb_MODO_FILTRO: TComboBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Scbx_GABARITO: TScrollBox;
    La_NSorteioRank: TLabel;
    Label7: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Stgr_Base17: TStringGrid;
    Stgr_Estatisticas: TStringGrid;
    Stgr_Sorteios: TStringGrid;
    Bbt_CarregarSorteio15N: TBitBtn;
    Bbt_Rank: TBitBtn;
    Stgr_Todos_Numeros: TStringGrid;
    Stgr_EstatisticasOcorrencias: TStringGrid;
    Stgr_EstatisticasSorteiosAtrasados: TStringGrid;
    Stgr_EstatisticasOcorrencias13: TStringGrid;
    Stgr_EstatisticasSorteiosAtrasados13: TStringGrid;
    Stgr_Estatisticas13: TStringGrid;
    Label1: TLabel;
    Stgr_Estatisticas11: TStringGrid;
    Stgr_EstatisticasOcorrencias11: TStringGrid;
    Stgr_EstatisticasSorteiosAtrasados11: TStringGrid;
    Stgr_Estatisticas14: TStringGrid;
    Stgr_EstatisticasOcorrencias14: TStringGrid;
    Stgr_EstatisticasSorteiosAtrasados14: TStringGrid;
    Label3: TLabel;
      Procedure Bbt_PREPARAR1Click(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure Bbt_CLOSEClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure Bbt_PREPARAR_MENUClick(Sender: TObject);
      Procedure Bt_NOVA_SIMULACAOClick(Sender: TObject);
      Procedure BitBtn2Click(Sender: TObject);
      Procedure Bbt_SAIRClick(Sender: TObject);
      Procedure Bbt_CANCELARClick(Sender: TObject);
      Procedure Bbt_GERARClick(Sender: TObject);
      Procedure Bbt_GERAR_MENUC(Sender: TObject);
      Procedure Bbt_Pa_REMOVEUREPETClick(Sender: TObject);
      Procedure Bt_REAJUSTARClick(Sender: TObject);
      Procedure Bbt_CARREGARClick(Sender: TObject);
      Procedure Bbt_GERAR_SAIRClick(Sender: TObject);
      Procedure Bbt_RankClick(Sender: TObject);
      Procedure BitBtn1Click(Sender: TObject);
    procedure Bbt_CarregarSorteio15NClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
   Private
      Procedure PreenchimentoInicialPadrao;
      Procedure Zerar_FLAGTodosNumeros();
      Procedure Falso_Linha2TodosNumeros;
      Procedure Falso_Linha1TodosNumeros;
      Procedure Falso_Linha2TodosNumerosP17;
      Procedure Falso_Linha1TodosNumerosP17;
      Procedure Bbt_GerarComb05();
      Function IIf(Expressao, ParteTRUE, ParteFALSE: Variant): Variant;
    procedure Bbt_CarregarSort(Sender: TObject);
      { Private declarations }
   Public
      { Public declarations }
   End;

var
  _F_Ranqueador_18_Jogos_17_NumerosMod1: T_F_Ranqueador_18_Jogos_17_NumerosMod1;

implementation

uses
  System.Generics.Collections, uDataModule01;

{$R *.dfm}


Procedure T_F_Ranqueador_18_Jogos_17_NumerosMod1.FormCreate(Sender: TObject);
Begin
   SELF.ClientWidth := 1560;
   SELF.ClientHeight := 785;
   SELF.Top := 49;
   SELF.Left := 25;
   // SELF.Visible := TRUE;
   Bbt_CLOSE.Left := SELF.ClientWidth - 35;
   Pa_REMOVEUREPET.Left := 5000;
   Pa_PREPARAR.Left := 5000;
   Pa_GERAR.Left := 5000;
   Scbx_GABARITO.Visible := false;
   //Pa_RESULTADO.Visible := false;
   Pa_INICIAL.Enabled := TRUE;
   Pa_INICIAL.Left := 520;
   Pa_INICIAL.Top := 160;
   //Pa_EXECUTAR_FILTRO.Enabled := false;
   //Bbt_CANCELAR_SAIR.Visible := false;
   // SELF.Ibq_COMBINACOES.SQL.Clear;
   // SELF.Ibq_COMBINACOES.SQL.Add('UPDATE FILTRO_10D17_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
   // SELF.Ibq_COMBINACOES.ExecSQL;
   // SELF.Ibq_COMBINACOES.SQL.Clear;
   // SELF.Ibq_COMBINACOES.SQL.Add('COMMIT')  ;
   // SELF.Ibq_COMBINACOES.ExecSQL;
End;

procedure T_F_Ranqueador_18_Jogos_17_NumerosMod1.FormShow(Sender: TObject);
begin
   PreenchimentoInicialPadrao;
end;

Procedure T_F_Ranqueador_18_Jogos_17_NumerosMod1.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   TRY
      BEGIN
         Ibq_COMBINACOES.Close;
         IBDatabase1.Close;
      END
   EXCEPT
      //
   END; // TRY
End;


procedure T_F_Ranqueador_18_Jogos_17_NumerosMod1.Bbt_CLOSEClick(Sender: TObject);
begin
     SELF.Close;
end;




Procedure T_F_Ranqueador_18_Jogos_17_NumerosMod1.Bt_NOVA_SIMULACAOClick(Sender: TObject);
Begin
//   Pa_RESULTADO.Enabled := TRUE;
   // RB_RESULTADOS.SetFocus;
   // RB_RES_GABARITOS.SetFocus;
   Scbx_GABARITO.Visible := TRUE;
   Scbx_GABARITO.Enabled := TRUE;
//   Pa_RESULTADO.Visible := TRUE;
//   Pa_RESULTADO.Enabled := TRUE;
 //  Pa_EXECUTAR_FILTRO.Enabled := TRUE;
 //  Bbt_PREPARAR_MENU.Enabled := TRUE;
//   Bbt_GERAR_MENU.Enabled := false;
//   Bbt_GERAR_MENU.Enabled := false;
//   Bbt_CANCELAR_SAIR.Visible := false;
   Pa_INICIAL.Enabled := false;
   Pa_INICIAL.Left := 2198;
   Scbx_GABARITO.Top := 247;
   Scbx_GABARITO.Repaint;
   PreenchimentoInicialPadrao;
End;


procedure T_F_Ranqueador_18_Jogos_17_NumerosMod1.Bbt_SAIRClick(Sender: TObject);
begin
     SELF.Close;
end;



procedure T_F_Ranqueador_18_Jogos_17_NumerosMod1.Bbt_CANCELARClick(Sender: TObject);
begin
//            SELF.Ibq_COMBINACOES.SQL.Clear;
//            SELF.Ibq_COMBINACOES.SQL.Add('UPDATE FILTRO_10D17_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
//            SELF.Ibq_COMBINACOES.ExecSQL;
//            SELF.Ibq_COMBINACOES.SQL.Clear;
//            SELF.Ibq_COMBINACOES.SQL.Add('COMMIT;')  ;
//            SELF.Ibq_COMBINACOES.ExecSQL;
//          SELF.Close;
end;


Procedure T_F_Ranqueador_18_Jogos_17_NumerosMod1.Bbt_PREPARAR_MENUClick(Sender: TObject);
Begin
   Pa_PREPARAR.Visible := TRUE;
   Pa_PREPARAR.Enabled := TRUE;
   Pa_PREPARAR.Top := 245;
   Pa_PREPARAR.Left := 460;
   Pa_PREPARAR.Repaint;
End;

procedure T_F_Ranqueador_18_Jogos_17_NumerosMod1.BitBtn1Click(Sender: TObject);
var
   Lista : Tlist<string>;
   qtd: integer;
begin
   Lista := Tlist<string>.Create;
   Lista.Add('d');
   Lista.InsertRange(0,['a','b']);
   Lista.AddRange(['f','c','e']);
   Lista.Sort;
   for qtd := 0 to Lista.Count-1 do
   begin
      Showmessage(qtd.ToString + ' =  ' +lista[qtd] );
   end;


end;

Procedure T_F_Ranqueador_18_Jogos_17_NumerosMod1.BitBtn2Click(Sender: TObject);
Begin
   Pa_PREPARAR.Visible := false;
   Pa_PREPARAR.Enabled := false;
   Pa_PREPARAR.Left := 4500;
   Pa_PREPARAR.Repaint;
End;

Procedure T_F_Ranqueador_18_Jogos_17_NumerosMod1.Bbt_PREPARAR1Click(Sender: TObject);
Begin
   PreenchimentoInicialPadrao;

   // SELF.Ibq_COMBINACOES.Close;
   // SELF.Ibq_COMBINACOES.Open;
   // IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
   // SELF.Ibq_COMBINACOES.SQL.Clear;
   // SELF.Ibq_COMBINACOES.SQL.Add('DELETE FROM FILTRO_10D17_DEFINICAO')  ;
   // SELF.Ibq_COMBINACOES.ExecSQL;
   // SELF.Ibq_COMBINACOES.SQL.Clear;
   // SELF.Ibq_COMBINACOES.SQL.Add('DELETE FROM FILTRO_10D17_DADOS_GR')  ;
   // SELF.Ibq_COMBINACOES.ExecSQL;
   // SELF.Ibq_COMBINACOES.SQL.Clear;
   // SELF.Ibq_COMBINACOES.SQL.Add('COMMIT')  ;
   // SELF.Ibq_COMBINACOES.ExecSQL;
   // SELF.Ibq_COMBINACOES.SQL.Clear;
   // SELF.Ibq_COMBINACOES.SQL.Add('SELECT * FROM FILTRO_10D17_DEFINICAO; ')  ;
   // SELF.Ibq_COMBINACOES.Open;
   // SELF.Ibq_COMBINACOES.SQL.Clear;
   // SELF.Ibq_COMBINACOES.SQL.Add('UPDATE FILTRO_10D17_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
   // SELF.Ibq_COMBINACOES.ExecSQL;
   // SELF.Ibq_COMBINACOES.SQL.Clear;
   // SELF.Ibq_COMBINACOES.SQL.Add('COMMIT')  ;
   // SELF.Ibq_COMBINACOES.ExecSQL;
   SELF.Repaint;

   Pa_PREPARAR.Visible := false;
   Pa_PREPARAR.Enabled := false;
   Pa_PREPARAR.Left := 4500;
   Pa_PREPARAR.Repaint;

//   Bbt_PREPARAR_MENU.Enabled := TRUE;
//   Bbt_GERAR_MENU.Enabled := TRUE;
//   Bbt_GERAR_MENU.Enabled := TRUE;
   showmessage('OK');
End;

Procedure T_F_Ranqueador_18_Jogos_17_NumerosMod1.Bbt_GERAR_MENUC(Sender: TObject);
Begin
   Pa_GERAR.Visible := TRUE;
   Pa_GERAR.Enabled := TRUE;
   Pa_GERAR.Top := 235;
   Pa_GERAR.Left := 459;
   Pa_GERAR.Repaint;
End;

Procedure T_F_Ranqueador_18_Jogos_17_NumerosMod1.Bbt_GERARClick(Sender: TObject);
Begin
   Pa_GERAR.Enabled := False;
   Pa_GERAR.Top := 345;
   Pa_GERAR.Left := 9990;
   Pa_GERAR.Repaint;
//   Scbx_Processamento.HorzScrollBar.Position := 0;
   Bbt_GerarComb05;
   showmessage('Fim destas etapas');
End;


Procedure T_F_Ranqueador_18_Jogos_17_NumerosMod1.Bbt_GerarComb05();
Begin

End;



Procedure T_F_Ranqueador_18_Jogos_17_NumerosMod1.Bbt_Pa_REMOVEUREPETClick(Sender: TObject);
Begin
   Pa_REMOVEUREPET.Left := 5000;
   Bbt_RECOMECAR.Enabled := false;
//   Bbt_PREPARAR_MENU.Enabled := false;
//   Bbt_GERAR_MENU.Enabled := false;
   Pa_INICIAL.Enabled := TRUE;
   Bt_NOVA_SIMULACAO.Enabled := false;
   Bt_REAJUSTAR.Enabled := TRUE;
   Bbt_CARREGAR.Enabled := false;
   Pa_INICIAL.Left := 520;
End;

Procedure T_F_Ranqueador_18_Jogos_17_NumerosMod1.Bt_REAJUSTARClick(Sender: TObject);
Begin
   Scbx_GABARITO.Visible := TRUE;
   Scbx_GABARITO.Enabled := TRUE;
//   Pa_RESULTADO.Visible := TRUE;
//   Pa_RESULTADO.Enabled := TRUE;
//   Bbt_PREPARAR_MENU.Enabled := TRUE;
//   Bbt_GERAR_MENU.Enabled := false;
//   Bbt_CANCELAR_SAIR.Visible := false;
   Pa_INICIAL.Enabled := false;
   Pa_INICIAL.Left := 2198;
   Scbx_GABARITO.Top := 247;
   Scbx_GABARITO.Repaint;
End;

Procedure T_F_Ranqueador_18_Jogos_17_NumerosMod1.Bbt_CARREGARClick(Sender: TObject);
Begin
//   Bbt_CANCELAR_SAIR.Visible := TRUE;
   // STGR_COMB05.RowCount := 2;
   // STGR_COMB12.RowCount := 2;
   // STGR_SOBRAS08.RowCount := 2;
   /// /       SELF.PR_LIMPAR_GRID10();
   Scbx_GABARITO.Visible := TRUE;
   Scbx_GABARITO.Enabled := TRUE;
//   Pa_RESULTADO.Visible := TRUE;
//   Pa_RESULTADO.Enabled := TRUE;
//   Pa_EXECUTAR_FILTRO.Enabled := TRUE;

//   Bbt_PREPARAR_MENU.Enabled := false;
//   Bbt_GERAR_MENU.Enabled := false;
//   Pa_INICIAL.Enabled := false;
//   Pa_INICIAL.Left := 2198;
//   Pgbr_GERARCOMB0.Position := 100;
//   La_TOTAL_COMB.Visible := false;
//   La_GERAR_COMB.Visible := false;
   // SELF.Ibq_COMBINACOES.SQL.Clear;
   // SELF.Ibq_COMBINACOES.SQL.Add('UPDATE FILTRO_10D17_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
   // SELF.Ibq_COMBINACOES.ExecSQL;
   // SELF.Ibq_COMBINACOES.SQL.Clear;
   // SELF.Ibq_COMBINACOES.SQL.Add('COMMIT')  ;
   // SELF.Ibq_COMBINACOES.ExecSQL;
   // SELF.PR_SIMULAR_RECUPERANDODADOS('');
End;


procedure T_F_Ranqueador_18_Jogos_17_NumerosMod1.Bbt_CarregarSorteio15NClick(Sender: TObject);
VAR
   viContar1: integer;
Begin
   Ibq_E_SORTEIO_15N.Close;
   Ibq_E_SORTEIO_15N.Prepare;
   Ibq_E_SORTEIO_15N.Open;
   Ibq_E_SORTEIO_15N.First;
   viContar1 := 1;
   While NOT(Ibq_E_SORTEIO_15N.Eof) Do
   Begin
      Stgr_Sorteios.Cells[0, viContar1] := Ibq_E_SORTEIO_15N.FieldByName('N_SORTEIO').AsString;
      Stgr_Sorteios.Cells[1, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S01').AsString, 2);
      Stgr_Sorteios.Cells[2, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S02').AsString, 2);
      Stgr_Sorteios.Cells[3, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S03').AsString, 2);
      Stgr_Sorteios.Cells[4, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S04').AsString, 2);
      Stgr_Sorteios.Cells[5, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S05').AsString, 2);
      Stgr_Sorteios.Cells[6, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S06').AsString, 2);
      Stgr_Sorteios.Cells[7, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S07').AsString, 2);
      Stgr_Sorteios.Cells[8, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S08').AsString, 2);
      Stgr_Sorteios.Cells[9, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S09').AsString, 2);
      Stgr_Sorteios.Cells[10, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S10').AsString, 2);
      Stgr_Sorteios.Cells[11, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S11').AsString, 2);
      Stgr_Sorteios.Cells[12, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S12').AsString, 2);
      Stgr_Sorteios.Cells[13, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S13').AsString, 2);
      Stgr_Sorteios.Cells[14, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S14').AsString, 2);
      Stgr_Sorteios.Cells[15, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S15').AsString, 2);
      Stgr_Sorteios.Cells[16, viContar1] := '';
      Stgr_Sorteios.Cells[17, viContar1] := '+0';
      Stgr_Sorteios.Cells[18, viContar1] := '+0';
      Ibq_E_SORTEIO_15N.Next;
      viContar1 := viContar1 + 1;
   End;
   Stgr_Sorteios.RowCount := viContar1;
end;


Procedure T_F_Ranqueador_18_Jogos_17_NumerosMod1.Bbt_CarregarSort(Sender: TObject);
VAR
   viContar1: integer;
Begin
   Ibq_E_SORTEIO_15N.Close;
   Ibq_E_SORTEIO_15N.Prepare;
   Ibq_E_SORTEIO_15N.Open;
   Ibq_E_SORTEIO_15N.First;
   viContar1 := 1;
   While NOT(Ibq_E_SORTEIO_15N.Eof) Do
   Begin
      Stgr_Sorteios.Cells[0, viContar1] := Ibq_E_SORTEIO_15N.FieldByName('N_SORTEIO').AsString;
      Stgr_Sorteios.Cells[1, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S01').AsString, 2);
      Stgr_Sorteios.Cells[2, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S02').AsString, 2);
      Stgr_Sorteios.Cells[3, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S03').AsString, 2);
      Stgr_Sorteios.Cells[4, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S04').AsString, 2);
      Stgr_Sorteios.Cells[5, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S05').AsString, 2);
      Stgr_Sorteios.Cells[6, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S06').AsString, 2);
      Stgr_Sorteios.Cells[7, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S07').AsString, 2);
      Stgr_Sorteios.Cells[8, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S08').AsString, 2);
      Stgr_Sorteios.Cells[9, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S09').AsString, 2);
      Stgr_Sorteios.Cells[10, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S10').AsString, 2);
      Stgr_Sorteios.Cells[11, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S11').AsString, 2);
      Stgr_Sorteios.Cells[12, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S12').AsString, 2);
      Stgr_Sorteios.Cells[13, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S13').AsString, 2);
      Stgr_Sorteios.Cells[14, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S14').AsString, 2);
      Stgr_Sorteios.Cells[15, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S15').AsString, 2);
      Stgr_Sorteios.Cells[16, viContar1] := '';
      Stgr_Sorteios.Cells[17, viContar1] := '+0';
      Stgr_Sorteios.Cells[18, viContar1] := '+0';
      Ibq_E_SORTEIO_15N.Next;
      viContar1 := viContar1 + 1;
   End;
   Stgr_Sorteios.RowCount := viContar1;
End;


procedure T_F_Ranqueador_18_Jogos_17_NumerosMod1.Bbt_RankClick(Sender: TObject);
var
   viContar17Combinacoes,viContarSorteios, viValorDasCoicidencias, viContarCelulas : integer;
   li_QtdOcorrencias12, li_QtdAtrasados12 : Tlist<String>;
   viUltimoSorteio12, vdbQtdOcorrencias12, vdbPercentualOcorrencias12 : Double;
   li_QtdOcorrencias11, li_QtdAtrasados11: TList<String>;
   viUltimoSorteio11, vdbQtdOcorrencias11, vdbPercentualOcorrencias11: Double;
   li_QtdOcorrencias13, li_QtdAtrasados13 : Tlist<String>;
   viUltimoSorteio13, vdbQtdOcorrencias13, vdbPercentualOcorrencias13 : Double;
   li_QtdOcorrencias14, li_QtdAtrasados14 : Tlist<String>;
   viUltimoSorteio14, vdbQtdOcorrencias14, vdbPercentualOcorrencias14 : Double;
begin
   li_QtdOcorrencias12 := Tlist<String>.Create;
   li_QtdAtrasados12 := Tlist<String>.Create;
   li_QtdOcorrencias11 := Tlist<String>.Create;
   li_QtdAtrasados11 := Tlist<String>.Create;
   li_QtdOcorrencias13 := Tlist<String>.Create;
   li_QtdAtrasados13 := Tlist<String>.Create;
   li_QtdOcorrencias14 := Tlist<String>.Create;
   li_QtdAtrasados14 := Tlist<String>.Create;
   li_QtdOcorrencias12.Clear;
   li_QtdAtrasados12.Clear;
   li_QtdOcorrencias11.Clear;
   li_QtdAtrasados11.Clear;
   li_QtdOcorrencias13.Clear;
   li_QtdAtrasados13.Clear;
   li_QtdOcorrencias14.Clear;
   li_QtdAtrasados14.Clear;
   for viContar17Combinacoes := 1 to Trunc((Stgr_Base17.RowCount-1)/1) do
   begin
      La_NSorteioRank.Caption := viContar17Combinacoes.ToString;
      Stgr_Sorteios.Cells[17, 0] := viContar17Combinacoes.ToString;
      Stgr_Sorteios.Repaint;
      La_NSorteioRank.Repaint;
      // --> Montar Flags com as combinações
      Falso_Linha1TodosNumeros();
      FOR viContarCelulas := 2 TO 18 DO
      begin
         Stgr_Todos_Numeros.Cells[ (STRtoINT(Stgr_Base17.Cells[viContarCelulas,viContar17Combinacoes])) ,1]:='V';
      end;
      vdbQtdOcorrencias11 :=0;
      vdbQtdOcorrencias12 :=0;
      vdbQtdOcorrencias13 :=0;
      vdbQtdOcorrencias14 :=0;
      viUltimoSorteio11 :=0;
      viUltimoSorteio12 :=0;
      viUltimoSorteio13 :=0;
      viUltimoSorteio14 :=0;
      for viContarSorteios := 1 to Trunc((Stgr_Sorteios.RowCount-1)/1) do
      begin
         // --> Montar Flags com os sorteios
         Falso_Linha2TodosNumeros();
         FOR viContarCelulas := 1 TO 15 DO
         begin
            Stgr_Todos_Numeros.Cells[ (STRtoINT(Stgr_Sorteios.Cells[viContarCelulas,viContarSorteios])) ,2]:='V';
         end;
         viValorDasCoicidencias  := 0;
         FOR viContarCelulas := 1 TO 25 DO
         Begin
            If Stgr_Todos_Numeros.Cells[viContarCelulas, 1] = 'V' Then
               If Stgr_Todos_Numeros.Cells[viContarCelulas, 1] = Stgr_Todos_Numeros.Cells[viContarCelulas, 2] Then
                  viValorDasCoicidencias := viValorDasCoicidencias + 1;
            Stgr_Sorteios.Cells[17, viContarSorteios] := viValorDasCoicidencias.ToString;
         End;
         if viValorDasCoicidencias = 11 then
         begin
            vdbQtdOcorrencias11 := vdbQtdOcorrencias11 + 1;
            viUltimoSorteio11 := viContarSorteios;
         end
         else
         if viValorDasCoicidencias = 12 then
         begin
            vdbQtdOcorrencias12 := vdbQtdOcorrencias12 + 1;
            viUltimoSorteio12 := viContarSorteios;
         end
         else
         if viValorDasCoicidencias = 13 then
         begin
            vdbQtdOcorrencias13 := vdbQtdOcorrencias13 + 1;
            viUltimoSorteio13 := viContarSorteios;
         end
         else
         if viValorDasCoicidencias = 14 then
         begin
            vdbQtdOcorrencias14 := vdbQtdOcorrencias14 + 1;
            viUltimoSorteio14 := viContarSorteios;
         end;
      end;
      // --> Estatisticas 12
      vdbPercentualOcorrencias12 := RoundTo((vdbQtdOcorrencias12 / (Stgr_Sorteios.RowCount-1) *100),-2);
      Stgr_Estatisticas.Cells[0,viContar17Combinacoes] := viContar17Combinacoes.ToString;
      Stgr_Estatisticas.Cells[1,viContar17Combinacoes] := RightStr('0000'+(vdbQtdOcorrencias12.ToString),5);
      Stgr_Estatisticas.Cells[2,viContar17Combinacoes] := vdbPercentualOcorrencias12.ToString+'%';
      li_QtdOcorrencias12.add( RightStr('0000'+(vdbQtdOcorrencias12.ToString),5) + ' equivalente a ' + vdbPercentualOcorrencias12.ToString+'% no '  + RightStr('0'+viContar17Combinacoes.ToString,2));
      Stgr_Estatisticas.Cells[3,viContar17Combinacoes] := ' 1 em '+ (RoundTo((Stgr_Sorteios.RowCount-1) / vdbQtdOcorrencias12,-4)).ToString;
      Stgr_Estatisticas.Cells[4,viContar17Combinacoes] := viUltimoSorteio12.ToString;
      Stgr_Estatisticas.Cells[5,viContar17Combinacoes] := RightStr('00'+((Stgr_Sorteios.RowCount-1) - viUltimoSorteio12).ToString,3);
      li_QtdAtrasados12.Add(RightStr('00'+((Stgr_Sorteios.RowCount-1) - viUltimoSorteio12).ToString,3) + ' no sorteio '+ viUltimoSorteio12.ToString+ ' no '  + RightStr('0'+viContar17Combinacoes.ToString,2));
      Stgr_Estatisticas.Repaint;
      // --> Estatísticas 11
      // --> Montar Flags com as combinações
      vdbPercentualOcorrencias11 := RoundTo((vdbQtdOcorrencias11 / (Stgr_Sorteios.RowCount-1) *100),-2);
      Stgr_Estatisticas11.Cells[0,viContar17Combinacoes] := viContar17Combinacoes.ToString;
      Stgr_Estatisticas11.Cells[1,viContar17Combinacoes] := RightStr('0000'+(vdbQtdOcorrencias11.ToString),5);
      Stgr_Estatisticas11.Cells[2,viContar17Combinacoes] := vdbPercentualOcorrencias11.ToString+'%';
      li_QtdOcorrencias11.add( RightStr('0000'+(vdbQtdOcorrencias11.ToString),5) + ' equivalente a ' + vdbPercentualOcorrencias11.ToString+'% no '  + RightStr('0'+viContar17Combinacoes.ToString,2));
      Stgr_Estatisticas11.Cells[3,viContar17Combinacoes] := ' 1 em '+ (RoundTo((Stgr_Sorteios.RowCount-1) / vdbQtdOcorrencias11,-4)).ToString;
      Stgr_Estatisticas11.Cells[4,viContar17Combinacoes] := viUltimoSorteio11.ToString;
      Stgr_Estatisticas11.Cells[5,viContar17Combinacoes] := RightStr('00'+((Stgr_Sorteios.RowCount-1) - viUltimoSorteio11).ToString,3);
      li_QtdAtrasados11.Add(RightStr('00'+((Stgr_Sorteios.RowCount-1) - viUltimoSorteio11).ToString,3) + ' no sorteio '+ viUltimoSorteio11.ToString+ ' no '  + RightStr('0'+viContar17Combinacoes.ToString,2));
      Stgr_Estatisticas11.Repaint;
      // --> Estatísticas 13
      // --> Montar Flags com as combinações
      vdbPercentualOcorrencias13 := RoundTo((vdbQtdOcorrencias13 / (Stgr_Sorteios.RowCount-1) *100),-2);
      Stgr_Estatisticas13.Cells[0,viContar17Combinacoes] := viContar17Combinacoes.ToString;
      Stgr_Estatisticas13.Cells[1,viContar17Combinacoes] := RightStr('0000'+(vdbQtdOcorrencias13.ToString),5);
      Stgr_Estatisticas13.Cells[2,viContar17Combinacoes] := vdbPercentualOcorrencias13.ToString+'%';
      li_QtdOcorrencias13.add( RightStr('0000'+(vdbQtdOcorrencias13.ToString),5) + ' equivalente a ' + vdbPercentualOcorrencias13.ToString+'% no '  + RightStr('0'+viContar17Combinacoes.ToString,2));
      Stgr_Estatisticas13.Cells[3,viContar17Combinacoes] := ' 1 em '+ (RoundTo((Stgr_Sorteios.RowCount-1) / vdbQtdOcorrencias13,-4)).ToString;
      Stgr_Estatisticas13.Cells[4,viContar17Combinacoes] := viUltimoSorteio13.ToString;
      Stgr_Estatisticas13.Cells[5,viContar17Combinacoes] := RightStr('00'+((Stgr_Sorteios.RowCount-1) - viUltimoSorteio13).ToString,3);
      li_QtdAtrasados13.Add(RightStr('00'+((Stgr_Sorteios.RowCount-1) - viUltimoSorteio13).ToString,3) + ' no sorteio '+ viUltimoSorteio13.ToString+ ' no '  + RightStr('0'+viContar17Combinacoes.ToString,2));
      Stgr_Estatisticas13.Repaint;
      // --> Estatísticas 14
      // --> Montar Flags com as combinações
      vdbPercentualOcorrencias14 := RoundTo((vdbQtdOcorrencias14 / (Stgr_Sorteios.RowCount-1) *100),-2);
      Stgr_Estatisticas14.Cells[0,viContar17Combinacoes] := viContar17Combinacoes.ToString;
      Stgr_Estatisticas14.Cells[1,viContar17Combinacoes] := RightStr('0000'+(vdbQtdOcorrencias14.ToString),5);
      Stgr_Estatisticas14.Cells[2,viContar17Combinacoes] := vdbPercentualOcorrencias14.ToString+'%';
      li_QtdOcorrencias14.add( RightStr('0000'+(vdbQtdOcorrencias14.ToString),5) + ' equivalente a ' + vdbPercentualOcorrencias14.ToString+'% no '  + RightStr('0'+viContar17Combinacoes.ToString,2));
      if vdbQtdOcorrencias14=0 then
      begin
         Stgr_Estatisticas14.Cells[3,viContar17Combinacoes] := ' Nenhuma ';
      end else
      begin
         Stgr_Estatisticas14.Cells[3,viContar17Combinacoes] := ' 1 em '+ (RoundTo((Stgr_Sorteios.RowCount-1) / vdbQtdOcorrencias14,-4)).ToString;
      end;
      Stgr_Estatisticas14.Cells[4,viContar17Combinacoes] := viUltimoSorteio14.ToString;
      Stgr_Estatisticas14.Cells[5,viContar17Combinacoes] := RightStr('00'+((Stgr_Sorteios.RowCount-1) - viUltimoSorteio14).ToString,4);
      li_QtdAtrasados14.Add(RightStr('00'+((Stgr_Sorteios.RowCount-1) - viUltimoSorteio14).ToString,4) + ' no sorteio '+ viUltimoSorteio14.ToString+ ' no '  + RightStr('0'+viContar17Combinacoes.ToString,2));
      Stgr_Estatisticas14.Repaint;

      Stgr_Sorteios.Repaint;
      Falso_Linha1TodosNumeros();
//      FOR viContarCelulas := 2 TO 09 DO
//      begin
//         Stgr_Todos_Numeros.Cells[ (STRtoINT(Stgr_Base08.Cells[viContarCelulas,viContar17Combinacoes])) ,1]:='V';
//      end;
      for viContarSorteios := 1 to Trunc((Stgr_Sorteios.RowCount-1)/1) do
      begin
         // --> Montar Flags com os sorteios
         Falso_Linha2TodosNumeros();
         FOR viContarCelulas := 1 TO 15 DO
         begin
            Stgr_Todos_Numeros.Cells[ (STRtoINT(Stgr_Sorteios.Cells[viContarCelulas,viContarSorteios])) ,2]:='V';
         end;
         viValorDasCoicidencias  := 0;
         FOR viContarCelulas := 1 TO 25 DO
         Begin
            If Stgr_Todos_Numeros.Cells[viContarCelulas, 1] = 'V' Then
               If Stgr_Todos_Numeros.Cells[viContarCelulas, 1] = Stgr_Todos_Numeros.Cells[viContarCelulas, 2] Then
                  viValorDasCoicidencias := viValorDasCoicidencias + 1;
            Stgr_Sorteios.Cells[18, viContarSorteios] := viValorDasCoicidencias.ToString;
         End;
      end;
   end;
   La_NSorteioRank.Caption := 'Número de sorteios apurados:  '+ (Stgr_Sorteios.RowCount-1).ToString;
   li_QtdOcorrencias11.Sort;
   li_QtdAtrasados11.Sort;
   li_QtdOcorrencias12.Sort;
   li_QtdAtrasados12.Sort;
   li_QtdOcorrencias13.Sort;
   li_QtdAtrasados13.Sort;
   li_QtdOcorrencias14.Sort;
   li_QtdAtrasados14.Sort;
   for viContar17Combinacoes := Trunc((Stgr_Base17.RowCount-1)/1) downto 1 do
   begin
      Stgr_EstatisticasOcorrencias.Cells[0, Stgr_Base17.RowCount-viContar17Combinacoes] := li_QtdOcorrencias12[viContar17Combinacoes-1];
      Stgr_EstatisticasSorteiosAtrasados.Cells[0, Stgr_Base17.RowCount-viContar17Combinacoes] :=  li_QtdAtrasados12[viContar17Combinacoes-1];
      Stgr_EstatisticasOcorrencias11.Cells[0, Stgr_Base17.RowCount-viContar17Combinacoes] := li_QtdOcorrencias11[viContar17Combinacoes-1];
      Stgr_EstatisticasSorteiosAtrasados11.Cells[0, Stgr_Base17.RowCount-viContar17Combinacoes] :=  li_QtdAtrasados11[viContar17Combinacoes-1];
      Stgr_EstatisticasOcorrencias13.Cells[0, Stgr_Base17.RowCount-viContar17Combinacoes] := li_QtdOcorrencias13[viContar17Combinacoes-1];
      Stgr_EstatisticasSorteiosAtrasados13.Cells[0, Stgr_Base17.RowCount-viContar17Combinacoes] :=  li_QtdAtrasados13[viContar17Combinacoes-1];
      Stgr_EstatisticasOcorrencias14.Cells[0, Stgr_Base17.RowCount-viContar17Combinacoes] := li_QtdOcorrencias14[viContar17Combinacoes-1];
      Stgr_EstatisticasSorteiosAtrasados14.Cells[0, Stgr_Base17.RowCount-viContar17Combinacoes] :=  li_QtdAtrasados14[viContar17Combinacoes-1];
   end;
   Stgr_EstatisticasOcorrencias.RowCount := Stgr_Base17.RowCount;
   Stgr_EstatisticasSorteiosAtrasados.RowCount := Stgr_Base17.RowCount;
   Stgr_EstatisticasOcorrencias13.RowCount := Stgr_Base17.RowCount;
   Stgr_EstatisticasSorteiosAtrasados13.RowCount := Stgr_Base17.RowCount;
//   Stgr_EstatisticasOcorrencias[0,viContar17Combinacoes] :=
//   Stgr_EstatisticasSorteiosAtrasados[0,viContar17Combinacoes] :=
   Stgr_EstatisticasOcorrencias.Repaint;
   Stgr_EstatisticasSorteiosAtrasados.Repaint;
   Stgr_EstatisticasOcorrencias13.Repaint;
   Stgr_EstatisticasSorteiosAtrasados13.Repaint;
   Showmessage('Fim do Rank');
   li_QtdOcorrencias12.DisposeOf;
   li_QtdAtrasados12.DisposeOf;
   li_QtdOcorrencias11.DisposeOf;
   li_QtdAtrasados11.DisposeOf;
   li_QtdOcorrencias13.DisposeOf;
   li_QtdAtrasados13.DisposeOf;
   li_QtdOcorrencias14.DisposeOf;
   li_QtdAtrasados14.DisposeOf;
end;


procedure T_F_Ranqueador_18_Jogos_17_NumerosMod1.Bbt_GERAR_SAIRClick(Sender: TObject);
Begin
   Pa_GERAR.Enabled := false;
   Pa_GERAR.Left := 4500;
   Pa_GERAR.Repaint;
End;


Procedure T_F_Ranqueador_18_Jogos_17_NumerosMod1.PreenchimentoInicialPadrao;
var
  viContar: Integer;
begin
   Zerar_FLAGTodosNumeros();
   for viContar := 2 to 18 do
   begin
      Stgr_Base17.Cells[viContar, 0] := INTtoSTR(viContar - 1);
   end;
//   for viContar := 2 to 9 do
//   begin
//      Stgr_Base08.Cells[viContar, 0] := INTtoSTR(viContar - 1);
//   end;
   //01
   Stgr_Base17.Cells[00, 01] := '01';
   Stgr_Base17.Cells[01, 01] := 'V';
   Stgr_Base17.Cells[02, 01] := '01';
   Stgr_Base17.Cells[03, 01] := '02';
   Stgr_Base17.Cells[04, 01] := '03';
   Stgr_Base17.Cells[05, 01] := '04';
   Stgr_Base17.Cells[06, 01] := '07';
   Stgr_Base17.Cells[07, 01] := '09';
   Stgr_Base17.Cells[08, 01] := '10';
   Stgr_Base17.Cells[09, 01] := '11';
   Stgr_Base17.Cells[10, 01] := '12';
   Stgr_Base17.Cells[11, 01] := '14';
   Stgr_Base17.Cells[12, 01] := '16';
   Stgr_Base17.Cells[13, 01] := '17';
   Stgr_Base17.Cells[14, 01] := '19';
   Stgr_Base17.Cells[15, 01] := '22';
   Stgr_Base17.Cells[16, 01] := '23';
   Stgr_Base17.Cells[17, 01] := '24';
   Stgr_Base17.Cells[18, 01] := '25';
//   Stgr_Base08.Cells[0, 01] := '01';
//   Stgr_Base08.Cells[1, 01] := 'V';
//   Stgr_Base08.Cells[2, 01] := '03';
//   Stgr_Base08.Cells[3, 01] := '04';
//   Stgr_Base08.Cells[4, 01] := '11';
//   Stgr_Base08.Cells[5, 01] := '15';
//   Stgr_Base08.Cells[6, 01] := '17';
//   Stgr_Base08.Cells[7, 01] := '18';
//   Stgr_Base08.Cells[8, 01] := '22';
//   Stgr_Base08.Cells[9, 01] := '23';
   //02
   Stgr_Base17.Cells[00, 02] := '02';
   Stgr_Base17.Cells[01, 02] := 'V';
   Stgr_Base17.Cells[02, 02] := '01';
   Stgr_Base17.Cells[03, 02] := '02';
   Stgr_Base17.Cells[04, 02] := '03';
   Stgr_Base17.Cells[05, 02] := '04';
   Stgr_Base17.Cells[06, 02] := '07';
   Stgr_Base17.Cells[07, 02] := '09';
   Stgr_Base17.Cells[08, 02] := '10';
   Stgr_Base17.Cells[09, 02] := '12';
   Stgr_Base17.Cells[10, 02] := '13';
   Stgr_Base17.Cells[11, 02] := '14';
   Stgr_Base17.Cells[12, 02] := '16';
   Stgr_Base17.Cells[13, 02] := '17';
   Stgr_Base17.Cells[14, 02] := '19';
   Stgr_Base17.Cells[15, 02] := '22';
   Stgr_Base17.Cells[16, 02] := '23';
   Stgr_Base17.Cells[17, 02] := '24';
   Stgr_Base17.Cells[18, 02] := '25';
//   Stgr_Base08.Cells[0, 02] := '02';
//   Stgr_Base08.Cells[1, 02] := 'V';
//   Stgr_Base08.Cells[2, 02] := '03';
//   Stgr_Base08.Cells[3, 02] := '04';
//   Stgr_Base08.Cells[4, 02] := '09';
//   Stgr_Base08.Cells[5, 02] := '11';
//   Stgr_Base08.Cells[6, 02] := '15';
//   Stgr_Base08.Cells[7, 02] := '18';
//   Stgr_Base08.Cells[8, 02] := '22';
//   Stgr_Base08.Cells[9, 02] := '23';
   //03
   Stgr_Base17.Cells[00, 03] := '03';
   Stgr_Base17.Cells[01, 03] := 'V';
   Stgr_Base17.Cells[02, 03] := '01';
   Stgr_Base17.Cells[03, 03] := '02';
   Stgr_Base17.Cells[04, 03] := '03';
   Stgr_Base17.Cells[05, 03] := '04';
   Stgr_Base17.Cells[06, 03] := '07';
   Stgr_Base17.Cells[07, 03] := '09';
   Stgr_Base17.Cells[08, 03] := '10';
   Stgr_Base17.Cells[09, 03] := '12';
   Stgr_Base17.Cells[10, 03] := '14';
   Stgr_Base17.Cells[11, 03] := '15';
   Stgr_Base17.Cells[12, 03] := '16';
   Stgr_Base17.Cells[13, 03] := '17';
   Stgr_Base17.Cells[14, 03] := '19';
   Stgr_Base17.Cells[15, 03] := '22';
   Stgr_Base17.Cells[16, 03] := '23';
   Stgr_Base17.Cells[17, 03] := '24';
   Stgr_Base17.Cells[18, 03] := '25';
//   Stgr_Base08.Cells[0, 03] := '03';
//   Stgr_Base08.Cells[1, 03] := 'V';
//   Stgr_Base08.Cells[2, 03] := '03';
//   Stgr_Base08.Cells[3, 03] := '04';
//   Stgr_Base08.Cells[4, 03] := '09';
//   Stgr_Base08.Cells[5, 03] := '11';
//   Stgr_Base08.Cells[6, 03] := '15';
//   Stgr_Base08.Cells[7, 03] := '17';
//   Stgr_Base08.Cells[8, 03] := '22';
//   Stgr_Base08.Cells[9, 03] := '23';
   //04
   Stgr_Base17.Cells[00, 04] := '04';
   Stgr_Base17.Cells[01, 04] := 'V';
   Stgr_Base17.Cells[02, 04] := '03';
   Stgr_Base17.Cells[03, 04] := '04';
   Stgr_Base17.Cells[04, 04] := '05';
   Stgr_Base17.Cells[05, 04] := '06';
   Stgr_Base17.Cells[06, 04] := '07';
   Stgr_Base17.Cells[07, 04] := '08';
   Stgr_Base17.Cells[08, 04] := '09';
   Stgr_Base17.Cells[09, 04] := '10';
   Stgr_Base17.Cells[10, 04] := '15';
   Stgr_Base17.Cells[11, 04] := '16';
   Stgr_Base17.Cells[12, 04] := '17';
   Stgr_Base17.Cells[13, 04] := '18';
   Stgr_Base17.Cells[14, 04] := '19';
   Stgr_Base17.Cells[15, 04] := '20';
   Stgr_Base17.Cells[16, 04] := '21';
   Stgr_Base17.Cells[17, 04] := '22';
   Stgr_Base17.Cells[18, 04] := '23';
//   Stgr_Base08.Cells[0, 04] := '04';
//   Stgr_Base08.Cells[1, 04] := 'V';
//   Stgr_Base08.Cells[2, 04] := '03';
//   Stgr_Base08.Cells[3, 04] := '04';
//   Stgr_Base08.Cells[4, 04] := '08';
//   Stgr_Base08.Cells[5, 04] := '11';
//   Stgr_Base08.Cells[6, 04] := '15';
//   Stgr_Base08.Cells[7, 04] := '18';
//   Stgr_Base08.Cells[8, 04] := '22';
//   Stgr_Base08.Cells[9, 04] := '23';
   //05
   Stgr_Base17.Cells[00, 05] := '05';
   Stgr_Base17.Cells[01, 05] := 'V';
   Stgr_Base17.Cells[02, 05] := '03';
   Stgr_Base17.Cells[03, 05] := '04';
   Stgr_Base17.Cells[04, 05] := '05';
   Stgr_Base17.Cells[05, 05] := '06';
   Stgr_Base17.Cells[06, 05] := '07';
   Stgr_Base17.Cells[07, 05] := '08';
   Stgr_Base17.Cells[08, 05] := '09';
   Stgr_Base17.Cells[09, 05] := '10';
   Stgr_Base17.Cells[10, 05] := '13';
   Stgr_Base17.Cells[11, 05] := '16';
   Stgr_Base17.Cells[12, 05] := '17';
   Stgr_Base17.Cells[13, 05] := '18';
   Stgr_Base17.Cells[14, 05] := '19';
   Stgr_Base17.Cells[15, 05] := '20';
   Stgr_Base17.Cells[16, 05] := '21';
   Stgr_Base17.Cells[17, 05] := '22';
   Stgr_Base17.Cells[18, 05] := '23';
//   Stgr_Base08.Cells[0, 05] := '05';
//   Stgr_Base08.Cells[1, 05] := 'V';
//   Stgr_Base08.Cells[2, 05] := '03';
//   Stgr_Base08.Cells[3, 05] := '04';
//   Stgr_Base08.Cells[4, 05] := '08';
//   Stgr_Base08.Cells[5, 05] := '11';
//   Stgr_Base08.Cells[6, 05] := '15';
//   Stgr_Base08.Cells[7, 05] := '17';
//   Stgr_Base08.Cells[8, 05] := '22';
//   Stgr_Base08.Cells[9, 05] := '23';
   //06
   Stgr_Base17.Cells[00, 06] := '06';
   Stgr_Base17.Cells[01, 06] := 'V';
   Stgr_Base17.Cells[02, 06] := '03';
   Stgr_Base17.Cells[03, 06] := '04';
   Stgr_Base17.Cells[04, 06] := '05';
   Stgr_Base17.Cells[05, 06] := '06';
   Stgr_Base17.Cells[06, 06] := '07';
   Stgr_Base17.Cells[07, 06] := '08';
   Stgr_Base17.Cells[08, 06] := '09';
   Stgr_Base17.Cells[09, 06] := '10';
   Stgr_Base17.Cells[10, 06] := '11';
   Stgr_Base17.Cells[11, 06] := '16';
   Stgr_Base17.Cells[12, 06] := '17';
   Stgr_Base17.Cells[13, 06] := '18';
   Stgr_Base17.Cells[14, 06] := '19';
   Stgr_Base17.Cells[15, 06] := '20';
   Stgr_Base17.Cells[16, 06] := '21';
   Stgr_Base17.Cells[17, 06] := '22';
   Stgr_Base17.Cells[18, 06] := '23';
   //07
   Stgr_Base17.Cells[00, 07] := '07';
   Stgr_Base17.Cells[01, 07] := 'V';
   Stgr_Base17.Cells[02, 07] := '01';
   Stgr_Base17.Cells[03, 07] := '02';
   Stgr_Base17.Cells[04, 07] := '03';
   Stgr_Base17.Cells[05, 07] := '04';
   Stgr_Base17.Cells[06, 07] := '05';
   Stgr_Base17.Cells[07, 07] := '06';
   Stgr_Base17.Cells[08, 07] := '08';
   Stgr_Base17.Cells[09, 07] := '11';
   Stgr_Base17.Cells[10, 07] := '12';
   Stgr_Base17.Cells[11, 07] := '13';
   Stgr_Base17.Cells[12, 07] := '14';
   Stgr_Base17.Cells[13, 07] := '15';
   Stgr_Base17.Cells[14, 07] := '18';
   Stgr_Base17.Cells[15, 07] := '20';
   Stgr_Base17.Cells[16, 07] := '21';
   Stgr_Base17.Cells[17, 07] := '24';
   Stgr_Base17.Cells[18, 07] := '25';
   //08
   Stgr_Base17.Cells[00, 08] := '08';
   Stgr_Base17.Cells[01, 08] := 'V';
   Stgr_Base17.Cells[02, 08] := '01';
   Stgr_Base17.Cells[03, 08] := '02';
   Stgr_Base17.Cells[04, 08] := '03';
   Stgr_Base17.Cells[05, 08] := '05';
   Stgr_Base17.Cells[06, 08] := '06';
   Stgr_Base17.Cells[07, 08] := '08';
   Stgr_Base17.Cells[08, 08] := '11';
   Stgr_Base17.Cells[09, 08] := '12';
   Stgr_Base17.Cells[10, 08] := '13';
   Stgr_Base17.Cells[11, 08] := '14';
   Stgr_Base17.Cells[12, 08] := '15';
   Stgr_Base17.Cells[13, 08] := '18';
   Stgr_Base17.Cells[14, 08] := '20';
   Stgr_Base17.Cells[15, 08] := '21';
   Stgr_Base17.Cells[16, 08] := '22';
   Stgr_Base17.Cells[17, 08] := '24';
   Stgr_Base17.Cells[18, 08] := '25';
   //09
   Stgr_Base17.Cells[00, 09] := '09';
   Stgr_Base17.Cells[01, 09] := 'V';
   Stgr_Base17.Cells[02, 09] := '01';
   Stgr_Base17.Cells[03, 09] := '02';
   Stgr_Base17.Cells[04, 09] := '03';
   Stgr_Base17.Cells[05, 09] := '05';
   Stgr_Base17.Cells[06, 09] := '06';
   Stgr_Base17.Cells[07, 09] := '08';
   Stgr_Base17.Cells[08, 09] := '11';
   Stgr_Base17.Cells[09, 09] := '12';
   Stgr_Base17.Cells[10, 09] := '13';
   Stgr_Base17.Cells[11, 09] := '14';
   Stgr_Base17.Cells[12, 09] := '15';
   Stgr_Base17.Cells[13, 09] := '18';
   Stgr_Base17.Cells[14, 09] := '20';
   Stgr_Base17.Cells[15, 09] := '21';
   Stgr_Base17.Cells[16, 09] := '23';
   Stgr_Base17.Cells[17, 09] := '24';
   Stgr_Base17.Cells[18, 09] := '25';
   //10
   Stgr_Base17.Cells[00, 10] := '10';
   Stgr_Base17.Cells[01, 10] := 'V';
   Stgr_Base17.Cells[02, 10] := '01';
   Stgr_Base17.Cells[03, 10] := '02';
   Stgr_Base17.Cells[04, 10] := '04';
   Stgr_Base17.Cells[05, 10] := '05';
   Stgr_Base17.Cells[06, 10] := '06';
   Stgr_Base17.Cells[07, 10] := '08';
   Stgr_Base17.Cells[08, 10] := '11';
   Stgr_Base17.Cells[09, 10] := '12';
   Stgr_Base17.Cells[10, 10] := '13';
   Stgr_Base17.Cells[11, 10] := '14';
   Stgr_Base17.Cells[12, 10] := '15';
   Stgr_Base17.Cells[13, 10] := '18';
   Stgr_Base17.Cells[14, 10] := '20';
   Stgr_Base17.Cells[15, 10] := '21';
   Stgr_Base17.Cells[16, 10] := '22';
   Stgr_Base17.Cells[17, 10] := '24';
   Stgr_Base17.Cells[18, 10] := '25';
   //11
   Stgr_Base17.Cells[00, 11] := '11';
   Stgr_Base17.Cells[01, 11] := 'V';
   Stgr_Base17.Cells[02, 11] := '01';
   Stgr_Base17.Cells[03, 11] := '02';
   Stgr_Base17.Cells[04, 11] := '04';
   Stgr_Base17.Cells[05, 11] := '05';
   Stgr_Base17.Cells[06, 11] := '06';
   Stgr_Base17.Cells[07, 11] := '08';
   Stgr_Base17.Cells[08, 11] := '11';
   Stgr_Base17.Cells[09, 11] := '12';
   Stgr_Base17.Cells[10, 11] := '13';
   Stgr_Base17.Cells[11, 11] := '14';
   Stgr_Base17.Cells[12, 11] := '15';
   Stgr_Base17.Cells[13, 11] := '18';
   Stgr_Base17.Cells[14, 11] := '20';
   Stgr_Base17.Cells[15, 11] := '21';
   Stgr_Base17.Cells[16, 11] := '23';
   Stgr_Base17.Cells[17, 11] := '24';
   Stgr_Base17.Cells[18, 11] := '25';
   //12
   Stgr_Base17.Cells[00, 12] := '12';
   Stgr_Base17.Cells[01, 12] := 'V';
   Stgr_Base17.Cells[02, 12] := '01';
   Stgr_Base17.Cells[03, 12] := '02';
   Stgr_Base17.Cells[04, 12] := '05';
   Stgr_Base17.Cells[05, 12] := '06';
   Stgr_Base17.Cells[06, 12] := '08';
   Stgr_Base17.Cells[07, 12] := '11';
   Stgr_Base17.Cells[08, 12] := '12';
   Stgr_Base17.Cells[09, 12] := '13';
   Stgr_Base17.Cells[10, 12] := '14';
   Stgr_Base17.Cells[11, 12] := '15';
   Stgr_Base17.Cells[12, 12] := '18';
   Stgr_Base17.Cells[13, 12] := '20';
   Stgr_Base17.Cells[14, 12] := '21';
   Stgr_Base17.Cells[15, 12] := '22';
   Stgr_Base17.Cells[16, 12] := '23';
   Stgr_Base17.Cells[17, 12] := '24';
   Stgr_Base17.Cells[18, 12] := '25';
   //13
   Stgr_Base17.Cells[00, 13] := '13';
   Stgr_Base17.Cells[01, 13] := 'V';
   Stgr_Base17.Cells[02, 13] := '05';
   Stgr_Base17.Cells[03, 13] := '06';
   Stgr_Base17.Cells[04, 13] := '07';
   Stgr_Base17.Cells[05, 13] := '08';
   Stgr_Base17.Cells[06, 13] := '09';
   Stgr_Base17.Cells[07, 13] := '10';
   Stgr_Base17.Cells[08, 13] := '11';
   Stgr_Base17.Cells[09, 13] := '13';
   Stgr_Base17.Cells[10, 13] := '15';
   Stgr_Base17.Cells[11, 13] := '16';
   Stgr_Base17.Cells[12, 13] := '17';
   Stgr_Base17.Cells[13, 13] := '18';
   Stgr_Base17.Cells[14, 13] := '19';
   Stgr_Base17.Cells[15, 13] := '20';
   Stgr_Base17.Cells[16, 13] := '21';
   Stgr_Base17.Cells[17, 13] := '22';
   Stgr_Base17.Cells[18, 13] := '23';
   //14
   Stgr_Base17.Cells[00, 14] := '14';
   Stgr_Base17.Cells[01, 14] := 'V';
   Stgr_Base17.Cells[02, 14] := '04';
   Stgr_Base17.Cells[03, 14] := '05';
   Stgr_Base17.Cells[04, 14] := '06';
   Stgr_Base17.Cells[05, 14] := '07';
   Stgr_Base17.Cells[06, 14] := '08';
   Stgr_Base17.Cells[07, 14] := '09';
   Stgr_Base17.Cells[08, 14] := '10';
   Stgr_Base17.Cells[09, 14] := '11';
   Stgr_Base17.Cells[10, 14] := '13';
   Stgr_Base17.Cells[11, 14] := '15';
   Stgr_Base17.Cells[12, 14] := '16';
   Stgr_Base17.Cells[13, 14] := '17';
   Stgr_Base17.Cells[14, 14] := '18';
   Stgr_Base17.Cells[15, 14] := '19';
   Stgr_Base17.Cells[16, 14] := '20';
   Stgr_Base17.Cells[17, 14] := '21';
   Stgr_Base17.Cells[18, 14] := '23';
   //15
   Stgr_Base17.Cells[00, 15] := '15';
   Stgr_Base17.Cells[01, 15] := 'V';
   Stgr_Base17.Cells[02, 15] := '04';
   Stgr_Base17.Cells[03, 15] := '05';
   Stgr_Base17.Cells[04, 15] := '06';
   Stgr_Base17.Cells[05, 15] := '07';
   Stgr_Base17.Cells[06, 15] := '08';
   Stgr_Base17.Cells[07, 15] := '09';
   Stgr_Base17.Cells[08, 15] := '10';
   Stgr_Base17.Cells[09, 15] := '11';
   Stgr_Base17.Cells[10, 15] := '13';
   Stgr_Base17.Cells[11, 15] := '15';
   Stgr_Base17.Cells[12, 15] := '16';
   Stgr_Base17.Cells[13, 15] := '17';
   Stgr_Base17.Cells[14, 15] := '18';
   Stgr_Base17.Cells[15, 15] := '19';
   Stgr_Base17.Cells[16, 15] := '20';
   Stgr_Base17.Cells[17, 15] := '21';
   Stgr_Base17.Cells[18, 15] := '22';
   //16
   Stgr_Base17.Cells[00, 16] := '16';
   Stgr_Base17.Cells[01, 16] := 'V';
   Stgr_Base17.Cells[02, 16] := '03';
   Stgr_Base17.Cells[03, 16] := '05';
   Stgr_Base17.Cells[04, 16] := '06';
   Stgr_Base17.Cells[05, 16] := '07';
   Stgr_Base17.Cells[06, 16] := '08';
   Stgr_Base17.Cells[07, 16] := '09';
   Stgr_Base17.Cells[08, 16] := '10';
   Stgr_Base17.Cells[09, 16] := '11';
   Stgr_Base17.Cells[10, 16] := '13';
   Stgr_Base17.Cells[11, 16] := '15';
   Stgr_Base17.Cells[12, 16] := '16';
   Stgr_Base17.Cells[13, 16] := '17';
   Stgr_Base17.Cells[14, 16] := '18';
   Stgr_Base17.Cells[15, 16] := '19';
   Stgr_Base17.Cells[16, 16] := '20';
   Stgr_Base17.Cells[17, 16] := '21';
   Stgr_Base17.Cells[18, 16] := '23';
   //17
   Stgr_Base17.Cells[00, 17] := '17';
   Stgr_Base17.Cells[01, 17] := 'V';
   Stgr_Base17.Cells[02, 17] := '03';
   Stgr_Base17.Cells[03, 17] := '05';
   Stgr_Base17.Cells[04, 17] := '06';
   Stgr_Base17.Cells[05, 17] := '07';
   Stgr_Base17.Cells[06, 17] := '08';
   Stgr_Base17.Cells[07, 17] := '09';
   Stgr_Base17.Cells[08, 17] := '10';
   Stgr_Base17.Cells[09, 17] := '11';
   Stgr_Base17.Cells[10, 17] := '13';
   Stgr_Base17.Cells[11, 17] := '15';
   Stgr_Base17.Cells[12, 17] := '16';
   Stgr_Base17.Cells[13, 17] := '17';
   Stgr_Base17.Cells[14, 17] := '18';
   Stgr_Base17.Cells[15, 17] := '19';
   Stgr_Base17.Cells[16, 17] := '20';
   Stgr_Base17.Cells[17, 17] := '21';
   Stgr_Base17.Cells[18, 17] := '22';
   //18
   Stgr_Base17.Cells[00, 18] := '18';
   Stgr_Base17.Cells[01, 18] := 'V';
   Stgr_Base17.Cells[02, 18] := '03';
   Stgr_Base17.Cells[03, 18] := '04';
   Stgr_Base17.Cells[04, 18] := '05';
   Stgr_Base17.Cells[05, 18] := '06';
   Stgr_Base17.Cells[06, 18] := '07';
   Stgr_Base17.Cells[07, 18] := '08';
   Stgr_Base17.Cells[08, 18] := '09';
   Stgr_Base17.Cells[09, 18] := '10';
   Stgr_Base17.Cells[10, 18] := '11';
   Stgr_Base17.Cells[11, 18] := '13';
   Stgr_Base17.Cells[12, 18] := '15';
   Stgr_Base17.Cells[13, 18] := '16';
   Stgr_Base17.Cells[14, 18] := '17';
   Stgr_Base17.Cells[15, 18] := '18';
   Stgr_Base17.Cells[16, 18] := '19';
   Stgr_Base17.Cells[17, 18] := '20';
   Stgr_Base17.Cells[18, 18] := '21';
   Stgr_Base17.RowCount := 19;
   Stgr_Base17.Height := Scbx_GABARITO.Height - 55;
   //Estatisticas 13
   Stgr_Estatisticas.ColWidths[0] := 65;
   Stgr_Estatisticas.Cells[0,0] := 'Número:';
   Stgr_Estatisticas.Cells[1,0] := 'Quantidade de Ocorrências';
   Stgr_Estatisticas.Cells[2,0] := 'Percet. de Ocorrências';
   Stgr_Estatisticas.Cells[3,0] := 'Média de Ocorrências';
   Stgr_Estatisticas.Cells[4,0] := 'Concurso c/ última Ocor.';
   Stgr_Estatisticas.Cells[5,0] := 'Qtd Concurso Atraso';
   Stgr_Estatisticas.Height := Scbx_GABARITO.Height - 55;
   Stgr_Sorteios.ColWidths[0] := 55;
   Stgr_EstatisticasOcorrencias.Cells[0,0] := 'Quantidade e percentual de ocorrências';
   Stgr_EstatisticasSorteiosAtrasados.Cells[0,0] := 'Quantidade de Atrasos';
   Stgr_Sorteios.Height := Scbx_GABARITO.Height - 55;
   Stgr_EstatisticasOcorrencias.Height := Scbx_GABARITO.Height - 55;
   Stgr_EstatisticasSorteiosAtrasados.Height := Scbx_GABARITO.Height - 55;
   Stgr_Estatisticas.RowCount := Stgr_Base17.RowCount;
   Stgr_EstatisticasOcorrencias.RowCount := Stgr_Base17.RowCount;
   Stgr_EstatisticasSorteiosAtrasados.RowCount := Stgr_Base17.RowCount;
   //Estatisticas 11
   Stgr_Estatisticas11.ColWidths[0] := 65;
   Stgr_Estatisticas11.Cells[0,0] := 'Número:';
   Stgr_Estatisticas11.Cells[1,0] := 'Quantidade de Ocorrências';
   Stgr_Estatisticas11.Cells[2,0] := 'Percet. de Ocorrências';
   Stgr_Estatisticas11.Cells[3,0] := 'Média de Ocorrências';
   Stgr_Estatisticas11.Cells[4,0] := 'Concurso c/ última Ocor.';
   Stgr_Estatisticas11.Cells[5,0] := 'Qtd Concurso Atraso';
   Stgr_Estatisticas11.Height := Scbx_GABARITO.Height - 55;
   Stgr_EstatisticasOcorrencias11.Cells[0,0] := 'Quantidade e percentual de ocorrências';
   Stgr_EstatisticasSorteiosAtrasados11.Cells[0,0] := 'Quantidade de Atrasos';
   Stgr_EstatisticasOcorrencias11.Height := Scbx_GABARITO.Height - 55;
   Stgr_EstatisticasSorteiosAtrasados11.Height := Scbx_GABARITO.Height - 55;
   Stgr_Estatisticas11.RowCount := Stgr_Base17.RowCount;
   Stgr_EstatisticasOcorrencias11.RowCount := Stgr_Base17.RowCount;
   Stgr_EstatisticasSorteiosAtrasados11.RowCount := Stgr_Base17.RowCount;
   //Estatisticas 13
   Stgr_Estatisticas13.ColWidths[0] := 65;
   Stgr_Estatisticas13.Cells[0,0] := 'Número:';
   Stgr_Estatisticas13.Cells[1,0] := 'Quantidade de Ocorrências';
   Stgr_Estatisticas13.Cells[2,0] := 'Percet. de Ocorrências';
   Stgr_Estatisticas13.Cells[3,0] := 'Média de Ocorrências';
   Stgr_Estatisticas13.Cells[4,0] := 'Concurso c/ última Ocor.';
   Stgr_Estatisticas13.Cells[5,0] := 'Qtd Concurso Atraso';
   Stgr_Estatisticas13.Height := Scbx_GABARITO.Height - 55;
   Stgr_EstatisticasOcorrencias13.Cells[0,0] := 'Quantidade e percentual de ocorrências';
   Stgr_EstatisticasSorteiosAtrasados13.Cells[0,0] := 'Quantidade de Atrasos';
   Stgr_EstatisticasOcorrencias13.Height := Scbx_GABARITO.Height - 55;
   Stgr_EstatisticasSorteiosAtrasados13.Height := Scbx_GABARITO.Height - 55;
   Stgr_Estatisticas13.RowCount := Stgr_Base17.RowCount;
   Stgr_EstatisticasOcorrencias13.RowCount := Stgr_Base17.RowCount;
   Stgr_EstatisticasSorteiosAtrasados13.RowCount := Stgr_Base17.RowCount;
   //Estatisticas 14
   Stgr_Estatisticas14.ColWidths[0] := 65;
   Stgr_Estatisticas14.Cells[0,0] := 'Número:';
   Stgr_Estatisticas14.Cells[1,0] := 'Quantidade de Ocorrências';
   Stgr_Estatisticas14.Cells[2,0] := 'Percet. de Ocorrências';
   Stgr_Estatisticas14.Cells[3,0] := 'Média de Ocorrências';
   Stgr_Estatisticas14.Cells[4,0] := 'Concurso c/ última Ocor.';
   Stgr_Estatisticas14.Cells[5,0] := 'Qtd Concurso Atraso';
   Stgr_Estatisticas14.Height := Scbx_GABARITO.Height - 55;
   Stgr_EstatisticasOcorrencias14.Cells[0,0] := 'Quantidade e percentual de ocorrências';
   Stgr_EstatisticasSorteiosAtrasados14.Cells[0,0] := 'Quantidade de Atrasos';
   Stgr_EstatisticasOcorrencias14.Height := Scbx_GABARITO.Height - 55;
   Stgr_EstatisticasSorteiosAtrasados14.Height := Scbx_GABARITO.Height - 55;
   Stgr_Estatisticas14.RowCount := Stgr_Base17.RowCount;
   Stgr_EstatisticasOcorrencias14.RowCount := Stgr_Base17.RowCount;
   Stgr_EstatisticasSorteiosAtrasados14.RowCount := Stgr_Base17.RowCount;
//   Stgr_Combinacoes05.Height := Scbx_Processamento.Height - 50;
//   Stgr_Combinacoes04Modo1.Height := Scbx_Processamento.Height - 50;
//   Stgr_Combinacoes02Modo1.Height := Scbx_Processamento.Height - 50;
//
//   Stgr_07NumerosSorteados.ColWidths[0] := 59;
//   Stgr_02NumerosNaoSorteados.ColWidths[0] := 59;
//   Stgr_07NumerosSorteados.Height := Scbx_Processamento.Height - 59;
//   Stgr_02NumerosNaoSorteados.Height := Scbx_Processamento.Height - 59;
//   Stgr_08NumerosSorteados.ColWidths[0] := 59;
//   Stgr_03NumerosNaoSorteados.ColWidths[0] := 59;
//   Stgr_08NumerosSorteados.ColWidths[2] := 75;
//   Stgr_03NumerosNaoSorteados.ColWidths[2] := 75;
//   Stgr_08NumerosSorteados.Height := Scbx_Processamento.Height - 59;
//   Stgr_03NumerosNaoSorteados.Height := Scbx_Processamento.Height - 59;
//
//   Stgr_Combinacoes04Modo2.Height := Scbx_Processamento.Height - 50;
//   Stgr_09NumerosSorteados.ColWidths[0] := 59;
//   Stgr_06NumerosNaoSorteados.ColWidths[0] := 59;
//   Stgr_09NumerosSorteados.ColWidths[2] := 79;
//   Stgr_06NumerosNaoSorteados.ColWidths[2] := 79;
//   Stgr_09NumerosSorteados.Height := Scbx_Processamento.Height - 59;
//   Stgr_06NumerosNaoSorteados.Height := Scbx_Processamento.Height - 59;
//
//   Stgr_Combinacoes02Modo2B2.Height := Scbx_Processamento.Height - 50;
//   Stgr_Combinacoes02Modo2B2.ColWidths[0] := 50;
//   Stgr_Combinacoes02Modo2B2.ColWidths[2] := 39;
//
//   Stgr_Combinacoes03Modo2.Height := Scbx_Processamento.Height - 50;
//   Stgr_Combinacoes03Modo2.ColWidths[0] := 50;
//   Stgr_Combinacoes03Modo2.ColWidths[2] := 39;

   Bbt_CarregarSorteio15N.Click;
end;


procedure T_F_Ranqueador_18_Jogos_17_NumerosMod1.Zerar_FLAGTodosNumeros();
var
  viContar: Integer;
begin
  for viContar := 1 to 25 do
  begin
    Stgr_Todos_Numeros.Cells[viContar, 0] := viContar.ToString;
    Stgr_Todos_Numeros.Cells[viContar, 1] := 'F';
    Stgr_Todos_Numeros.Cells[viContar, 2] := 'F';
  end;
end;


procedure T_F_Ranqueador_18_Jogos_17_NumerosMod1.Falso_Linha1TodosNumeros();
var
  viContar: Integer;
begin
  for viContar := 1 to 25 do
  begin
    Stgr_Todos_Numeros.Cells[viContar, 1] := 'F';
  end;
end;


procedure T_F_Ranqueador_18_Jogos_17_NumerosMod1.Falso_Linha2TodosNumeros();
var
  viContar: Integer;
begin
  for viContar := 1 to 25 do
  begin
    Stgr_Todos_Numeros.Cells[viContar, 2] := 'F';
  end;
end;



procedure T_F_Ranqueador_18_Jogos_17_NumerosMod1.Falso_Linha1TodosNumerosP17();
begin
end;

procedure T_F_Ranqueador_18_Jogos_17_NumerosMod1.Falso_Linha2TodosNumerosP17();
begin
end;


function T_F_Ranqueador_18_Jogos_17_NumerosMod1.IIf(Expressao: Variant; ParteTRUE, ParteFALSE: Variant): Variant;
 begin
   if Expressao then
      Result := ParteTRUE
   else
      Result := ParteFALSE;
 end;

end.


