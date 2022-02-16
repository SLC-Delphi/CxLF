unit uGerador_1Linha19e1de6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, DB, strutils,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, IdBaseComponent, IdComponent, IdIPWatch ;

type
  T_F_Gerador_1LinhDe19e1de6 = class(TForm)
    Pa_RemoveuRepetidos: TPanel;
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
    Bbt_RemoveuRepetidos: TBitBtn;
    Pa_Inicial: TPanel;
    Label55: TLabel;
    Btn_NovaSimulacao: TButton;
    Btn_Reajustar: TButton;
    Btn_Sair: TButton;
    Bbt_Cancelar: TBitBtn;
    Mem_Combinacoes_Todas: TMemo;
    Pa_Topo: TPanel;
    La_Titulo: TLabel;
    Bbt_Close: TImage;
    Pa_Resultado: TPanel;
    Stgr_Comb10: TStringGrid;
    Pa_ExecutarFiltro: TPanel;
    Bbt_PrepararMenu: TBitBtn;
    Bbt_GerarMenu: TBitBtn;
    Pa_Titulo_Simulacao: TPanel;
    La_Gerar_Comb: TLabel;
    Pgbr_EtaPa_01: TProgressBar;
    Pa_Gerar: TPanel;
    Panel2: TPanel;
    Bbt_Voltar: TBitBtn;
    Pa_Preparar: TPanel;
    Panel1: TPanel;
    Label2: TLabel;
    Bbt_Preparar_OK: TBitBtn;
    Bbt_Preparar_Voltar: TBitBtn;
    Bbt_CancelarSair: TBitBtn;
    Scbx_Gabarito: TScrollBox;
    Label7: TLabel;
    Stgr_Base19: TStringGrid;
    Pa_Fixos: TPanel;
    Label1: TLabel;
    Ed_FIXOS_01_7i8p: TEdit;
    Ed_FIXOS_02_7i8p: TEdit;
    Panel6: TPanel;
    Label6: TLabel;
    Ed_FIXOS_01_8i7p: TEdit;
    Ed_FIXOS_02_8i7p: TEdit;
    Bbt_BlocoNotas: TBitBtn;
    Btn_BlocoDeNotas1: TButton;
    Ed_FIXOS_03_8i7p: TEdit;
    Btn_Carregar: TButton;
    Bbt_OK: TBitBtn;
    Label13: TLabel;
    Stgr_Base06: TStringGrid;
    Pgbr_EtaPa_01_01: TProgressBar;
    Bbt_PreencherPadrao: TBitBtn;
    Label63: TLabel;
    Scbx_dados: TScrollBox;
    Stgr_N1_13de19: TStringGrid;
    Stgr_N1_06de13: TStringGrid;
    Label3: TLabel;
    BBT_Numero01e02: TBitBtn;
    Stgr_N2_04de06: TStringGrid;
    Stgr_N2_02de06: TStringGrid;
    Bevel1: TBevel;
    Stgr_Base10a: TStringGrid;
    Stgr_N3a_3doBloco1: TStringGrid;
    Label4: TLabel;
    BBT_Numero03a: TBitBtn;
    Stgr_N3a_3doBloco2: TStringGrid;
    Label43: TLabel;
    Cb_Numero3: TComboBox;
    Stgr_N3a_Comb06: TStringGrid;
    Label5: TLabel;
    Stgr_Base03bModo01: TStringGrid;
    Stgr_N3bModo1_Comb04: TStringGrid;
    Stgr_N3bModo1_Comb03: TStringGrid;
    Stgr_N3bModo1_Comb02: TStringGrid;
    Label8: TLabel;
    Stgr_Base03bModo02: TStringGrid;
    Stgr_N3bModo2_Comb03: TStringGrid;
    Stgr_N3bModo2_Comb02: TStringGrid;
    BBT_Numero03b: TBitBtn;
    Label9: TLabel;
    Stgr_N4_Triplas: TStringGrid;
    Stgr_N4_Duplas1: TStringGrid;
    Stgr_N4_Duplas2: TStringGrid;
    BBT_Numero04: TBitBtn;
    Bbt_N4b: TBitBtn;
    Stgr_N4_7numeros: TStringGrid;
    Stgr_N4_1a: TStringGrid;
    Stgr_N4_1b: TStringGrid;
    Stgr_N4_1c: TStringGrid;
    Bbt_N4c: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Stgr_Todos_Numeros: TStringGrid;
    BBT_Numero01ModalidadeB: TBitBtn;
    Stgr_LinhaBaseA: TStringGrid;
    Stgr_LinhaBaseB: TStringGrid;
    Stgr_LinhaBaseC: TStringGrid;
    Stgr_N1B_02de09: TStringGrid;
    Stgr_N1B_05de09: TStringGrid;
    Stgr_Todos19Numeros: TStringGrid;
    procedure Bbt_Preparar_OKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Bbt_CloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Bbt_PrepararMenuClick(Sender: TObject);
    procedure Btn_NovaSimulacaoClick(Sender: TObject);
    procedure Bbt_Preparar_VoltarClick(Sender: TObject);
    procedure Btn_SairClick(Sender: TObject);
    procedure Bbt_CancelarClick(Sender: TObject);
    procedure Bbt_GerarMenuClick(Sender: TObject);
    procedure Btn_ReajustarClick(Sender: TObject);
    procedure Bbt_CARREGARClick(Sender: TObject);
    procedure Bbt_VoltarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Bbt_BlocoNotasClick(Sender: TObject);
    procedure Btn_CarregarClick(Sender: TObject);
    procedure Bbt_OKClick(Sender: TObject);
    procedure Bbt_RemoveuRepetidosClick(Sender: TObject);
    procedure Bbt_PreencherPadraoClick(Sender: TObject);
    procedure BBT_Numero01e02Click(Sender: TObject);
    procedure BBT_Numero03bClick(Sender: TObject);
    procedure BBT_Numero03aClick(Sender: TObject);
    procedure BBT_Numero04Click(Sender: TObject);
    procedure Bbt_N4bClick(Sender: TObject);
    procedure Bbt_N4cClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BBT_Numero01ModalidadeBClick(Sender: TObject);
  private
    F_MODALIDADE: String;
    Fvi_inicial1: Integer;
    Fvi_final1: Integer;
    Fvi_N4Parte: Integer;
    { Private declarations }
    Procedure AcertaLarguraAlturaGrids();
    Procedure AnaliseComb_13e02();
    Procedure AnaliseComb_03em05por2X();
    Procedure Numero03aJuntar03e03();
    procedure Set_MODALIDADE(const Value: String);
    procedure Setvi_final1E(const Value: Integer);
    procedure Setvi_inicial1(const Value: Integer);
    Procedure GerarBlocoNotas1(vc_Nome_Tabela, vcTitulo, vcSubTitulo: String) ;
    procedure BBT_Numero04TriplasEDuplas;
    procedure BBT_Numero04Triplas_Duplas;
    procedure Ordenar_N4_7Numeros(viLinhas01 : integer);
    procedure Setvi_N4Parte(const Value: Integer);
    function Montando_Stgr_N4_7Numeros(viComb01, viLinhas01: Integer; viCombTriplas01: Integer; viCombDuplas101: Integer; viCombDuplas201: Integer):boolean;
    function Montando_Stgr_N4_7NumerosF(viComb01, viLinhas01: Integer; viCombTriplas01: Integer; viCombDuplas101: Integer; viCombDuplas201: Integer) : boolean;
    Procedure AnaliseComb_05e02em09();
    Function Condicao7numerosTriplasDuplas(viLinhas01: Integer) : boolean;
    function Limitador10NrsTriplasDuplasIsolados(viLinhas01: Integer) : boolean;
    procedure Montado13FlagsNos19Numeros(viComb01: Integer);
    procedure Montado07FlagsNos19Numeros(viComb01: Integer);
    procedure Todos19NumerosFlagsF();
    Function ConfirmaQtdParesDe13Numeros(viLinhas01: Integer): boolean;
  public
    { Public declarations }
     PROPERTY _MODALIDADE : String   read F_MODALIDADE write Set_MODALIDADE;
     PROPERTY vi_inicial1 : Integer  read Fvi_inicial1 write Setvi_inicial1;
     PROPERTY vi_final1   : Integer  read Fvi_final1   write Setvi_final1E;
     Property vi_N4Parte  : Integer  read Fvi_N4Parte   write Setvi_N4Parte;
  end;

var
  _F_Gerador_1LinhDe19e1de6: T_F_Gerador_1LinhDe19e1de6;
  vs_Base25 : String;
//  vas_Base : array [1..16,1..10] of shortint;
//  vas_Base10 : array [1..11,1..10] of shortint;

implementation

{$R *.dfm}

uses uDataModule01, uGeradorRanking01;


Procedure T_F_Gerador_1LinhDe19e1de6.Set_MODALIDADE(const Value: String);
begin
  F_MODALIDADE := Value;
end;

Procedure T_F_Gerador_1LinhDe19e1de6.Setvi_final1E(const Value: Integer);
begin
  Fvi_final1 := Value;
end;

Procedure T_F_Gerador_1LinhDe19e1de6.Setvi_inicial1(const Value: Integer);
begin
  Fvi_inicial1 := Value;
end;


procedure T_F_Gerador_1LinhDe19e1de6.Setvi_N4Parte(const Value: Integer);
begin
  Fvi_N4Parte := Value;
end;




Procedure T_F_Gerador_1LinhDe19e1de6.FormCreate(Sender: TObject);
var
    viContar : Smallint;
begin
     SELF.ClientWidth  := 1475;
     SELF.ClientHeight := 695;
     SELF.Top  := 59;
     SELF.Left := 9;
   //  SELF.Visible := TRUE;
     Bbt_close.Left := SELF.ClientWidth-35;
          Pa_RemoveuRepetidos.Left := 5000;
     Pa_Preparar.Left := 5000;
     Pa_Gerar.Left := 5000;
     Scbx_Gabarito.Visible := false;
     Pa_Resultado.Visible := false;
     Pa_Inicial.Enabled := TRUE;
     Pa_Inicial.Left := 520;
     Pa_Inicial.Top := 160;
    Pa_ExecutarFiltro.Enabled := false;
    Bbt_CancelarSair.Visible := false;
    Bbt_PreencherPadrao.Click;
    {
        try
            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_25_Linhas2_DEF SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            DM1.IBQ_Combinacoes.ExecSQL;
            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
            DM1.IBQ_Combinacoes.ExecSQL;
        except
            //
        end; // try
        }
    FOR viContar :=1 TO 25 DO
    BEGIN
        Stgr_Todos_Numeros.Cells[viContar,0] := viContar.ToString;
    END; // FOR viContar
end;



Procedure T_F_Gerador_1LinhDe19e1de6.FormActivate(Sender: TObject);
begin
      IF (SELF._MODALIDADE ='GERADOR') THEN
      begin
          La_Titulo.Caption             := 'GERADOR Resultados a Partir de 1 Linha de 19 x 1 linha de 06';
       //   Cb_Classificacao17.ItemIndex := 0;
       //   Cb_Classificacao17.Enabled := True;
      END ELSE
      BEGIN
          La_Titulo.Caption             := 'SIMULAR a Partir de 1 Linha de 19 x 1 linha de 06';
       //   Cb_Classificacao17.Enabled := True;
          Btn_NovaSimulacao.Click;
      end;
      La_Titulo.Repaint;
end;



Procedure T_F_Gerador_1LinhDe19e1de6.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     TRY
          BEGIN
          DM1.IBQ_Combinacoes.Close;
          DM1.IBDatabase1.Close;
          END
     EXCEPT
     //
     END; // TRY
end;


Procedure T_F_Gerador_1LinhDe19e1de6.Bbt_CloseClick(Sender: TObject);
begin
     SELF.Close;
end;



Procedure T_F_Gerador_1LinhDe19e1de6.Btn_NovaSimulacaoClick(Sender: TObject);
begin
     Pa_Resultado.Enabled := TRUE;
  //   Rb_RESULTADOS.SetFocus;
  //   Rb_RES_GABARITOS.SetFocus;
     Scbx_Gabarito.Visible := TRUE;
     Scbx_Gabarito.Enabled := TRUE;
     Pa_Resultado.Visible := TRUE;
     Pa_Resultado.Enabled := TRUE;
     Pa_ExecutarFiltro.Enabled := TRUE;
     Bbt_PrepararMenu.Enabled := TRUE;
     Bbt_GerarMenu.Enabled := false;
     Bbt_GerarMenu.Enabled := false;
     Bbt_CancelarSair.Visible := false;
     Pa_Inicial.Enabled := false;
     Pa_Inicial.Left := 2198;
     Scbx_Gabarito.Top:=247;
     Scbx_Gabarito.Repaint;
end;


Procedure T_F_Gerador_1LinhDe19e1de6.Btn_SairClick(Sender: TObject);
begin
     SELF.Close;
end;



Procedure T_F_Gerador_1LinhDe19e1de6.Bbt_CancelarClick(Sender: TObject);
begin
{
            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_25_Linhas2_DEF SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            DM1.IBQ_Combinacoes.ExecSQL;
            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add('COMMIT;')  ;
            DM1.IBQ_Combinacoes.ExecSQL;
            }
          SELF.Close;
end;



Procedure T_F_Gerador_1LinhDe19e1de6.Bbt_PrepararMenuClick(Sender: TObject);
begin
     Pa_Preparar.Visible := TRUE;
     Pa_Preparar.Enabled := TRUE;
     Pa_Preparar.Top  := 245;
     Pa_Preparar.Left := 460;
     Pa_Preparar.Repaint;
end;



Procedure T_F_Gerador_1LinhDe19e1de6.Bbt_Preparar_VoltarClick(Sender: TObject);
begin
    Pa_Preparar.Visible := false;
    Pa_Preparar.Enabled := false;
    Pa_Preparar.Left := 4500;
    Pa_Preparar.Repaint;
end;


Procedure T_F_Gerador_1LinhDe19e1de6.Bbt_Preparar_OKClick(Sender: TObject);
Begin

     {
     DM1.IBQ_Combinacoes.Close;
     IF NOT(DM1.IBTransaction1.Active) THEN DM1.IBTransaction1.StartTransaction;
     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_Linhas2_DEF')  ;
     DM1.IBQ_Combinacoes.ExecSQL;

     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_FINAL')  ;
     DM1.IBQ_Combinacoes.ExecSQL;

     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
     DM1.IBQ_Combinacoes.ExecSQL;
     }
     SELF.Repaint;

     Pa_Preparar.Visible := false;
     Pa_Preparar.Enabled := false;
     Pa_Preparar.Left := 4500;
     Pa_Preparar.Repaint;

     Bbt_PrepararMenu.Enabled := TRUE;
     Bbt_GerarMenu.Enabled := TRUE;
     Bbt_GerarMenu.Enabled := TRUE;
     SHOWMESSAGE('OK');
end;





Procedure T_F_Gerador_1LinhDe19e1de6.Bbt_GerarMenuClick(Sender: TObject);
begin
     Pa_Gerar.Visible := TRUE;
     Pa_Gerar.Enabled := TRUE;
     Pa_Gerar.Top  := 65;
     Pa_Gerar.Left := 660;
     Pa_Gerar.Repaint;
    La_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
     AcertaLarguraAlturaGrids();
end;


