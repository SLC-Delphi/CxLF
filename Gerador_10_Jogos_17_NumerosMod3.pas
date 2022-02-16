unit Gerador_10_Jogos_17_NumerosMod3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, DB, strutils, Math,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase;

Type
   T_F_GERADOR_25d17x8M3 = Class(TForm)
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
    Label3: TLabel;
    Label7: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Stgr_Base08: TStringGrid;
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
  _F_GERADOR_25d17x8M3: T_F_GERADOR_25d17x8M3;

implementation

uses
  System.Generics.Collections, uDataModule01;

{$R *.dfm}


Procedure T_F_GERADOR_25d17x8M3.FormCreate(Sender: TObject);
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
   PreenchimentoInicialPadrao;
End;

Procedure T_F_GERADOR_25d17x8M3.FormClose(Sender: TObject; Var Action: TCloseAction);
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


procedure T_F_GERADOR_25d17x8M3.Bbt_CLOSEClick(Sender: TObject);
begin
     SELF.Close;
end;




Procedure T_F_GERADOR_25d17x8M3.Bt_NOVA_SIMULACAOClick(Sender: TObject);
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
End;


procedure T_F_GERADOR_25d17x8M3.Bbt_SAIRClick(Sender: TObject);
begin
     SELF.Close;
end;



procedure T_F_GERADOR_25d17x8M3.Bbt_CANCELARClick(Sender: TObject);
begin
//            SELF.Ibq_COMBINACOES.SQL.Clear;
//            SELF.Ibq_COMBINACOES.SQL.Add('UPDATE FILTRO_10D17_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
//            SELF.Ibq_COMBINACOES.ExecSQL;
//            SELF.Ibq_COMBINACOES.SQL.Clear;
//            SELF.Ibq_COMBINACOES.SQL.Add('COMMIT;')  ;
//            SELF.Ibq_COMBINACOES.ExecSQL;
//          SELF.Close;
end;


Procedure T_F_GERADOR_25d17x8M3.Bbt_PREPARAR_MENUClick(Sender: TObject);
Begin
   Pa_PREPARAR.Visible := TRUE;
   Pa_PREPARAR.Enabled := TRUE;
   Pa_PREPARAR.Top := 245;
   Pa_PREPARAR.Left := 460;
   Pa_PREPARAR.Repaint;
End;

procedure T_F_GERADOR_25d17x8M3.BitBtn1Click(Sender: TObject);
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

Procedure T_F_GERADOR_25d17x8M3.BitBtn2Click(Sender: TObject);
Begin
   Pa_PREPARAR.Visible := false;
   Pa_PREPARAR.Enabled := false;
   Pa_PREPARAR.Left := 4500;
   Pa_PREPARAR.Repaint;
End;

Procedure T_F_GERADOR_25d17x8M3.Bbt_PREPARAR1Click(Sender: TObject);
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

Procedure T_F_GERADOR_25d17x8M3.Bbt_GERAR_MENUC(Sender: TObject);
Begin
   Pa_GERAR.Visible := TRUE;
   Pa_GERAR.Enabled := TRUE;
   Pa_GERAR.Top := 235;
   Pa_GERAR.Left := 459;
   Pa_GERAR.Repaint;
End;

Procedure T_F_GERADOR_25d17x8M3.Bbt_GERARClick(Sender: TObject);
Begin
   Pa_GERAR.Enabled := False;
   Pa_GERAR.Top := 345;
   Pa_GERAR.Left := 9990;
   Pa_GERAR.Repaint;
//   Scbx_Processamento.HorzScrollBar.Position := 0;
   Bbt_GerarComb05;
   showmessage('Fim destas etapas');
End;


Procedure T_F_GERADOR_25d17x8M3.Bbt_GerarComb05();
Begin

End;



Procedure T_F_GERADOR_25d17x8M3.Bbt_Pa_REMOVEUREPETClick(Sender: TObject);
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

Procedure T_F_GERADOR_25d17x8M3.Bt_REAJUSTARClick(Sender: TObject);
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

Procedure T_F_GERADOR_25d17x8M3.Bbt_CARREGARClick(Sender: TObject);
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


