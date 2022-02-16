unit Ranqueadorr_116_Jogos_21_NumerosMod1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, DB, strutils, Math,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase;

Type
   T_F_Ranqueador_116d21M1 = Class(TForm)
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
      Procedure Bbt_PREPARAR1Click(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure Bbt_CLOSEClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure Bt_NOVA_SIMULACAOClick(Sender: TObject);
      Procedure Bbt_SAIRClick(Sender: TObject);
      Procedure Bbt_RankClick(Sender: TObject);
      Procedure BitBtn1Click(Sender: TObject);
    procedure Bbt_CarregarSorteio15NClick(Sender: TObject);
    procedure BBT_RECOMECARClick(Sender: TObject);
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
  _F_Ranqueador_116d21M1: T_F_Ranqueador_116d21M1;

implementation

uses
  System.Generics.Collections, uDataModule01;

{$R *.dfm}


Procedure T_F_Ranqueador_116d21M1.FormCreate(Sender: TObject);
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
   //Pa_EXECUTAR_FILTRO.Enabled := false;
   //Bbt_CANCELAR_SAIR.Visible := false;
   // SELF.Ibq_COMBINACOES.SQL.Clear;
   // SELF.Ibq_COMBINACOES.SQL.Add('UPDATE FILTRO_10D17_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
   // SELF.Ibq_COMBINACOES.ExecSQL;
   // SELF.Ibq_COMBINACOES.SQL.Clear;
   // SELF.Ibq_COMBINACOES.SQL.Add('COMMIT')  ;
   // SELF.Ibq_COMBINACOES.ExecSQL;
   //PreenchimentoInicialPadrao;
  BBT_RECOMECAR.Click;
End;

Procedure T_F_Ranqueador_116d21M1.FormClose(Sender: TObject; Var Action: TCloseAction);
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




procedure T_F_Ranqueador_116d21M1.Bbt_CLOSEClick(Sender: TObject);
begin
     SELF.Close;
end;




Procedure T_F_Ranqueador_116d21M1.Bt_NOVA_SIMULACAOClick(Sender: TObject);
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


procedure T_F_Ranqueador_116d21M1.Bbt_SAIRClick(Sender: TObject);
begin
     SELF.Close;
end;



procedure T_F_Ranqueador_116d21M1.BitBtn1Click(Sender: TObject);
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

Procedure T_F_Ranqueador_116d21M1.Bbt_PREPARAR1Click(Sender: TObject);
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

Procedure T_F_Ranqueador_116d21M1.Bbt_GerarComb05();
Begin

End;



procedure T_F_Ranqueador_116d21M1.Bbt_CarregarSorteio15NClick(Sender: TObject);
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


Procedure T_F_Ranqueador_116d21M1.Bbt_CarregarSort(Sender: TObject);
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


procedure T_F_Ranqueador_116d21M1.Bbt_RankClick(Sender: TObject);
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
      // --> Estatisticas 12
      vdbPercentualOcorrencias14 := RoundTo((vdbQtdOcorrencias14 / (Stgr_Sorteios.RowCount-1) *100),-2);
      Stgr_Estatisticas.Cells[0,viContar21Combinacoes] := viContar21Combinacoes.ToString;
      Stgr_Estatisticas.Cells[1,viContar21Combinacoes] := RightStr('0000'+(vdbQtdOcorrencias14.ToString),5);
      Stgr_Estatisticas.Cells[2,viContar21Combinacoes] := vdbPercentualOcorrencias14.ToString+'%';
      li_QtdOcorrencias14.add( RightStr('0000'+(vdbQtdOcorrencias14.ToString),5) + ' equivalente a ' + vdbPercentualOcorrencias14.ToString+'% no '  + RightStr('0'+viContar21Combinacoes.ToString,2));
      Stgr_Estatisticas.Cells[3,viContar21Combinacoes] := ' 1 em '+ (RoundTo((Stgr_Sorteios.RowCount-1) / vdbQtdOcorrencias14,-4)).ToString;
      Stgr_Estatisticas.Cells[4,viContar21Combinacoes] := viUltimoSorteio14.ToString;
      Stgr_Estatisticas.Cells[5,viContar21Combinacoes] := RightStr('00'+((Stgr_Sorteios.RowCount-1) - viUltimoSorteio14).ToString,3);
      li_QtdAtrasados14.Add(RightStr('00'+((Stgr_Sorteios.RowCount-1) - viUltimoSorteio14).ToString,3) + ' no sorteio '+ viUltimoSorteio14.ToString+ ' no '  + RightStr('0'+viContar21Combinacoes.ToString,2));
      Stgr_Sorteios.Repaint;
      Stgr_Estatisticas.Repaint;
      // --> Estatísticas 13
      // --> Montar Flags com as combinações
      vdbPercentualOcorrencias15 := RoundTo((vdbQtdOcorrencias15 / (Stgr_Sorteios.RowCount-1) *100),-2);
      Stgr_Estatisticas15.Cells[0,viContar21Combinacoes] := viContar21Combinacoes.ToString;
      Stgr_Estatisticas15.Cells[1,viContar21Combinacoes] := RightStr('0000'+(vdbQtdOcorrencias15.ToString),5);
      Stgr_Estatisticas15.Cells[2,viContar21Combinacoes] := vdbPercentualOcorrencias15.ToString+'%';
      li_QtdOcorrencias15.add( RightStr('0000'+(vdbQtdOcorrencias15.ToString),5) + ' equivalente a ' + vdbPercentualOcorrencias15.ToString+'% no '  + RightStr('0'+viContar21Combinacoes.ToString,2));
      Stgr_Estatisticas15.Cells[3,viContar21Combinacoes] := ' 1 em '+ (RoundTo((Stgr_Sorteios.RowCount-1) / vdbQtdOcorrencias15,-4)).ToString;
      Stgr_Estatisticas15.Cells[4,viContar21Combinacoes] := viUltimoSorteio15.ToString;
      Stgr_Estatisticas15.Cells[5,viContar21Combinacoes] := RightStr('00'+((Stgr_Sorteios.RowCount-1) - viUltimoSorteio15).ToString,3);
      li_QtdAtrasados15.Add(RightStr('00'+((Stgr_Sorteios.RowCount-1) - viUltimoSorteio15).ToString,3) + ' no sorteio '+ viUltimoSorteio15.ToString+ ' no '  + RightStr('0'+viContar21Combinacoes.ToString,2));
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
         Self.WindowState := wsMinimized;
         Self.WindowState := wsNormal;
      end;
   end;
   La_NSorteioRank.Caption := 'Número de sorteios apurados:  '+ (Stgr_Sorteios.RowCount-1).ToString;
   li_QtdOcorrencias14.Sort;
   li_QtdAtrasados14.Sort;
   li_QtdOcorrencias15.Sort;
   li_QtdAtrasados15.Sort;
   for viContar21Combinacoes := 1 to Trunc((Stgr_Base21.RowCount-1)/1) do
   begin
      Stgr_EstatisticasOcorrencias.Cells[0, viContar21Combinacoes] := li_QtdOcorrencias14[viContar21Combinacoes-1];
      Stgr_EstatisticasSorteiosAtrasados.Cells[0, viContar21Combinacoes] :=  li_QtdAtrasados14[viContar21Combinacoes-1];
      Stgr_EstatisticasOcorrencias15.Cells[0, viContar21Combinacoes] := li_QtdOcorrencias15[viContar21Combinacoes-1];
      Stgr_EstatisticasSorteiosAtrasados15.Cells[0, viContar21Combinacoes] :=  li_QtdAtrasados15[viContar21Combinacoes-1];
   end;
   Stgr_EstatisticasOcorrencias.RowCount := Stgr_Base21.RowCount;
   Stgr_EstatisticasSorteiosAtrasados.RowCount := Stgr_Base21.RowCount;
   Stgr_EstatisticasOcorrencias15.RowCount := Stgr_Base21.RowCount;
   Stgr_EstatisticasSorteiosAtrasados15.RowCount := Stgr_Base21.RowCount;
//   Stgr_EstatisticasOcorrencias[0,viContar21Combinacoes] :=
//   Stgr_EstatisticasSorteiosAtrasados[0,viContar21Combinacoes] :=
   Stgr_EstatisticasOcorrencias.Repaint;
   Stgr_EstatisticasSorteiosAtrasados.Repaint;
   Stgr_EstatisticasOcorrencias15.Repaint;
   Stgr_EstatisticasSorteiosAtrasados15.Repaint;
   Showmessage('Fim do Rank');
   li_QtdOcorrencias14.DisposeOf;
   li_QtdAtrasados14.DisposeOf;
   li_QtdOcorrencias15.DisposeOf;
   li_QtdAtrasados15.DisposeOf;
end;



procedure T_F_Ranqueador_116d21M1.BBT_RECOMECARClick(Sender: TObject);
var
  viContar: Integer;
begin
   for viContar := 2 to 22 do
   begin
      Stgr_Base21.Cells[viContar, 0] := INTtoSTR(viContar - 1);
   end;
   Ibq_Jogos.Close;
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




Procedure T_F_Ranqueador_116d21M1.PreenchimentoInicialPadrao;
var
  viContar: Integer;
begin
   Zerar_FLAGTodosNumeros();
   for viContar := 2 to 22 do
   begin
      Stgr_Base21.Cells[viContar, 0] := INTtoSTR(viContar - 1);
   end;
   //01
   Stgr_Base21.Cells[00, 01] := '01';
   Stgr_Base21.Cells[01, 01] := 'V';
   Stgr_Base21.Cells[02, 01] := '02';
   Stgr_Base21.Cells[03, 01] := '03';
   Stgr_Base21.Cells[04, 01] := '04';
   Stgr_Base21.Cells[05, 01] := '05';
   Stgr_Base21.Cells[06, 01] := '06';
   Stgr_Base21.Cells[07, 01] := '07';
   Stgr_Base21.Cells[08, 01] := '09';
   Stgr_Base21.Cells[09, 01] := '10';
   Stgr_Base21.Cells[10, 01] := '11';
   Stgr_Base21.Cells[11, 01] := '12';
   Stgr_Base21.Cells[12, 01] := '13';
   Stgr_Base21.Cells[13, 01] := '14';
   Stgr_Base21.Cells[14, 01] := '16';
   Stgr_Base21.Cells[15, 01] := '17';
   Stgr_Base21.Cells[16, 01] := '18';
   Stgr_Base21.Cells[17, 01] := '19';
   Stgr_Base21.Cells[18, 01] := '20';
   Stgr_Base21.Cells[19, 01] := '21';
   Stgr_Base21.Cells[20, 01] := '23';
   Stgr_Base21.Cells[21, 01] := '24';
   Stgr_Base21.Cells[22, 01] := '25';
//   Stgr_Base04.Cells[0, 01] := '01';
//   Stgr_Base04.Cells[1, 01] := 'V';
//   Stgr_Base04.Cells[2, 01] := '03';
//   Stgr_Base04.Cells[3, 01] := '04';
//   Stgr_Base04.Cells[4, 01] := '09';
//   Stgr_Base04.Cells[5, 01] := '11';
   //02
   Stgr_Base21.Cells[00, 02] := '02';
   Stgr_Base21.Cells[01, 02] := 'V';
   Stgr_Base21.Cells[02, 02] := '01';
   Stgr_Base21.Cells[03, 02] := '03';
   Stgr_Base21.Cells[04, 02] := '04';
   Stgr_Base21.Cells[05, 02] := '05';
   Stgr_Base21.Cells[06, 02] := '06';
   Stgr_Base21.Cells[07, 02] := '07';
   Stgr_Base21.Cells[08, 02] := '08';
   Stgr_Base21.Cells[09, 02] := '10';
   Stgr_Base21.Cells[10, 02] := '11';
   Stgr_Base21.Cells[11, 02] := '12';
   Stgr_Base21.Cells[12, 02] := '13';
   Stgr_Base21.Cells[13, 02] := '14';
   Stgr_Base21.Cells[14, 02] := '15';
   Stgr_Base21.Cells[15, 02] := '17';
   Stgr_Base21.Cells[16, 02] := '18';
   Stgr_Base21.Cells[17, 02] := '19';
   Stgr_Base21.Cells[18, 02] := '20';
   Stgr_Base21.Cells[19, 02] := '21';
   Stgr_Base21.Cells[20, 02] := '22';
   Stgr_Base21.Cells[21, 02] := '24';
   Stgr_Base21.Cells[22, 02] := '25';
//   Stgr_Base04.Cells[0, 02] := '02';
//   Stgr_Base04.Cells[1, 02] := 'V';
//   Stgr_Base04.Cells[2, 02] := '03';
//   Stgr_Base04.Cells[3, 02] := '04';
//   Stgr_Base04.Cells[4, 02] := '08';
//   Stgr_Base04.Cells[5, 02] := '11';
   //03
   Stgr_Base21.Cells[00, 03] := '03';
   Stgr_Base21.Cells[01, 03] := 'V';
   Stgr_Base21.Cells[02, 03] := '01';
   Stgr_Base21.Cells[03, 03] := '02';
   Stgr_Base21.Cells[04, 03] := '04';
   Stgr_Base21.Cells[05, 03] := '05';
   Stgr_Base21.Cells[06, 03] := '06';
   Stgr_Base21.Cells[07, 03] := '07';
   Stgr_Base21.Cells[08, 03] := '08';
   Stgr_Base21.Cells[09, 03] := '09';
   Stgr_Base21.Cells[10, 03] := '11';
   Stgr_Base21.Cells[11, 03] := '12';
   Stgr_Base21.Cells[12, 03] := '13';
   Stgr_Base21.Cells[13, 03] := '14';
   Stgr_Base21.Cells[14, 03] := '15';
   Stgr_Base21.Cells[15, 03] := '16';
   Stgr_Base21.Cells[16, 03] := '18';
   Stgr_Base21.Cells[17, 03] := '19';
   Stgr_Base21.Cells[18, 03] := '20';
   Stgr_Base21.Cells[19, 03] := '21';
   Stgr_Base21.Cells[20, 03] := '22';
   Stgr_Base21.Cells[21, 03] := '23';
   Stgr_Base21.Cells[22, 03] := '25';
//   Stgr_Base04.Cells[0, 03] := '03';
//   Stgr_Base04.Cells[1, 03] := 'V';
//   Stgr_Base04.Cells[2, 03] := '03';
//   Stgr_Base04.Cells[3, 03] := '04';
//   Stgr_Base04.Cells[4, 03] := '09';
//   Stgr_Base04.Cells[5, 03] := '11';
   //04
   Stgr_Base21.Cells[00, 04] := '04';
   Stgr_Base21.Cells[01, 04] := 'V';
   Stgr_Base21.Cells[02, 04] := '01';
   Stgr_Base21.Cells[03, 04] := '02';
   Stgr_Base21.Cells[04, 04] := '03';
   Stgr_Base21.Cells[05, 04] := '05';
   Stgr_Base21.Cells[06, 04] := '06';
   Stgr_Base21.Cells[07, 04] := '07';
   Stgr_Base21.Cells[08, 04] := '08';
   Stgr_Base21.Cells[09, 04] := '09';
   Stgr_Base21.Cells[10, 04] := '10';
   Stgr_Base21.Cells[11, 04] := '12';
   Stgr_Base21.Cells[12, 04] := '13';
   Stgr_Base21.Cells[13, 04] := '14';
   Stgr_Base21.Cells[14, 04] := '15';
   Stgr_Base21.Cells[15, 04] := '16';
   Stgr_Base21.Cells[16, 04] := '17';
   Stgr_Base21.Cells[17, 04] := '19';
   Stgr_Base21.Cells[18, 04] := '20';
   Stgr_Base21.Cells[19, 04] := '21';
   Stgr_Base21.Cells[20, 04] := '22';
   Stgr_Base21.Cells[21, 04] := '23';
   Stgr_Base21.Cells[22, 04] := '24';
//   Stgr_Base04.Cells[0, 04] := '04';
//   Stgr_Base04.Cells[1, 04] := 'V';
//   Stgr_Base04.Cells[2, 04] := '03';
//   Stgr_Base04.Cells[3, 04] := '04';
//   Stgr_Base04.Cells[4, 04] := '08';
//   Stgr_Base04.Cells[5, 04] := '11';
   //05
   Stgr_Base21.Cells[00, 05] := '05';
   Stgr_Base21.Cells[01, 05] := 'V';
   Stgr_Base21.Cells[02, 05] := '02';
   Stgr_Base21.Cells[03, 05] := '03';
   Stgr_Base21.Cells[04, 05] := '04';
   Stgr_Base21.Cells[05, 05] := '05';
   Stgr_Base21.Cells[06, 05] := '06';
   Stgr_Base21.Cells[07, 05] := '07';
   Stgr_Base21.Cells[08, 05] := '09';
   Stgr_Base21.Cells[09, 05] := '10';
   Stgr_Base21.Cells[10, 05] := '11';
   Stgr_Base21.Cells[11, 05] := '13';
   Stgr_Base21.Cells[12, 05] := '14';
   Stgr_Base21.Cells[13, 05] := '15';
   Stgr_Base21.Cells[14, 05] := '16';
   Stgr_Base21.Cells[15, 05] := '17';
   Stgr_Base21.Cells[16, 05] := '18';
   Stgr_Base21.Cells[17, 05] := '20';
   Stgr_Base21.Cells[18, 05] := '21';
   Stgr_Base21.Cells[19, 05] := '22';
   Stgr_Base21.Cells[20, 05] := '23';
   Stgr_Base21.Cells[21, 05] := '24';
   Stgr_Base21.Cells[22, 05] := '25';
//   Stgr_Base04.Cells[0, 05] := '05';
//   Stgr_Base04.Cells[1, 05] := 'V';
//   Stgr_Base04.Cells[2, 05] := '03';
//   Stgr_Base04.Cells[3, 05] := '04';
//   Stgr_Base04.Cells[4, 05] := '08';
//   Stgr_Base04.Cells[5, 05] := '11';
   //06
   Stgr_Base21.Cells[00, 06] := '06';
   Stgr_Base21.Cells[01, 06] := 'V';
   Stgr_Base21.Cells[02, 06] := '01';
   Stgr_Base21.Cells[03, 06] := '03';
   Stgr_Base21.Cells[04, 06] := '04';
   Stgr_Base21.Cells[05, 06] := '05';
   Stgr_Base21.Cells[06, 06] := '06';
   Stgr_Base21.Cells[07, 06] := '07';
   Stgr_Base21.Cells[08, 06] := '08';
   Stgr_Base21.Cells[09, 06] := '10';
   Stgr_Base21.Cells[10, 06] := '11';
   Stgr_Base21.Cells[11, 06] := '12';
   Stgr_Base21.Cells[12, 06] := '14';
   Stgr_Base21.Cells[13, 06] := '15';
   Stgr_Base21.Cells[14, 06] := '16';
   Stgr_Base21.Cells[15, 06] := '17';
   Stgr_Base21.Cells[16, 06] := '18';
   Stgr_Base21.Cells[17, 06] := '19';
   Stgr_Base21.Cells[18, 06] := '21';
   Stgr_Base21.Cells[19, 06] := '22';
   Stgr_Base21.Cells[20, 06] := '23';
   Stgr_Base21.Cells[21, 06] := '24';
   Stgr_Base21.Cells[22, 06] := '25';
//   Stgr_Base04.Cells[0, 06] := '06';
//   Stgr_Base04.Cells[1, 06] := 'V';
//   Stgr_Base04.Cells[2, 06] := '03';
//   Stgr_Base04.Cells[3, 06] := '04';
//   Stgr_Base04.Cells[4, 06] := '08';
//   Stgr_Base04.Cells[5, 06] := '09';
   //07
   Stgr_Base21.Cells[00, 07] := '07';
   Stgr_Base21.Cells[01, 07] := 'V';
   Stgr_Base21.Cells[02, 07] := '01';
   Stgr_Base21.Cells[03, 07] := '02';
   Stgr_Base21.Cells[04, 07] := '04';
   Stgr_Base21.Cells[05, 07] := '05';
   Stgr_Base21.Cells[06, 07] := '06';
   Stgr_Base21.Cells[07, 07] := '07';
   Stgr_Base21.Cells[08, 07] := '08';
   Stgr_Base21.Cells[09, 07] := '09';
   Stgr_Base21.Cells[10, 07] := '11';
   Stgr_Base21.Cells[11, 07] := '12';
   Stgr_Base21.Cells[12, 07] := '13';
   Stgr_Base21.Cells[13, 07] := '15';
   Stgr_Base21.Cells[14, 07] := '16';
   Stgr_Base21.Cells[15, 07] := '17';
   Stgr_Base21.Cells[16, 07] := '18';
   Stgr_Base21.Cells[17, 07] := '19';
   Stgr_Base21.Cells[18, 07] := '20';
   Stgr_Base21.Cells[19, 07] := '22';
   Stgr_Base21.Cells[20, 07] := '23';
   Stgr_Base21.Cells[21, 07] := '24';
   Stgr_Base21.Cells[22, 07] := '25';
//   Stgr_Base04.Cells[0, 07] := '07';
//   Stgr_Base04.Cells[1, 07] := 'V';
//   Stgr_Base04.Cells[2, 07] := '03';
//   Stgr_Base04.Cells[3, 07] := '04';
//   Stgr_Base04.Cells[4, 07] := '08';
//   Stgr_Base04.Cells[5, 07] := '09';
   //08
   Stgr_Base21.Cells[00, 08] := '08';
   Stgr_Base21.Cells[01, 08] := 'V';
   Stgr_Base21.Cells[02, 08] := '01';
   Stgr_Base21.Cells[03, 08] := '02';
   Stgr_Base21.Cells[04, 08] := '03';
   Stgr_Base21.Cells[05, 08] := '05';
   Stgr_Base21.Cells[06, 08] := '06';
   Stgr_Base21.Cells[07, 08] := '07';
   Stgr_Base21.Cells[08, 08] := '08';
   Stgr_Base21.Cells[09, 08] := '09';
   Stgr_Base21.Cells[10, 08] := '10';
   Stgr_Base21.Cells[11, 08] := '12';
   Stgr_Base21.Cells[12, 08] := '13';
   Stgr_Base21.Cells[13, 08] := '14';
   Stgr_Base21.Cells[14, 08] := '16';
   Stgr_Base21.Cells[15, 08] := '17';
   Stgr_Base21.Cells[16, 08] := '18';
   Stgr_Base21.Cells[17, 08] := '19';
   Stgr_Base21.Cells[18, 08] := '20';
   Stgr_Base21.Cells[19, 08] := '21';
   Stgr_Base21.Cells[20, 08] := '23';
   Stgr_Base21.Cells[21, 08] := '24';
   Stgr_Base21.Cells[22, 08] := '25';
//   Stgr_Base04.Cells[0, 08] := '08';
//   Stgr_Base04.Cells[1, 08] := 'V';
//   Stgr_Base04.Cells[2, 08] := '03';
//   Stgr_Base04.Cells[3, 08] := '04';
//   Stgr_Base04.Cells[4, 08] := '08';
//   Stgr_Base04.Cells[5, 08] := '09';
   //09
   Stgr_Base21.Cells[00, 09] := '09';
   Stgr_Base21.Cells[01, 09] := 'V';
   Stgr_Base21.Cells[02, 09] := '01';
   Stgr_Base21.Cells[03, 09] := '02';
   Stgr_Base21.Cells[04, 09] := '03';
   Stgr_Base21.Cells[05, 09] := '04';
   Stgr_Base21.Cells[06, 09] := '06';
   Stgr_Base21.Cells[07, 09] := '07';
   Stgr_Base21.Cells[08, 09] := '08';
   Stgr_Base21.Cells[09, 09] := '09';
   Stgr_Base21.Cells[10, 09] := '10';
   Stgr_Base21.Cells[11, 09] := '11';
   Stgr_Base21.Cells[12, 09] := '13';
   Stgr_Base21.Cells[13, 09] := '14';
   Stgr_Base21.Cells[14, 09] := '15';
   Stgr_Base21.Cells[15, 09] := '17';
   Stgr_Base21.Cells[16, 09] := '18';
   Stgr_Base21.Cells[17, 09] := '19';
   Stgr_Base21.Cells[18, 09] := '20';
   Stgr_Base21.Cells[19, 09] := '21';
   Stgr_Base21.Cells[20, 09] := '22';
   Stgr_Base21.Cells[21, 09] := '24';
   Stgr_Base21.Cells[22, 09] := '25';
//   Stgr_Base04.Cells[0, 09] := '09';
//   Stgr_Base04.Cells[1, 09] := 'V';
//   Stgr_Base04.Cells[2, 09] := '03';
//   Stgr_Base04.Cells[3, 09] := '04';
//   Stgr_Base04.Cells[4, 09] := '08';
//   Stgr_Base04.Cells[5, 09] := '09';
   //10
   Stgr_Base21.Cells[00, 10] := '10';
   Stgr_Base21.Cells[01, 10] := 'V';
   Stgr_Base21.Cells[02, 10] := '01';
   Stgr_Base21.Cells[03, 10] := '02';
   Stgr_Base21.Cells[04, 10] := '03';
   Stgr_Base21.Cells[05, 10] := '04';
   Stgr_Base21.Cells[06, 10] := '05';
   Stgr_Base21.Cells[07, 10] := '07';
   Stgr_Base21.Cells[08, 10] := '08';
   Stgr_Base21.Cells[09, 10] := '09';
   Stgr_Base21.Cells[10, 10] := '10';
   Stgr_Base21.Cells[11, 10] := '11';
   Stgr_Base21.Cells[12, 10] := '12';
   Stgr_Base21.Cells[13, 10] := '14';
   Stgr_Base21.Cells[14, 10] := '15';
   Stgr_Base21.Cells[15, 10] := '16';
   Stgr_Base21.Cells[16, 10] := '18';
   Stgr_Base21.Cells[17, 10] := '19';
   Stgr_Base21.Cells[18, 10] := '20';
   Stgr_Base21.Cells[19, 10] := '21';
   Stgr_Base21.Cells[20, 10] := '22';
   Stgr_Base21.Cells[21, 10] := '23';
   Stgr_Base21.Cells[22, 10] := '25';
//   Stgr_Base04.Cells[0, 10] := '10';
//   Stgr_Base04.Cells[1, 10] := 'V';
//   Stgr_Base04.Cells[2, 10] := '03';
//   Stgr_Base04.Cells[3, 10] := '04';
//   Stgr_Base04.Cells[4, 10] := '08';
//   Stgr_Base04.Cells[5, 10] := '09';
   //11
   Stgr_Base21.Cells[00, 11] := '11';
   Stgr_Base21.Cells[01, 11] := 'V';
   Stgr_Base21.Cells[02, 11] := '01';
   Stgr_Base21.Cells[03, 11] := '02';
   Stgr_Base21.Cells[04, 11] := '03';
   Stgr_Base21.Cells[05, 11] := '04';
   Stgr_Base21.Cells[06, 11] := '05';
   Stgr_Base21.Cells[07, 11] := '06';
   Stgr_Base21.Cells[08, 11] := '08';
   Stgr_Base21.Cells[09, 11] := '09';
   Stgr_Base21.Cells[10, 11] := '10';
   Stgr_Base21.Cells[11, 11] := '11';
   Stgr_Base21.Cells[12, 11] := '12';
   Stgr_Base21.Cells[13, 11] := '13';
   Stgr_Base21.Cells[14, 11] := '15';
   Stgr_Base21.Cells[15, 11] := '16';
   Stgr_Base21.Cells[16, 11] := '17';
   Stgr_Base21.Cells[17, 11] := '19';
   Stgr_Base21.Cells[18, 11] := '20';
   Stgr_Base21.Cells[19, 11] := '21';
   Stgr_Base21.Cells[20, 11] := '22';
   Stgr_Base21.Cells[21, 11] := '23';
   Stgr_Base21.Cells[22, 11] := '24';
//   Stgr_Base04.Cells[0, 11] := '11';
//   Stgr_Base04.Cells[1, 11] := 'V';
//   Stgr_Base04.Cells[2, 11] := '03';
//   Stgr_Base04.Cells[3, 11] := '04';
//   Stgr_Base04.Cells[4, 11] := '09';
//   Stgr_Base04.Cells[5, 11] := '11';
   //12
   Stgr_Base21.Cells[00, 12] := '12';
   Stgr_Base21.Cells[01, 12] := 'V';
   Stgr_Base21.Cells[02, 12] := '02';
   Stgr_Base21.Cells[03, 12] := '03';
   Stgr_Base21.Cells[04, 12] := '04';
   Stgr_Base21.Cells[05, 12] := '06';
   Stgr_Base21.Cells[06, 12] := '07';
   Stgr_Base21.Cells[07, 12] := '08';
   Stgr_Base21.Cells[08, 12] := '09';
   Stgr_Base21.Cells[09, 12] := '10';
   Stgr_Base21.Cells[10, 12] := '11';
   Stgr_Base21.Cells[11, 12] := '13';
   Stgr_Base21.Cells[12, 12] := '14';
   Stgr_Base21.Cells[13, 12] := '15';
   Stgr_Base21.Cells[14, 12] := '16';
   Stgr_Base21.Cells[15, 12] := '17';
   Stgr_Base21.Cells[16, 12] := '18';
   Stgr_Base21.Cells[17, 12] := '20';
   Stgr_Base21.Cells[18, 12] := '21';
   Stgr_Base21.Cells[19, 12] := '22';
   Stgr_Base21.Cells[20, 12] := '23';
   Stgr_Base21.Cells[21, 12] := '24';
   Stgr_Base21.Cells[22, 12] := '25';
//   Stgr_Base04.Cells[0, 12] := '12';
//   Stgr_Base04.Cells[1, 12] := 'V';
//   Stgr_Base04.Cells[2, 12] := '03';
//   Stgr_Base04.Cells[3, 12] := '04';
//   Stgr_Base04.Cells[4, 12] := '08';
//   Stgr_Base04.Cells[5, 12] := '11';
   //13
   Stgr_Base21.Cells[00, 13] := '13';
   Stgr_Base21.Cells[01, 13] := 'V';
   Stgr_Base21.Cells[02, 13] := '01';
   Stgr_Base21.Cells[03, 13] := '02';
   Stgr_Base21.Cells[04, 13] := '04';
   Stgr_Base21.Cells[05, 13] := '05';
   Stgr_Base21.Cells[06, 13] := '06';
   Stgr_Base21.Cells[07, 13] := '08';
   Stgr_Base21.Cells[08, 13] := '09';
   Stgr_Base21.Cells[09, 13] := '10';
   Stgr_Base21.Cells[10, 13] := '11';
   Stgr_Base21.Cells[11, 13] := '12';
   Stgr_Base21.Cells[12, 13] := '13';
   Stgr_Base21.Cells[13, 13] := '15';
   Stgr_Base21.Cells[14, 13] := '16';
   Stgr_Base21.Cells[15, 13] := '17';
   Stgr_Base21.Cells[16, 13] := '18';
   Stgr_Base21.Cells[17, 13] := '19';
   Stgr_Base21.Cells[18, 13] := '20';
   Stgr_Base21.Cells[19, 13] := '22';
   Stgr_Base21.Cells[20, 13] := '23';
   Stgr_Base21.Cells[21, 13] := '24';
   Stgr_Base21.Cells[22, 13] := '25';
//   Stgr_Base04.Cells[0, 13] := '13';
//   Stgr_Base04.Cells[1, 13] := 'V';
//   Stgr_Base04.Cells[2, 13] := '03';
//   Stgr_Base04.Cells[3, 13] := '04';
//   Stgr_Base04.Cells[4, 13] := '09';
//   Stgr_Base04.Cells[5, 13] := '11';
   //14
   Stgr_Base21.Cells[00, 14] := '14';
   Stgr_Base21.Cells[01, 14] := 'V';
   Stgr_Base21.Cells[02, 14] := '01';
   Stgr_Base21.Cells[03, 14] := '02';
   Stgr_Base21.Cells[04, 14] := '03';
   Stgr_Base21.Cells[05, 14] := '04';
   Stgr_Base21.Cells[06, 14] := '06';
   Stgr_Base21.Cells[07, 14] := '07';
   Stgr_Base21.Cells[08, 14] := '08';
   Stgr_Base21.Cells[09, 14] := '10';
   Stgr_Base21.Cells[10, 14] := '11';
   Stgr_Base21.Cells[11, 14] := '12';
   Stgr_Base21.Cells[12, 14] := '13';
   Stgr_Base21.Cells[13, 14] := '14';
   Stgr_Base21.Cells[14, 14] := '15';
   Stgr_Base21.Cells[15, 14] := '17';
   Stgr_Base21.Cells[16, 14] := '18';
   Stgr_Base21.Cells[17, 14] := '19';
   Stgr_Base21.Cells[18, 14] := '20';
   Stgr_Base21.Cells[19, 14] := '21';
   Stgr_Base21.Cells[20, 14] := '22';
   Stgr_Base21.Cells[21, 14] := '24';
   Stgr_Base21.Cells[22, 14] := '25';
//   Stgr_Base04.Cells[0, 14] := '14';
//   Stgr_Base04.Cells[1, 14] := 'V';
//   Stgr_Base04.Cells[2, 14] := '03';
//   Stgr_Base04.Cells[3, 14] := '04';
//   Stgr_Base04.Cells[4, 14] := '08';
//   Stgr_Base04.Cells[5, 14] := '11';

   //15
   Stgr_Base21.Cells[00, 15] := '15';
   Stgr_Base21.Cells[01, 15] := 'V';
   Stgr_Base21.Cells[02, 15] := '01';
   Stgr_Base21.Cells[03, 15] := '02';
   Stgr_Base21.Cells[04, 15] := '03';
   Stgr_Base21.Cells[05, 15] := '04';
   Stgr_Base21.Cells[06, 15] := '05';
   Stgr_Base21.Cells[07, 15] := '06';
   Stgr_Base21.Cells[08, 15] := '08';
   Stgr_Base21.Cells[09, 15] := '09';
   Stgr_Base21.Cells[10, 15] := '10';
   Stgr_Base21.Cells[11, 15] := '12';
   Stgr_Base21.Cells[12, 15] := '13';
   Stgr_Base21.Cells[13, 15] := '14';
   Stgr_Base21.Cells[14, 15] := '15';
   Stgr_Base21.Cells[15, 15] := '16';
   Stgr_Base21.Cells[16, 15] := '17';
   Stgr_Base21.Cells[17, 15] := '19';
   Stgr_Base21.Cells[18, 15] := '20';
   Stgr_Base21.Cells[19, 15] := '21';
   Stgr_Base21.Cells[20, 15] := '22';
   Stgr_Base21.Cells[21, 15] := '23';
   Stgr_Base21.Cells[22, 15] := '24';
//   Stgr_Base04.Cells[0, 15] := '15';
//   Stgr_Base04.Cells[1, 15] := 'V';
//   Stgr_Base04.Cells[2, 15] := '03';
//   Stgr_Base04.Cells[3, 15] := '04';
//   Stgr_Base04.Cells[4, 15] := '08';
//   Stgr_Base04.Cells[5, 15] := '11';

   //16
   Stgr_Base21.Cells[00, 16] := '16';
   Stgr_Base21.Cells[01, 16] := 'V';
   Stgr_Base21.Cells[02, 16] := '02';
   Stgr_Base21.Cells[03, 16] := '03';
   Stgr_Base21.Cells[04, 16] := '04';
   Stgr_Base21.Cells[05, 16] := '05';
   Stgr_Base21.Cells[06, 16] := '06';
   Stgr_Base21.Cells[07, 16] := '07';
   Stgr_Base21.Cells[08, 16] := '09';
   Stgr_Base21.Cells[09, 16] := '10';
   Stgr_Base21.Cells[10, 16] := '11';
   Stgr_Base21.Cells[11, 16] := '12';
   Stgr_Base21.Cells[12, 16] := '13';
   Stgr_Base21.Cells[13, 16] := '14';
   Stgr_Base21.Cells[14, 16] := '16';
   Stgr_Base21.Cells[15, 16] := '17';
   Stgr_Base21.Cells[16, 16] := '18';
   Stgr_Base21.Cells[17, 16] := '20';
   Stgr_Base21.Cells[18, 16] := '21';
   Stgr_Base21.Cells[19, 16] := '22';
   Stgr_Base21.Cells[20, 16] := '23';
   Stgr_Base21.Cells[21, 16] := '24';
   Stgr_Base21.Cells[22, 16] := '25';
//   Stgr_Base04.Cells[0, 16] := '16';
//   Stgr_Base04.Cells[1, 16] := 'V';
//   Stgr_Base04.Cells[2, 16] := '03';
//   Stgr_Base04.Cells[3, 16] := '04';
//   Stgr_Base04.Cells[4, 16] := '08';
//   Stgr_Base04.Cells[5, 16] := '09';

  //17
   Stgr_Base21.Cells[00, 17] := '17';
   Stgr_Base21.Cells[01, 17] := 'V';
   Stgr_Base21.Cells[02, 17] := '01';
   Stgr_Base21.Cells[03, 17] := '02';
   Stgr_Base21.Cells[04, 17] := '04';
   Stgr_Base21.Cells[05, 17] := '05';
   Stgr_Base21.Cells[06, 17] := '06';
   Stgr_Base21.Cells[07, 17] := '07';
   Stgr_Base21.Cells[08, 17] := '08';
   Stgr_Base21.Cells[09, 17] := '09';
   Stgr_Base21.Cells[10, 17] := '11';
   Stgr_Base21.Cells[11, 17] := '12';
   Stgr_Base21.Cells[12, 17] := '13';
   Stgr_Base21.Cells[13, 17] := '14';
   Stgr_Base21.Cells[14, 17] := '15';
   Stgr_Base21.Cells[15, 17] := '16';
   Stgr_Base21.Cells[16, 17] := '18';
   Stgr_Base21.Cells[17, 17] := '19';
   Stgr_Base21.Cells[18, 17] := '20';
   Stgr_Base21.Cells[19, 17] := '22';
   Stgr_Base21.Cells[20, 17] := '23';
   Stgr_Base21.Cells[21, 17] := '24';
   Stgr_Base21.Cells[22, 17] := '25';
//   Stgr_Base04.Cells[0, 17] := '17';
//   Stgr_Base04.Cells[1, 17] := 'V';
//   Stgr_Base04.Cells[2, 17] := '03';
//   Stgr_Base04.Cells[3, 17] := '04';
//   Stgr_Base04.Cells[4, 17] := '08';
//   Stgr_Base04.Cells[5, 17] := '09';
   //18
   Stgr_Base21.Cells[00, 18] := '18';
   Stgr_Base21.Cells[01, 18] := 'V';
   Stgr_Base21.Cells[02, 18] := '01';
   Stgr_Base21.Cells[03, 18] := '02';
   Stgr_Base21.Cells[04, 18] := '03';
   Stgr_Base21.Cells[05, 18] := '04';
   Stgr_Base21.Cells[06, 18] := '06';
   Stgr_Base21.Cells[07, 18] := '07';
   Stgr_Base21.Cells[08, 18] := '08';
   Stgr_Base21.Cells[09, 18] := '09';
   Stgr_Base21.Cells[10, 18] := '10';
   Stgr_Base21.Cells[11, 18] := '11';
   Stgr_Base21.Cells[12, 18] := '13';
   Stgr_Base21.Cells[13, 18] := '14';
   Stgr_Base21.Cells[14, 18] := '15';
   Stgr_Base21.Cells[15, 18] := '16';
   Stgr_Base21.Cells[16, 18] := '17';
   Stgr_Base21.Cells[17, 18] := '18';
   Stgr_Base21.Cells[18, 18] := '20';
   Stgr_Base21.Cells[19, 18] := '21';
   Stgr_Base21.Cells[20, 18] := '22';
   Stgr_Base21.Cells[21, 18] := '24';
   Stgr_Base21.Cells[22, 18] := '25';
//   Stgr_Base04.Cells[0, 18] := '18';
//   Stgr_Base04.Cells[1, 18] := 'V';
//   Stgr_Base04.Cells[2, 18] := '03';
//   Stgr_Base04.Cells[3, 18] := '04';
//   Stgr_Base04.Cells[4, 18] := '08';
//   Stgr_Base04.Cells[5, 18] := '09';

   //19
   Stgr_Base21.Cells[00, 19] := '19';
   Stgr_Base21.Cells[01, 19] := 'V';
   Stgr_Base21.Cells[02, 19] := '01';
   Stgr_Base21.Cells[03, 19] := '02';
   Stgr_Base21.Cells[04, 19] := '03';
   Stgr_Base21.Cells[05, 19] := '04';
   Stgr_Base21.Cells[06, 19] := '05';
   Stgr_Base21.Cells[07, 19] := '06';
   Stgr_Base21.Cells[08, 19] := '08';
   Stgr_Base21.Cells[09, 19] := '09';
   Stgr_Base21.Cells[10, 19] := '10';
   Stgr_Base21.Cells[11, 19] := '11';
   Stgr_Base21.Cells[12, 19] := '12';
   Stgr_Base21.Cells[13, 19] := '13';
   Stgr_Base21.Cells[14, 19] := '15';
   Stgr_Base21.Cells[15, 19] := '16';
   Stgr_Base21.Cells[16, 19] := '17';
   Stgr_Base21.Cells[17, 19] := '18';
   Stgr_Base21.Cells[18, 19] := '19';
   Stgr_Base21.Cells[19, 19] := '20';
   Stgr_Base21.Cells[20, 19] := '22';
   Stgr_Base21.Cells[21, 19] := '23';
   Stgr_Base21.Cells[22, 19] := '24';
//   Stgr_Base04.Cells[0, 19] := '19';
//   Stgr_Base04.Cells[1, 19] := 'V';
//   Stgr_Base04.Cells[2, 19] := '03';
//   Stgr_Base04.Cells[3, 19] := '04';
//   Stgr_Base04.Cells[4, 19] := '08';
//   Stgr_Base04.Cells[5, 19] := '09';

   //20
   Stgr_Base21.Cells[00, 20] := '20';
   Stgr_Base21.Cells[01, 20] := 'V';
   Stgr_Base21.Cells[02, 20] := '01';
   Stgr_Base21.Cells[03, 20] := '03';
   Stgr_Base21.Cells[04, 20] := '04';
   Stgr_Base21.Cells[05, 20] := '05';
   Stgr_Base21.Cells[06, 20] := '07';
   Stgr_Base21.Cells[07, 20] := '08';
   Stgr_Base21.Cells[08, 20] := '09';
   Stgr_Base21.Cells[09, 20] := '10';
   Stgr_Base21.Cells[10, 20] := '11';
   Stgr_Base21.Cells[11, 20] := '12';
   Stgr_Base21.Cells[12, 20] := '14';
   Stgr_Base21.Cells[13, 20] := '15';
   Stgr_Base21.Cells[14, 20] := '16';
   Stgr_Base21.Cells[15, 20] := '17';
   Stgr_Base21.Cells[16, 20] := '18';
   Stgr_Base21.Cells[17, 20] := '19';
   Stgr_Base21.Cells[18, 20] := '21';
   Stgr_Base21.Cells[19, 20] := '22';
   Stgr_Base21.Cells[20, 20] := '23';
   Stgr_Base21.Cells[21, 20] := '24';
   Stgr_Base21.Cells[22, 20] := '25';
//   Stgr_Base04.Cells[0, 20] := '20';
//   Stgr_Base04.Cells[1, 20] := 'V';
//   Stgr_Base04.Cells[2, 20] := '03';
//   Stgr_Base04.Cells[3, 20] := '04';
//   Stgr_Base04.Cells[4, 20] := '09';
//   Stgr_Base04.Cells[5, 20] := '11';
   //21
   Stgr_Base21.Cells[00, 21] := '21';
   Stgr_Base21.Cells[01, 21] := 'V';
   Stgr_Base21.Cells[02, 21] := '01';
   Stgr_Base21.Cells[03, 21] := '02';
   Stgr_Base21.Cells[04, 21] := '03';
   Stgr_Base21.Cells[05, 21] := '05';
   Stgr_Base21.Cells[06, 21] := '06';
   Stgr_Base21.Cells[07, 21] := '07';
   Stgr_Base21.Cells[08, 21] := '09';
   Stgr_Base21.Cells[09, 21] := '10';
   Stgr_Base21.Cells[10, 21] := '11';
   Stgr_Base21.Cells[11, 21] := '12';
   Stgr_Base21.Cells[12, 21] := '13';
   Stgr_Base21.Cells[13, 21] := '14';
   Stgr_Base21.Cells[14, 21] := '16';
   Stgr_Base21.Cells[15, 21] := '17';
   Stgr_Base21.Cells[16, 21] := '18';
   Stgr_Base21.Cells[17, 21] := '19';
   Stgr_Base21.Cells[18, 21] := '20';
   Stgr_Base21.Cells[19, 21] := '21';
   Stgr_Base21.Cells[20, 21] := '23';
   Stgr_Base21.Cells[21, 21] := '24';
   Stgr_Base21.Cells[22, 21] := '25';
//   Stgr_Base04.Cells[0, 21] := '21';
//   Stgr_Base04.Cells[1, 21] := 'V';
//   Stgr_Base04.Cells[2, 21] := '03';
//   Stgr_Base04.Cells[3, 21] := '04';
//   Stgr_Base04.Cells[4, 21] := '09';
//   Stgr_Base04.Cells[5, 21] := '11';
   //22
   Stgr_Base21.Cells[00, 22] := '22';
   Stgr_Base21.Cells[01, 22] := 'V';
   Stgr_Base21.Cells[02, 22] := '01';
   Stgr_Base21.Cells[03, 22] := '02';
   Stgr_Base21.Cells[04, 22] := '03';
   Stgr_Base21.Cells[05, 22] := '04';
   Stgr_Base21.Cells[06, 22] := '05';
   Stgr_Base21.Cells[07, 22] := '07';
   Stgr_Base21.Cells[08, 22] := '08';
   Stgr_Base21.Cells[09, 22] := '09';
   Stgr_Base21.Cells[10, 22] := '11';
   Stgr_Base21.Cells[11, 22] := '12';
   Stgr_Base21.Cells[12, 22] := '13';
   Stgr_Base21.Cells[13, 22] := '14';
   Stgr_Base21.Cells[14, 22] := '15';
   Stgr_Base21.Cells[15, 22] := '16';
   Stgr_Base21.Cells[16, 22] := '18';
   Stgr_Base21.Cells[17, 22] := '19';
   Stgr_Base21.Cells[18, 22] := '20';
   Stgr_Base21.Cells[19, 22] := '21';
   Stgr_Base21.Cells[20, 22] := '22';
   Stgr_Base21.Cells[21, 22] := '23';
   Stgr_Base21.Cells[22, 22] := '25';
//   Stgr_Base04.Cells[0, 22] := '22';
//   Stgr_Base04.Cells[1, 22] := 'V';
//   Stgr_Base04.Cells[2, 22] := '03';
//   Stgr_Base04.Cells[3, 22] := '04';
//   Stgr_Base04.Cells[4, 22] := '09';
//   Stgr_Base04.Cells[5, 22] := '11';

   //23
   Stgr_Base21.Cells[00, 23] := '23';
   Stgr_Base21.Cells[01, 23] := 'V';
   Stgr_Base21.Cells[02, 23] := '01';
   Stgr_Base21.Cells[03, 23] := '03';
   Stgr_Base21.Cells[04, 23] := '04';
   Stgr_Base21.Cells[05, 23] := '05';
   Stgr_Base21.Cells[06, 23] := '06';
   Stgr_Base21.Cells[07, 23] := '07';
   Stgr_Base21.Cells[08, 23] := '08';
   Stgr_Base21.Cells[09, 23] := '10';
   Stgr_Base21.Cells[10, 23] := '11';
   Stgr_Base21.Cells[11, 23] := '12';
   Stgr_Base21.Cells[12, 23] := '13';
   Stgr_Base21.Cells[13, 23] := '14';
   Stgr_Base21.Cells[14, 23] := '15';
   Stgr_Base21.Cells[15, 23] := '17';
   Stgr_Base21.Cells[16, 23] := '18';
   Stgr_Base21.Cells[17, 23] := '19';
   Stgr_Base21.Cells[18, 23] := '21';
   Stgr_Base21.Cells[19, 23] := '22';
   Stgr_Base21.Cells[20, 23] := '23';
   Stgr_Base21.Cells[21, 23] := '24';
   Stgr_Base21.Cells[22, 23] := '25';
//   Stgr_Base04.Cells[0, 23] := '23';
//   Stgr_Base04.Cells[1, 23] := 'V';
//   Stgr_Base04.Cells[2, 23] := '03';
//   Stgr_Base04.Cells[3, 23] := '04';
//   Stgr_Base04.Cells[4, 23] := '09';
//   Stgr_Base04.Cells[5, 23] := '11';
   //24
   Stgr_Base21.Cells[00, 24] := '24';
   Stgr_Base21.Cells[01, 24] := 'V';
   Stgr_Base21.Cells[02, 24] := '01';
   Stgr_Base21.Cells[03, 24] := '02';
   Stgr_Base21.Cells[04, 24] := '03';
   Stgr_Base21.Cells[05, 24] := '05';
   Stgr_Base21.Cells[06, 24] := '06';
   Stgr_Base21.Cells[07, 24] := '07';
   Stgr_Base21.Cells[08, 24] := '08';
   Stgr_Base21.Cells[09, 24] := '09';
   Stgr_Base21.Cells[10, 24] := '10';
   Stgr_Base21.Cells[11, 24] := '12';
   Stgr_Base21.Cells[12, 24] := '13';
   Stgr_Base21.Cells[13, 24] := '14';
   Stgr_Base21.Cells[14, 24] := '15';
   Stgr_Base21.Cells[15, 24] := '16';
   Stgr_Base21.Cells[16, 24] := '17';
   Stgr_Base21.Cells[17, 24] := '19';
   Stgr_Base21.Cells[18, 24] := '20';
   Stgr_Base21.Cells[19, 24] := '21';
   Stgr_Base21.Cells[20, 24] := '23';
   Stgr_Base21.Cells[21, 24] := '24';
   Stgr_Base21.Cells[22, 24] := '25';
//   Stgr_Base04.Cells[0, 24] := '24';
//   Stgr_Base04.Cells[1, 24] := 'V';
//   Stgr_Base04.Cells[2, 24] := '03';
//   Stgr_Base04.Cells[3, 24] := '04';
//   Stgr_Base04.Cells[4, 24] := '09';
//   Stgr_Base04.Cells[5, 24] := '11';
   //25
   Stgr_Base21.Cells[00, 25] := '25';
   Stgr_Base21.Cells[01, 25] := 'V';
   Stgr_Base21.Cells[02, 25] := '01';
   Stgr_Base21.Cells[03, 25] := '02';
   Stgr_Base21.Cells[04, 25] := '03';
   Stgr_Base21.Cells[05, 25] := '04';
   Stgr_Base21.Cells[06, 25] := '05';
   Stgr_Base21.Cells[07, 25] := '07';
   Stgr_Base21.Cells[08, 25] := '08';
   Stgr_Base21.Cells[09, 25] := '09';
   Stgr_Base21.Cells[10, 25] := '10';
   Stgr_Base21.Cells[11, 25] := '11';
   Stgr_Base21.Cells[12, 25] := '12';
   Stgr_Base21.Cells[13, 25] := '14';
   Stgr_Base21.Cells[14, 25] := '15';
   Stgr_Base21.Cells[15, 25] := '16';
   Stgr_Base21.Cells[16, 25] := '17';
   Stgr_Base21.Cells[17, 25] := '18';
   Stgr_Base21.Cells[18, 25] := '19';
   Stgr_Base21.Cells[19, 25] := '21';
   Stgr_Base21.Cells[20, 25] := '22';
   Stgr_Base21.Cells[21, 25] := '23';
   Stgr_Base21.Cells[22, 25] := '25';
//   Stgr_Base04.Cells[0, 25] := '25';
//   Stgr_Base04.Cells[1, 25] := 'V';
//   Stgr_Base04.Cells[2, 25] := '03';
//   Stgr_Base04.Cells[3, 25] := '04';
//   Stgr_Base04.Cells[4, 25] := '09';
//   Stgr_Base04.Cells[5, 25] := '11';
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


procedure T_F_Ranqueador_116d21M1.Zerar_FLAGTodosNumeros();
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


procedure T_F_Ranqueador_116d21M1.Falso_Linha1TodosNumeros();
var
  viContar: Integer;
begin
  for viContar := 1 to 25 do
  begin
    Stgr_Todos_Numeros.Cells[viContar, 1] := 'F';
  end;
end;


procedure T_F_Ranqueador_116d21M1.Falso_Linha2TodosNumeros();
var
  viContar: Integer;
begin
  for viContar := 1 to 25 do
  begin
    Stgr_Todos_Numeros.Cells[viContar, 2] := 'F';
  end;
end;



procedure T_F_Ranqueador_116d21M1.Falso_Linha1TodosNumerosP17();
begin
end;

procedure T_F_Ranqueador_116d21M1.Falso_Linha2TodosNumerosP17();
begin
end;


function T_F_Ranqueador_116d21M1.IIf(Expressao: Variant; ParteTRUE, ParteFALSE: Variant): Variant;
 begin
   if Expressao then
      Result := ParteTRUE
   else
      Result := ParteFALSE;
 end;

end.