Procedure T_F_Gerador_1LinhDe19e1de6.AcertaLarguraAlturaGrids();
begin
    Stgr_N1_13de19.RowCount := 2;
    Stgr_N1_13de19.ColWidths[0] := 55;
    Stgr_N1_13de19.ColWidths[1] := 20;
    Stgr_N2_02de06.ColWidths[0] := 35;
    Stgr_N2_02de06.ColWidths[1] := 25;
    Stgr_N1_06de13.ColWidths[0] := 55;
    Stgr_N1_06de13.ColWidths[1] := 20;
    Stgr_N2_04de06.ColWidths[0] := 35;
    Stgr_N2_04de06.ColWidths[1] := 25;
    Stgr_N1_13de19.Height := Scbx_dados.Height - 25 - Stgr_N1_13de19.Top;
    Stgr_N2_02de06.Height := Scbx_dados.Height - 25 - Stgr_N2_02de06.Top;
    Stgr_N1_06de13.Height := Scbx_dados.Height - 25 - Stgr_N1_06de13.Top;
    Stgr_N2_04de06.Height := Scbx_dados.Height - 25 - Stgr_N2_04de06.Top;
    Stgr_N3a_3doBloco1.ColWidths[0] := 50;
    Stgr_N3a_3doBloco1.ColWidths[1] := 25;
    Stgr_N3a_3doBloco2.ColWidths[0] := 50;
    Stgr_N3a_3doBloco2.ColWidths[1] := 25;
    Stgr_Base10a.Height := 55;
    Stgr_N3a_3doBloco1.Height := Scbx_dados.Height - 25 - Stgr_N3a_3doBloco1.Top;
    Stgr_N3a_3doBloco2.Height := Scbx_dados.Height - 25 - Stgr_N3a_3doBloco2.Top;
    Stgr_N3a_Comb06.ColWidths[0] := 50;
    Stgr_N3a_Comb06.ColWidths[1] := 30;
    Stgr_N3a_Comb06.Height := Scbx_dados.Height -25 - Stgr_N3a_Comb06.Top;
    Stgr_Base03bModo01.Height := 55;
    Stgr_N3bModo1_Comb04.Height := Scbx_dados.Height - 25 - Stgr_N3bModo1_Comb04.Top;
    Stgr_N3bModo1_Comb03.Height := Scbx_dados.Height - 25 - Stgr_N3bModo1_Comb03.Top;
    Stgr_N3bModo1_Comb02.Height := Scbx_dados.Height - 25 - Stgr_N3bModo1_Comb02.Top;
    Stgr_Base03bModo02.Height := 135;
    Stgr_N3bModo2_Comb03.Height := Scbx_dados.Height - 25 - Stgr_N3bModo2_Comb03.Top;
    Stgr_N3bModo2_Comb02.Height := Scbx_dados.Height - 25 - Stgr_N3bModo2_Comb02.Top;
    Stgr_N4_Triplas.ColWidths[0] := 50;
    Stgr_N4_Triplas.ColWidths[1] := 20;
    Stgr_N4_Duplas1.ColWidths[0] := 50;
    Stgr_N4_Duplas1.ColWidths[1] := 20;
    Stgr_N4_Duplas2.ColWidths[0] := 50;
    Stgr_N4_Duplas2.ColWidths[1] := 20;
    Stgr_N4_Triplas.Height := Scbx_dados.Height - 25 - Stgr_N4_Triplas.Top;
    Stgr_N4_Duplas1.Height := Scbx_dados.Height - 25 - Stgr_N4_Duplas1.Top;
    Stgr_N4_Duplas2.Height := Scbx_dados.Height - 25 - Stgr_N4_Duplas2.Top;
    Stgr_N4_7numeros.ColWidths[0] := 55;
    Stgr_N4_7numeros.ColWidths[1] := 25;
    Stgr_N4_7numeros.Height := Scbx_dados.Height - 25 - Stgr_N4_7numeros.Top;
    Stgr_N4_1a.ColWidths[0] := 60;
    Stgr_N4_1a.ColWidths[1] := 35;
    Stgr_N4_1a.Height := Scbx_dados.Height - 25 - Stgr_N4_7numeros.Top;
    Stgr_N4_1b.ColWidths[0] := 60;
    Stgr_N4_1b.ColWidths[1] := 35;
    Stgr_N4_1b.Height := Scbx_dados.Height - 25 - Stgr_N4_7numeros.Top;
    Stgr_N4_1c.ColWidths[0] := 60;
    Stgr_N4_1c.ColWidths[1] := 35;
    Stgr_N4_1c.Height := Scbx_dados.Height - 25 - Stgr_N4_7numeros.Top;
    Stgr_LinhaBaseA.Height := 55;
    Stgr_LinhaBaseB.Height := 55;
    Stgr_LinhaBaseC.Height := 55;
    Stgr_N1B_05de09.ColWidths[0] := 50;
    Stgr_N1B_05de09.ColWidths[1] := 25;
    Stgr_N1B_05de09.Height := Scbx_dados.Height - 25 - Stgr_N1B_05de09.Top;
    Stgr_N1B_02de09.ColWidths[0] := 50;
    Stgr_N1B_02de09.ColWidths[1] := 25;
    Stgr_N1B_02de09.Height := Scbx_dados.Height - 25 - Stgr_N1B_05de09.Top;
end;


Function T_F_Gerador_1LinhDe19e1de6.ConfirmaQtdParesDe13Numeros(viLinhas01: Integer) :boolean;
var
 viContar: Integer;
 viContarCelulas: Integer;
begin
  viContarCelulas := 0;
  for viContar := 2 to 14 do
  begin
    if (Stgr_N1_13de19.Cells[viContar, viLinhas01].ToInteger mod 2) = 0 then
      viContarCelulas := viContarCelulas + 1;
  end;
  if (viContarCelulas = 6) or (viContarCelulas=4) or (viContarCelulas=8) then
  begin
    result := true;
    exit;
  end;
  result := false;
end;


Procedure T_F_Gerador_1LinhDe19e1de6.AnaliseComb_13e02();
var
     viContarCelulas, viLinhas01, viLinhas02, viBaseComb, viContar : Integer;
     viComb15_01, viComb15_02, viComb15_03, viComb15_04, viComb15_05, viComb15_06, viComb15_07, viComb15_08, viComb15_09, viComb15_10, viComb15_11, viComb15_12, viComb15_13 : Integer;
     viComb10_01, viComb10_02 : Integer;
begin
    Pgbr_EtaPa_01.Position :=0 ;
    Pgbr_EtaPa_01.Repaint;
    La_Gerar_Comb.Caption := '#:                   ';
    La_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    Scbx_dados.HorzScrollBar.Position := 0;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    viLinhas01 := 1;
    Stgr_N2_02de06.RowCount := 2;
    Stgr_N1_13de19.RowCount := 2;
    Stgr_N2_02de06.Repaint;
    Stgr_N1_13de19.Repaint;
    try
        for viBaseComb := 1 TO (Stgr_Base19.RowCount-1) DO
        BEGIN
            for viComb15_01 := 2 TO 08 DO
            BEGIN
                for viComb15_02 := viComb15_01 + 1 TO 09 DO
                BEGIN
                    for viComb15_03 := viComb15_02 + 1 TO 10 DO
                    BEGIN
                        for viComb15_04 := viComb15_03 + 1 TO 11 DO
                        BEGIN
                            for viComb15_05 := viComb15_04 + 1 TO 12 DO
                            BEGIN
                                for viComb15_06 := viComb15_05 + 1 TO 13 DO
                                BEGIN
                                    for viComb15_07 := viComb15_06 + 1 TO 14-0 DO  //-2
                                    BEGIN
                                        for viComb15_08 := viComb15_07 + 1 TO 15-0 DO
                                            BEGIN
                                            for viComb15_09 := viComb15_08 + 1 TO 16-0 DO
                                            BEGIN
                                                for viComb15_10 := viComb15_09 + 1 TO 17-0 DO
                                                BEGIN
                                                    for viComb15_11 := viComb15_10 + 1 TO 18-0 DO
                                                        BEGIN
                                                        for viComb15_12 := viComb15_11 + 1 TO 19-0 DO
                                                        BEGIN
                                                            for viComb15_13 := viComb15_12 + 1 TO 20-0 DO
                                                            BEGIN
                                                                Stgr_N1_13de19.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                                                Stgr_N1_13de19.Cells[01,viLinhas01] := '+' + INTtoSTR( viBaseComb ) + '' ;
                                                                Stgr_N1_13de19.Cells[02,viLinhas01] := Stgr_Base19.Cells[viComb15_01,viBaseComb] ;
                                                                Stgr_N1_13de19.Cells[03,viLinhas01] := Stgr_Base19.Cells[viComb15_02,viBaseComb] ;
                                                                Stgr_N1_13de19.Cells[04,viLinhas01] := Stgr_Base19.Cells[viComb15_03,viBaseComb] ;
                                                                Stgr_N1_13de19.Cells[05,viLinhas01] := Stgr_Base19.Cells[viComb15_04,viBaseComb] ;
                                                                Stgr_N1_13de19.Cells[06,viLinhas01] := Stgr_Base19.Cells[viComb15_05,viBaseComb] ;
                                                                Stgr_N1_13de19.Cells[07,viLinhas01] := Stgr_Base19.Cells[viComb15_06,viBaseComb] ;
                                                                Stgr_N1_13de19.Cells[08,viLinhas01] := Stgr_Base19.Cells[viComb15_07,viBaseComb] ;
                                                                Stgr_N1_13de19.Cells[09,viLinhas01] := Stgr_Base19.Cells[viComb15_08,viBaseComb] ;
                                                                Stgr_N1_13de19.Cells[10,viLinhas01] := Stgr_Base19.Cells[viComb15_09,viBaseComb] ;
                                                                Stgr_N1_13de19.Cells[11,viLinhas01] := Stgr_Base19.Cells[viComb15_10,viBaseComb] ;
                                                                Stgr_N1_13de19.Cells[12,viLinhas01] := Stgr_Base19.Cells[viComb15_11,viBaseComb] ;
                                                                Stgr_N1_13de19.Cells[13,viLinhas01] := Stgr_Base19.Cells[viComb15_12,viBaseComb] ;
                                                                Stgr_N1_13de19.Cells[14,viLinhas01] := Stgr_Base19.Cells[viComb15_13,viBaseComb] ;
                                                                Stgr_N1_06de13.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                                                Stgr_N1_06de13.Cells[01,viLinhas01] := '+' + INTtoSTR( viBaseComb ) + '' ;
//conferir com 12
                                                                FOR viContar :=1 TO 25 DO
                                                                BEGIN
                                                                    Stgr_Todos_Numeros.Cells[viContar,1] :='F';
                                                                    Stgr_Todos_Numeros.Cells[viContar,2] :='F';
                                                                END; // FOR viContar
                                                                FOR viContar := 2 TO 20 DO
                                                                BEGIN
                                                                    Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Base19.Cells[viContar,viBaseComb])) ,1]:='V';
                                                                END; // FOR viContarCelulas
                                                                FOR viContar := 2 TO 14 DO
                                                                BEGIN
                                                                    Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_N1_13de19.Cells[viContar,viLinhas01] )) ,2]:='V';
                                                                END; // FOR viContarCelulas
                                                                viContarCelulas := 2;
                                                                FOR viContar :=1 TO 25 DO
                                                                BEGIN
                                                                    IF (Stgr_Todos_Numeros.Cells[viContar,1]='V') and (Stgr_Todos_Numeros.Cells[viContar,2]='F')  THEN
                                                                    BEGIN
                                                                        Stgr_N1_06de13.Cells[viContarCelulas,viLinhas01] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2);
                                                                        viContarCelulas := viContarCelulas +1;
                                                                    END; // IF (Stgr_Todos_Numeros
                                                                END;
                                                                if ConfirmaQtdParesDe13Numeros(viLinhas01) then
                                                                    viLinhas01 := viLinhas01 + 1;
                                                            END; //  for viComb15_13
                                                        END; //  for viComb15_12
                                                    END; //  for viComb15_11
                                                END; //  for viComb15_10
                                            END; //  for viComb15_09
                                        END; //  for viComb15_08
                                    END; //  for viComb15_07
                                END; //  for viComb15_06
                            END; //  for viComb15_05
                            Stgr_N1_13de19.RowCount := viLinhas01;
                            Stgr_N1_13de19.Repaint;
                        END; //  for viComb15_04
                    END; //  for viComb15_03
                sleep(1);
                END; //  for viComb15_02
            END; //  for viComb15_01
            Stgr_N1_06de13.RowCount := viLinhas01;
            Stgr_N1_06de13.Repaint;
        END; //  for viBaseComb
    viLinhas02 := 1;
    sleep(75);
        for viBaseComb := 1 TO (Stgr_Base06.RowCount-1) DO
        BEGIN
            for viComb10_01 := 2 TO 06 DO
            BEGIN
                for viComb10_02 := viComb10_01 + 1 TO 07 DO
                BEGIN
                    Stgr_N2_02de06.Cells[00,viLinhas02] := viLinhas02.ToString  ;
                    Stgr_N2_02de06.Cells[01,viLinhas02] := '+' + INTtoSTR( viBaseComb ) + '' ;
                    Stgr_N2_02de06.Cells[02,viLinhas02] := Stgr_Base06.Cells[viComb10_01,viBaseComb] ;
                    Stgr_N2_02de06.Cells[03,viLinhas02] := Stgr_Base06.Cells[viComb10_02,viBaseComb] ;
                    Stgr_N2_04de06.Cells[00,viLinhas02] := viLinhas02.ToString  ;
                    Stgr_N2_04de06.Cells[01,viLinhas02] := '+' + INTtoSTR( viBaseComb ) + '' ;

                        FOR viContar :=1 TO 25 DO
                        BEGIN
                            Stgr_Todos_Numeros.Cells[viContar,1] :='F';
                            Stgr_Todos_Numeros.Cells[viContar,2] :='F';
                        END; // FOR viContar
                        FOR viContar := 2 TO 07 DO
                        BEGIN
                            Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Base06.Cells[viContar,viBaseComb])) ,1]:='V';
                        END; // FOR viContarCelulas
                        FOR viContar := 2 TO 03 DO
                        BEGIN
                            Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_N2_02de06.Cells[viContar,viLinhas02] )) ,2]:='V';
                        END; // FOR viContarCelulas
                        viContarCelulas := 2;
                        FOR viContar :=1 TO 25 DO
                        BEGIN
                            IF (Stgr_Todos_Numeros.Cells[viContar,1]='V') and (Stgr_Todos_Numeros.Cells[viContar,2]='F')  THEN
                            BEGIN
                                Stgr_N2_04de06.Cells[viContarCelulas,viLinhas02] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2);
                                viContarCelulas := viContarCelulas +1;
                            END; // IF (Stgr_Todos_Numeros
                        END; // FOR viContar
                    viLinhas02 := viLinhas02 + 1;
                END; //  for viComb10_02
                Stgr_N2_02de06.RowCount := viLinhas02;
                Stgr_N2_02de06.Repaint;
                Stgr_N2_04de06.RowCount := viLinhas02;
                Stgr_N2_04de06.Repaint;
                sleep(1);
            END; //  for viComb10_01
        END; //  for viBaseComb
      sleep(75);

    finally
        Stgr_N2_02de06.RowCount := viLinhas02;
        Stgr_N2_02de06.Repaint;
        Stgr_N1_13de19.RowCount := viLinhas01;
        Stgr_N1_13de19.Repaint;
    end;
    Pgbr_EtaPa_01.Position := 5;
    Pgbr_EtaPa_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // Procedure



procedure T_F_Gerador_1LinhDe19e1de6.BBT_Numero01e02Click(Sender: TObject);
begin
   AnaliseComb_13e02 ();
end;





Procedure T_F_Gerador_1LinhDe19e1de6.AnaliseComb_03em05por2X();
var
     viLinhas01, viBaseComb : Integer;
     viComb15_01, viComb15_02, viComb15_03: Integer;