procedure T_F_GERADOR_25d17x8M3.Bbt_CarregarSorteio15NClick(Sender: TObject);
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


Procedure T_F_GERADOR_25d17x8M3.Bbt_CarregarSort(Sender: TObject);
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


procedure T_F_GERADOR_25d17x8M3.Bbt_RankClick(Sender: TObject);
var
   viContar17Combinacoes,viContarSorteios, viValorDasCoicidencias, viContarCelulas : integer;
   li_QtdOcorrencias12, li_QtdAtrasados12 : Tlist<String>;
   li_QtdOcorrencias13, li_QtdAtrasados13 : Tlist<String>;
   viUltimoSorteio12, vdbQtdOcorrencias12, vdbPercentualOcorrencias12 : Double;
   viUltimoSorteio13, vdbQtdOcorrencias13, vdbPercentualOcorrencias13 : Double;
begin
   li_QtdOcorrencias12 := Tlist<String>.Create;
   li_QtdAtrasados12 := Tlist<String>.Create;
   li_QtdOcorrencias13 := Tlist<String>.Create;
   li_QtdAtrasados13 := Tlist<String>.Create;
   li_QtdOcorrencias12.Clear;
   li_QtdAtrasados12.Clear;
   for viContar17Combinacoes := 1 to Trunc((Stgr_Base17.RowCount-1)/1) do
   begin
      Stgr_Sorteios.Cells[17, 0] := viContar17Combinacoes.ToString;
      Stgr_Sorteios.Repaint;
      // --> Montar Flags com as combinações
      Falso_Linha1TodosNumeros();
      FOR viContarCelulas := 2 TO 18 DO
      begin
         Stgr_Todos_Numeros.Cells[ (STRtoINT(Stgr_Base17.Cells[viContarCelulas,viContar17Combinacoes])) ,1]:='V';
      end;
      vdbQtdOcorrencias12 :=0;
      vdbQtdOcorrencias13 :=0;
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
      Stgr_Sorteios.Repaint;
      Stgr_Estatisticas.Repaint;
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
      Stgr_Sorteios.Repaint;
      Stgr_Estatisticas13.Repaint;

      Falso_Linha1TodosNumeros();
      FOR viContarCelulas := 2 TO 09 DO
      begin
         Stgr_Todos_Numeros.Cells[ (STRtoINT(Stgr_Base08.Cells[viContarCelulas,viContar17Combinacoes])) ,1]:='V';
      end;
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
   li_QtdOcorrencias12.Sort;
   li_QtdAtrasados12.Sort;
   li_QtdOcorrencias13.Sort;
   li_QtdAtrasados13.Sort;
   for viContar17Combinacoes := 1 to Trunc((Stgr_Base17.RowCount-1)/1) do
   begin
      Stgr_EstatisticasOcorrencias.Cells[0, viContar17Combinacoes] := li_QtdOcorrencias12[viContar17Combinacoes-1];
      Stgr_EstatisticasSorteiosAtrasados.Cells[0, viContar17Combinacoes] :=  li_QtdAtrasados12[viContar17Combinacoes-1];
      Stgr_EstatisticasOcorrencias13.Cells[0, viContar17Combinacoes] := li_QtdOcorrencias13[viContar17Combinacoes-1];
      Stgr_EstatisticasSorteiosAtrasados13.Cells[0, viContar17Combinacoes] :=  li_QtdAtrasados13[viContar17Combinacoes-1];
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
   li_QtdOcorrencias13.DisposeOf;
   li_QtdAtrasados13.DisposeOf;
end;


procedure T_F_GERADOR_25d17x8M3.Bbt_GERAR_SAIRClick(Sender: TObject);
Begin
   Pa_GERAR.Enabled := false;
   Pa_GERAR.Left := 4500;
   Pa_GERAR.Repaint;
End;


Procedure T_F_GERADOR_25d17x8M3.PreenchimentoInicialPadrao;
var
  viContar: Integer;
