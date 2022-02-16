unit Ranqueadorr_116_Jogos_21_NumerosModelo2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, DB, strutils, Math,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase;

Type
   T_F_Ranqueador_116d21M2 = Class(TForm)
      Pa_INICIAL: TPanel;
      Label55: TLabel;
      Bt_NOVA_SIMULACAO: TButton;
      Bbt_SAIR: TButton;
      Mem_COMBINACOES_TODAS: TMemo;
      Pa_TOPO: TPanel;
      Label53: TLabel;
      Bbt_CLOSE: TImage;
      IBDatabase1: TIBDatabase;
      IBTransaction1: TIBTransaction;
      Ibq_COMBINACOES: TIBQuery;
      Ibq_E_SORTEIO_15N: TIBQuery;
      Ds_E_SORTEIO_15N: TDataSource;
      PageControl1: TPageControl;
      TabSheet1: TTabSheet;
      Scbx_GABARITO: TScrollBox;
      La_NSorteioRank: TLabel;
      Label7: TLabel;
      Label14: TLabel;
      Label15: TLabel;
      Stgr_Base21: TStringGrid;
      Stgr_Estatisticas: TStringGrid;
      Stgr_Sorteios: TStringGrid;
      Bbt_CarregarSorteio15N: TBitBtn;
      Bbt_Rank: TBitBtn;
      Stgr_Todos_Numeros: TStringGrid;
      Stgr_EstatisticasOcorrencias: TStringGrid;
      Stgr_EstatisticasSorteiosAtrasados: TStringGrid;
      Stgr_EstatisticasOcorrencias15: TStringGrid;
      Stgr_EstatisticasSorteiosAtrasados15: TStringGrid;
      Stgr_Estatisticas15: TStringGrid;
      BBT_RECOMECAR: TBitBtn;
      Ibq_Jogos: TIBQuery;
      La_Ranqueado: TLabel;
    Label1: TLabel;
    Cb_Bloco: TComboBox;
    Bbt_CarregarSort1: TBitBtn;
      Procedure Bbt_PREPARAR1Click(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure Bbt_CLOSEClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure Bt_NOVA_SIMULACAOClick(Sender: TObject);
      Procedure Bbt_SAIRClick(Sender: TObject);
      Procedure Bbt_RankClick(Sender: TObject);
      Procedure BitBtn1Click(Sender: TObject);
      Procedure Bbt_CarregarSorteio15NClick(Sender: TObject);
      Procedure BBT_RECOMECARClick(Sender: TObject);
    procedure Bbt_CarregarSort1Click(Sender: TObject);
   Private
      Procedure PreenchimentoInicialPadrao;
      Procedure Zerar_FLAGTodosNumeros();
      Procedure Falso_Linha2TodosNumeros;
      Procedure Falso_Linha1TodosNumeros;
      Procedure Falso_Linha2TodosNumerosP17;
      Procedure Falso_Linha1TodosNumerosP17;
      Function IIf(Expressao, ParteTRUE, ParteFALSE: Variant): Variant;
      Procedure Bbt_CarregarSort(Sender: TObject);
      Procedure CarregarSorteios(viBloco: smallint);
      { Private declarations }
   Public
      { Public declarations }
   End;

var
  _F_Ranqueador_116d21M2: T_F_Ranqueador_116d21M2;

implementation

uses
  System.Generics.Collections, uDataModule01;

{$R *.dfm}


Procedure T_F_Ranqueador_116d21M2.FormCreate(Sender: TObject);
Begin
   SELF.ClientWidth := 1500;
   SELF.ClientHeight := 785;
   SELF.Top := 19;
   SELF.Left := 15;
   // SELF.Visible := TRUE;
   Bbt_CLOSE.Left := SELF.ClientWidth - 35;
   Scbx_GABARITO.Visible := false;
   //Pa_RESULTADO.Visible := false;
   Pa_INICIAL.Enabled := TRUE;
   Pa_INICIAL.Left := 520;
   Pa_INICIAL.Top := 190;
   BBT_RECOMECAR.Click;
End;

Procedure T_F_Ranqueador_116d21M2.FormClose(Sender: TObject; Var Action: TCloseAction);
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


procedure T_F_Ranqueador_116d21M2.Bbt_CLOSEClick(Sender: TObject);
begin
     SELF.Close;
end;


Procedure T_F_Ranqueador_116d21M2.Bt_NOVA_SIMULACAOClick(Sender: TObject);
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


procedure T_F_Ranqueador_116d21M2.Bbt_SAIRClick(Sender: TObject);
begin
     SELF.Close;
end;



procedure T_F_Ranqueador_116d21M2.BitBtn1Click(Sender: TObject);
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


Procedure T_F_Ranqueador_116d21M2.Bbt_PREPARAR1Click(Sender: TObject);
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
//   Bbt_PREPARAR_MENU.Enabled := TRUE;
//   Bbt_GERAR_MENU.Enabled := TRUE;
//   Bbt_GERAR_MENU.Enabled := TRUE;
   showmessage('OK');
End;


procedure T_F_Ranqueador_116d21M2.Bbt_CarregarSorteio15NClick(Sender: TObject);
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


Procedure T_F_Ranqueador_116d21M2.Bbt_CarregarSort(Sender: TObject);
Begin
//
End;

procedure T_F_Ranqueador_116d21M2.Bbt_CarregarSort1Click(Sender: TObject);
begin
  CarregarSorteios (Cb_Bloco.ItemIndex+1);
  Stgr_Estatisticas15.RowCount := 2;
  Stgr_EstatisticasOcorrencias15.RowCount := 2;
  Stgr_EstatisticasSorteiosAtrasados15.RowCount := 2;
end;

procedure T_F_Ranqueador_116d21M2.CarregarSorteios (viBloco : smallint);
var
  viContar: Integer;
  vs25Jogos21: array [1..25] of String;
begin
  Ibq_Jogos.Close;
   if viBloco=4 then
   begin
      vs25Jogos21[01] :='01 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23';
      vs25Jogos21[02] :='01 02 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22';
      vs25Jogos21[03] :='01 02 03 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22';
      vs25Jogos21[04] :='01 02 03 04 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22';
      vs25Jogos21[05] :='01 02 03 04 05 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22';
      vs25Jogos21[06] :='01 02 03 04 05 06 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22';
      vs25Jogos21[07] :='02 03 04 05 06 07 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25';
      vs25Jogos21[08] :='02 03 04 05 06 07 08 10 11 12 13 14 15 16 17 18 19 20 21 22 23';
      vs25Jogos21[09] :='02 03 04 05 06 07 08 09 11 12 13 14 15 16 17 18 19 20 21 22 23';
      vs25Jogos21[10] :='03 04 05 06 07 08 09 11 12 13 14 15 16 17 18 19 20 21 22 23 24';
      vs25Jogos21[11] :='01 02 04 05 06 07 08 09 10 14 15 16 17 18 19 20 21 22 23 24 25';
      vs25Jogos21[12] :='01 02 04 05 06 07 08 09 10 11 15 16 17 18 19 20 21 22 23 24 25';
      vs25Jogos21[13] :='01 02 05 06 07 08 09 10 11 14 15 16 17 18 19 20 21 22 23 24 25';
      vs25Jogos21[14] :='01 05 06 07 08 09 10 11 12 14 15 16 17 18 19 20 21 22 23 24 25';
      vs25Jogos21[15] :='01 02 06 07 08 09 10 11 12 14 15 16 17 18 19 20 21 22 23 24 25';
      vs25Jogos21[16] :='01 02 03 04 05 07 08 09 10 11 12 13 17 18 19 20 21 22 23 24 25';
      vs25Jogos21[17] :='01 02 03 04 05 07 08 09 10 11 12 13 14 18 19 20 21 22 23 24 25';
      vs25Jogos21[18] :='01 02 03 04 05 06 08 09 10 11 12 13 14 18 19 20 21 22 23 24 25';
      vs25Jogos21[19] :='01 02 03 04 05 09 10 11 12 13 14 16 17 18 19 20 21 22 23 24 25';
      vs25Jogos21[20] :='01 02 03 04 05 06 07 08 10 11 12 13 14 15 19 20 21 22 23 24 25';
      vs25Jogos21[21] :='01 02 03 04 05 06 07 08 09 11 12 13 14 15 19 20 21 22 23 24 25';
      vs25Jogos21[22] :='01 02 03 04 05 06 07 08 09 10 12 13 14 15 19 20 21 22 23 24 25';
      vs25Jogos21[23] :='01 02 03 04 05 06 07 08 09 10 11 13 14 15 19 20 21 22 23 24 25';
      vs25Jogos21[24] :='01 02 03 04 05 06 07 08 09 10 11 12 14 15 19 20 21 22 23 24 25';
      vs25Jogos21[25] :='01 02 03 04 05 06 07 08 09 10 11 12 15 18 19 20 21 22 23 24 25';
      for viContar := Low(vs25Jogos21) to High(vs25Jogos21) do
      begin
         Stgr_Base21.Cells[0, viContar] := RightStr('0'+viContar.ToString,2);
         Stgr_Base21.Cells[01, viContar] := 'V';
         Stgr_Base21.Cells[02, viContar] := Copy(vs25Jogos21[viContar], 01,2);
         Stgr_Base21.Cells[03, viContar] := Copy(vs25Jogos21[viContar], 04,2);
         Stgr_Base21.Cells[04, viContar] := Copy(vs25Jogos21[viContar], 07,2);
         Stgr_Base21.Cells[05, viContar] := Copy(vs25Jogos21[viContar], 10,2);
         Stgr_Base21.Cells[06, viContar] := Copy(vs25Jogos21[viContar], 13,2);
         Stgr_Base21.Cells[07, viContar] := Copy(vs25Jogos21[viContar], 16,2);
         Stgr_Base21.Cells[08, viContar] := Copy(vs25Jogos21[viContar], 19,2);
         Stgr_Base21.Cells[09, viContar] := Copy(vs25Jogos21[viContar], 22,2);
         Stgr_Base21.Cells[10, viContar] := Copy(vs25Jogos21[viContar], 25,2);
         Stgr_Base21.Cells[11, viContar] := Copy(vs25Jogos21[viContar], 28,2);
         Stgr_Base21.Cells[12, viContar] := Copy(vs25Jogos21[viContar], 31,2);
         Stgr_Base21.Cells[13, viContar] := Copy(vs25Jogos21[viContar], 34,2);
         Stgr_Base21.Cells[14, viContar] := Copy(vs25Jogos21[viContar], 37,2);
         Stgr_Base21.Cells[15, viContar] := Copy(vs25Jogos21[viContar], 40,2);
         Stgr_Base21.Cells[16, viContar] := Copy(vs25Jogos21[viContar], 43,2);
         Stgr_Base21.Cells[17, viContar] := Copy(vs25Jogos21[viContar], 46,2);
         Stgr_Base21.Cells[18, viContar] := Copy(vs25Jogos21[viContar], 49,2);
         Stgr_Base21.Cells[19, viContar] := Copy(vs25Jogos21[viContar], 52,2);
         Stgr_Base21.Cells[20, viContar] := Copy(vs25Jogos21[viContar], 55,2);
         Stgr_Base21.Cells[21, viContar] := Copy(vs25Jogos21[viContar], 58,2);
         Stgr_Base21.Cells[22, viContar] := Copy(vs25Jogos21[viContar], 61,2);
      end;
      Stgr_Base21.RowCount := viContar;
      Stgr_Estatisticas15.RowCount := viContar;
      Stgr_Estatisticas15.Repaint;
      ShowMessage ('Bloco: '+ viBloco.ToString +#13+ 'Dados carregados');
      Exit;
   end
   else if viBloco=1 then
   begin
     Ibq_Jogos.SQL.Clear;
     Ibq_Jogos.SQL.Add('select numero, dados from RANK_166JGS_21NUMEROS2 Where Bloco=1 Group by numero,dados order by Numero');
   end
   else if viBloco=2 then
   begin
     Ibq_Jogos.SQL.Clear;
     Ibq_Jogos.SQL.Add('select numero, dados from RANK_166JGS_21NUMEROS2 Where Bloco=2 Group by numero,dados order by Numero');
   End
   else if viBloco=3 then
   begin
     Ibq_Jogos.SQL.Clear;
     Ibq_Jogos.SQL.Add('select numero, dados from RANK_166JGS_21NUMEROS2 Where Bloco=3 Group by numero,dados order by Numero');
   end;
   for viContar := 2 to 22 do
   begin
      Stgr_Base21.Cells[viContar, 0] := INTtoSTR(viContar - 1);
   end;
   Ibq_Jogos.Prepare;
   Ibq_Jogos.Open;
   Ibq_Jogos.First;
   viContar := 1;
   Stgr_Base21.RowCount := 2;
   While NOT(Ibq_Jogos.Eof) Do
   Begin
      Stgr_Base21.Cells[0, viContar] := Ibq_Jogos.FieldByName('NUMERO').AsString;
      Stgr_Base21.Cells[01, viContar] := 'V';
      Stgr_Base21.Cells[02, viContar] := Copy(Ibq_Jogos.FieldByName('DADOS').AsString, 01,2);
      Stgr_Base21.Cells[03, viContar] := Copy(Ibq_Jogos.FieldByName('DADOS').AsString, 04,2);
      Stgr_Base21.Cells[04, viContar] := Copy(Ibq_Jogos.FieldByName('DADOS').AsString, 07,2);
      Stgr_Base21.Cells[05, viContar] := Copy(Ibq_Jogos.FieldByName('DADOS').AsString, 10,2);
      Stgr_Base21.Cells[06, viContar] := Copy(Ibq_Jogos.FieldByName('DADOS').AsString, 13,2);
      Stgr_Base21.Cells[07, viContar] := Copy(Ibq_Jogos.FieldByName('DADOS').AsString, 16,2);
      Stgr_Base21.Cells[08, viContar] := Copy(Ibq_Jogos.FieldByName('DADOS').AsString, 19,2);
      Stgr_Base21.Cells[09, viContar] := Copy(Ibq_Jogos.FieldByName('DADOS').AsString, 22,2);
      Stgr_Base21.Cells[10, viContar] := Copy(Ibq_Jogos.FieldByName('DADOS').AsString, 25,2);
      Stgr_Base21.Cells[11, viContar] := Copy(Ibq_Jogos.FieldByName('DADOS').AsString, 28,2);
      Stgr_Base21.Cells[12, viContar] := Copy(Ibq_Jogos.FieldByName('DADOS').AsString, 31,2);
      Stgr_Base21.Cells[13, viContar] := Copy(Ibq_Jogos.FieldByName('DADOS').AsString, 34,2);
      Stgr_Base21.Cells[14, viContar] := Copy(Ibq_Jogos.FieldByName('DADOS').AsString, 37,2);
      Stgr_Base21.Cells[15, viContar] := Copy(Ibq_Jogos.FieldByName('DADOS').AsString, 40,2);
      Stgr_Base21.Cells[16, viContar] := Copy(Ibq_Jogos.FieldByName('DADOS').AsString, 43,2);
      Stgr_Base21.Cells[17, viContar] := Copy(Ibq_Jogos.FieldByName('DADOS').AsString, 46,2);
      Stgr_Base21.Cells[18, viContar] := Copy(Ibq_Jogos.FieldByName('DADOS').AsString, 49,2);
      Stgr_Base21.Cells[19, viContar] := Copy(Ibq_Jogos.FieldByName('DADOS').AsString, 52,2);
      Stgr_Base21.Cells[20, viContar] := Copy(Ibq_Jogos.FieldByName('DADOS').AsString, 55,2);
      Stgr_Base21.Cells[21, viContar] := Copy(Ibq_Jogos.FieldByName('DADOS').AsString, 58,2);
      Stgr_Base21.Cells[22, viContar] := Copy(Ibq_Jogos.FieldByName('DADOS').AsString, 61,2);
      Ibq_Jogos.Next;
      viContar := viContar + 1;
   End;
   Stgr_Base21.RowCount := viContar;
   Stgr_Estatisticas15.RowCount := viContar;
   ShowMessage ('Bloco: '+ viBloco.ToString +#13+ 'Dados carregados');
end;


procedure T_F_Ranqueador_116d21M2.Bbt_RankClick(Sender: TObject);
var
   viContar21Combinacoes,viContarSorteios, viValorDasCoicidencias, viContarCelulas : integer;
   li_QtdOcorrencias14, li_QtdAtrasados14 : Tlist<String>;
   li_QtdOcorrencias15, li_QtdAtrasados15 : Tlist<String>;
   viUltimoSorteio14, vdbQtdOcorrencias14, vdbPercentualOcorrencias14 : Double;
   viUltimoSorteio15, vdbQtdOcorrencias15, vdbPercentualOcorrencias15 : Double;
begin
   li_QtdOcorrencias14 := Tlist<String>.Create;
   li_QtdAtrasados14 := Tlist<String>.Create;
   li_QtdOcorrencias15 := Tlist<String>.Create;
   li_QtdAtrasados15 := Tlist<String>.Create;
   li_QtdOcorrencias14.Clear;
   li_QtdAtrasados14.Clear;
   Scbx_GABARITO.HorzScrollBar.Position := 762;
   Scbx_GABARITO.Repaint;
   for viContar21Combinacoes := 1 to Trunc((Stgr_Base21.RowCount-1)/1) do
   begin
      Stgr_Sorteios.Cells[17, 0] := viContar21Combinacoes.ToString;
      Stgr_Sorteios.Repaint;
      La_Ranqueado.Caption := viContar21Combinacoes.ToString;
      La_Ranqueado.Repaint;
      // --> Montar Flags com as combinações
      Falso_Linha1TodosNumeros();
      FOR viContarCelulas := 2 TO 22 DO
      begin
         Stgr_Todos_Numeros.Cells[ (STRtoINT(Stgr_Base21.Cells[viContarCelulas,viContar21Combinacoes])) ,1]:='V';
      end;
      vdbQtdOcorrencias14 :=0;
      vdbQtdOcorrencias15 :=0;
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
         if viValorDasCoicidencias = 14 then
         begin
            vdbQtdOcorrencias14 := vdbQtdOcorrencias14 + 1;
            viUltimoSorteio14 := viContarSorteios;
         end
         else
         if viValorDasCoicidencias = 15 then
         begin
            vdbQtdOcorrencias15 := vdbQtdOcorrencias15 + 1;
            viUltimoSorteio15 := viContarSorteios;
         end;
      end;
      // --> Estatisticas 14
      vdbPercentualOcorrencias14 := RoundTo((vdbQtdOcorrencias14 / (Stgr_Sorteios.RowCount-1) *100),-2);
      Stgr_Estatisticas.Cells[0,viContar21Combinacoes] := viContar21Combinacoes.ToString;
      Stgr_Estatisticas.Cells[1,viContar21Combinacoes] := RightStr('0000'+(vdbQtdOcorrencias14.ToString),5);
      Stgr_Estatisticas.Cells[2,viContar21Combinacoes] := vdbPercentualOcorrencias14.ToString+'%';
      li_QtdOcorrencias14.add( RightStr('0000'+(vdbQtdOcorrencias14.ToString),5) + 'acertos, que equivalente ao percentual de ' + vdbPercentualOcorrencias14.ToString+'% do conjunto da linha: '  + RightStr('0'+viContar21Combinacoes.ToString,2));
      Stgr_Estatisticas.Cells[3,viContar21Combinacoes] := ' 1 em '+ (RoundTo((Stgr_Sorteios.RowCount-1) / vdbQtdOcorrencias14,-4)).ToString;
      Stgr_Estatisticas.Cells[4,viContar21Combinacoes] := viUltimoSorteio14.ToString;
      Stgr_Estatisticas.Cells[5,viContar21Combinacoes] := RightStr('00'+((Stgr_Sorteios.RowCount-1) - viUltimoSorteio14).ToString,3);
      li_QtdAtrasados14.Add(RightStr('00'+((Stgr_Sorteios.RowCount-1) - viUltimoSorteio14).ToString,3) + ' no sorteio '+ viUltimoSorteio14.ToString+ ' no '  + RightStr('0'+viContar21Combinacoes.ToString,2));
      Stgr_Sorteios.Repaint;
      Stgr_Estatisticas.Repaint;
      // --> Estatísticas 15
      // --> Montar Flags com as combinações
      vdbPercentualOcorrencias15 := RoundTo((vdbQtdOcorrencias15 / (Stgr_Sorteios.RowCount-1) *100),-2);
      Stgr_Estatisticas15.Cells[0,viContar21Combinacoes] := viContar21Combinacoes.ToString;
      Stgr_Estatisticas15.Cells[1,viContar21Combinacoes] := RightStr('0000'+(vdbQtdOcorrencias15.ToString),5);
      Stgr_Estatisticas15.Cells[2,viContar21Combinacoes] := vdbPercentualOcorrencias15.ToString+'%';
      li_QtdOcorrencias15.add( RightStr('0000'+(vdbQtdOcorrencias15.ToString),5) + ' acertos, que equivalente ao percentual de ' + vdbPercentualOcorrencias15.ToString+'% do conjunto da linha: '  + RightStr('0'+viContar21Combinacoes.ToString,2));
      Stgr_Estatisticas15.Cells[3,viContar21Combinacoes] := ' 1 em '+ (RoundTo((Stgr_Sorteios.RowCount-1) / vdbQtdOcorrencias15,-4)).ToString;
      Stgr_Estatisticas15.Cells[4,viContar21Combinacoes] := viUltimoSorteio15.ToString;
      Stgr_Estatisticas15.Cells[5,viContar21Combinacoes] := RightStr('00'+((Stgr_Sorteios.RowCount-1) - viUltimoSorteio15).ToString,3);
      li_QtdAtrasados15.Add(RightStr('00'+((Stgr_Sorteios.RowCount-1) - viUltimoSorteio15).ToString,3) + ' atrasados, ocorrido pela última vez no sorteio '+ viUltimoSorteio15.ToString+ ' - conjunto da linha:  '  + RightStr('0'+viContar21Combinacoes.ToString,2));
      Stgr_Sorteios.Repaint;
      Stgr_Estatisticas15.Repaint;

      Falso_Linha1TodosNumeros();
      FOR viContarCelulas := 2 TO 22 DO
      begin
         Stgr_Todos_Numeros.Cells[ (STRtoINT(Stgr_Base21.Cells[viContarCelulas,viContar21Combinacoes])) ,1]:='V';
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
      if (viContar21Combinacoes mod 10)=0 then
      begin
         Stgr_Estatisticas15.RowCount := viContar21Combinacoes;
         Self.WindowState := wsMinimized;
         Self.WindowState := wsNormal;
      end;
   end;
   La_NSorteioRank.Caption := 'Número de sorteios apurados:  '+ (Stgr_Sorteios.RowCount-1).ToString;
   li_QtdOcorrencias14.Sort;
   li_QtdAtrasados14.Sort;
   li_QtdOcorrencias15.Sort;
   li_QtdAtrasados15.Sort;
   for viContar21Combinacoes := (Stgr_Base21.RowCount-1) downto 1 do
   begin
      Stgr_EstatisticasOcorrencias.Cells[0, Stgr_Base21.RowCount-viContar21Combinacoes] := li_QtdOcorrencias14[viContar21Combinacoes-1];
      Stgr_EstatisticasSorteiosAtrasados.Cells[0, Stgr_Base21.RowCount-viContar21Combinacoes] :=  li_QtdAtrasados14[viContar21Combinacoes-1];
      Stgr_EstatisticasOcorrencias15.Cells[0, Stgr_Base21.RowCount-viContar21Combinacoes] := li_QtdOcorrencias15[viContar21Combinacoes-1];
      Stgr_EstatisticasSorteiosAtrasados15.Cells[0, viContar21Combinacoes] :=  li_QtdAtrasados15[viContar21Combinacoes-1];
   end;
   Stgr_EstatisticasOcorrencias.RowCount := Stgr_Base21.RowCount;
   Stgr_EstatisticasSorteiosAtrasados.RowCount := Stgr_Base21.RowCount;
   Stgr_EstatisticasOcorrencias15.RowCount := Stgr_Base21.RowCount;
   Stgr_EstatisticasSorteiosAtrasados15.RowCount := Stgr_Base21.RowCount;
   Stgr_Estatisticas15.RowCount := Stgr_Base21.RowCount;
//   Stgr_EstatisticasOcorrencias[0,viContar21Combinacoes] :=
//   Stgr_EstatisticasSorteiosAtrasados[0,viContar21Combinacoes] :=
   Stgr_EstatisticasOcorrencias.Repaint;
   Stgr_EstatisticasSorteiosAtrasados.Repaint;
   Stgr_EstatisticasOcorrencias15.Repaint;
   Stgr_EstatisticasSorteiosAtrasados15.Repaint;
   Stgr_Estatisticas15.Repaint;
   Showmessage('Fim do Rank');
   li_QtdOcorrencias14.DisposeOf;
   li_QtdAtrasados14.DisposeOf;
   li_QtdOcorrencias15.DisposeOf;
   li_QtdAtrasados15.DisposeOf;
end;



procedure T_F_Ranqueador_116d21M2.BBT_RECOMECARClick(Sender: TObject);
Begin
   Stgr_Base21.Height := Scbx_GABARITO.Height - 55;
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

   Stgr_Estatisticas15.ColWidths[0] := 65;
   Stgr_Estatisticas15.Cells[0,0] := 'Número:';
   Stgr_Estatisticas15.Cells[1,0] := 'Quantidade de Ocorrências';
   Stgr_Estatisticas15.Cells[2,0] := 'Percet. de Ocorrências';
   Stgr_Estatisticas15.Cells[3,0] := 'Média de Ocorrências';
   Stgr_Estatisticas15.Cells[4,0] := 'Concurso c/ última Ocor.';
   Stgr_Estatisticas15.Cells[5,0] := 'Qtd Concurso Atraso';
   Stgr_Estatisticas15.Height := Scbx_GABARITO.Height - 55;
   Stgr_EstatisticasOcorrencias15.Cells[0,0] := 'Quantidade e percentual de ocorrências - MAIS OCORRÊNCIAS';
   Stgr_EstatisticasSorteiosAtrasados15.Cells[0,0] := 'Quantidade de Atrasos - MENOS ATRASADO';
   Stgr_EstatisticasOcorrencias15.Height := Scbx_GABARITO.Height - 55;
   Stgr_EstatisticasSorteiosAtrasados15.Height := Scbx_GABARITO.Height - 55;
   Bbt_CarregarSorteio15N.Click;
end;




Procedure T_F_Ranqueador_116d21M2.PreenchimentoInicialPadrao;
var
  viContar: Integer;
begin
   Zerar_FLAGTodosNumeros();
   for viContar := 2 to 22 do
   begin
      Stgr_Base21.Cells[viContar, 0] := INTtoSTR(viContar - 1);
   end;
   Stgr_Base21.RowCount := 26;
   Stgr_Base21.Height := Scbx_GABARITO.Height - 55;
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

   Stgr_Estatisticas15.ColWidths[0] := 65;
   Stgr_Estatisticas15.Cells[0,0] := 'Número:';
   Stgr_Estatisticas15.Cells[1,0] := 'Quantidade de Ocorrências';
   Stgr_Estatisticas15.Cells[2,0] := 'Percet. de Ocorrências';
   Stgr_Estatisticas15.Cells[3,0] := 'Média de Ocorrências';
   Stgr_Estatisticas15.Cells[4,0] := 'Concurso c/ última Ocor.';
   Stgr_Estatisticas15.Cells[5,0] := 'Qtd Concurso Atraso';
   Stgr_Estatisticas15.Height := Scbx_GABARITO.Height - 55;
   Stgr_EstatisticasOcorrencias15.Cells[0,0] := 'Quantidade e percentual de ocorrências';
   Stgr_EstatisticasSorteiosAtrasados15.Cells[0,0] := 'Quantidade de Atrasos';
   Stgr_EstatisticasOcorrencias15.Height := Scbx_GABARITO.Height - 55;
   Stgr_EstatisticasSorteiosAtrasados15.Height := Scbx_GABARITO.Height - 55;
   Bbt_CarregarSorteio15N.Click;
end;


procedure T_F_Ranqueador_116d21M2.Zerar_FLAGTodosNumeros();
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


procedure T_F_Ranqueador_116d21M2.Falso_Linha1TodosNumeros();
var
  viContar: Integer;
begin
  for viContar := 1 to 25 do
  begin
    Stgr_Todos_Numeros.Cells[viContar, 1] := 'F';
  end;
end;


procedure T_F_Ranqueador_116d21M2.Falso_Linha2TodosNumeros();
var
  viContar: Integer;
begin
  for viContar := 1 to 25 do
  begin
    Stgr_Todos_Numeros.Cells[viContar, 2] := 'F';
  end;
end;



procedure T_F_Ranqueador_116d21M2.Falso_Linha1TodosNumerosP17();
begin
end;

procedure T_F_Ranqueador_116d21M2.Falso_Linha2TodosNumerosP17();
begin
end;


function T_F_Ranqueador_116d21M2.IIf(Expressao: Variant; ParteTRUE, ParteFALSE: Variant): Variant;
 begin
   if Expressao then
      Result := ParteTRUE
   else
      Result := ParteFALSE;
 end;

end.