begin
    Pgbr_EtaPa_01.Position :=10 ;
    Pgbr_EtaPa_01.Repaint;
    La_Gerar_Comb.Caption := '#:                   ';
    La_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    Scbx_dados.HorzScrollBar.Position := 500;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    viLinhas01 := 1;
    Stgr_N3a_3doBloco1.RowCount := 2;
    Stgr_N3a_3doBloco2.RowCount := 2;
    Stgr_N3a_3doBloco1.Repaint;
    Stgr_N3a_3doBloco2.Repaint;
//    viCombinacoes1 := 1;
    try
        for viBaseComb := 1 TO (Stgr_Base10a.RowCount-1) DO
        BEGIN
            for viComb15_01 := 2 TO 04 DO
            BEGIN
                for viComb15_02 := viComb15_01 + 1 TO 05 DO
                BEGIN
                    for viComb15_03 := viComb15_02 + 1 TO 06 DO
                    BEGIN
                            Stgr_N3a_3doBloco1.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                            Stgr_N3a_3doBloco1.Cells[01,viLinhas01] := '+' + INTtoSTR( viBaseComb ) + '' ;
                            Stgr_N3a_3doBloco1.Cells[02,viLinhas01] := Stgr_Base10a.Cells[viComb15_01,viBaseComb] ;
                            Stgr_N3a_3doBloco1.Cells[03,viLinhas01] := Stgr_Base10a.Cells[viComb15_02,viBaseComb] ;
                            Stgr_N3a_3doBloco1.Cells[04,viLinhas01] := Stgr_Base10a.Cells[viComb15_03,viBaseComb] ;

                            Stgr_N3a_3doBloco2.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                            Stgr_N3a_3doBloco2.Cells[01,viLinhas01] := '+' + INTtoSTR( viBaseComb ) + '' ;
                            Stgr_N3a_3doBloco2.Cells[02,viLinhas01] := Stgr_Base10a.Cells[viComb15_01+5,viBaseComb] ;
                            Stgr_N3a_3doBloco2.Cells[03,viLinhas01] := Stgr_Base10a.Cells[viComb15_02+5,viBaseComb] ;
                            Stgr_N3a_3doBloco2.Cells[04,viLinhas01] := Stgr_Base10a.Cells[viComb15_03+5,viBaseComb] ;
                            viLinhas01 := viLinhas01 + 1;
                    END; //  for viComb15_03
                END; //  for viComb15_02
            END; //  for viComb15_01

            sleep(1);
        END; //  for viBaseComb
    finally
        Stgr_N3a_3doBloco1.RowCount := viLinhas01;
        Stgr_N3a_3doBloco1.Repaint;
        Stgr_N3a_3doBloco2.RowCount := viLinhas01;
        Stgr_N3a_3doBloco2.Repaint;
    end;
    Pgbr_EtaPa_01.Position := 10;
    Pgbr_EtaPa_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // Procedure


Procedure T_F_Gerador_1LinhDe19e1de6.Numero03aJuntar03e03();
var
     viLinhas01, viBaseComb, viSomaInicial, viSomaFinal, viSoma : Integer;
     viComb15_01, viComb15_02: Integer;
begin
    Pgbr_EtaPa_01.Position :=10 ;
    Pgbr_EtaPa_01.Repaint;
    La_Gerar_Comb.Caption := '#:                   ';
    La_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    Scbx_dados.HorzScrollBar.Position := 700;
    Scbx_dados.Repaint;
    if (Cb_Numero3.ItemIndex)=0 then
        viSomaInicial := 78
    else
        viSomaInicial := 77;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    if (Cb_Numero3.ItemIndex)=0 then
        viSomaFinal := 78
    else
        viSomaFinal := 79;
    viLinhas01 := 1;
    Stgr_N3a_Comb06.RowCount := 2;
    Stgr_N3a_3doBloco1.Repaint;
    Stgr_N3a_Comb06.Repaint;
//    viCombinacoes1 := 1;
    try
        for viComb15_01 := 1 TO (Stgr_N3a_3doBloco1.RowCount-1) DO
        BEGIN
            for viComb15_02 := 1 TO (Stgr_N3a_3doBloco2.RowCount-1) DO
            BEGIN
                Stgr_N3a_Comb06.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                Stgr_N3a_Comb06.Cells[01,viLinhas01] := ''+Stgr_N3a_3doBloco1.Cells[01,viComb15_01] ;
                Stgr_N3a_Comb06.Cells[02,viLinhas01] := Stgr_N3a_3doBloco1.Cells[02,viComb15_01] ;
                Stgr_N3a_Comb06.Cells[03,viLinhas01] := Stgr_N3a_3doBloco1.Cells[03,viComb15_01] ;
                Stgr_N3a_Comb06.Cells[04,viLinhas01] := Stgr_N3a_3doBloco1.Cells[04,viComb15_01] ;
                Stgr_N3a_Comb06.Cells[05,viLinhas01] := Stgr_N3a_3doBloco2.Cells[02,viComb15_02] ;
                Stgr_N3a_Comb06.Cells[06,viLinhas01] := Stgr_N3a_3doBloco2.Cells[03,viComb15_02] ;
                Stgr_N3a_Comb06.Cells[07,viLinhas01] := Stgr_N3a_3doBloco2.Cells[04,viComb15_02] ;
                viSoma := Stgr_N3a_Comb06.Cells[02,viLinhas01].ToInteger +
                        Stgr_N3a_Comb06.Cells[03,viLinhas01].ToInteger +
                        Stgr_N3a_Comb06.Cells[04,viLinhas01].ToInteger +
                        Stgr_N3a_Comb06.Cells[05,viLinhas01].ToInteger +
                        Stgr_N3a_Comb06.Cells[06,viLinhas01].ToInteger +
                        Stgr_N3a_Comb06.Cells[07,viLinhas01].ToInteger;
                if (viSoma >=viSomaInicial) and (viSoma <=viSomaFinal) then
                    viLinhas01 := viLinhas01 + 1;
            END; //  for viComb15_02
        END; //  for viComb15_01
    finally
        Stgr_N3a_Comb06.RowCount := viLinhas01;
        Stgr_N3a_Comb06.Repaint;
    end;
    Pgbr_EtaPa_01.Position := 15;
    Pgbr_EtaPa_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // Procedure


Procedure T_F_Gerador_1LinhDe19e1de6.AnaliseComb_05e02em09();
var
     viLinhas01, viBaseComb : Integer;
     viComb1_01, viComb1_02, viComb1_03, viComb1_04, viComb1_05: Integer;
     viComb2_01, viComb2_02, viContarCelulas, viContar : integer;
     vaiSobras: array [1..4] of String;
begin
    Pgbr_EtaPa_01.Position :=10 ;
    Pgbr_EtaPa_01.Repaint;
    La_Gerar_Comb.Caption := '#:                   ';
    La_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    Scbx_dados.HorzScrollBar.Position := 4600;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    viLinhas01 := 1;
    Stgr_N1B_05de09.RowCount := 2;
    Stgr_N1B_02de09.RowCount := 2;
    Stgr_N1B_05de09.Repaint;
    Stgr_N1B_02de09.Repaint;
//    viCombinacoes1 := 1;
    try
        for viBaseComb := 1 TO (Stgr_LinhaBaseA.RowCount-1) DO
        BEGIN
            for viComb1_01 := 2 TO 06 DO
            BEGIN
                for viComb1_02 := viComb1_01 + 1 TO 07 DO
                BEGIN
                    for viComb1_03 := viComb1_02 + 1 TO 08 DO
                    BEGIN
                        for viComb1_04 := viComb1_03 + 1 TO 09 DO
                        BEGIN
                            for viComb1_05 := viComb1_04 + 1 TO 10 DO
                            BEGIN
                                Stgr_N1B_05de09.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                        Stgr_N1B_05de09.Cells[01,viLinhas01] := '+' + INTtoSTR( viBaseComb ) + '' ;
                                        Stgr_N1B_05de09.Cells[02,viLinhas01] := Stgr_LinhaBaseA.Cells[viComb1_01,viBaseComb] ;
                                        Stgr_N1B_05de09.Cells[03,viLinhas01] := Stgr_LinhaBaseA.Cells[viComb1_02,viBaseComb] ;
                                        Stgr_N1B_05de09.Cells[04,viLinhas01] := Stgr_LinhaBaseA.Cells[viComb1_03,viBaseComb] ;
                                        Stgr_N1B_05de09.Cells[05,viLinhas01] := Stgr_LinhaBaseA.Cells[viComb1_04,viBaseComb] ;
                                        Stgr_N1B_05de09.Cells[06,viLinhas01] := Stgr_LinhaBaseA.Cells[viComb1_05,viBaseComb] ;
                                FOR viContarCelulas :=1 TO 25 DO
                                begin
                                    Stgr_Todos_Numeros.Cells[viContarCelulas,1] :='F';
                                    Stgr_Todos_Numeros.Cells[viContarCelulas,2] :='F';
                                END; // FOR viContarCelulas
                                // ---> Capturar as sobras
                                FOR viContar := 2 TO 10 DO
                                BEGIN
                                    Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_LinhaBaseA.Cells[viContar,viBaseComb])) ,1]:='V';
                                END; // FOR viContarCelulas
                                FOR viContar := 2 TO 06 DO
                                BEGIN
                                    Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_N1B_05de09.Cells[viContar,viLinhas01] )) ,2]:='V';
                                END; // FOR viContarCelulas
                                viContarCelulas := 1;
                                FOR viContar :=1 TO 25 DO
                                BEGIN
                                    IF (Stgr_Todos_Numeros.Cells[viContar,1]='V') and (Stgr_Todos_Numeros.Cells[viContar,2]='F')  THEN
                                    BEGIN
                                        vaiSobras[viContarCelulas] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2);
                                        viContarCelulas := viContarCelulas +1;
                                    END; // IF (Stgr_Todos_Numeros
                                END; // FOR viContar
                                for viComb2_01 := 1 TO 03 DO
                                BEGIN
                                    for viComb2_02 := viComb2_01 + 1 TO 04 DO
                                    BEGIN
                                        Stgr_N1B_05de09.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                        Stgr_N1B_05de09.Cells[01,viLinhas01] := '+' + INTtoSTR( viBaseComb ) + '' ;
                                        Stgr_N1B_05de09.Cells[02,viLinhas01] := Stgr_LinhaBaseA.Cells[viComb1_01,viBaseComb] ;
                                        Stgr_N1B_05de09.Cells[03,viLinhas01] := Stgr_LinhaBaseA.Cells[viComb1_02,viBaseComb] ;
                                        Stgr_N1B_05de09.Cells[04,viLinhas01] := Stgr_LinhaBaseA.Cells[viComb1_03,viBaseComb] ;
                                        Stgr_N1B_05de09.Cells[05,viLinhas01] := Stgr_LinhaBaseA.Cells[viComb1_04,viBaseComb] ;
                                        Stgr_N1B_05de09.Cells[06,viLinhas01] := Stgr_LinhaBaseA.Cells[viComb1_05,viBaseComb] ;

                                        Stgr_N1B_02de09.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                        Stgr_N1B_02de09.Cells[01,viLinhas01] := '+' + INTtoSTR( viBaseComb ) + '' ;
                                        Stgr_N1B_02de09.Cells[02,viLinhas01] := vaiSobras[viComb2_01] ;
                                        Stgr_N1B_02de09.Cells[03,viLinhas01] := vaiSobras[viComb2_02] ;
  if ((
     Stgr_N4_7numeros.Cells[2, viLinhas01].ToInteger +
     Stgr_N4_7numeros.Cells[3, viLinhas01].ToInteger +
     Stgr_N4_7numeros.Cells[4, viLinhas01].ToInteger +
     Stgr_N4_7numeros.Cells[5, viLinhas01].ToInteger +
     Stgr_N4_7numeros.Cells[6, viLinhas01].ToInteger +
     Stgr_N4_7numeros.Cells[7, viLinhas01].ToInteger +
     Stgr_N4_7numeros.Cells[8, viLinhas01].ToInteger +
     Stgr_N4_1a.Cells[02, viLinhas01].ToInteger +
     Stgr_N4_1b.Cells[02, viLinhas01].ToInteger +
     Stgr_N4_1c.Cells[02, viLinhas01].ToInteger
        ) = 91) then
    continue;
                                        viLinhas01 := viLinhas01 + 1;
                                    End;
                                End;
                            END;
                        END;
                    END; //  for viComb1_03
                END; //  for viComb1_02
            END; //  for viComb1_01

            sleep(1);
        END; //  for viBaseComb
    finally
        Stgr_N1B_05de09.RowCount := viLinhas01;
        Stgr_N1B_05de09.Repaint;
        Stgr_N1B_02de09.RowCount := viLinhas01;
        Stgr_N1B_02de09.Repaint;
    end;
    Pgbr_EtaPa_01.Position := 10;
    Pgbr_EtaPa_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end;



procedure T_F_Gerador_1LinhDe19e1de6.BBT_Numero01ModalidadeBClick(Sender: TObject);
begin
    AnaliseComb_05e02em09();
end;



procedure T_F_Gerador_1LinhDe19e1de6.BBT_Numero03aClick(Sender: TObject);
begin
    AnaliseComb_03em05por2X ();
    Numero03aJuntar03e03 ();
end;




procedure T_F_Gerador_1LinhDe19e1de6.BBT_Numero03bClick(Sender: TObject);
var
     viLinhas01, viBaseComb, viSomaInicial, viSomaFinal, viSoma : Integer;
     viComb01, viComb02, viComb03: Integer;