begin
   Zerar_FLAGTodosNumeros();
   for viContar := 2 to 18 do
   begin
      Stgr_Base17.Cells[viContar, 0] := INTtoSTR(viContar - 1);
   end;
   for viContar := 2 to 9 do
   begin
      Stgr_Base08.Cells[viContar, 0] := INTtoSTR(viContar - 1);
   end;
   //01
   Stgr_Base17.Cells[00, 01] := '01';
   Stgr_Base17.Cells[01, 01] := 'V';
   Stgr_Base17.Cells[02, 01] := '01';
   Stgr_Base17.Cells[03, 01] := '02';
   Stgr_Base17.Cells[04, 01] := '05';
   Stgr_Base17.Cells[05, 01] := '06';
   Stgr_Base17.Cells[06, 01] := '07';
   Stgr_Base17.Cells[07, 01] := '08';
   Stgr_Base17.Cells[08, 01] := '09';
   Stgr_Base17.Cells[09, 01] := '10';
   Stgr_Base17.Cells[10, 01] := '12';
   Stgr_Base17.Cells[11, 01] := '13';
   Stgr_Base17.Cells[12, 01] := '14';
   Stgr_Base17.Cells[13, 01] := '16';
   Stgr_Base17.Cells[14, 01] := '19';
   Stgr_Base17.Cells[15, 01] := '20';
   Stgr_Base17.Cells[16, 01] := '21';
   Stgr_Base17.Cells[17, 01] := '24';
   Stgr_Base17.Cells[18, 01] := '25';
   Stgr_Base08.Cells[0, 01] := '01';
   Stgr_Base08.Cells[1, 01] := 'V';
   Stgr_Base08.Cells[2, 01] := '03';
   Stgr_Base08.Cells[3, 01] := '04';
   Stgr_Base08.Cells[4, 01] := '11';
   Stgr_Base08.Cells[5, 01] := '15';
   Stgr_Base08.Cells[6, 01] := '17';
   Stgr_Base08.Cells[7, 01] := '18';
   Stgr_Base08.Cells[8, 01] := '22';
   Stgr_Base08.Cells[9, 01] := '23';
   //02
   Stgr_Base17.Cells[00, 02] := '02';
   Stgr_Base17.Cells[01, 02] := 'V';
   Stgr_Base17.Cells[02, 02] := '01';
   Stgr_Base17.Cells[03, 02] := '02';
   Stgr_Base17.Cells[04, 02] := '05';
   Stgr_Base17.Cells[05, 02] := '06';
   Stgr_Base17.Cells[06, 02] := '07';
   Stgr_Base17.Cells[07, 02] := '08';
   Stgr_Base17.Cells[08, 02] := '10';
   Stgr_Base17.Cells[09, 02] := '12';
   Stgr_Base17.Cells[10, 02] := '13';
   Stgr_Base17.Cells[11, 02] := '14';
   Stgr_Base17.Cells[12, 02] := '16';
   Stgr_Base17.Cells[13, 02] := '17';
   Stgr_Base17.Cells[14, 02] := '19';
   Stgr_Base17.Cells[15, 02] := '20';
   Stgr_Base17.Cells[16, 02] := '21';
   Stgr_Base17.Cells[17, 02] := '24';
   Stgr_Base17.Cells[18, 02] := '25';
   Stgr_Base08.Cells[0, 02] := '02';
   Stgr_Base08.Cells[1, 02] := 'V';
   Stgr_Base08.Cells[2, 02] := '03';
   Stgr_Base08.Cells[3, 02] := '04';
   Stgr_Base08.Cells[4, 02] := '09';
   Stgr_Base08.Cells[5, 02] := '11';
   Stgr_Base08.Cells[6, 02] := '15';
   Stgr_Base08.Cells[7, 02] := '18';
   Stgr_Base08.Cells[8, 02] := '22';
   Stgr_Base08.Cells[9, 02] := '23';
   //03
   Stgr_Base17.Cells[00, 03] := '03';
   Stgr_Base17.Cells[01, 03] := 'V';
   Stgr_Base17.Cells[02, 03] := '01';
   Stgr_Base17.Cells[03, 03] := '02';
   Stgr_Base17.Cells[04, 03] := '05';
   Stgr_Base17.Cells[05, 03] := '06';
   Stgr_Base17.Cells[06, 03] := '07';
   Stgr_Base17.Cells[07, 03] := '08';
   Stgr_Base17.Cells[08, 03] := '10';
   Stgr_Base17.Cells[09, 03] := '12';
   Stgr_Base17.Cells[10, 03] := '13';
   Stgr_Base17.Cells[11, 03] := '14';
   Stgr_Base17.Cells[12, 03] := '16';
   Stgr_Base17.Cells[13, 03] := '18';
   Stgr_Base17.Cells[14, 03] := '19';
   Stgr_Base17.Cells[15, 03] := '20';
   Stgr_Base17.Cells[16, 03] := '21';
   Stgr_Base17.Cells[17, 03] := '24';
   Stgr_Base17.Cells[18, 03] := '25';
   Stgr_Base08.Cells[0, 03] := '03';
   Stgr_Base08.Cells[1, 03] := 'V';
   Stgr_Base08.Cells[2, 03] := '03';
   Stgr_Base08.Cells[3, 03] := '04';
   Stgr_Base08.Cells[4, 03] := '09';
   Stgr_Base08.Cells[5, 03] := '11';
   Stgr_Base08.Cells[6, 03] := '15';
   Stgr_Base08.Cells[7, 03] := '17';
   Stgr_Base08.Cells[8, 03] := '22';
   Stgr_Base08.Cells[9, 03] := '23';
   //04
   Stgr_Base17.Cells[00, 04] := '04';
   Stgr_Base17.Cells[01, 04] := 'V';
   Stgr_Base17.Cells[02, 04] := '01';
   Stgr_Base17.Cells[03, 04] := '02';
   Stgr_Base17.Cells[04, 04] := '05';
   Stgr_Base17.Cells[05, 04] := '06';
   Stgr_Base17.Cells[06, 04] := '07';
   Stgr_Base17.Cells[07, 04] := '09';
   Stgr_Base17.Cells[08, 04] := '10';
   Stgr_Base17.Cells[09, 04] := '12';
   Stgr_Base17.Cells[10, 04] := '13';
   Stgr_Base17.Cells[11, 04] := '14';
   Stgr_Base17.Cells[12, 04] := '16';
   Stgr_Base17.Cells[13, 04] := '17';
   Stgr_Base17.Cells[14, 04] := '19';
   Stgr_Base17.Cells[15, 04] := '20';
   Stgr_Base17.Cells[16, 04] := '21';
   Stgr_Base17.Cells[17, 04] := '24';
   Stgr_Base17.Cells[18, 04] := '25';
   Stgr_Base08.Cells[0, 04] := '04';
   Stgr_Base08.Cells[1, 04] := 'V';
   Stgr_Base08.Cells[2, 04] := '03';
   Stgr_Base08.Cells[3, 04] := '04';
   Stgr_Base08.Cells[4, 04] := '08';
   Stgr_Base08.Cells[5, 04] := '11';
   Stgr_Base08.Cells[6, 04] := '15';
   Stgr_Base08.Cells[7, 04] := '18';
   Stgr_Base08.Cells[8, 04] := '22';
   Stgr_Base08.Cells[9, 04] := '23';
   //05
   Stgr_Base17.Cells[00, 05] := '05';
   Stgr_Base17.Cells[01, 05] := 'V';
   Stgr_Base17.Cells[02, 05] := '01';
   Stgr_Base17.Cells[03, 05] := '02';
   Stgr_Base17.Cells[04, 05] := '05';
   Stgr_Base17.Cells[05, 05] := '06';
   Stgr_Base17.Cells[06, 05] := '07';
   Stgr_Base17.Cells[07, 05] := '09';
   Stgr_Base17.Cells[08, 05] := '10';
   Stgr_Base17.Cells[09, 05] := '12';
   Stgr_Base17.Cells[10, 05] := '13';
   Stgr_Base17.Cells[11, 05] := '14';
   Stgr_Base17.Cells[12, 05] := '16';
   Stgr_Base17.Cells[13, 05] := '18';
   Stgr_Base17.Cells[14, 05] := '19';
   Stgr_Base17.Cells[15, 05] := '20';
   Stgr_Base17.Cells[16, 05] := '21';
   Stgr_Base17.Cells[17, 05] := '24';
   Stgr_Base17.Cells[18, 05] := '25';
   Stgr_Base08.Cells[0, 05] := '05';
   Stgr_Base08.Cells[1, 05] := 'V';
   Stgr_Base08.Cells[2, 05] := '03';
   Stgr_Base08.Cells[3, 05] := '04';
   Stgr_Base08.Cells[4, 05] := '08';
   Stgr_Base08.Cells[5, 05] := '11';
   Stgr_Base08.Cells[6, 05] := '15';
   Stgr_Base08.Cells[7, 05] := '17';
   Stgr_Base08.Cells[8, 05] := '22';
   Stgr_Base08.Cells[9, 05] := '23';
   //06
   Stgr_Base17.Cells[00, 06] := '06';
   Stgr_Base17.Cells[01, 06] := 'V';
   Stgr_Base17.Cells[02, 06] := '01';
   Stgr_Base17.Cells[03, 06] := '02';
   Stgr_Base17.Cells[04, 06] := '05';
   Stgr_Base17.Cells[05, 06] := '06';
   Stgr_Base17.Cells[06, 06] := '07';
   Stgr_Base17.Cells[07, 06] := '10';
   Stgr_Base17.Cells[08, 06] := '12';
   Stgr_Base17.Cells[09, 06] := '13';
   Stgr_Base17.Cells[10, 06] := '14';
   Stgr_Base17.Cells[11, 06] := '16';
   Stgr_Base17.Cells[12, 06] := '17';
   Stgr_Base17.Cells[13, 06] := '18';
   Stgr_Base17.Cells[14, 06] := '19';
   Stgr_Base17.Cells[15, 06] := '20';
   Stgr_Base17.Cells[16, 06] := '21';
   Stgr_Base17.Cells[17, 06] := '24';
   Stgr_Base17.Cells[18, 06] := '25';
   Stgr_Base08.Cells[0, 06] := '06';
   Stgr_Base08.Cells[1, 06] := 'V';
   Stgr_Base08.Cells[2, 06] := '03';
   Stgr_Base08.Cells[3, 06] := '04';
   Stgr_Base08.Cells[4, 06] := '08';
   Stgr_Base08.Cells[5, 06] := '09';
   Stgr_Base08.Cells[6, 06] := '11';
   Stgr_Base08.Cells[7, 06] := '15';
   Stgr_Base08.Cells[8, 06] := '22';
   Stgr_Base08.Cells[9, 06] := '23';
   Stgr_Base17.RowCount := 07;
   Stgr_Base08.RowCount := 07;
   Stgr_Base17.Height := Scbx_GABARITO.Height - 55;
   Stgr_Base08.Height := Scbx_GABARITO.Height - 55;
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


procedure T_F_GERADOR_25d17x8M3.Zerar_FLAGTodosNumeros();
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


procedure T_F_GERADOR_25d17x8M3.Falso_Linha1TodosNumeros();
var
  viContar: Integer;
begin
  for viContar := 1 to 25 do
  begin
    Stgr_Todos_Numeros.Cells[viContar, 1] := 'F';
  end;
end;


procedure T_F_GERADOR_25d17x8M3.Falso_Linha2TodosNumeros();
var
  viContar: Integer;
begin
  for viContar := 1 to 25 do
  begin
    Stgr_Todos_Numeros.Cells[viContar, 2] := 'F';
  end;
end;



procedure T_F_GERADOR_25d17x8M3.Falso_Linha1TodosNumerosP17();
begin
end;

procedure T_F_GERADOR_25d17x8M3.Falso_Linha2TodosNumerosP17();
begin
end;


function T_F_GERADOR_25d17x8M3.IIf(Expressao: Variant; ParteTRUE, ParteFALSE: Variant): Variant;
 begin
   if Expressao then
      Result := ParteTRUE
   else
      Result := ParteFALSE;
 end;

end.