begin
    Pgbr_EtaPa_01.Position :=15 ;
    Pgbr_EtaPa_01.Repaint;
    La_Gerar_Comb.Caption := '#:                   ';
    La_Gerar_Comb.Repaint;
    Scbx_dados.HorzScrollBar.Position := 1700;
    Scbx_dados.Repaint;
    // ---> Modo 1
    Stgr_N3bModo1_Comb04.Cells[00,1] := Stgr_Base03bModo01.Cells[00,1];
    Stgr_N3bModo1_Comb04.Cells[01,1] := Stgr_Base03bModo01.Cells[01,1];
    Stgr_N3bModo1_Comb04.Cells[02,1] := Stgr_Base03bModo01.Cells[02,1];
    Stgr_N3bModo1_Comb04.Cells[03,1] := Stgr_Base03bModo01.Cells[03,1];
    Stgr_N3bModo1_Comb04.Cells[04,1] := Stgr_Base03bModo01.Cells[04,1];
    Stgr_N3bModo1_Comb04.Cells[05,1] := Stgr_Base03bModo01.Cells[05,1];
    Stgr_N3bModo1_Comb03.RowCount := 2;
    viLinhas01 := 1;
    for viComb01 := 2 to 3 do
    begin
        for viComb02 := viComb01+1 to 4 do
        begin
            for viComb03 := viComb02+1 to 5 do
            begin
                Stgr_N3bModo1_Comb03.Cells[00,viLinhas01] := Stgr_Base03bModo01.Cells[00,1];
                Stgr_N3bModo1_Comb03.Cells[01,viLinhas01] := Stgr_Base03bModo01.Cells[01,1];
                Stgr_N3bModo1_Comb03.Cells[02,viLinhas01] := Stgr_Base03bModo01.Cells[viComb01,1];
                Stgr_N3bModo1_Comb03.Cells[03,viLinhas01] := Stgr_Base03bModo01.Cells[viComb02,1];
                Stgr_N3bModo1_Comb03.Cells[04,viLinhas01] := Stgr_Base03bModo01.Cells[viComb03,1];
                viLinhas01 := viLinhas01 +1
            end;
        end;
    end;
    Stgr_N3bModo1_Comb03.RowCount := viLinhas01;
    viLinhas01 := 1;
    for viComb01 := 2 to 4 do
    begin
        for viComb02 := viComb01+1 to 5 do
        begin
            Stgr_N3bModo1_Comb02.Cells[00,viLinhas01] := Stgr_Base03bModo01.Cells[00,1];
            Stgr_N3bModo1_Comb02.Cells[01,viLinhas01] := Stgr_Base03bModo01.Cells[01,1];
            Stgr_N3bModo1_Comb02.Cells[02,viLinhas01] := Stgr_Base03bModo01.Cells[viComb01,1];
            Stgr_N3bModo1_Comb02.Cells[03,viLinhas01] := Stgr_Base03bModo01.Cells[viComb02,1];
            viLinhas01 := viLinhas01 +1
        end;
    end;
    Stgr_N3bModo1_Comb02.RowCount := viLinhas01;
    // ---> Modo 2
    Stgr_N3bModo2_Comb03.Cells[0,1]:=   Stgr_Base03bModo02.Cells[0,1] ;
    Stgr_N3bModo2_Comb03.Cells[01,1] := Stgr_Base03bModo02.Cells[01,1];
    Stgr_N3bModo2_Comb03.Cells[02,1] := Stgr_Base03bModo02.Cells[02,1];
    Stgr_N3bModo2_Comb03.Cells[03,1] := Stgr_Base03bModo02.Cells[03,1];
    Stgr_N3bModo2_Comb03.Cells[04,1] := Stgr_Base03bModo02.Cells[04,1];
    Stgr_N3bModo2_Comb03.Cells[0,2] :=  Stgr_Base03bModo02.Cells[0,2] ;
    Stgr_N3bModo2_Comb03
    .Cells[01,2] := Stgr_Base03bModo02.Cells[01,2];
    Stgr_N3bModo2_Comb03.Cells[02,2] := Stgr_Base03bModo02.Cells[02,2];
    Stgr_N3bModo2_Comb03.Cells[03,2] := Stgr_Base03bModo02.Cells[03,2];
    Stgr_N3bModo2_Comb03.Cells[04,2] := Stgr_Base03bModo02.Cells[04,2];
    Stgr_N3bModo2_Comb03.Cells[0,3] :=  Stgr_Base03bModo02.Cells[0,3] ;
    Stgr_N3bModo2_Comb03.Cells[01,3] := Stgr_Base03bModo02.Cells[01,3];
    Stgr_N3bModo2_Comb03.Cells[02,3] := Stgr_Base03bModo02.Cells[02,3];
    Stgr_N3bModo2_Comb03.Cells[03,3] := Stgr_Base03bModo02.Cells[03,3];
    Stgr_N3bModo2_Comb03.Cells[04,3] := Stgr_Base03bModo02.Cells[04,3];
    Stgr_N3bModo2_Comb03.Cells[0,4] :=  Stgr_Base03bModo02.Cells[0,4] ;
    Stgr_N3bModo2_Comb03.Cells[01,4] := Stgr_Base03bModo02.Cells[01,4];
    Stgr_N3bModo2_Comb03.Cells[02,4] := Stgr_Base03bModo02.Cells[02,4];
    Stgr_N3bModo2_Comb03.Cells[03,4] := Stgr_Base03bModo02.Cells[03,4];
    Stgr_N3bModo2_Comb03.Cells[04,4] := Stgr_Base03bModo02.Cells[04,4];
    Stgr_N3bModo2_Comb03.RowCount := 5;
    viLinhas01 := 1;
    for viLinhas01 := 1 to 6 do
    begin
        Stgr_N3bModo2_Comb02.Cells[00,viLinhas01] := Stgr_N3bModo1_Comb02.Cells[00,viLinhas01];
        Stgr_N3bModo2_Comb02.Cells[01,viLinhas01] := Stgr_N3bModo1_Comb02.Cells[01,viLinhas01];
        Stgr_N3bModo2_Comb02.Cells[02,viLinhas01] := Stgr_N3bModo1_Comb02.Cells[02,viLinhas01];
        Stgr_N3bModo2_Comb02.Cells[03,viLinhas01] := Stgr_N3bModo1_Comb02.Cells[03,viLinhas01];
    end;
    Stgr_N3bModo2_Comb02.RowCount := viLinhas01;
end;


procedure T_F_Gerador_1LinhDe19e1de6.BBT_Numero04TriplasEDuplas;
var
     viLinhas01, viBaseComb : Integer;
     viCombTriplas01,viCombDuplas101, viCombDuplas202: Integer;
begin
    Pgbr_EtaPa_01.Position :=15 ;
    Pgbr_EtaPa_01.Repaint;
    La_Gerar_Comb.Caption := '#:                   ';
    La_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    Scbx_dados.HorzScrollBar.Position := 2700;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    viLinhas01 := 1;
    Try
        for viCombTriplas01 := 2 to 18 do
        begin
            for viCombDuplas101 := 2 To 19 Do
            Begin
                // for viCombTriplas02 := viCombTriplas01+1 to 20-0 do
                // begin
                Stgr_N4_Triplas.Cells[00, viLinhas01] := viLinhas01.ToString;
                Stgr_N4_Triplas.Cells[01, viLinhas01] := '+1';
                Stgr_N4_Triplas.Cells[02, viLinhas01] := Stgr_Base19.Cells[viCombTriplas01, 1];
                Stgr_N4_Triplas.Cells[03, viLinhas01] := Stgr_Base19.Cells[viCombTriplas01 + 1, 1];
                Stgr_N4_Triplas.Cells[04, viLinhas01] := Stgr_Base19.Cells[viCombTriplas01 + 2, 1];
                If (viCombDuplas101 >= (viCombTriplas01 + 4)) Or
                   ((viCombDuplas101 <= (viCombTriplas01 - 3)) And ((viCombTriplas01 - 3) >= 2)) Then
                Begin
                    Stgr_N4_Duplas1.Cells[00, viLinhas01] := viLinhas01.ToString;
                    Stgr_N4_Duplas1.Cells[01, viLinhas01] := '+1';
                    Stgr_N4_Duplas1.Cells[02, viLinhas01] := Stgr_Base19.Cells[viCombDuplas101, 1];
                    Stgr_N4_Duplas1.Cells[03, viLinhas01] := Stgr_Base19.Cells[viCombDuplas101 + 1, 1];
                    viLinhas01 := viLinhas01 + 1
                End;
                // end;
            End;
        End;
    Finally
        Stgr_N4_Triplas.RowCount := viLinhas01;
        Stgr_N4_Triplas.Repaint;
        Stgr_N4_Duplas1.RowCount := viLinhas01;
        Stgr_N4_Duplas1.Repaint;
    end;
    Pgbr_EtaPa_01.Position := 20;
    Pgbr_EtaPa_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end;


procedure T_F_Gerador_1LinhDe19e1de6.BBT_Numero04Click(Sender: TObject);
begin
    BBT_Numero04TriplasEDuplas();
end;


procedure T_F_Gerador_1LinhDe19e1de6.Ordenar_N4_7Numeros(viLinhas01 : integer);
var
    viContar, viContarCelulas : Integer;
begin
    FOR viContar :=1 TO 25 DO
    begin
        Stgr_Todos_Numeros.Cells[viContar,1] :='F';
    END; // FOR viContar
    for viContar := 5 to 8 do
    begin
        Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_N4_7numeros.Cells[viContar,viLinhas01])) ,1]:='V';
    END; // FOR viContarCelulas
    viContarCelulas := 5;
    FOR viContar :=1 TO 25 DO
    BEGIN
        IF (Stgr_Todos_Numeros.Cells[viContar,1]='V') THEN
        BEGIN
            Stgr_N4_7numeros.Cells[viContarCelulas,viLinhas01] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2);
            viContarCelulas := viContarCelulas +1;
        END; // IF (Stgr_Todos_Numeros
    END; // FOR viContar
end;


procedure T_F_Gerador_1LinhDe19e1de6.Todos19NumerosFlagsF();
var
  viContarCelulas1: Smallint;
begin
  for viContarCelulas1 := 1 to 19 do
  begin
    Stgr_Todos19Numeros.Cells[viContarCelulas1, 1] := 'F';
    Stgr_Todos19Numeros.Cells[viContarCelulas1, 2] := 'F';
    Stgr_Todos19Numeros.Cells[viContarCelulas1, 3] := 'F';
  end;
end;



function T_F_Gerador_1LinhDe19e1de6.Montando_Stgr_N4_7Numeros(viComb01, viLinhas01: Integer; viCombTriplas01: Integer; viCombDuplas101: Integer; viCombDuplas201: Integer) : boolean;
begin
  Stgr_N4_Duplas1.Cells[0, viLinhas01] := viLinhas01.ToString;
  Stgr_N4_Duplas1.Cells[1, viLinhas01] := '+1';
  Stgr_N4_Duplas1.Cells[2, viLinhas01] := Stgr_N1_13de19.Cells[viCombDuplas101, 1];
  Stgr_N4_Duplas1.Cells[3, viLinhas01] := Stgr_N1_13de19.Cells[viCombDuplas101 + 1, 1];
  Stgr_N4_Duplas2.Cells[0, viLinhas01] := viLinhas01.ToString;
  Stgr_N4_Duplas2.Cells[1, viLinhas01] := '+1';
  Stgr_N4_Duplas2.Cells[2, viLinhas01] := Stgr_N1_13de19.Cells[viCombDuplas201, 1];
  Stgr_N4_Duplas2.Cells[3, viLinhas01] := Stgr_N1_13de19.Cells[viCombDuplas201 + 1, 1];
  Stgr_N4_7numeros.Cells[0, viLinhas01] := viLinhas01.ToString;
  Stgr_N4_7numeros.Cells[1, viLinhas01] := viComb01.ToString;
  Stgr_N4_7numeros.Cells[2, viLinhas01] := Stgr_N1_13de19.Cells[viCombTriplas01, viComb01];
  Stgr_N4_7numeros.Cells[3, viLinhas01] := Stgr_N1_13de19.Cells[viCombTriplas01 + 1, viComb01];
  Stgr_N4_7numeros.Cells[4, viLinhas01] := Stgr_N1_13de19.Cells[viCombTriplas01 + 2, viComb01];

  Stgr_N4_7numeros.Cells[5, viLinhas01] := Stgr_N1_13de19.Cells[viCombDuplas101, 1];
  Stgr_N4_7numeros.Cells[6, viLinhas01] := Stgr_N1_13de19.Cells[viCombDuplas101 + 1, 1];
  Stgr_N4_7numeros.Cells[7, viLinhas01] := Stgr_N1_13de19.Cells[viCombDuplas201, 1];
  Stgr_N4_7numeros.Cells[8, viLinhas01] := Stgr_N1_13de19.Cells[viCombDuplas201 + 1, 1];
  result := true;
end;


function T_F_Gerador_1LinhDe19e1de6.Montando_Stgr_N4_7NumerosF(viComb01, viLinhas01: Integer; viCombTriplas01: Integer; viCombDuplas101: Integer; viCombDuplas201: Integer) : boolean;
var
    viContarCelulas1, viContarCelulas2  : smallint;
    vbDupla01, vbDupla02 : boolean;
begin
  vbDupla01 := false;
  vbDupla02 := false;
  // --> Duplas 01
  Todos19NumerosFlagsF();
  for viContarCelulas1 := 1 to 19 do
  begin
    for viContarCelulas2 := 2 to 14 do
    begin
       if (Stgr_Todos19Numeros.Cells[viContarCelulas1, 0].toInteger = Stgr_N1_13de19.Cells[viContarCelulas2,viComb01].toInteger) then
         Stgr_Todos19Numeros.Cells[viContarCelulas1, 1] := 'V';
    end;
  end;
  for viContarCelulas1 := 1 to 19 do
  begin
      if (Stgr_Todos19Numeros.Cells[viContarCelulas1, 0].toInteger = Stgr_N1_13de19.Cells[viCombDuplas101,viComb01].toInteger) then
        Stgr_Todos19Numeros.Cells[viContarCelulas1, 2] := 'V';
      if (Stgr_Todos19Numeros.Cells[viContarCelulas1, 0].toInteger = Stgr_N1_13de19.Cells[viCombDuplas101+1,viComb01].toInteger) then
        Stgr_Todos19Numeros.Cells[viContarCelulas1, 2] := 'V';
  end;
  for viContarCelulas1 := 1 to 19 do
  begin
    if (Stgr_Todos19Numeros.Cells[viContarCelulas1, 1]='V') and (Stgr_Todos19Numeros.Cells[viContarCelulas1, 2]='V') then
    begin
      Stgr_N4_Duplas1.Cells[0, viLinhas01] := viLinhas01.ToString;
      Stgr_N4_Duplas1.Cells[1, viLinhas01] := '+1';
      Stgr_N4_Duplas1.Cells[2, viLinhas01] := Stgr_Todos19Numeros.Cells[viContarCelulas1, 0];
      Stgr_N4_Duplas1.Cells[3, viLinhas01] := Stgr_Todos19Numeros.Cells[viContarCelulas1, 0];
      vbDupla01 := true;
    end;
  end;

  // -->  Duplas 2
  Todos19NumerosFlagsF();
  for viContarCelulas1 := 1 to 19 do
  begin
      for viContarCelulas2 := 2 to 14 do
      begin
          if (Stgr_Todos19Numeros.Cells[viContarCelulas1, 0].toInteger = Stgr_N1_13de19.Cells[viContarCelulas2,viComb01].toInteger) then
            Stgr_Todos19Numeros.Cells[viContarCelulas1, 1] := 'V';
      end;
  end;
  for viContarCelulas1 := 1 to 19 do
  begin
      if (Stgr_Todos19Numeros.Cells[viContarCelulas1, 0].toInteger = Stgr_N1_13de19.Cells[viCombDuplas201,viComb01].toInteger) then
        Stgr_Todos19Numeros.Cells[viContarCelulas1, 2] := 'V';
      if (Stgr_Todos19Numeros.Cells[viContarCelulas1, 0].toInteger = Stgr_N1_13de19.Cells[viCombDuplas201+1,viComb01].toInteger) then
        Stgr_Todos19Numeros.Cells[viContarCelulas1, 2] := 'V';
  end;
  for viContarCelulas1 := 1 to 19 do
  begin
    if (Stgr_Todos19Numeros.Cells[viContarCelulas1, 1]='V') and (Stgr_Todos19Numeros.Cells[viContarCelulas1, 2]='V') then
    begin
      Stgr_N4_Duplas2.Cells[0, viLinhas01] := viLinhas01.ToString;
      Stgr_N4_Duplas2.Cells[1, viLinhas01] := '+1';
      Stgr_N4_Duplas2.Cells[2, viLinhas01] := Stgr_Todos19Numeros.Cells[viContarCelulas1, 0]; //Stgr_N1_13de19.Cells[viCombDuplas201, viComb01];
      Stgr_N4_Duplas2.Cells[3, viLinhas01] := Stgr_Todos19Numeros.Cells[viContarCelulas1, 0]; //Stgr_N1_13de19.Cells[viCombDuplas201 + 1, viComb01];
      vbDupla02 := true;
    end;
  end;

  result := false;
  if (vbDupla01) and (vbDupla02) then
  begin
      Stgr_N4_7numeros.Cells[0, viLinhas01] := viLinhas01.ToString;
      Stgr_N4_7numeros.Cells[1, viLinhas01] := viComb01.ToString;
      Stgr_N4_7numeros.Cells[2, viLinhas01] := Stgr_N1_13de19.Cells[viCombTriplas01, viComb01];
      Stgr_N4_7numeros.Cells[3, viLinhas01] := Stgr_N1_13de19.Cells[viCombTriplas01 + 1, viComb01];
      Stgr_N4_7numeros.Cells[4, viLinhas01] := Stgr_N1_13de19.Cells[viCombTriplas01 + 2, viComb01];
      Stgr_N4_7numeros.Cells[5, viLinhas01] := Stgr_N4_Duplas1.Cells[2, viLinhas01]; // Stgr_N1_13de19.Cells[viCombDuplas101, 1];
      Stgr_N4_7numeros.Cells[6, viLinhas01] := Stgr_N4_Duplas1.Cells[3, viLinhas01]; // Stgr_N1_13de19.Cells[viCombDuplas101 + 1, 1];
      Stgr_N4_7numeros.Cells[7, viLinhas01] := Stgr_N4_Duplas2.Cells[2, viLinhas01];
      Stgr_N4_7numeros.Cells[8, viLinhas01] := Stgr_N4_Duplas2.Cells[3, viLinhas01];
      result := true;
  end;
end;


Function T_F_Gerador_1LinhDe19e1de6.Condicao7numerosTriplasDuplas(viLinhas01: Integer) : boolean;
begin
  // Ordenar_N4_7Numeros (viLinhas01);
  // 104 a 156
  // 156-25-22-18 = 91
  // 104-25-22-18 = 39
  if ((Stgr_N4_7numeros.Cells[2, viLinhas01].ToInteger + Stgr_N4_7numeros.Cells[3, viLinhas01].ToInteger + Stgr_N4_7numeros.Cells[4, viLinhas01].ToInteger + Stgr_N4_7numeros.Cells[5, viLinhas01].ToInteger + Stgr_N4_7numeros.Cells[6, viLinhas01].ToInteger + Stgr_N4_7numeros.Cells[7, viLinhas01].ToInteger + Stgr_N4_7numeros.Cells[8, viLinhas01].ToInteger) >= 91) or ((Stgr_N4_7numeros.Cells[2, viLinhas01].ToInteger + Stgr_N4_7numeros.Cells[3, viLinhas01].ToInteger + Stgr_N4_7numeros.Cells[4, viLinhas01].ToInteger + Stgr_N4_7numeros.Cells[5, viLinhas01].ToInteger + Stgr_N4_7numeros.Cells[6, viLinhas01].ToInteger + Stgr_N4_7numeros.Cells[7, viLinhas01].ToInteger + Stgr_N4_7numeros.Cells[8, viLinhas01].ToInteger) <= 37) then
    Result := true
  else
    Result := false;
end; // Procedure



procedure T_F_Gerador_1LinhDe19e1de6.Montado13FlagsNos19Numeros(viComb01: Integer);
var
  viContarCelulas: Integer;
  viContar: Integer;
begin
  // --> Preparando os 13 nos 19
  for viContarCelulas := 1 to 19 do
  begin
      Stgr_Todos19Numeros.Cells[viContarCelulas, 1] := 'F';
  end;
  for viContarCelulas := 1 to 19 do
  begin
    for viContar := 2 to 14 do
    begin
      if (Stgr_Todos19Numeros.Cells[viContarCelulas, 0].toInteger = Stgr_N1_13de19.Cells[viContar, viComb01].toInteger) then
        Stgr_Todos19Numeros.Cells[viContarCelulas, 1] := 'V';
    end;
  end;
end;


procedure T_F_Gerador_1LinhDe19e1de6.Montado07FlagsNos19Numeros(viComb01: Integer);
var
  viContarCelulas: Integer;
  viContar: Integer;
begin
  // --> Preparando os 07 nos 19
  for viContarCelulas := 1 to 19 do
  begin
      Stgr_Todos19Numeros.Cells[viContarCelulas, 2] := 'F';
  end;
  for viContarCelulas := 1 to 19 do
  begin
    for viContar := 2 to 8 do
    begin
      if (Stgr_Todos19Numeros.Cells[viContarCelulas, 0].toInteger = Stgr_N4_7numeros.Cells[viContar, viComb01].toInteger) then
        Stgr_Todos19Numeros.Cells[viContarCelulas, 2] := 'V';
    end;
  end;
end;



procedure T_F_Gerador_1LinhDe19e1de6.BBT_Numero04Triplas_Duplas;
var
    viLinhas01, viLinhas01Anterior, viBaseComb : Integer;
    viComb01,viCombTriplas01,viCombDuplas101, viCombDuplas201, viComb1a101: Integer;
    viContagemFinal, viContar, viContar2, viContar3, viContarCelulas : Integer;
    vs3n1, vs3n2, vs3n3 : string;
begin
    Pgbr_EtaPa_01.Position :=15 ;
    Pgbr_EtaPa_01.Repaint;
    La_Gerar_Comb.Caption := '#:                   ';
    La_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    Scbx_dados.HorzScrollBar.Position := 3200;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    viLinhas01 := 1;
    Try
        FOR viContarCelulas :=1 TO 25 DO
        begin
            Stgr_Todos_Numeros.Cells[viContarCelulas,1] :='F';
        END; // FOR viContarCelulas
        for viContarCelulas := 1 to 19 do
        begin
            Stgr_Todos19Numeros.Cells[viContarCelulas,0] := Stgr_Base19.Cells[viContarCelulas+1,1];
            Stgr_Todos19Numeros.Cells[viContarCelulas,1] := 'F';
            Stgr_Todos19Numeros.Cells[viContarCelulas,2] := 'F';
        end;
        Todos19NumerosFlagsF();
        for viContarCelulas := 2 to 14 do
        begin
            Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_N1_13de19.Cells[viContarCelulas,viLinhas01])) ,1]:='V';
        END; // FOR viContarCelulas
        viContagemFinal := Trunc((Stgr_N1_13de19.RowCount-1)/270{27130});
        for viComb01 := 1 to viContagemFinal do
        begin
            Montado13FlagsNos19Numeros(viComb01);
            // --> Loop de execução
            for viCombTriplas01 := 2 to 12 do
            begin
                for viCombDuplas101 := 2 To 09{14} Do
                Begin
                    for viCombDuplas201 := 2 To 09{14} Do
                    Begin
                        // for viCombTriplas02 := viCombTriplas01+1 to 20-0 do
                        // begin
                        Stgr_N4_Triplas.Cells[00, viLinhas01] := viLinhas01.ToString;
                        Stgr_N4_Triplas.Cells[01, viLinhas01] := '+1';
                        Stgr_N4_Triplas.Cells[02, viLinhas01] := Stgr_N1_13de19.Cells[viCombTriplas01, viComb01];
                        Stgr_N4_Triplas.Cells[03, viLinhas01] := Stgr_N1_13de19.Cells[viCombTriplas01 + 1, viComb01];
                        Stgr_N4_Triplas.Cells[04, viLinhas01] := Stgr_N1_13de19.Cells[viCombTriplas01 + 2, viComb01];
                        If (viCombDuplas101 >= (viCombTriplas01 + 4)) Or
                           ((viCombDuplas101 <= (viCombTriplas01 - 3)) And ((viCombTriplas01 - 3) >= 2)) Then
                        Begin
                            If ((viCombDuplas201 >= (viCombTriplas01 + 4)) Or
                               ((viCombDuplas201 <= (viCombTriplas01 - 3)) And ((viCombTriplas01 - 3) >= 2)))
                               and
                               ( (viCombDuplas201 >= (viCombDuplas101 + 3)) or
                                ((viCombDuplas201 <= (viCombDuplas101 - 3)) And ((viCombDuplas201 - 2) >= 2)) ) Then
                            Begin
                                if vi_N4Parte = 2 then
                                begin
                                    if not(Montando_Stgr_N4_7Numeros(viComb01, viLinhas01, viCombTriplas01, viCombDuplas101, viCombDuplas201)) then
                                        continue;
                                    if Condicao7numerosTriplasDuplas(viLinhas01) then
                                        continue;
                                    //716232    705380 [91] 697241 [91 ou 39] a 1/10
                                    viLinhas01 := viLinhas01 + 1
                                end else
                                if vi_N4Parte = 3 then
                                begin
                                    if not(Montando_Stgr_N4_7Numeros(viComb01, viLinhas01, viCombTriplas01, viCombDuplas101, viCombDuplas201)) then
                                        continue;
                                    if Condicao7numerosTriplasDuplas(viLinhas01) then
                                        continue;
// 2.543.856  a 1/30
// 2.463.852 a 1/30
                                        Montado07FlagsNos19Numeros(viLinhas01);
                                        viContar :=1;
                                        REPEAT
                                            IF (Stgr_Todos19Numeros.Cells[viContar,1]='V') and (Stgr_Todos19Numeros.Cells[viContar,2]='F') THEN
                                            BEGIN
                                                vs3n1:='0';
                                                if (viContar = 1) and (Stgr_Todos19Numeros.Cells[19,2]='F') then
                                                    vs3n1:= Stgr_Todos19Numeros.Cells[1,0];
                                                if (viContar = 19) and (Stgr_Todos19Numeros.Cells[1,2]='F') then
                                                    vs3n1:= Stgr_Todos19Numeros.Cells[19,0];
                                                if ((viContar > 1) and (viContar < 19)) then
                                                    if (Stgr_Todos19Numeros.Cells[viContar-1,2]='F') and (Stgr_Todos19Numeros.Cells[viContar+1,2]='F') then
                                                            vs3n1:= Stgr_Todos19Numeros.Cells[viContar,0];
                                                Stgr_N4_1a.Cells[00, viLinhas01] := viLinhas01.ToString;
                                                Stgr_N4_1a.Cells[01, viLinhas01] := viComb01.ToString;
                                                Stgr_N4_1a.Cells[02,viLinhas01] := RIGHTSTR ('0'+vs3n1,2);
                                                if vs3n1.ToInteger>0 then
                                                    viLinhas01 := viLinhas01 + 1;
                                            END; // IF (Stgr_Todos19Numeros
                                            viContar := viContar +1;
                                        UNTIL viContar > 19;
                                end else
                                if vi_N4Parte = 4 then
                                begin
// 1.611.360  a 1/150
// 1.549.440 a 1/150
                                    if not(Montando_Stgr_N4_7Numeros(viComb01, viLinhas01, viCombTriplas01, viCombDuplas101, viCombDuplas201)) then
                                        continue;
                                    if Condicao7numerosTriplasDuplas(viLinhas01) then
                                        continue;
// 2.543.856  a 1/30
// 2.463.852 a 1/30
                                        Montado07FlagsNos19Numeros(viLinhas01);
Stgr_Todos19Numeros.Repaint;
                                        viContar :=1;
                                        REPEAT //1
                                        Montando_Stgr_N4_7Numeros(viComb01, viLinhas01, viCombTriplas01, viCombDuplas101, viCombDuplas201);
                                        Montado07FlagsNos19Numeros(viLinhas01);
                                            IF (Stgr_Todos19Numeros.Cells[viContar,1]='V') and (Stgr_Todos19Numeros.Cells[viContar,2]='F') THEN
                                            BEGIN
                                                vs3n1:='0';
                                                if (viContar = 1) and (Stgr_Todos19Numeros.Cells[19,2]='F') then
                                                    vs3n1:= Stgr_Todos19Numeros.Cells[1,0];
                                                if (viContar = 19) and (Stgr_Todos19Numeros.Cells[1,2]='F') then
                                                    vs3n1:= Stgr_Todos19Numeros.Cells[19,0];
                                                if ((viContar > 1) and (viContar < 19)) then
                                                    if (Stgr_Todos19Numeros.Cells[viContar-1,2]='F') and (Stgr_Todos19Numeros.Cells[viContar+1,2]='F') then
                                                            vs3n1:= Stgr_Todos19Numeros.Cells[viContar,0];
                                                Stgr_N4_1a.Cells[00, viLinhas01] := viLinhas01.ToString;
                                                Stgr_N4_1a.Cells[01, viLinhas01] := viComb01.ToString;
                                                Stgr_N4_1a.Cells[02,viLinhas01] := RIGHTSTR ('0'+vs3n1,2);


                                                for viContarCelulas := 1 to 19 do
                                                begin
                                                    if (Stgr_Todos19Numeros.Cells[viContarCelulas, 0].toInteger = Stgr_N4_1a.Cells[02,viLinhas01].toInteger) then
                                                      Stgr_Todos19Numeros.Cells[viContarCelulas, 2] := 'V';
                                                end;
                                                viContar2 :=1;
 //   Stgr_Todos19Numeros.Repaint;
                                                REPEAT //
                                                    Stgr_N4_1a.Cells[00, viLinhas01] := viLinhas01.ToString;
                                                    Stgr_N4_1a.Cells[01, viLinhas01] := viComb01.ToString;
                                                    Stgr_N4_1a.Cells[02,viLinhas01] := RIGHTSTR ('0'+vs3n1,2);
                                                    Montando_Stgr_N4_7Numeros(viComb01, viLinhas01, viCombTriplas01, viCombDuplas101, viCombDuplas201);
                                                    Montado07FlagsNos19Numeros(viLinhas01);
                                                      for viContarCelulas := 1 to 19 do
                                                      begin
                                                          if (Stgr_Todos19Numeros.Cells[viContarCelulas, 0].toInteger = Stgr_N4_1a.Cells[02, viLinhas01].toInteger) then
                                                            Stgr_Todos19Numeros.Cells[viContarCelulas, 2] := 'V';
                                                      end;
                                                    IF (Stgr_Todos19Numeros.Cells[viContar2,1]='V') and (Stgr_Todos19Numeros.Cells[viContar2,2]='F') THEN
                                                    BEGIN
                                                        vs3n2:='0';
                                                        if (viContar2 = 1) and (Stgr_Todos19Numeros.Cells[19,2]='F') then
                                                            vs3n2:= Stgr_Todos19Numeros.Cells[1,0];
                                                        if (viContar2 = 19) and (Stgr_Todos19Numeros.Cells[1,2]='F') then
                                                            vs3n2:= Stgr_Todos19Numeros.Cells[19,0];
                                                        if ((viContar2 > 1) and (viContar2 < 19)) then
                                                            if (Stgr_Todos19Numeros.Cells[viContar2-1,2]='F') and (Stgr_Todos19Numeros.Cells[viContar2+1,2]='F') then
                                                                    vs3n2:= Stgr_Todos19Numeros.Cells[viContar2,0];
                                                        Stgr_N4_1a.Cells[00, viLinhas01] := viLinhas01.ToString;
                                                        Stgr_N4_1a.Cells[02,viLinhas01] := RIGHTSTR ('0'+vs3n1,2);
                                                        Stgr_N4_1b.Cells[00, viLinhas01] := viLinhas01.ToString;
                                                        Stgr_N4_1b.Cells[02,viLinhas01] := RIGHTSTR ('0'+vs3n2,2);
                                                        Montando_Stgr_N4_7Numeros(viComb01, viLinhas01, viCombTriplas01, viCombDuplas101, viCombDuplas201);
                                                            if (vs3n1.ToInteger>0) and (vs3n2.ToInteger>0) then
                                                            begin
                                                                viLinhas01 := viLinhas01 + 1;
                                                            end;
                                                    END;
                                                    viContar2 := viContar2 +1;
                                                UNTIL viContar2 > 19;
                                            END;
                                            viContar := viContar +1;
                                        UNTIL viContar > 19;

//
//                                             ---> torna f e iguala a linha anterior e depois adiciona V de acordo com o critério para que proximo número não seje sucessor/antecesso ao atual.
//
//                                            FOR viContarCelulas :=1 TO 25 DO
//                                            begin
//                                                Stgr_Todos_Numeros.Cells[viContarCelulas,3] :='F';
//                                            END; // FOR viContarCelulas
//                                            FOR viContarCelulas :=1 TO 25 DO
//                                            begin
//                                                Stgr_Todos_Numeros.Cells[viContarCelulas,3] := Stgr_Todos_Numeros.Cells[viContarCelulas,2];
//                                            END; // FOR viContarCelulas
//                                            IF (Stgr_Todos_Numeros.Cells[viContar,1]='V') and (Stgr_Todos_Numeros.Cells[viContar,2]='F') THEN
//                                            BEGIN
//                                                vs3n1 := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2);
//                                                //
//                                                // ---> varrer a atring 1 base e encontrar o anterio e o próximo.
//                                                //
//                                                FOR viContarCelulas :=2 TO 14 DO
//                                                begin
//                                                    if vs3n1.ToInteger = Stgr_N1_13de19.Cells[viContarCelulas,1].ToInteger then
//                                                    begin
//                                                        if not (viContarCelulas = 2) then
//                                                            Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_N1_13de19.Cells[viContarCelulas-1,1])) ,3]:='V';
//                                                        if not (viContarCelulas = 14) then
//                                                            Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_N1_13de19.Cells[viContarCelulas+1,1])) ,3]:='V';
//                                                    end;
//                                                END; // FOR viContarCelulas
//                                                  Stgr_N4_1a.Cells[02,viLinhas01] := vs3n1;
//                                                  Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_N4_1a.Cells[2,viLinhas01])) ,3]:='V';
//    //                                            Stgr_Todos_Numeros.Repaint;
//                                                viLinhas01Anterior := viLinhas01;
//                                                viContar2 :=1;
//                                                REPEAT  //2
//                                                    IF (Stgr_Todos_Numeros.Cells[viContar2,1]='V') and (Stgr_Todos_Numeros.Cells[viContar2,3]='F') THEN
//                                                    begin
//                                                        Stgr_N4_1a.Cells[00, viLinhas01] := viLinhas01.ToString;
//                                                        Stgr_N4_1a.Cells[02, viLinhas01] := vs3n1;
//                                                        Stgr_N4_1b.Cells[00, viLinhas01] := viLinhas01.ToString;
//                                                        vs3n2 := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar2,0]),2);
//                                                        Stgr_N4_1b.Cells[02,viLinhas01] := vs3n2;
//                                                        Montando_Stgr_N4_7Numeros(viLinhas01, viCombTriplas01, viCombDuplas101, viCombDuplas201);
//                                                        viLinhas01 := viLinhas01 + 1;
//                                                        //        Stgr_N4_1a.RowCount := viLinhas01;
//                                                        //        Stgr_N4_1a.Repaint;
//                                                        //        Stgr_N4_1b.RowCount := viLinhas01;
//                                                        //        Stgr_N4_1b.Repaint;
//                                                    end;
//                                                   viContar2 := viContar2 +1;
//                                                UNTIL viContar2 > 25;
//                                               // Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_N4_1a.Cells[2,viLinhas01Anterior])) ,3]:='F';
//                                            END; // IF (Stgr_Todos_Numeros
//                                            viContar := viContar +1;
//                                        UNTIL viContar > 25;
//                                                                end else
//                                                                if vi_N4Parte = 5 then
//                                                                begin
//                                                                    Montando_Stgr_N4_7Numeros(viLinhas01, viCombTriplas01, viCombDuplas101, viCombDuplas201);
//                                                                    if Condicao7numerosTriplasDuplas(viLinhas01) then
//                                                                        continue;
//
//
//                                                                        Montado07FlagsNos19Numeros(viLinhas01);
//                                                                        viContar :=1;
//                                                                        REPEAT
//                                                                            IF (Stgr_Todos19Numeros.Cells[viContar,1]='V') and (Stgr_Todos19Numeros.Cells[viContar,2]='F') THEN
//                                                                            BEGIN
//                                                                                vs3n1:='0';
//                                                                                if (viContar = 1) and (Stgr_Todos19Numeros.Cells[19,2]='F') then
//                                                                                    vs3n1:= Stgr_Todos19Numeros.Cells[1,0];
//                                                                                if (viContar = 19) and (Stgr_Todos19Numeros.Cells[1,2]='F') then
//                                                                                    vs3n1:= Stgr_Todos19Numeros.Cells[19,0];
//                                                                                if ((viContar > 1) and (viContar < 19)) then
//                                                                                    if (Stgr_Todos19Numeros.Cells[viContar-1,2]='F') and (Stgr_Todos19Numeros.Cells[viContar+1,2]='F') then
//                                                                                            vs3n1:= Stgr_Todos19Numeros.Cells[viContar,0];
//                                                                                Stgr_N4_1a.Cells[00, viLinhas01] := viLinhas01.ToString;
//                                                                                Stgr_N4_1a.Cells[02,viLinhas01] := RIGHTSTR ('0'+vs3n1,2);
//                                                                                if vs3n1.ToInteger>0 then
//                                                                                    viLinhas01 := viLinhas01 + 1;
//                                                                            END; // IF (Stgr_Todos19Numeros
//                                                                            viContar := viContar +1;
//                                                                        UNTIL viContar > 19;
                                end else
                                if vi_N4Parte = 5 then
                                begin
                                        if not(Montando_Stgr_N4_7Numeros(viComb01, viLinhas01, viCombTriplas01, viCombDuplas101, viCombDuplas201)) then
                                            continue;
                                        Montado07FlagsNos19Numeros(viLinhas01);
                                        viContar :=1;
                                        REPEAT //1
                                            Montando_Stgr_N4_7Numeros(viComb01, viLinhas01, viCombTriplas01, viCombDuplas101, viCombDuplas201);
                                            Montado07FlagsNos19Numeros(viLinhas01);
                                            IF (Stgr_Todos19Numeros.Cells[viContar,1]='V') and (Stgr_Todos19Numeros.Cells[viContar,2]='F') THEN
                                            BEGIN
                                                vs3n1:='0';
                                                if (viContar = 1) and (Stgr_Todos19Numeros.Cells[19,2]='F') then
                                                    vs3n1:= Stgr_Todos19Numeros.Cells[1,0];
                                                if (viContar = 19) and (Stgr_Todos19Numeros.Cells[1,2]='F') then
                                                    vs3n1:= Stgr_Todos19Numeros.Cells[19,0];
                                                if ((viContar > 1) and (viContar < 19)) then
                                                    if (Stgr_Todos19Numeros.Cells[viContar-1,2]='F') and (Stgr_Todos19Numeros.Cells[viContar+1,2]='F') then
                                                            vs3n1:= Stgr_Todos19Numeros.Cells[viContar,0];
                                                Stgr_N4_1a.Cells[00, viLinhas01] := viLinhas01.ToString;
                                                Stgr_N4_1a.Cells[02,viLinhas01] := RIGHTSTR ('0'+vs3n1,2);


                                                for viContarCelulas := 1 to 19 do
                                                begin
                                                    if (Stgr_Todos19Numeros.Cells[viContarCelulas, 0].toInteger = Stgr_N4_1a.Cells[02,viLinhas01].toInteger) then
                                                      Stgr_Todos19Numeros.Cells[viContarCelulas, 2] := 'V';
                                                end;
                                                viContar2 :=1;
                                                REPEAT //2
                                                    Stgr_N4_1a.Cells[00, viLinhas01] := viLinhas01.ToString;
                                                    Stgr_N4_1a.Cells[01, viLinhas01] := viComb01.ToString;
                                                    Stgr_N4_1a.Cells[02,viLinhas01] := RIGHTSTR ('0'+vs3n1,2);
                                                    Montando_Stgr_N4_7Numeros(viComb01, viLinhas01, viCombTriplas01, viCombDuplas101, viCombDuplas201);
                                                    Montado07FlagsNos19Numeros(viLinhas01);
                                                      for viContarCelulas := 1 to 19 do
                                                      begin
                                                          if (Stgr_Todos19Numeros.Cells[viContarCelulas, 0].toInteger = Stgr_N4_1a.Cells[02, viLinhas01].toInteger) then
                                                            Stgr_Todos19Numeros.Cells[viContarCelulas, 2] := 'V';
                                                      end;
                                                    IF (Stgr_Todos19Numeros.Cells[viContar2,1]='V') and (Stgr_Todos19Numeros.Cells[viContar2,2]='F') THEN
                                                    BEGIN
                                                        vs3n2:='0';
                                                        if (viContar2 = 1) and (Stgr_Todos19Numeros.Cells[19,2]='F') then
                                                            vs3n2:= Stgr_Todos19Numeros.Cells[1,0];
                                                        if (viContar2 = 19) and (Stgr_Todos19Numeros.Cells[1,2]='F') then
                                                            vs3n2:= Stgr_Todos19Numeros.Cells[19,0];
                                                        if ((viContar2 > 1) and (viContar2 < 19)) then
                                                            if (Stgr_Todos19Numeros.Cells[viContar2-1,2]='F') and (Stgr_Todos19Numeros.Cells[viContar2+1,2]='F') then
                                                                    vs3n2:= Stgr_Todos19Numeros.Cells[viContar2,0];
                                                        Stgr_N4_1a.Cells[00, viLinhas01] := viLinhas01.ToString;
                                                        Stgr_N4_1a.Cells[01, viLinhas01] := viComb01.ToString;
                                                        Stgr_N4_1a.Cells[02,viLinhas01] := RIGHTSTR ('0'+vs3n1,2);
                                                        Stgr_N4_1b.Cells[00, viLinhas01] := viLinhas01.ToString;
                                                        Stgr_N4_1b.Cells[02,viLinhas01] := RIGHTSTR ('0'+vs3n2,2);
                                                        Montando_Stgr_N4_7Numeros(viComb01, viLinhas01, viCombTriplas01, viCombDuplas101, viCombDuplas201);

                                                            for viContarCelulas := 1 to 19 do
                                                            begin
                                                                if (Stgr_Todos19Numeros.Cells[viContarCelulas, 0].toInteger = Stgr_N4_1b.Cells[02,viLinhas01].toInteger) then
                                                                  Stgr_Todos19Numeros.Cells[viContarCelulas, 2] := 'V';
                                                            end;
                                                            viContar3 :=1;
                                                            REPEAT //3
                                                                Stgr_N4_1a.Cells[00, viLinhas01] := viLinhas01.ToString;
                                                                Stgr_N4_1a.Cells[01, viLinhas01] := viComb01.ToString;
                                                                Stgr_N4_1a.Cells[02,viLinhas01] := RIGHTSTR ('0'+vs3n1,2);
                                                                Stgr_N4_1b.Cells[00, viLinhas01] := viLinhas01.ToString;
                                                                Stgr_N4_1b.Cells[01, viLinhas01] := viComb01.ToString;
                                                                Stgr_N4_1b.Cells[02,viLinhas01] := RIGHTSTR ('0'+vs3n2,2);
                                                                Montando_Stgr_N4_7Numeros(viComb01, viLinhas01, viCombTriplas01, viCombDuplas101, viCombDuplas201);
                                                                Montado07FlagsNos19Numeros(viLinhas01);
                                                                  for viContarCelulas := 1 to 19 do
                                                                  begin
                                                                      if (Stgr_Todos19Numeros.Cells[viContarCelulas, 0].toInteger = Stgr_N4_1a.Cells[02, viLinhas01].toInteger) then
                                                                        Stgr_Todos19Numeros.Cells[viContarCelulas, 2] := 'V';
                                                                      if (Stgr_Todos19Numeros.Cells[viContarCelulas, 0].toInteger = Stgr_N4_1b.Cells[02, viLinhas01].toInteger) then
                                                                        Stgr_Todos19Numeros.Cells[viContarCelulas, 2] := 'V';
                                                                  end;
                                                                IF (Stgr_Todos19Numeros.Cells[viContar3,1]='V') and (Stgr_Todos19Numeros.Cells[viContar3,2]='F') THEN
                                                                BEGIN
                                                                    vs3n3:='0';
                                                                    if (viContar3 = 1) and (Stgr_Todos19Numeros.Cells[19,2]='F') then
                                                                        vs3n3:= Stgr_Todos19Numeros.Cells[1,0];
                                                                    if (viContar3 = 19) and (Stgr_Todos19Numeros.Cells[1,2]='F') then
                                                                        vs3n3:= Stgr_Todos19Numeros.Cells[19,0];
                                                                    if ((viContar3 > 1) and (viContar3 < 19)) then
                                                                        if (Stgr_Todos19Numeros.Cells[viContar3-1,2]='F') and (Stgr_Todos19Numeros.Cells[viContar3+1,2]='F') then
                                                                                vs3n3:= Stgr_Todos19Numeros.Cells[viContar3,0];
                                                                    Stgr_N4_1a.Cells[00, viLinhas01] := viLinhas01.ToString;
                                                                    Stgr_N4_1a.Cells[01, viLinhas01] := viComb01.ToString;
                                                                    Stgr_N4_1a.Cells[02,viLinhas01] := RIGHTSTR ('0'+vs3n1,2);
                                                                    Stgr_N4_1b.Cells[00, viLinhas01] := viLinhas01.ToString;
                                                                    Stgr_N4_1b.Cells[02,viLinhas01] := RIGHTSTR ('0'+vs3n2,2);
                                                                    Stgr_N4_1c.Cells[00, viLinhas01] := viLinhas01.ToString;
                                                                    Stgr_N4_1c.Cells[02,viLinhas01] := RIGHTSTR ('0'+vs3n3,2);
                                                                    Montando_Stgr_N4_7Numeros(viComb01, viLinhas01, viCombTriplas01, viCombDuplas101, viCombDuplas201);

                                                                if (Limitador10NrsTriplasDuplasIsolados(viLinhas01)=False) then
                                                                begin
                                                                  viContar3 := 26;
                                                                  continue;
                                                                end;
                                                                        if (vs3n1.ToInteger>0) and (vs3n2.ToInteger>0) and (vs3n3.ToInteger>0) then
                                                                        begin
                                                                            viLinhas01 := viLinhas01 + 1;
                                                                        end;
                                                                END;
                                                                viContar3 := viContar3 +1;
                                                            UNTIL viContar3 > 19;

                                                    END;
                                                    viContar2 := viContar2 +1;
                                                UNTIL viContar2 > 19;
                                            END;
                                            viContar := viContar +1;
                                        UNTIL viContar > 19;
// 1.350.432  a 1/500
// 1.285.308 a 1/500
// 1.012.176
// 498.204  [1.245.510 em 1/200]
//                                        FOR viContarCelulas :=1 TO 25 DO
//                                        begin
//                                            Stgr_Todos_Numeros.Cells[viContarCelulas,2] :='F';
//                                        END; // FOR viContarCelulas
//                                        for viContarCelulas := 2 to 4 do
//                                        begin
//                                            Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_N4_7numeros.Cells[viContarCelulas,viLinhas01])) ,2]:='V';
//                                            if (viContarCelulas = 2) AND ((viCombTriplas01-1)>=2) then
//                                                Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_N1_13de19.Cells[viCombTriplas01-1, 1])) ,2]:='V';
//                                            if (viContarCelulas = 4) AND ((viCombTriplas01+3)<=14) then
//                                                Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_N1_13de19.Cells[viCombTriplas01+3, 1])) ,2]:='V';
//                                        END; // FOR viContarCelulas
//                                        for viContarCelulas := 5 to 6 do
//                                        begin
//                                            Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_N4_7numeros.Cells[viContarCelulas,viLinhas01])) ,2]:='V';
//                                            if (viContarCelulas = 5) AND ((viCombDuplas101-1)>=2) then
//                                                Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_N1_13de19.Cells[viCombDuplas101-1, 1])) ,2]:='V';
//                                            if (viContarCelulas = 6) AND ((viCombDuplas101+2)<=14) then
//                                                Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_N1_13de19.Cells[viCombDuplas101+2, 1])) ,2]:='V';
//                                        END; // FOR viContarCelulas
//                                        for viContarCelulas := 7 to 8 do
//                                        begin
//                                            Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_N4_7numeros.Cells[viContarCelulas,viLinhas01])) ,2]:='V';
//                                            if (viContarCelulas = 7) AND ((viCombDuplas201-1)>=2) then
//                                                Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_N1_13de19.Cells[viCombDuplas201-1, 1])) ,2]:='V';
//                                            if (viContarCelulas = 8) AND ((viCombDuplas201+2)<=14) then
//                                                Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_N1_13de19.Cells[viCombDuplas201+2, 1])) ,2]:='V';
//                                        END; // FOR viContarCelulas
//                                        viContar :=1;
//                                        REPEAT //1
//                                            //
//                                            // ---> torna f e iguala a linha anterior e depois adiciona V de acordo com o critério para que proximo número não seje sucessor/antecesso ao atual.
//                                            //
//                                            FOR viContarCelulas :=1 TO 25 DO
//                                            begin
//                                                Stgr_Todos_Numeros.Cells[viContarCelulas,3] :='F';
//                                            END; // FOR viContarCelulas
//                                            FOR viContarCelulas :=1 TO 25 DO
//                                            begin
//                                                Stgr_Todos_Numeros.Cells[viContarCelulas,3] := Stgr_Todos_Numeros.Cells[viContarCelulas,2];
//                                            END; // FOR viContarCelulas
//                                            IF (Stgr_Todos_Numeros.Cells[viContar,1]='V') and (Stgr_Todos_Numeros.Cells[viContar,2]='F') THEN
//                                            BEGIN
//                                                vs3n1 := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2);
//                                                FOR viContarCelulas :=1 TO 25 DO
//                                                begin
//                                                    Stgr_Todos_Numeros.Cells[viContarCelulas,3] := Stgr_Todos_Numeros.Cells[viContarCelulas,2];
//                                                END; // FOR viContarCelulas
//                                                //
//                                                // ---> varrer a atring 1 base e encontrar o anterio e o próximo.
//                                                //
//                                                FOR viContarCelulas :=2 TO 14 DO
//                                                begin
//                                                    if vs3n1.ToInteger = Stgr_N1_13de19.Cells[viContarCelulas,1].ToInteger then
//                                                    begin
//                                                        if not (viContarCelulas = 2) then
//                                                            Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_N1_13de19.Cells[viContarCelulas-1,1])) ,3]:='V';
//                                                        if not (viContarCelulas = 20) then
//                                                            Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_N1_13de19.Cells[viContarCelulas+1,1])) ,3]:='V';
//                                                    end;
//                                                END; // FOR viContarCelulas
//                                                  Stgr_N4_1a.Cells[02,viLinhas01] := vs3n1;
//                                                  Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_N4_1a.Cells[2,viLinhas01])) ,3]:='V';
//    //                                            Stgr_Todos_Numeros.Repaint;
//                                                 // viLinhas01Anterior := viLinhas01;
//                                                viContar2 :=1;
//
//                                                REPEAT //2
//                                                    //
//                                                    // ---> torna f e iguala a linha anterior e depois adiciona V de acordo com o critério para que proximo número não seje sucessor/antecesso ao atual.
//                                                    //
//                                                    FOR viContarCelulas :=1 TO 25 DO
//                                                    begin
//                                                        Stgr_Todos_Numeros.Cells[viContarCelulas,4] :='F';
//                                                    END; // FOR viContarCelulas
//                                                    FOR viContarCelulas :=1 TO 25 DO
//                                                    begin
//                                                        Stgr_Todos_Numeros.Cells[viContarCelulas,4] := Stgr_Todos_Numeros.Cells[viContarCelulas,3];
//                                                    END; // FOR viContarCelulas
//                                                    IF (Stgr_Todos_Numeros.Cells[viContar2,1]='V') and (Stgr_Todos_Numeros.Cells[viContar2,3]='F') THEN
//                                                    BEGIN
//                                                        vs3n2 := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar2,0]),2);
//                                                        //
//                                                        // ---> varrer a atring 1 base e encontrar o anterio e o próximo.
//                                                        //
//                                                        FOR viContarCelulas :=2 TO 14 DO
//                                                        begin
//                                                            if vs3n2.ToInteger = Stgr_N1_13de19.Cells[viContarCelulas,1].ToInteger then
//                                                            begin
//                                                                if not (viContarCelulas = 2) then
//                                                                    Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_N1_13de19.Cells[viContarCelulas-1,1])) ,4]:='V';
//                                                                if not (viContarCelulas = 20) then
//                                                                    Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_N1_13de19.Cells[viContarCelulas+1,1])) ,4]:='V';
//                                                            end;
//                                                        END; // FOR viContarCelulas
//                                                          Stgr_N4_1b.Cells[02,viLinhas01] := vs3n2;
//                                                          Stgr_Todos_Numeros.Cells [STRtoINT(vs3n2),4]:='V';
//                                                         // viLinhas01Anterior := viLinhas01;
//                                                        viContar3 :=1;
//                                                 // Stgr_Todos_Numeros.Repaint;
//                                                        REPEAT //3
//                                                            IF (Stgr_Todos_Numeros.Cells[viContar3,1]='V') and (Stgr_Todos_Numeros.Cells[viContar3,4]='F') THEN
//                                                            begin
//                                                                Stgr_N4_1a.Cells[00, viLinhas01] := viLinhas01.ToString;
//                                                                Stgr_N4_1a.Cells[02, viLinhas01] := vs3n1;
//                                                                Stgr_N4_1b.Cells[00, viLinhas01] := viLinhas01.ToString;
//                                                                Stgr_N4_1b.Cells[02,viLinhas01] := vs3n2;
//                                                                vs3n3 := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar3,0]),2);
//                                                                Stgr_N4_1c.Cells[00, viLinhas01] := viLinhas01.ToString;
//                                                                Stgr_N4_1c.Cells[02,viLinhas01] := vs3n3;
//                                                                Montando_Stgr_N4_7Numeros(viLinhas01, viCombTriplas01, viCombDuplas101, viCombDuplas201);
//                                                                // --> Limitador soma 104 a 156
//                                                                if ((Stgr_N4_7numeros.Cells[2, viLinhas01].ToInteger + Stgr_N4_7numeros.Cells[3, viLinhas01].ToInteger +
//                                                                     Stgr_N4_7numeros.Cells[4, viLinhas01].ToInteger + Stgr_N4_7numeros.Cells[5, viLinhas01].ToInteger +
//                                                                     Stgr_N4_7numeros.Cells[6, viLinhas01].ToInteger + Stgr_N4_7numeros.Cells[7, viLinhas01].ToInteger +
//                                                                     Stgr_N4_7numeros.Cells[8, viLinhas01].ToInteger +
//                                                                     Stgr_N4_1a.Cells[02, viLinhas01].ToInteger +      Stgr_N4_1b.Cells[02, viLinhas01].ToInteger +
//                                                                     Stgr_N4_1c.Cells[02, viLinhas01].ToInteger
//                                                                  ) >= 156) or
//                                                                  (( Stgr_N4_7numeros.Cells[2, viLinhas01].ToInteger +   Stgr_N4_7numeros.Cells[3, viLinhas01].ToInteger +
//                                                                     Stgr_N4_7numeros.Cells[4, viLinhas01].ToInteger + Stgr_N4_7numeros.Cells[5, viLinhas01].ToInteger +
//                                                                     Stgr_N4_7numeros.Cells[6, viLinhas01].ToInteger + Stgr_N4_7numeros.Cells[7, viLinhas01].ToInteger +
//                                                                     Stgr_N4_7numeros.Cells[8, viLinhas01].ToInteger +
//                                                                     Stgr_N4_1a.Cells[02, viLinhas01].ToInteger +
//                                                                     Stgr_N4_1b.Cells[02, viLinhas01].ToInteger +
//                                                                     Stgr_N4_1c.Cells[02, viLinhas01].ToInteger
//                                                                  ) <= 104) then
//                                                                begin
//                                                                  viContar3 := 26;
//                                                                  continue;
//                                                                end;
//                                                                if (Limitador10NrsTriplasDuplasIsolados(viLinhas01)=False) then
//                                                                begin
//                                                                  viContar3 := 26;
//                                                                  continue;
//                                                                end;
//                                                                viLinhas01 := viLinhas01 + 1;
//                                                            end;
//                                                            viContar3 := viContar3 +1;
//                                                        UNTIL viContar3 > 25;
//                                                       // Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_N4_1a.Cells[2,viLinhas01Anterior])) ,3]:='F';
//                                                    END; // IF (Stgr_Todos_Numeros
//                                                    viContar2 := viContar2 +1;
//                                                UNTIL viContar2 > 25;
//
//                                               // Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_N4_1a.Cells[2,viLinhas01Anterior])) ,3]:='F';
//                                            END; // IF (Stgr_Todos_Numeros
//                                            viContar := viContar +1;
//                                        UNTIL viContar > 25;
                                end;
                            End;
                        End;
                    end;
                End;
            End;
        End;
    Finally
        Stgr_N4_Triplas.RowCount := viLinhas01;
        Stgr_N4_Triplas.Repaint;
        Stgr_N4_Duplas1.RowCount := viLinhas01;
        Stgr_N4_Duplas1.Repaint;
        Stgr_N4_Duplas2.RowCount := viLinhas01;
        Stgr_N4_Duplas2.Repaint;
        Stgr_N4_7numeros.RowCount := viLinhas01;
        Stgr_N4_7numeros.Repaint;
        Stgr_N4_1a.RowCount := viLinhas01;
        Stgr_N4_1a.Repaint;
        Stgr_N4_1b.RowCount := viLinhas01;
        Stgr_N4_1b.Repaint;
        Stgr_N4_1c.RowCount := viLinhas01;
        Stgr_N4_1c.Repaint;
    end;
    Pgbr_EtaPa_01.Position := 20;
    Pgbr_EtaPa_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end;

function T_F_Gerador_1LinhDe19e1de6.Limitador10NrsTriplasDuplasIsolados(viLinhas01: Integer) : boolean;
var
    viComb01, viComb02 : Integer;
    viEsquerda, viDireita, viMeio : smallint;
begin
    // --> preparando
    for viComb01 := 1 to 19 do
    begin
        Stgr_Todos19Numeros.Cells[viComb01,0] := Stgr_Base19.Cells[viComb01+1,1];
        Stgr_Todos19Numeros.Cells[viComb01,1] := 'F';
    end;
    // --> preenchendo
    for viComb01 := 1 to 19 do
    begin
        for viComb02 := 2 to 8 do
        begin
            if (Stgr_Todos19Numeros.Cells[viComb01,0].toInteger = Stgr_N4_7numeros.Cells[viComb02, viLinhas01].toInteger) then
            Stgr_Todos19Numeros.Cells[viComb01,1] := 'V';
        end;
        if (Stgr_Todos19Numeros.Cells[viComb01,0].toInteger = Stgr_N4_1a.Cells[02, viLinhas01].toInteger) then
            Stgr_Todos19Numeros.Cells[viComb01,1] := 'V';
        if (Stgr_Todos19Numeros.Cells[viComb01,0].toInteger = Stgr_N4_1b.Cells[02, viLinhas01].toInteger) then
            Stgr_Todos19Numeros.Cells[viComb01,1] := 'V';
        if (Stgr_Todos19Numeros.Cells[viComb01,0].toInteger = Stgr_N4_1c.Cells[02, viLinhas01].toInteger) then
            Stgr_Todos19Numeros.Cells[viComb01,1] := 'V';
    end;
    // --> montando as condições:
    viEsquerda := 0;
    viDireita  := 0;
    viMeio     := 0;
    result     := False;
    for viComb01 := 1 to 9 do
    begin
        if (Stgr_Todos19Numeros.Cells[viComb01,1] = 'V') then
            viEsquerda := viEsquerda + 1;
    end;
    for viComb01 := 11 to 19 do
    begin
        if (Stgr_Todos19Numeros.Cells[viComb01,1] = 'V') then
            viDireita := viDireita + 1;
    end;
    if (Stgr_Todos19Numeros.Cells[10,1] = 'V') then
        viMeio := viMeio + 1;
    if (viEsquerda =4) and (viMeio=1) and (viDireita=5) then
        result := True;
    if (viEsquerda =5) and (viMeio=0) and (viDireita=5) then
        result := True;
    if (viEsquerda =5) and (viMeio=1) and (viDireita=4) then
        result := True;
end;



procedure T_F_Gerador_1LinhDe19e1de6.Bbt_N4bClick(Sender: TObject);
begin
    if Stgr_N1_13de19.RowCount=2 then
        BBT_Numero01e02.Click;
    vi_N4Parte := 2;
    BBT_Numero04Triplas_Duplas();
end;


procedure T_F_Gerador_1LinhDe19e1de6.Bbt_N4cClick(Sender: TObject);
begin
    if Stgr_N1_13de19.RowCount=2 then
        BBT_Numero01e02.Click;
    vi_N4Parte := 3;
    BBT_Numero04Triplas_Duplas();
end;

procedure T_F_Gerador_1LinhDe19e1de6.BitBtn1Click(Sender: TObject);
begin
    if Stgr_N1_13de19.RowCount=2 then
        BBT_Numero01e02.Click;
    vi_N4Parte := 4;
    BBT_Numero04Triplas_Duplas();
end;

procedure T_F_Gerador_1LinhDe19e1de6.BitBtn2Click(Sender: TObject);
begin
    if Stgr_N1_13de19.RowCount=2 then
        BBT_Numero01e02.Click;
    vi_N4Parte := 5;
    BBT_Numero04Triplas_Duplas();
end;

Procedure T_F_Gerador_1LinhDe19e1de6.Btn_ReajustarClick(Sender: TObject);
begin
     Scbx_Gabarito.Visible := TRUE;
     Scbx_Gabarito.Enabled := TRUE;
     Pa_Resultado.Visible := TRUE;
     Pa_Resultado.Enabled := TRUE;
     Bbt_PrepararMenu.Enabled := TRUE;
     Bbt_GerarMenu.Enabled := false;
     Bbt_CancelarSair.Visible := false;
     Pa_Inicial.Enabled := false;
     Pa_Inicial.Left := 2198;
     Scbx_Gabarito.Top:=247;
     Scbx_Gabarito.Repaint;
end;



Procedure T_F_Gerador_1LinhDe19e1de6.Bbt_CARREGARClick(Sender: TObject);
begin
    Bbt_CancelarSair.Visible := TRUE;
//       SELF.PR_LIMPAR_GRID10();
     Scbx_Gabarito.Visible := TRUE;
     Scbx_Gabarito.Enabled := TRUE;
     Pa_Resultado.Visible := TRUE;
     Pa_Resultado.Enabled := TRUE;
     Pa_ExecutarFiltro.Enabled := TRUE;

     Bbt_PrepararMenu.Enabled := false;
     Bbt_GerarMenu.Enabled := false;
     Pa_Inicial.Enabled := false;
     Pa_Inicial.Left := 2198;
     La_Gerar_Comb.Visible := false;
     {
            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_25_Linhas2_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            DM1.IBQ_Combinacoes.ExecSQL;
            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
            DM1.IBQ_Combinacoes.ExecSQL;
            }
end;



Procedure T_F_Gerador_1LinhDe19e1de6.Bbt_VoltarClick(Sender: TObject);
begin
     Pa_Gerar.Enabled := false;
     Pa_Gerar.Left := 4500;    ;
     Pa_Gerar.Repaint;
end;









Procedure T_F_Gerador_1LinhDe19e1de6.Bbt_BlocoNotasClick(Sender: TObject);
var
    viContar, vc_qtd_pares : Integer;
    vcCombinacoes2 : String;
begin
    GerarBlocoNotas1('GERADOR_RESULT_25_LINHAS2_D15B','GERADOR Resultados 25 Linhas', '.Todos os números possíveis (etapa 4).');
    SHOWMESSAGE('BLOCO DE NOTAS GERADO');
end;


Procedure T_F_Gerador_1LinhDe19e1de6.GerarBlocoNotas1(vc_Nome_Tabela, vcTitulo, vcSubTitulo: String);
var
    viContar, vc_qtd_pares : Integer;
    vcCombinacoes2 : String;
begin
{
    Mem_Combinacoes_Todas.Clear;
    DM1.IBQ_Combinacoes.Close;
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('SELECT COUNT(distinct(DADOS)) AS SOMADADOS FROM ' +vc_Nome_Tabela+ ';')  ;
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;
    viContar := DM1.IBQ_Combinacoes.FIELDBYNAME('SOMADADOS').AsInteger;
     Mem_Combinacoes_Todas.Lines.Add(vcTitulo) ;
     Mem_Combinacoes_Todas.Lines.Add(vcSubTitulo) ;
    Mem_Combinacoes_Todas.Lines.Add('TOTAL: ' + viContar.ToString) ;
    Mem_Combinacoes_Todas.Lines.Add('----------------------------') ;
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('select DISTINCT (dados), dados_ns FROM ' +vc_Nome_Tabela+ ' ORDER BY DADOS;')  ;
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;
    DM1.IBQ_Combinacoes.First;
    WHILE (NOT(DM1.IBQ_Combinacoes.Eof)) DO
    BEGIN
       vcCombinacoes2 := '';
        vcCombinacoes2 := trim(DM1.IBQ_Combinacoes.FIELDBYNAME('DADOS').AsString);
            Mem_Combinacoes_Todas.Lines.Add(vcCombinacoes2) ;
       DM1.IBQ_Combinacoes.Next;
    END; // FOR viContar
    Mem_Combinacoes_Todas.Repaint;
    //Mem_Combinacoes_Todas.SelectAll;
    //Mem_Combinacoes_Todas.CopyToClipboard;
    //Mem_Combinacoes_Todas.Repaint;
    Mem_Combinacoes_Todas.Lines.SaveToFile('C:\CXLOTOFACIL\'+vc_Nome_Tabela+'.TXT');
    winExec(PAnsiChar('Notepad.exe C:\CXLOTOFACIL\'+vc_Nome_Tabela+'.TXT'), sw_shownormal);
    }
end;



Procedure T_F_Gerador_1LinhDe19e1de6.Btn_CarregarClick(Sender: TObject);
begin
//     DM1.IBQ_Combinacoes.SQL.Clear;
//     DM1.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_25_Linhas2_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
//     DM1.IBQ_Combinacoes.ExecSQL;
//     DM1.IBQ_Combinacoes.SQL.Clear;
//     DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
//     DM1.IBQ_Combinacoes.ExecSQL;
     SHOWMESSAGE('OK');
     SELF.Close;
end;



Procedure T_F_Gerador_1LinhDe19e1de6.Bbt_OKClick(Sender: TObject);
begin
//
end;



Procedure T_F_Gerador_1LinhDe19e1de6.Bbt_RemoveuRepetidosClick(
  Sender: TObject);
begin
     Pa_RemoveuRepetidos.Left := 5000;
     Bbt_PrepararMenu.Enabled := false;
     Bbt_GerarMenu.Enabled := false;
     Pa_Inicial.Enabled := TRUE;
     Btn_NovaSimulacao.Enabled := false;
     Btn_Reajustar.Enabled := TRUE;
//     Bbt_CARREGAR.Enabled := false;
     Pa_Inicial.Left := 1215;
     Pa_Inicial.Top := 29;
end;


Procedure T_F_Gerador_1LinhDe19e1de6.Bbt_PreencherPadraoClick(Sender: TObject);
var
   viContador1 : Smallint;
begin
    viContador1 := 1 ;
    Stgr_Base19.Cells[0,viContador1] := '';
    Stgr_Base19.Cells[01,viContador1] := '+1';
    Stgr_Base19.Cells[02,viContador1] := '01';
    Stgr_Base19.Cells[03,viContador1] := '02';
    Stgr_Base19.Cells[04,viContador1] := '03';
    Stgr_Base19.Cells[05,viContador1] := '04';
    Stgr_Base19.Cells[06,viContador1] := '05';
    Stgr_Base19.Cells[07,viContador1] := '06';
    Stgr_Base19.Cells[08,viContador1] := '08';
    Stgr_Base19.Cells[09,viContador1] := '09';
    Stgr_Base19.Cells[10,viContador1] := '11';
    Stgr_Base19.Cells[11,viContador1] := '13';
    Stgr_Base19.Cells[12,viContador1] := '15';
    Stgr_Base19.Cells[13,viContador1] := '17';
    Stgr_Base19.Cells[14,viContador1] := '18';
    Stgr_Base19.Cells[15,viContador1] := '20';
    Stgr_Base19.Cells[16,viContador1] := '21';
    Stgr_Base19.Cells[17,viContador1] := '22';
    Stgr_Base19.Cells[18,viContador1] := '23';
    Stgr_Base19.Cells[19,viContador1] := '24';
    Stgr_Base19.Cells[20,viContador1] := '25';
    viContador1 := 1 ;
    Stgr_Base06.Cells[0,viContador1] := '';
    Stgr_Base06.Cells[01,viContador1] := '+1';
    Stgr_Base06.Cells[02,viContador1] := '07';
    Stgr_Base06.Cells[03,viContador1] := '10';
    Stgr_Base06.Cells[04,viContador1] := '12';
    Stgr_Base06.Cells[05,viContador1] := '14';
    Stgr_Base06.Cells[06,viContador1] := '16';
    Stgr_Base06.Cells[07,viContador1] := '19';
    //
    Stgr_Base10a.Cells[0,viContador1] := '';
    Stgr_Base10a.Cells[01,viContador1] := '+1';
    Stgr_Base10a.Cells[02,viContador1] := Stgr_Base19.Cells[02,viContador1]; // '01';
    Stgr_Base10a.Cells[03,viContador1] := Stgr_Base19.Cells[03,viContador1]; // '02';
    Stgr_Base10a.Cells[04,viContador1] := Stgr_Base19.Cells[04,viContador1]; // '03';
    Stgr_Base10a.Cells[05,viContador1] := Stgr_Base19.Cells[05,viContador1]; // '04';
    Stgr_Base10a.Cells[06,viContador1] := Stgr_Base19.Cells[06,viContador1]; // '05';
    Stgr_Base10a.Cells[07,viContador1] := Stgr_Base19.Cells[16,viContador1]; // '21';
    Stgr_Base10a.Cells[08,viContador1] := Stgr_Base19.Cells[17,viContador1]; // '22';
    Stgr_Base10a.Cells[09,viContador1] := Stgr_Base19.Cells[18,viContador1]; // '23';
    Stgr_Base10a.Cells[10,viContador1] := Stgr_Base19.Cells[19,viContador1]; // '24';
    Stgr_Base10a.Cells[11,viContador1] := Stgr_Base19.Cells[20,viContador1]; // '25';
        //
    Stgr_Base03bModo01.Cells[0,viContador1] := '';
    Stgr_Base03bModo01.Cells[01,viContador1] := '+1';
    Stgr_Base03bModo01.Cells[02,viContador1] := Stgr_Base19.Cells[02,viContador1];
    Stgr_Base03bModo01.Cells[03,viContador1] := Stgr_Base19.Cells[03,viContador1];
    Stgr_Base03bModo01.Cells[04,viContador1] := Stgr_Base19.Cells[19,viContador1];
    Stgr_Base03bModo01.Cells[05,viContador1] := Stgr_Base19.Cells[20,viContador1];
        //
    Stgr_Base03bModo02.Cells[0,1]:= '01';
    Stgr_Base03bModo02.Cells[01,viContador1] := '+1';
    Stgr_Base03bModo02.Cells[02,1] := Stgr_Base03bModo01.Cells[02,viContador1]; // '01';
    Stgr_Base03bModo02.Cells[03,1] := Stgr_Base03bModo01.Cells[03,viContador1]; // '02';
    Stgr_Base03bModo02.Cells[04,1] := Stgr_Base03bModo01.Cells[04,viContador1]; // '24';
    Stgr_Base03bModo02.Cells[0,2] := '02';
    Stgr_Base03bModo02.Cells[01,2] := '+1';
    Stgr_Base03bModo02.Cells[02,2] := Stgr_Base03bModo01.Cells[02,viContador1]; // '01';
    Stgr_Base03bModo02.Cells[03,2] := Stgr_Base03bModo01.Cells[03,viContador1]; // '02';
    Stgr_Base03bModo02.Cells[04,2] := Stgr_Base03bModo01.Cells[05,viContador1]; // '25';
    Stgr_Base03bModo02.Cells[0,3] := '03';
    Stgr_Base03bModo02.Cells[01,3] := '+1';
    Stgr_Base03bModo02.Cells[02,3] := Stgr_Base03bModo01.Cells[02,viContador1]; // '01';
    Stgr_Base03bModo02.Cells[03,3] := Stgr_Base03bModo01.Cells[04,viContador1]; // '24';
    Stgr_Base03bModo02.Cells[04,3] := Stgr_Base03bModo01.Cells[05,viContador1]; // '25';
    Stgr_Base03bModo02.Cells[0,4] := '04';
    Stgr_Base03bModo02.Cells[01,4] := '+1';
    Stgr_Base03bModo02.Cells[02,4] := Stgr_Base03bModo01.Cells[03,viContador1]; // '02';
    Stgr_Base03bModo02.Cells[03,4] := Stgr_Base03bModo01.Cells[04,viContador1]; // '24';
    Stgr_Base03bModo02.Cells[04,4] := Stgr_Base03bModo01.Cells[05,viContador1]; // '25';

    Stgr_LinhaBaseA.Cells[00,1] := '';
    Stgr_LinhaBaseA.Cells[02,1] := Stgr_Base19.Cells[07,viContador1];
    Stgr_LinhaBaseA.Cells[03,1] := Stgr_Base19.Cells[08,viContador1];
    Stgr_LinhaBaseA.Cells[04,1] := Stgr_Base19.Cells[09,viContador1];
    Stgr_LinhaBaseA.Cells[05,1] := Stgr_Base19.Cells[10,viContador1];
    Stgr_LinhaBaseA.Cells[06,1] := Stgr_Base19.Cells[11,viContador1];
    Stgr_LinhaBaseA.Cells[07,1] := Stgr_Base19.Cells[12,viContador1];
    Stgr_LinhaBaseA.Cells[08,1] := Stgr_Base19.Cells[13,viContador1];
    Stgr_LinhaBaseA.Cells[09,1] := Stgr_Base19.Cells[14,viContador1];
    Stgr_LinhaBaseA.Cells[10,1] := Stgr_Base19.Cells[15,viContador1];

    Stgr_LinhaBaseB.Cells[00,1] := '';
    Stgr_LinhaBaseB.Cells[02,1] := Stgr_Base19.Cells[02,viContador1];
    Stgr_LinhaBaseB.Cells[03,1] := Stgr_Base19.Cells[03,viContador1];
    Stgr_LinhaBaseB.Cells[04,1] := Stgr_Base19.Cells[04,viContador1];
    Stgr_LinhaBaseB.Cells[05,1] := Stgr_Base19.Cells[05,viContador1];
    Stgr_LinhaBaseB.Cells[06,1] := Stgr_Base19.Cells[06,viContador1];
    Stgr_LinhaBaseB.Cells[07,1] := Stgr_Base19.Cells[16,viContador1];
    Stgr_LinhaBaseB.Cells[08,1] := Stgr_Base19.Cells[17,viContador1];
    Stgr_LinhaBaseB.Cells[09,1] := Stgr_Base19.Cells[18,viContador1];
    Stgr_LinhaBaseB.Cells[10,1] := Stgr_Base19.Cells[19,viContador1];
    Stgr_LinhaBaseB.Cells[11,1] := Stgr_Base19.Cells[20,viContador1];

    Stgr_LinhaBaseC.Cells[00,1] := '';
    Stgr_LinhaBaseC.Cells[02,1] := Stgr_Base06.Cells[02,viContador1] ;
    Stgr_LinhaBaseC.Cells[03,1] := Stgr_Base06.Cells[03,viContador1] ;
    Stgr_LinhaBaseC.Cells[04,1] := Stgr_Base06.Cells[04,viContador1] ;
    Stgr_LinhaBaseC.Cells[05,1] := Stgr_Base06.Cells[05,viContador1] ;
    Stgr_LinhaBaseC.Cells[06,1] := Stgr_Base06.Cells[06,viContador1] ;
    Stgr_LinhaBaseC.Cells[07,1] := Stgr_Base06.Cells[07,viContador1] ;
    Stgr_LinhaBaseC.Cells[08,1] := Stgr_Base06.Cells[08,viContador1] ;
end;


end.



//                                        for viContarCelulas := 2 to 4 do
//                                        begin
//                                            Stgr_Todos19Numeros.Cells [ (STRtoINT(Stgr_N4_7numeros.Cells[viContarCelulas,viLinhas01])) ,2]:='V';
//                                            if (viContarCelulas = 2) AND ((viCombTriplas01-1)>=2) then
//                                                Stgr_Todos19Numeros.Cells [ (STRtoINT(Stgr_N1_13de19.Cells[viCombTriplas01-1, 1])) ,2]:='V';
//                                            if (viContarCelulas = 4) AND ((viCombTriplas01+3)<=14) then
//                                                Stgr_Todos19Numeros.Cells [ (STRtoINT(Stgr_N1_13de19.Cells[viCombTriplas01+3, 1])) ,2]:='V';
//                                        END; // FOR viContarCelulas
//                                        for viContarCelulas := 5 to 6 do
//                                        begin
//                                            Stgr_Todos19Numeros.Cells [ (STRtoINT(Stgr_N4_7numeros.Cells[viContarCelulas,viLinhas01])) ,2]:='V';
//                                            if (viContarCelulas = 5) AND ((viCombDuplas101-1)>=2) then
//                                                Stgr_Todos19Numeros.Cells [ (STRtoINT(Stgr_N1_13de19.Cells[viCombDuplas101-1, 1])) ,2]:='V';
//                                            if (viContarCelulas = 6) AND ((viCombDuplas101+2)<=14) then
//                                                Stgr_Todos19Numeros.Cells [ (STRtoINT(Stgr_N1_13de19.Cells[viCombDuplas101+2, 1])) ,2]:='V';
//                                        END; // FOR viContarCelulas
//                                        for viContarCelulas := 7 to 8 do
//                                        begin
//                                            Stgr_Todos19Numeros.Cells [ (STRtoINT(Stgr_N4_7numeros.Cells[viContarCelulas,viLinhas01])) ,2]:='V';
//                                            if (viContarCelulas = 7) AND ((viCombDuplas201-1)>=2) then
//                                                Stgr_Todos19Numeros.Cells [ (STRtoINT(Stgr_N1_13de19.Cells[viCombDuplas201-1, 1])) ,2]:='V';
//                                            if (viContarCelulas = 8) AND ((viCombDuplas201+2)<=14) then
//                                                Stgr_Todos19Numeros.Cells [ (STRtoINT(Stgr_N1_13de19.Cells[viCombDuplas201+2, 1])) ,2]:='V';
//                                        END; // FOR viContarCelulas
