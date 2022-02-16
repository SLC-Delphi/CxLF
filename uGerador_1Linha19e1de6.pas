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
    Pgbr_EtaPa_01_07: TProgressBar;
    Bbt_PreencherPadrao: TBitBtn;
    Label63: TLabel;
    Scbx_dados: TScrollBox;
    Stgr_N1_13de19: TStringGrid;
    Stgr_N1_06de13: TStringGrid;
    Label3: TLabel;
    Stgr_N2_04de06: TStringGrid;
    Stgr_N2_02de06: TStringGrid;
    Bevel1: TBevel;
    Stgr_Base10a: TStringGrid;
    Stgr_N3a_3doBloco1: TStringGrid;
    Label4: TLabel;
    Stgr_N3a_3doBloco2: TStringGrid;
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
    bbt_TriplasDuplasIsolados: TBitBtn;
    Stgr_Todos_Numeros: TStringGrid;
    Stgr_LinhaBaseA: TStringGrid;
    Stgr_LinhaBaseB: TStringGrid;
    Stgr_LinhaBaseC: TStringGrid;
    Stgr_N7_02de09: TStringGrid;
    Stgr_N7_05de09: TStringGrid;
    Stgr_Todos19Numeros: TStringGrid;
    Stgr_N1_Aprovados: TStringGrid;
    Stgr_N15_AprovadosFase1: TStringGrid;
    Stgr_N7_05de10: TStringGrid;
    Stgr_N7_01de10: TStringGrid;
    Stgr_N7_02de06: TStringGrid;
    Stgr_N7_03de06: TStringGrid;
    BBT_Numero07: TBitBtn;
    BBT_Numero03b: TBitBtn;
    BBT_Numero03a: TBitBtn;
    BBT_Numero01e02: TBitBtn;
    Cb_Numero3: TComboBox;
    Label43: TLabel;
    cb_Limitador18Soma234: TComboBox;
    Label10: TLabel;
    Stgr_N7_12numeros: TStringGrid;
    stgr_N6_5Triplas_L1: TStringGrid;
    stgr_N6_5Triplas_L2: TStringGrid;
    stgr_N6_5Triplas_L3: TStringGrid;
    stgr_N6_5Triplas_L4: TStringGrid;
    stgr_N6_5Triplas_L5: TStringGrid;
    Panel3: TPanel;
    Label12: TLabel;
    cb_N6Modo1Qtd: TComboBox;
    rb_N6Modo1Qtd: TRadioButton;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    cb_N6Modo2Qtd: TComboBox;
    N6Modo2Qtd: TRadioButton;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    cb_N6Modo3Qtd: TComboBox;
    N6Modo3Qtd: TRadioButton;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    cb_Limitador8Linhas22: TComboBox;
    Label38: TLabel;
    stgr_N6Modo1a2: TStringGrid;
    stgr_N6Modo1b2: TStringGrid;
    stgr_N6Modo1b3: TStringGrid;
    stgr_N6Modo1c2: TStringGrid;
    stgr_N6Modo1c3: TStringGrid;
    stgr_N6Modo1d2: TStringGrid;
    stgr_N6Modo1d1: TStringGrid;
    stgr_N6Modo1e1: TStringGrid;
    stgr_N6Modo1e2: TStringGrid;
    Label39: TLabel;
    stgr_N6Modo1cj08: TStringGrid;
    stgr_N6Modo1cj09: TStringGrid;
    stgr_N6Modo1cj10: TStringGrid;
    stgr_N6Modo1cj11: TStringGrid;
    stgr_N6Modo1cj12: TStringGrid;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label44: TLabel;
    Label48: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    bbt_Numero6Modo1: TBitBtn;
    Label56: TLabel;
    Label57: TLabel;
    Label59: TLabel;
    Label61: TLabel;
    stgr_N6Modo2d2: TStringGrid;
    stgr_N6Modo2d1: TStringGrid;
    stgr_N6Modo2c2: TStringGrid;
    stgr_N6Modo2b1: TStringGrid;
    stgr_N6Modo2a3: TStringGrid;
    Label54: TLabel;
    stgr_N6Modo2e2: TStringGrid;
    stgr_N6Modo2e3: TStringGrid;
    stgr_N6Modo2cj10: TStringGrid;
    stgr_N6Modo2cj09: TStringGrid;
    Label62: TLabel;
    Label64: TLabel;
    stgr_N6Modo2cj11: TStringGrid;
    Label65: TLabel;
    cb_N6Modo1Forma: TComboBox;
    cb_N6Modo2Forma: TComboBox;
    Memo1: TMemo;
    stgr_N08Base1: TStringGrid;
    Label66: TLabel;
    stgr_N08Modo1_1: TStringGrid;
    stgr_N08Modo1_2: TStringGrid;
    stgr_N08Modo1_Resultado: TStringGrid;
    Label67: TLabel;
    bbt_Numero8: TBitBtn;
    stgr_N08Modo2_Resultado: TStringGrid;
    Label68: TLabel;
    cb_10Numeros05: TComboBox;
    Label69: TLabel;
    Label70: TLabel;
    Pgbr_EtaPa_01_08_m1: TProgressBar;
    Label71: TLabel;
    Label72: TLabel;
    cb_SubAmostragem: TComboBox;
    Pgbr_EtaPa_01_08_m2: TProgressBar;
    Label73: TLabel;
    Panel4: TPanel;
    Label11: TLabel;
    RB_AC13em19: TRadioButton;
    RB_AC15em19: TRadioButton;
    Label74: TLabel;
    bbt_ac15em19: TBitBtn;
    Label75: TLabel;
    RB_AC14em19: TRadioButton;
    bbt_ac14em19: TBitBtn;
    Stgr_N14de19: TStringGrid;
    Label76: TLabel;
    RB_AC14em19_6i: TRadioButton;
    RB_AC15em19_6i: TRadioButton;
    Label77: TLabel;
    Stgr_Base19: TStringGrid;
    Stgr_N09Base22numeros: TStringGrid;
    Pgbr_EtaPa_01_09: TProgressBar;
    Label78: TLabel;
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
    procedure BBT_Numero01e02Click(Sender: TObject);
    procedure BBT_Numero03bClick(Sender: TObject);
    procedure BBT_Numero03aClick(Sender: TObject);
    procedure BBT_Numero04Click(Sender: TObject);
    procedure Bbt_N4bClick(Sender: TObject);
    procedure Bbt_N4cClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure bbt_TriplasDuplasIsoladosClick(Sender: TObject);
    procedure BBT_Numero07Click(Sender: TObject);
    procedure bbt_Numero6Modo1Click(Sender: TObject);
    procedure bbt_Numero8Click(Sender: TObject);
    procedure bbt_ac15em19Click(Sender: TObject);
    procedure RB_AC15em19Click(Sender: TObject);
    procedure RB_AC13em19Click(Sender: TObject);
    procedure RB_AC14em19Click(Sender: TObject);
    procedure bbt_ac14em19Click(Sender: TObject);
    procedure Bbt_PreencherPadraoClick(Sender: TObject);
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
    Procedure GerarBlocoNotas1(vc_Nome_Tabela, vcTitulo, vcSubTitulo, vsQuery1, vsQuery2: String);
    procedure BBT_Numero04TriplasEDuplas;
    procedure BBT_Numero04Triplas_Duplas;
    procedure Ordenar_N4_7Numeros(viLinhas01 : integer);
    procedure Setvi_N4Parte(const Value: Integer);
    function Montando_Stgr_N4_7Numeros(viComb01, viLinhas01: Integer; viCombTriplas01: Integer; viCombDuplas101: Integer; viCombDuplas201: Integer):boolean;
    function Montando_Stgr_N4_7NumerosF(viComb01, viLinhas01: Integer; viCombTriplas01: Integer; viCombDuplas101: Integer; viCombDuplas201: Integer) : boolean;
    Procedure AnaliseComb_05e01em10();
    Procedure AnaliseComb_05e02em09();
    Function AnaliseComb_02e03em06(viLinhas01, viBaseComb2, viComb1_01, viComb1_02, viComb1_03, viComb1_04, viComb1_05: integer; vcSobras : string) : integer;
    Function Condicao7numerosTriplasDuplas(viLinhas01: Integer) : boolean;
    function Limitador10NrsTriplasDuplasIsolados(viLinhas01: Integer) : boolean;
    procedure Montado13FlagsNos19Numeros(viComb01: Integer);
    procedure Montado07FlagsNos19Numeros(viComb01: Integer);
    procedure Todos19NumerosFlagsF();
    Function ConfirmaQtdParesDe13Numeros(viLinhas01: Integer): boolean;
    procedure Ac15em19(viModo : Integer);
    procedure Ac14em19(viModo : Integer);
    Function ConfirmaQtdParesDe14Numeros(viLinhas01, viModo: Integer) :boolean;
    Function ConfirmaQtdParesDe15Numeros(viLinhas01, viModo: Integer): boolean;
    Procedure GravarP1();
    Procedure CarregarP1();
    Procedure GravarP7();
    Procedure CarregarP7(vcSomenteComecadosComUm : string);
    Procedure GravarP4_FiltroTriplasDuplas();
    FUNCTION Ordenar12P7 (viLinhas01, viLinhas02: INTEGER) : string;
    Procedure AprovadosFase1();
    procedure Etapa6Modo1();
    procedure N6Modo1FormaSimples();
    procedure Etapa6Modo2();
    Function N6Modo1Montando(viLinhas: Integer; vsModo: String): smallint;
    procedure Limitador18Soma234();
    procedure Filtrar10Numeros05_1;
    procedure Filtrar10Numeros05_2;
    procedure Etapa8Preparar();
    procedure Etapa8Modo1();
    procedure Etapa8Modo2();
    procedure Limitador8Linhas22();
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
    Try
        DM1.IBQ_Combinacoes.SQL.Clear;
        DM1.IBQ_Combinacoes.SQL.Add('CREATE TABLE GERADOR_1DE19_1DE06_P1 (NUMERO VARCHAR(8) COLLATE PT_BR);')  ;
        DM1.IBQ_Combinacoes.ExecSQL;
        DM1.IBQ_Combinacoes.SQL.Clear;
        DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
        DM1.IBQ_Combinacoes.ExecSQL;
        DM1.IBQ_Combinacoes.Transaction.StartTransaction;
        DM1.IBQ_Combinacoes.Transaction.Commit;
        DM1.IBQ_Combinacoes.Transaction.StartTransaction;
    Except
        DM1.IBQ_Combinacoes.SQL.Clear;
        DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_1DE19_1DE06_P1;')  ;
        DM1.IBQ_Combinacoes.ExecSQL;
        DM1.IBQ_Combinacoes.SQL.Clear;
        DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
        DM1.IBQ_Combinacoes.ExecSQL ;
        DM1.IBQ_Combinacoes.Transaction.StartTransaction;
        DM1.IBQ_Combinacoes.Transaction.Commit;
        DM1.IBQ_Combinacoes.Transaction.StartTransaction;
    End;

    Try
//        try
//            DM1.IBQ_Combinacoes.SQL.Clear;
//            DM1.IBQ_Combinacoes.SQL.Add('Drop TABLE GERADOR_1DE19_12n_P7;')  ;
//            DM1.IBQ_Combinacoes.ExecSQL;
//            DM1.IBQ_Combinacoes.SQL.Clear;
//            DM1.IBQ_Combinacoes.SQL.Clear;
//            DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
//            DM1.IBQ_Combinacoes.ExecSQL;
//        finally
            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add('CREATE TABLE GERADOR_1DE19_12n_P7 (NUMERO VARCHAR(36) COLLATE PT_BR, INICIAL VARCHAR(3) COLLATE PT_BR );')  ;
            DM1.IBQ_Combinacoes.ExecSQL;
            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
            DM1.IBQ_Combinacoes.ExecSQL;
            DM1.IBQ_Combinacoes.Transaction.StartTransaction;
            DM1.IBQ_Combinacoes.Transaction.Commit;
            DM1.IBQ_Combinacoes.Transaction.StartTransaction;
//        end;
    Except
        DM1.IBQ_Combinacoes.SQL.Clear;
        DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_1DE19_12n_P7;')  ;
        DM1.IBQ_Combinacoes.ExecSQL;
        DM1.IBQ_Combinacoes.SQL.Clear;
        DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
        DM1.IBQ_Combinacoes.ExecSQL ;
        DM1.IBQ_Combinacoes.Transaction.StartTransaction;
        DM1.IBQ_Combinacoes.Transaction.Commit;
        DM1.IBQ_Combinacoes.Transaction.StartTransaction;
    End;
    Try
       { try
            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add('Drop TABLE GERADOR_RESULT_1de19_TDI;')  ;
            DM1.IBQ_Combinacoes.ExecSQL;
            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
            DM1.IBQ_Combinacoes.ExecSQL;
        finally }
            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add('CREATE TABLE GERADOR_RESULT_1de19_TDI(DADOS VARCHAR(46) COLLATE PT_BR, DADOS_NS VARCHAR(36) COLLATE PT_BR, FLAG1 VARCHAR(7) COLLATE PT_BR, FLAG8 VARCHAR(7), FLAG81 VARCHAR(7), FLAG6 VARCHAR(7), FLAG09 VARCHAR(7)  );')  ;
            DM1.IBQ_Combinacoes.ExecSQL;
            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
            DM1.IBQ_Combinacoes.ExecSQL;
            DM1.IBQ_Combinacoes.Transaction.StartTransaction;
            DM1.IBQ_Combinacoes.Transaction.Commit;
            DM1.IBQ_Combinacoes.Transaction.StartTransaction;
       // end;
    Except
        DM1.IBQ_Combinacoes.SQL.Clear;
        DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_1de19_TDI;')  ;
        DM1.IBQ_Combinacoes.ExecSQL;
        DM1.IBQ_Combinacoes.SQL.Clear;
        DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
        DM1.IBQ_Combinacoes.ExecSQL ;
        DM1.IBQ_Combinacoes.Transaction.StartTransaction;
        DM1.IBQ_Combinacoes.Transaction.Commit;
        DM1.IBQ_Combinacoes.Transaction.StartTransaction;
    End;





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



procedure T_F_Gerador_1LinhDe19e1de6.Bbt_PreencherPadraoClick(Sender: TObject);
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

    stgr_N6_5Triplas_L1.Cells[01,viContador1] := Stgr_Base19.Cells[02,viContador1];
    stgr_N6_5Triplas_L1.Cells[02,viContador1] := Stgr_Base19.Cells[03,viContador1];
    stgr_N6_5Triplas_L1.Cells[03,viContador1] := Stgr_Base19.Cells[18,viContador1];
    stgr_N6_5Triplas_L2.Cells[01,viContador1] := Stgr_Base19.Cells[04,viContador1];
    stgr_N6_5Triplas_L2.Cells[02,viContador1] := Stgr_Base19.Cells[19,viContador1];
    stgr_N6_5Triplas_L2.Cells[03,viContador1] := Stgr_Base19.Cells[20,viContador1];
    stgr_N6_5Triplas_L3.Cells[01,viContador1] := Stgr_Base19.Cells[05,viContador1];
    stgr_N6_5Triplas_L3.Cells[02,viContador1] := Stgr_Base19.Cells[12,viContador1];
    stgr_N6_5Triplas_L3.Cells[03,viContador1] := Stgr_Base19.Cells[15,viContador1];
    stgr_N6_5Triplas_L4.Cells[01,viContador1] := Stgr_Base19.Cells[06,viContador1];
    stgr_N6_5Triplas_L4.Cells[02,viContador1] := Stgr_Base19.Cells[11,viContador1];
    stgr_N6_5Triplas_L4.Cells[03,viContador1] := Stgr_Base19.Cells[16,viContador1];
    stgr_N6_5Triplas_L5.Cells[01,viContador1] := Stgr_Base19.Cells[07,viContador1];
    stgr_N6_5Triplas_L5.Cells[02,viContador1] := Stgr_Base19.Cells[10,viContador1];
    stgr_N6_5Triplas_L5.Cells[03,viContador1] := Stgr_Base19.Cells[17,viContador1];
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

    stgr_N08Base1.Cells[00,1] := '01';
    stgr_N08Base1.Cells[01,1] := '01';
    stgr_N08Base1.Cells[02,1] := '07';
    stgr_N08Base1.Cells[03,1] := '10';
    stgr_N08Base1.Cells[04,1] := '19';
    stgr_N08Base1.Cells[05,1] := '22';
        stgr_N08Base1.Cells[00,2] := '02';
        stgr_N08Base1.Cells[01,2] := '01';
        stgr_N08Base1.Cells[02,2] := '09';
        stgr_N08Base1.Cells[03,2] := '10';
        stgr_N08Base1.Cells[04,2] := '14';
        stgr_N08Base1.Cells[05,2] := '24';
    stgr_N08Base1.Cells[00,3] := '03';
    stgr_N08Base1.Cells[01,3] := '02';
    stgr_N08Base1.Cells[02,3] := '03';
    stgr_N08Base1.Cells[03,3] := '16';
    stgr_N08Base1.Cells[04,3] := '18';
    stgr_N08Base1.Cells[05,3] := '21';
        stgr_N08Base1.Cells[00,4] := '04';
        stgr_N08Base1.Cells[01,4] := '02';
        stgr_N08Base1.Cells[02,4] := '11';
        stgr_N08Base1.Cells[03,4] := '15';
        stgr_N08Base1.Cells[04,4] := '19';
        stgr_N08Base1.Cells[05,4] := '25';

    stgr_N08Base1.Cells[00,5] := '05';
    stgr_N08Base1.Cells[01,5] := '03';
    stgr_N08Base1.Cells[02,5] := '04';
    stgr_N08Base1.Cells[03,5] := '12';
    stgr_N08Base1.Cells[04,5] := '20';
    stgr_N08Base1.Cells[05,5] := '25';
        stgr_N08Base1.Cells[00,6] := '06';
        stgr_N08Base1.Cells[01,6] := '04';
        stgr_N08Base1.Cells[02,6] := '06';
        stgr_N08Base1.Cells[03,6] := '11';
        stgr_N08Base1.Cells[04,6] := '12';
        stgr_N08Base1.Cells[05,6] := '15';
    stgr_N08Base1.Cells[00,7] := '07';
    stgr_N08Base1.Cells[01,7] := '05';
    stgr_N08Base1.Cells[02,7] := '08';
    stgr_N08Base1.Cells[03,7] := '13';
    stgr_N08Base1.Cells[04,7] := '17';
    stgr_N08Base1.Cells[05,7] := '23';
        stgr_N08Base1.Cells[00,8] := '08';
        stgr_N08Base1.Cells[01,8] := '06';
        stgr_N08Base1.Cells[02,8] := '16';
        stgr_N08Base1.Cells[03,8] := '18';
        stgr_N08Base1.Cells[04,8] := '21';
        stgr_N08Base1.Cells[05,8] := '25';
    stgr_N08Base1.Cells[00,9] := '09';
    stgr_N08Base1.Cells[01,9] := '07';
    stgr_N08Base1.Cells[02,9] := '09';
    stgr_N08Base1.Cells[03,9] := '14';
    stgr_N08Base1.Cells[04,9] := '22';
    stgr_N08Base1.Cells[05,9] := '24';
        stgr_N08Base1.Cells[00,10] := '10';
        stgr_N08Base1.Cells[01,10] := '09';
        stgr_N08Base1.Cells[02,10] := '14';
        stgr_N08Base1.Cells[03,10] := '19';
        stgr_N08Base1.Cells[04,10] := '20';
        stgr_N08Base1.Cells[05,10] := '24';
    stgr_N08Base1.RowCount :=11;

      Stgr_N09Base22numeros.Cells[00,01] := '1';
    Stgr_N09Base22numeros.Cells[01,01] := '02';
    Stgr_N09Base22numeros.Cells[02,01] := '03';
    Stgr_N09Base22numeros.Cells[03,01] := '04';
    Stgr_N09Base22numeros.Cells[04,01] := '05';
    Stgr_N09Base22numeros.Cells[05,01] := '06';
    Stgr_N09Base22numeros.Cells[06,01] := '07';
    Stgr_N09Base22numeros.Cells[07,01] := '08';
    Stgr_N09Base22numeros.Cells[08,01] := '09';
    Stgr_N09Base22numeros.Cells[09,01] := '10';
    Stgr_N09Base22numeros.Cells[10,01] := '11';
    Stgr_N09Base22numeros.Cells[11,01] := '12';
    Stgr_N09Base22numeros.Cells[12,01] := '13';
    Stgr_N09Base22numeros.Cells[13,01] := '15';
    Stgr_N09Base22numeros.Cells[14,01] := '16';
    Stgr_N09Base22numeros.Cells[15,01] := '17';
    Stgr_N09Base22numeros.Cells[16,01] := '18';
    Stgr_N09Base22numeros.Cells[17,01] := '19';
    Stgr_N09Base22numeros.Cells[18,01] := '20';
    Stgr_N09Base22numeros.Cells[19,01] := '21';
    Stgr_N09Base22numeros.Cells[20,01] := '22';
    Stgr_N09Base22numeros.Cells[21,01] := '23';
    Stgr_N09Base22numeros.Cells[22,01] := '24';
      Stgr_N09Base22numeros.Cells[00,02] := '2';
    Stgr_N09Base22numeros.Cells[01,02] := '01';
    Stgr_N09Base22numeros.Cells[02,02] := '03';
    Stgr_N09Base22numeros.Cells[03,02] := '04';
    Stgr_N09Base22numeros.Cells[04,02] := '05';
    Stgr_N09Base22numeros.Cells[05,02] := '06';
    Stgr_N09Base22numeros.Cells[06,02] := '07';
    Stgr_N09Base22numeros.Cells[07,02] := '08';
    Stgr_N09Base22numeros.Cells[08,02] := '09';
    Stgr_N09Base22numeros.Cells[09,02] := '10';
    Stgr_N09Base22numeros.Cells[10,02] := '11';
    Stgr_N09Base22numeros.Cells[11,02] := '12';
    Stgr_N09Base22numeros.Cells[12,02] := '14';
    Stgr_N09Base22numeros.Cells[13,02] := '15';
    Stgr_N09Base22numeros.Cells[14,02] := '16';
    Stgr_N09Base22numeros.Cells[15,02] := '17';
    Stgr_N09Base22numeros.Cells[16,02] := '18';
    Stgr_N09Base22numeros.Cells[17,02] := '19';
    Stgr_N09Base22numeros.Cells[18,02] := '20';
    Stgr_N09Base22numeros.Cells[19,02] := '21';
    Stgr_N09Base22numeros.Cells[20,02] := '22';
    Stgr_N09Base22numeros.Cells[21,02] := '23';
    Stgr_N09Base22numeros.Cells[22,02] := '25';
      Stgr_N09Base22numeros.Cells[00,03] := '3';
    Stgr_N09Base22numeros.Cells[01,03] := '01';
    Stgr_N09Base22numeros.Cells[02,03] := '02';
    Stgr_N09Base22numeros.Cells[03,03] := '04';
    Stgr_N09Base22numeros.Cells[04,03] := '05';
    Stgr_N09Base22numeros.Cells[05,03] := '06';
    Stgr_N09Base22numeros.Cells[06,03] := '07';
    Stgr_N09Base22numeros.Cells[07,03] := '08';
    Stgr_N09Base22numeros.Cells[08,03] := '09';
    Stgr_N09Base22numeros.Cells[09,03] := '10';
    Stgr_N09Base22numeros.Cells[10,03] := '11';
    Stgr_N09Base22numeros.Cells[11,03] := '12';
    Stgr_N09Base22numeros.Cells[12,03] := '13';
    Stgr_N09Base22numeros.Cells[13,03] := '14';
    Stgr_N09Base22numeros.Cells[14,03] := '15';
    Stgr_N09Base22numeros.Cells[15,03] := '17';
    Stgr_N09Base22numeros.Cells[16,03] := '18';
    Stgr_N09Base22numeros.Cells[17,03] := '19';
    Stgr_N09Base22numeros.Cells[18,03] := '21';
    Stgr_N09Base22numeros.Cells[19,03] := '22';
    Stgr_N09Base22numeros.Cells[20,03] := '23';
    Stgr_N09Base22numeros.Cells[21,03] := '24';
    Stgr_N09Base22numeros.Cells[22,03] := '25';
      Stgr_N09Base22numeros.Cells[00,04] := '4';
    Stgr_N09Base22numeros.Cells[01,04] := '01';
    Stgr_N09Base22numeros.Cells[02,04] := '02';
    Stgr_N09Base22numeros.Cells[03,04] := '03';
    Stgr_N09Base22numeros.Cells[04,04] := '05';
    Stgr_N09Base22numeros.Cells[05,04] := '06';
    Stgr_N09Base22numeros.Cells[06,04] := '07';
    Stgr_N09Base22numeros.Cells[07,04] := '08';
    Stgr_N09Base22numeros.Cells[08,04] := '09';
    Stgr_N09Base22numeros.Cells[09,04] := '10';
    Stgr_N09Base22numeros.Cells[10,04] := '11';
    Stgr_N09Base22numeros.Cells[11,04] := '13';
    Stgr_N09Base22numeros.Cells[12,04] := '14';
    Stgr_N09Base22numeros.Cells[13,04] := '15';
    Stgr_N09Base22numeros.Cells[14,04] := '16';
    Stgr_N09Base22numeros.Cells[15,04] := '17';
    Stgr_N09Base22numeros.Cells[16,04] := '18';
    Stgr_N09Base22numeros.Cells[17,04] := '19';
    Stgr_N09Base22numeros.Cells[18,04] := '20';
    Stgr_N09Base22numeros.Cells[19,04] := '21';
    Stgr_N09Base22numeros.Cells[20,04] := '22';
    Stgr_N09Base22numeros.Cells[21,04] := '24';
    Stgr_N09Base22numeros.Cells[22,04] := '25';
      Stgr_N09Base22numeros.Cells[00,05] := '5';
    Stgr_N09Base22numeros.Cells[01,05] := '01';
    Stgr_N09Base22numeros.Cells[02,05] := '02';
    Stgr_N09Base22numeros.Cells[03,05] := '03';
    Stgr_N09Base22numeros.Cells[04,05] := '04';
    Stgr_N09Base22numeros.Cells[05,05] := '06';
    Stgr_N09Base22numeros.Cells[06,05] := '07';
    Stgr_N09Base22numeros.Cells[07,05] := '08';
    Stgr_N09Base22numeros.Cells[08,05] := '09';
    Stgr_N09Base22numeros.Cells[09,05] := '10';
    Stgr_N09Base22numeros.Cells[10,05] := '11';
    Stgr_N09Base22numeros.Cells[11,05] := '12';
    Stgr_N09Base22numeros.Cells[12,05] := '13';
    Stgr_N09Base22numeros.Cells[13,05] := '14';
    Stgr_N09Base22numeros.Cells[14,05] := '15';
    Stgr_N09Base22numeros.Cells[15,05] := '16';
    Stgr_N09Base22numeros.Cells[16,05] := '19';
    Stgr_N09Base22numeros.Cells[17,05] := '20';
    Stgr_N09Base22numeros.Cells[18,05] := '21';
    Stgr_N09Base22numeros.Cells[19,05] := '22';
    Stgr_N09Base22numeros.Cells[20,05] := '23';
    Stgr_N09Base22numeros.Cells[21,05] := '24';
    Stgr_N09Base22numeros.Cells[22,05] := '25';
      Stgr_N09Base22numeros.Cells[00,06] := '6';
    Stgr_N09Base22numeros.Cells[01,06] := '01';
    Stgr_N09Base22numeros.Cells[02,06] := '02';
    Stgr_N09Base22numeros.Cells[03,06] := '03';
    Stgr_N09Base22numeros.Cells[04,06] := '04';
    Stgr_N09Base22numeros.Cells[05,06] := '05';
    Stgr_N09Base22numeros.Cells[06,06] := '07';
    Stgr_N09Base22numeros.Cells[07,06] := '08';
    Stgr_N09Base22numeros.Cells[08,06] := '09';
    Stgr_N09Base22numeros.Cells[09,06] := '10';
    Stgr_N09Base22numeros.Cells[10,06] := '11';
    Stgr_N09Base22numeros.Cells[11,06] := '12';
    Stgr_N09Base22numeros.Cells[12,06] := '13';
    Stgr_N09Base22numeros.Cells[13,06] := '14';
    Stgr_N09Base22numeros.Cells[14,06] := '16';
    Stgr_N09Base22numeros.Cells[15,06] := '17';
    Stgr_N09Base22numeros.Cells[16,06] := '18';
    Stgr_N09Base22numeros.Cells[17,06] := '20';
    Stgr_N09Base22numeros.Cells[18,06] := '21';
    Stgr_N09Base22numeros.Cells[19,06] := '22';
    Stgr_N09Base22numeros.Cells[20,06] := '23';
    Stgr_N09Base22numeros.Cells[21,06] := '24';
    Stgr_N09Base22numeros.Cells[22,06] := '25';
      Stgr_N09Base22numeros.Cells[00,07] := '7';
    Stgr_N09Base22numeros.Cells[01,07] := '01';
    Stgr_N09Base22numeros.Cells[02,07] := '02';
    Stgr_N09Base22numeros.Cells[03,07] := '03';
    Stgr_N09Base22numeros.Cells[04,07] := '04';
    Stgr_N09Base22numeros.Cells[05,07] := '05';
    Stgr_N09Base22numeros.Cells[06,07] := '06';
    Stgr_N09Base22numeros.Cells[07,07] := '08';
    Stgr_N09Base22numeros.Cells[08,07] := '09';
    Stgr_N09Base22numeros.Cells[09,07] := '10';
    Stgr_N09Base22numeros.Cells[10,07] := '12';
    Stgr_N09Base22numeros.Cells[11,07] := '13';
    Stgr_N09Base22numeros.Cells[12,07] := '14';
    Stgr_N09Base22numeros.Cells[13,07] := '15';
    Stgr_N09Base22numeros.Cells[14,07] := '16';
    Stgr_N09Base22numeros.Cells[15,07] := '17';
    Stgr_N09Base22numeros.Cells[16,07] := '18';
    Stgr_N09Base22numeros.Cells[17,07] := '19';
    Stgr_N09Base22numeros.Cells[18,07] := '20';
    Stgr_N09Base22numeros.Cells[19,07] := '21';
    Stgr_N09Base22numeros.Cells[20,07] := '23';
    Stgr_N09Base22numeros.Cells[21,07] := '24';
    Stgr_N09Base22numeros.Cells[22,07] := '25';

      Stgr_N09Base22numeros.Cells[00,08] := '8';
    Stgr_N09Base22numeros.Cells[01,08] := '01';
    Stgr_N09Base22numeros.Cells[02,08] := '02';
    Stgr_N09Base22numeros.Cells[03,08] := '03';
    Stgr_N09Base22numeros.Cells[04,08] := '04';
    Stgr_N09Base22numeros.Cells[05,08] := '05';
    Stgr_N09Base22numeros.Cells[06,08] := '06';
    Stgr_N09Base22numeros.Cells[07,08] := '07';
    Stgr_N09Base22numeros.Cells[08,08] := '08';
    Stgr_N09Base22numeros.Cells[09,08] := '11';
    Stgr_N09Base22numeros.Cells[10,08] := '12';
    Stgr_N09Base22numeros.Cells[11,08] := '13';
    Stgr_N09Base22numeros.Cells[12,08] := '14';
    Stgr_N09Base22numeros.Cells[13,08] := '15';
    Stgr_N09Base22numeros.Cells[14,08] := '16';
    Stgr_N09Base22numeros.Cells[15,08] := '17';
    Stgr_N09Base22numeros.Cells[16,08] := '18';
    Stgr_N09Base22numeros.Cells[17,08] := '19';
    Stgr_N09Base22numeros.Cells[18,08] := '20';
    Stgr_N09Base22numeros.Cells[19,08] := '22';
    Stgr_N09Base22numeros.Cells[20,08] := '23';
    Stgr_N09Base22numeros.Cells[21,08] := '24';
    Stgr_N09Base22numeros.Cells[22,08] := '25';
end;



Procedure T_F_Gerador_1LinhDe19e1de6.Bbt_PrepararMenuClick(Sender: TObject);
begin
     AcertaLarguraAlturaGrids();
     Pa_Preparar.Visible := TRUE;
     Pa_Preparar.Enabled := TRUE;
     Pa_Preparar.Top  := 205;
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

     BBT_Numero07.Click;
     CarregarP7('01');
     bbt_Numero6Modo1.Click;
     bbt_Numero8.Click;

     BBT_Numero03a.Click;
     BBT_Numero03b.Click;
     BBT_Numero01e02.Click;

     SHOWMESSAGE('OK');
end;





Procedure T_F_Gerador_1LinhDe19e1de6.Bbt_GerarMenuClick(Sender: TObject);
begin
     Pa_Gerar.Visible := TRUE;
     Pa_Gerar.Enabled := TRUE;
     Pa_Gerar.Top  := 60;
     Pa_Gerar.Left := 840;
     Pa_Gerar.Repaint;
    La_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
end;


Procedure T_F_Gerador_1LinhDe19e1de6.AcertaLarguraAlturaGrids();
begin
    //Stgr_N1_13de19.RowCount := 2;
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
    Stgr_N7_05de09.ColWidths[0] := 50;
    Stgr_N7_05de09.ColWidths[1] := 25;
    Stgr_N7_05de09.Height := Scbx_dados.Height - 25 - Stgr_N7_05de09.Top;
    Stgr_N7_02de09.ColWidths[0] := 50;
    Stgr_N7_02de09.ColWidths[1] := 25;
    Stgr_N7_02de09.Height := Scbx_dados.Height - 25 - Stgr_N7_05de09.Top;
    Stgr_N7_05de10.ColWidths[0] := 50;
    Stgr_N7_05de10.ColWidths[1] := 25;
    Stgr_N7_05de10.Height := Scbx_dados.Height - 25 - Stgr_N7_05de10.Top;
    Stgr_N7_01de10.ColWidths[0] := 50;
    Stgr_N7_01de10.ColWidths[1] := 25;
    Stgr_N7_01de10.Height := Scbx_dados.Height - 25 - Stgr_N7_05de10.Top;
    Stgr_N7_02de06.ColWidths[0] := 50;
    Stgr_N7_02de06.ColWidths[1] := 25;
    Stgr_N7_02de06.Height := Scbx_dados.Height - 25 - Stgr_N7_02de06.Top;
    Stgr_N7_03de06.ColWidths[0] := 50;
    Stgr_N7_03de06.ColWidths[1] := 25;
    Stgr_N7_03de06.Height := Scbx_dados.Height - 25 - Stgr_N7_02de06.Top;
    Stgr_N7_12numeros.ColWidths[0] := 45;
    Stgr_N7_12numeros.Height := Scbx_dados.Height - 25 - Stgr_N7_02de06.Top;
    Stgr_N1_Aprovados.ColWidths[0] := 45;
    Stgr_N1_Aprovados.ColWidths[1] := 45;
    Stgr_N1_Aprovados.Height := Scbx_dados.Height - 25 - Stgr_N1_Aprovados.Top;
    Stgr_N15_AprovadosFase1.ColWidths[0] := 55;
    Stgr_N15_AprovadosFase1.ColWidths[1] := 45;
    Stgr_N15_AprovadosFase1.Height := Scbx_dados.Height - 25 - Stgr_N15_AprovadosFase1.Top;
    Stgr_N15_AprovadosFase1.ColWidths[17] := 33;
    Stgr_N15_AprovadosFase1.ColWidths[18] := 33;
    Stgr_N15_AprovadosFase1.ColWidths[19] := 33;
    Stgr_N15_AprovadosFase1.ColWidths[20] := 33;
    stgr_N6_5Triplas_L1.Height := 55;
    stgr_N6_5Triplas_L2.Height := 55;
    stgr_N6_5Triplas_L3.Height := 55;
    stgr_N6_5Triplas_L4.Height := 55;
    stgr_N6_5Triplas_L5.Height := 55;

    stgr_N6Modo1a2.Height  := Scbx_dados.Height - 25 - stgr_N6Modo1a2.Top;
    stgr_N6Modo1b2.Height  := Scbx_dados.Height - 25 - stgr_N6Modo1a2.Top;
    stgr_N6Modo1b3.Height  := Scbx_dados.Height - 25 - stgr_N6Modo1a2.Top;
    stgr_N6Modo1c2.Height  := Scbx_dados.Height - 25 - stgr_N6Modo1a2.Top;
    stgr_N6Modo1c3.Height  := Scbx_dados.Height - 25 - stgr_N6Modo1a2.Top;
    stgr_N6Modo1d1.Height  := Scbx_dados.Height - 25 - stgr_N6Modo1a2.Top;
    stgr_N6Modo1d2.Height  := Scbx_dados.Height - 25 - stgr_N6Modo1a2.Top;
    stgr_N6Modo1e1.Height  := Scbx_dados.Height - 25 - stgr_N6Modo1a2.Top;
    stgr_N6Modo1e2.Height  := Scbx_dados.Height - 25 - stgr_N6Modo1a2.Top;
    stgr_N6Modo1cj08.ColWidths[0] := 50;
    stgr_N6Modo1cj08.Height  := Scbx_dados.Height - 25 - stgr_N6Modo1cj08.Top;
    stgr_N6Modo1cj09.ColWidths[0] := 55;
    stgr_N6Modo1cj09.Height  := Scbx_dados.Height - 25 - stgr_N6Modo1cj08.Top;
    stgr_N6Modo1cj10.ColWidths[0] := 50;
    stgr_N6Modo1cj10.Height  := Scbx_dados.Height - 25 - stgr_N6Modo1cj08.Top;
    stgr_N6Modo1cj11.ColWidths[0] := 50;
    stgr_N6Modo1cj11.Height  := Scbx_dados.Height - 25 - stgr_N6Modo1cj08.Top;
    stgr_N6Modo1cj12.ColWidths[0] := 50;
    stgr_N6Modo1cj12.Height  := Scbx_dados.Height - 25 - stgr_N6Modo1cj08.Top;

    stgr_N08Modo1_1.Height  := Scbx_dados.Height - 25 - stgr_N08Modo1_1.Top;
    stgr_N08Modo1_2.Height  := Scbx_dados.Height - 25 - stgr_N08Modo1_1.Top;
    stgr_N08Modo1_Resultado.ColWidths[0] := 40;
    stgr_N08Modo1_Resultado.Height  := Scbx_dados.Height - 25 - stgr_N08Modo1_1.Top;
    stgr_N08Modo2_Resultado.ColWidths[0] := 40;
    stgr_N08Modo2_Resultado.Height  := Scbx_dados.Height - 25 - stgr_N08Modo1_1.Top;
    Stgr_N14de19.Height  := Scbx_dados.Height - 25 - Stgr_N14de19.Top;
    Stgr_N14de19.ColWidths[0] := 45;
    Stgr_N14de19.ColWidths[1] := 30;
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
  if (viContarCelulas = 6) or (viContarCelulas=4) or (viContarCelulas=8) or (viContarCelulas=9) or (viContarCelulas=3) then
  begin
    result := true;
    exit;
  end;
  result := false;
end;


Function T_F_Gerador_1LinhDe19e1de6.ConfirmaQtdParesDe15Numeros(viLinhas01, viModo: Integer) :boolean;
var
 viContar: Integer;
 viContarCelulas: Integer;
begin
  viContarCelulas := 0;
  for viContar := 2 to 16 do
  begin
    if (Stgr_N15_AprovadosFase1.Cells[viContar, viLinhas01].ToInteger mod 2) = 0 then
      viContarCelulas := viContarCelulas + 1;
  end;
  if viModo=1 then
      if (viContarCelulas = 6) then
      begin
        result := true;
        exit;
      end;
  if viModo=2 then
      if (viContarCelulas = 6) OR (viContarCelulas=8) OR (viContarCelulas=4) then
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
    else if (Cb_Numero3.ItemIndex)=1 then
        viSomaInicial := 77
    else
        viSomaInicial := 76;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    if (Cb_Numero3.ItemIndex)=0 then
        viSomaFinal := 78
    else if (Cb_Numero3.ItemIndex)=0 then
        viSomaFinal := 79
    else
        viSomaFinal := 80;
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



Procedure T_F_Gerador_1LinhDe19e1de6.AnaliseComb_05e01em10();
var
     viLinhas01, viBaseComb : Integer;
     viComb1_01, viComb1_02, viComb1_03, viComb1_04, viComb1_05: Integer;
     viComb2_01, viComb2_02, viContarCelulas, viContar : integer;
     vacSobras: array [1..5] of String;
begin
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES  ||||
    // ||||=============================||||
    // =====================================
    Scbx_dados.HorzScrollBar.Position := 10540;
    Pa_Resultado.Repaint;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    viLinhas01 := 1;
    Stgr_N7_05de10.RowCount := 2;
    Stgr_N7_01de10.RowCount := 2;
    Stgr_N7_05de10.Repaint;
    Stgr_N7_01de10.Repaint;
    Stgr_N7_02de06.RowCount := 2;
    Stgr_N7_03de06.RowCount := 2;
    Stgr_N7_02de06.Repaint;
    Stgr_N7_03de06.Repaint;
//    viCombinacoes1 := 1;
    try
        for viBaseComb := 1 TO (Stgr_LinhaBaseB.RowCount-1) DO
        BEGIN
            for viComb1_01 := 2 TO 07 DO
            BEGIN
                for viComb1_02 := viComb1_01 + 1 TO 08 DO
                BEGIN
                    for viComb1_03 := viComb1_02 + 1 TO 09 DO
                    BEGIN
                        for viComb1_04 := viComb1_03 + 1 TO 10 DO
                        BEGIN
                            for viComb1_05 := viComb1_04 + 1 TO 11 DO
                            BEGIN
                                Stgr_N7_05de10.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                        Stgr_N7_05de10.Cells[01,viLinhas01] := '+' + INTtoSTR( viBaseComb ) + '' ;
                                        Stgr_N7_05de10.Cells[02,viLinhas01] := Stgr_LinhaBaseB.Cells[viComb1_01,viBaseComb] ;
                                        Stgr_N7_05de10.Cells[03,viLinhas01] := Stgr_LinhaBaseB.Cells[viComb1_02,viBaseComb] ;
                                        Stgr_N7_05de10.Cells[04,viLinhas01] := Stgr_LinhaBaseB.Cells[viComb1_03,viBaseComb] ;
                                        Stgr_N7_05de10.Cells[05,viLinhas01] := Stgr_LinhaBaseB.Cells[viComb1_04,viBaseComb] ;
                                        Stgr_N7_05de10.Cells[06,viLinhas01] := Stgr_LinhaBaseB.Cells[viComb1_05,viBaseComb] ;
                                FOR viContarCelulas :=1 TO 25 DO
                                begin
                                    Stgr_Todos_Numeros.Cells[viContarCelulas,1] :='F';
                                    Stgr_Todos_Numeros.Cells[viContarCelulas,2] :='F';
                                END; // FOR
                                // --------------------------
                                // -                        -
                                // -   Capturar as sobras   -
                                // -                        -
                                // --------------------------
                                FOR viContar := 2 TO 11 DO
                                BEGIN
                                    Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_LinhaBaseB.Cells[viContar,viBaseComb])) ,1]:='V';
                                END; // FOR
                                FOR viContar := 2 TO 06 DO
                                BEGIN
                                    Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_N7_05de10.Cells[viContar,viLinhas01] )) ,2]:='V';
                                END; // FOR
                                viContarCelulas := 1;
                                FOR viContar :=1 TO 25 DO
                                BEGIN
                                    IF (Stgr_Todos_Numeros.Cells[viContar,1]='V') and (Stgr_Todos_Numeros.Cells[viContar,2]='F')  THEN
                                    BEGIN
                                        vacSobras[viContarCelulas] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2);
                                        viContarCelulas := viContarCelulas +1;
                                    END; // IF (Stgr_Todos_Numeros
                                END; // FOR viContar
                                for viComb2_01 := 1 TO 05 DO
                                BEGIN
                                        Stgr_N7_05de10.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                        Stgr_N7_05de10.Cells[01,viLinhas01] := '+' + INTtoSTR( viBaseComb ) + '' ;
                                        Stgr_N7_05de10.Cells[02,viLinhas01] := Stgr_LinhaBaseB.Cells[viComb1_01,viBaseComb] ;
                                        Stgr_N7_05de10.Cells[03,viLinhas01] := Stgr_LinhaBaseB.Cells[viComb1_02,viBaseComb] ;
                                        Stgr_N7_05de10.Cells[04,viLinhas01] := Stgr_LinhaBaseB.Cells[viComb1_03,viBaseComb] ;
                                        Stgr_N7_05de10.Cells[05,viLinhas01] := Stgr_LinhaBaseB.Cells[viComb1_04,viBaseComb] ;
                                        Stgr_N7_05de10.Cells[06,viLinhas01] := Stgr_LinhaBaseB.Cells[viComb1_05,viBaseComb] ;

                                        Stgr_N7_01de10.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                        Stgr_N7_01de10.Cells[01,viLinhas01] := '+' + INTtoSTR( viBaseComb ) + '' ;
                                        Stgr_N7_01de10.Cells[02,viLinhas01] := vacSobras[viComb2_01] ;
                                        viLinhas01 := AnaliseComb_02e03em06(viLinhas01, viBaseComb, viComb1_01, viComb1_02, viComb1_03, viComb1_04, viComb1_05, vacSobras[viComb2_01]);
                                End;
                            END;
                        END;
                    END; //  for viComb1_03
                END; //  for viComb1_02
            END; //  for viComb1_01
            sleep(5);
        END; //  for viBaseComb
    finally
        Stgr_N7_05de10.RowCount := viLinhas01;
        Stgr_N7_05de10.Repaint;
        Stgr_N7_01de10.RowCount := viLinhas01;
        Stgr_N7_01de10.Repaint;
    end;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end;


Function T_F_Gerador_1LinhDe19e1de6.AnaliseComb_02e03em06(viLinhas01, viBaseComb2, viComb1_01, viComb1_02, viComb1_03, viComb1_04, viComb1_05: integer; vcSobras : string) : integer;
var
     viBaseComb : Integer;
     viComb3_01, viComb3_02: Integer;
     viComb4_01, viComb4_02, viComb4_03, viContarCelulas, viContar : integer;
     vacSobras3: array [1..4] of String;
begin
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES  ||||
    // ||||=============================||||
    // =====================================
    sleep(1);
    try
        for viBaseComb := 1 TO (Stgr_LinhaBaseC.RowCount-1) DO
        BEGIN
            for viComb3_01 := 2 TO 06 DO
            BEGIN
                for viComb3_02 := viComb3_01 + 1 TO 07 DO
                BEGIN
                    Stgr_N7_02de06.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                            Stgr_N7_02de06.Cells[01,viLinhas01] := '+' + INTtoSTR( viBaseComb ) + '' ;
                            Stgr_N7_02de06.Cells[02,viLinhas01] := Stgr_LinhaBaseC.Cells[viComb3_01,viBaseComb] ;
                            Stgr_N7_02de06.Cells[03,viLinhas01] := Stgr_LinhaBaseC.Cells[viComb3_02,viBaseComb] ;
                    FOR viContarCelulas :=1 TO 25 DO
                    begin
                        Stgr_Todos_Numeros.Cells[viContarCelulas,1] :='F';
                        Stgr_Todos_Numeros.Cells[viContarCelulas,2] :='F';
                    END; // FOR
                    // --------------------------
                    // -                        -
                    // -   Capturar as sobras   -
                    // -                        -
                    // --------------------------
                    FOR viContar := 2 TO 07 DO
                    BEGIN
                        Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_LinhaBaseC.Cells[viContar,viBaseComb])) ,1]:='V';
                    END; // FOR
                    FOR viContar := 2 TO 03 DO
                    BEGIN
                        Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_N7_02de06.Cells[viContar,viLinhas01] )) ,2]:='V';
                    END; // FOR
                    viContarCelulas := 1;
                    FOR viContar :=1 TO 25 DO
                    BEGIN
                        IF (Stgr_Todos_Numeros.Cells[viContar,1]='V') and (Stgr_Todos_Numeros.Cells[viContar,2]='F')  THEN
                        BEGIN
                            vacSobras3[viContarCelulas] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2);
                            viContarCelulas := viContarCelulas +1;
                        END; // IF (Stgr_Todos_Numeros
                    END; // FOR viContar
                    for viComb4_01 := 1 TO 02 DO
                    BEGIN
                        for viComb4_02 := viComb4_01+1 TO 03 DO
                        BEGIN
                            for viComb4_03 := viComb4_02+1 TO 04 DO
                            BEGIN

                                        Stgr_N7_05de10.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                        Stgr_N7_05de10.Cells[01,viLinhas01] := '+' + INTtoSTR( viBaseComb2 ) + '' ;
                                        Stgr_N7_05de10.Cells[02,viLinhas01] := Stgr_LinhaBaseB.Cells[viComb1_01,viBaseComb2] ;
                                        Stgr_N7_05de10.Cells[03,viLinhas01] := Stgr_LinhaBaseB.Cells[viComb1_02,viBaseComb2] ;
                                        Stgr_N7_05de10.Cells[04,viLinhas01] := Stgr_LinhaBaseB.Cells[viComb1_03,viBaseComb2] ;
                                        Stgr_N7_05de10.Cells[05,viLinhas01] := Stgr_LinhaBaseB.Cells[viComb1_04,viBaseComb2] ;
                                        Stgr_N7_05de10.Cells[06,viLinhas01] := Stgr_LinhaBaseB.Cells[viComb1_05,viBaseComb2] ;
                                        Stgr_N7_01de10.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                        Stgr_N7_01de10.Cells[01,viLinhas01] := '+' + INTtoSTR( viBaseComb2 ) + '' ;
                                        Stgr_N7_01de10.Cells[02,viLinhas01] := vcSobras ;

                                    Stgr_N7_02de06.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                    Stgr_N7_02de06.Cells[01,viLinhas01] := '+' + INTtoSTR( viBaseComb ) + '' ;
                                    Stgr_N7_02de06.Cells[02,viLinhas01] := Stgr_LinhaBaseC.Cells[viComb3_01,viBaseComb] ;
                                    Stgr_N7_02de06.Cells[03,viLinhas01] := Stgr_LinhaBaseC.Cells[viComb3_02,viBaseComb] ;

                                    Stgr_N7_03de06.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                    Stgr_N7_03de06.Cells[01,viLinhas01] := '+' + INTtoSTR( viBaseComb ) + '' ;
                                    Stgr_N7_03de06.Cells[02,viLinhas01] := vacSobras3[viComb4_01] ;
                                    Stgr_N7_03de06.Cells[03,viLinhas01] := vacSobras3[viComb4_02] ;
                                    Stgr_N7_03de06.Cells[04,viLinhas01] := vacSobras3[viComb4_03] ;
                                    if ( (Stgr_N7_05de10.Cells[2, viLinhas01].ToInteger +
                                    Stgr_N7_05de10.Cells[3, viLinhas01].ToInteger +
                                    Stgr_N7_05de10.Cells[4, viLinhas01].ToInteger +
                                    Stgr_N7_05de10.Cells[5, viLinhas01].ToInteger +
                                    Stgr_N7_05de10.Cells[6, viLinhas01].ToInteger +
                                    Stgr_N7_01de10.Cells[02, viLinhas01].ToInteger +
                                    Stgr_N7_02de06.Cells[02, viLinhas01].ToInteger +
                                    Stgr_N7_02de06.Cells[03, viLinhas01].ToInteger +
                                    Stgr_N7_03de06.Cells[02, viLinhas01].ToInteger +
                                    Stgr_N7_03de06.Cells[03, viLinhas01].ToInteger +
                                    Stgr_N7_03de06.Cells[04, viLinhas01].ToInteger) = 143 ) then
                                        viLinhas01 := viLinhas01 + 1;
                            END;
                        END;
                    End;
                END; //  for
            END; //  for viComb4_01

            sleep(1);
        END; //  for viBaseComb
    finally
        Stgr_N7_02de06.RowCount := viLinhas01;
        Stgr_N7_02de06.Repaint;
        Stgr_N7_03de06.RowCount := viLinhas01;
        Stgr_N7_03de06.Repaint;
    end; // Try
    SELF.Repaint;
    Result := viLinhas01;
end;


Procedure T_F_Gerador_1LinhDe19e1de6.AnaliseComb_05e02em09();
var
     viLinhas01, viBaseComb : Integer;
     viComb1_01, viComb1_02, viComb1_03, viComb1_04, viComb1_05: Integer;
     viComb2_01, viComb2_02, viContarCelulas, viContar : integer;
     vacSobras: array [1..4] of String;
begin
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES  ||||
    // ||||=============================||||
    // =====================================
    Scbx_dados.HorzScrollBar.Position := 10140;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    viLinhas01 := 1;
    Stgr_N7_05de09.RowCount := 2;
    Stgr_N7_02de09.RowCount := 2;
    Stgr_N7_05de09.Repaint;
    Stgr_N7_02de09.Repaint;
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
                                Stgr_N7_05de09.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                        Stgr_N7_05de09.Cells[01,viLinhas01] := '+' + INTtoSTR( viBaseComb ) + '' ;
                                        Stgr_N7_05de09.Cells[02,viLinhas01] := Stgr_LinhaBaseA.Cells[viComb1_01,viBaseComb] ;
                                        Stgr_N7_05de09.Cells[03,viLinhas01] := Stgr_LinhaBaseA.Cells[viComb1_02,viBaseComb] ;
                                        Stgr_N7_05de09.Cells[04,viLinhas01] := Stgr_LinhaBaseA.Cells[viComb1_03,viBaseComb] ;
                                        Stgr_N7_05de09.Cells[05,viLinhas01] := Stgr_LinhaBaseA.Cells[viComb1_04,viBaseComb] ;
                                        Stgr_N7_05de09.Cells[06,viLinhas01] := Stgr_LinhaBaseA.Cells[viComb1_05,viBaseComb] ;
                                FOR viContarCelulas :=1 TO 25 DO
                                begin
                                    Stgr_Todos_Numeros.Cells[viContarCelulas,1] :='F';
                                    Stgr_Todos_Numeros.Cells[viContarCelulas,2] :='F';
                                END; // FOR
                                // --------------------------
                                // -                        -
                                // -   Capturar as sobras   -
                                // -                        -
                                // --------------------------
                                FOR viContar := 2 TO 10 DO
                                BEGIN
                                    Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_LinhaBaseA.Cells[viContar,viBaseComb])) ,1]:='V';
                                END; // FOR
                                FOR viContar := 2 TO 06 DO
                                BEGIN
                                    Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_N7_05de09.Cells[viContar,viLinhas01] )) ,2]:='V';
                                END; // FOR
                                viContarCelulas := 1;
                                FOR viContar :=1 TO 25 DO
                                BEGIN
                                    IF (Stgr_Todos_Numeros.Cells[viContar,1]='V') and (Stgr_Todos_Numeros.Cells[viContar,2]='F')  THEN
                                    BEGIN
                                        vacSobras[viContarCelulas] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2);
                                        viContarCelulas := viContarCelulas +1;
                                    END; // IF (Stgr_Todos_Numeros
                                END; // FOR viContar
                                for viComb2_01 := 1 TO 03 DO
                                BEGIN
                                    for viComb2_02 := viComb2_01 + 1 TO 04 DO
                                    BEGIN
                                        Stgr_N7_05de09.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                        Stgr_N7_05de09.Cells[01,viLinhas01] := '+' + INTtoSTR( viBaseComb ) + '' ;
                                        Stgr_N7_05de09.Cells[02,viLinhas01] := Stgr_LinhaBaseA.Cells[viComb1_01,viBaseComb] ;
                                        Stgr_N7_05de09.Cells[03,viLinhas01] := Stgr_LinhaBaseA.Cells[viComb1_02,viBaseComb] ;
                                        Stgr_N7_05de09.Cells[04,viLinhas01] := Stgr_LinhaBaseA.Cells[viComb1_03,viBaseComb] ;
                                        Stgr_N7_05de09.Cells[05,viLinhas01] := Stgr_LinhaBaseA.Cells[viComb1_04,viBaseComb] ;
                                        Stgr_N7_05de09.Cells[06,viLinhas01] := Stgr_LinhaBaseA.Cells[viComb1_05,viBaseComb] ;

                                        Stgr_N7_02de09.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                        Stgr_N7_02de09.Cells[01,viLinhas01] := '+' + INTtoSTR( viBaseComb ) + '' ;
                                        Stgr_N7_02de09.Cells[02,viLinhas01] := vacSobras[viComb2_01] ;
                                        Stgr_N7_02de09.Cells[03,viLinhas01] := vacSobras[viComb2_02] ;
                                          if not((
                                             Stgr_N7_05de09.Cells[2, viLinhas01].ToInteger +
                                             Stgr_N7_05de09.Cells[3, viLinhas01].ToInteger +
                                             Stgr_N7_05de09.Cells[4, viLinhas01].ToInteger +
                                             Stgr_N7_05de09.Cells[5, viLinhas01].ToInteger +
                                             Stgr_N7_05de09.Cells[6, viLinhas01].ToInteger +
                                             Stgr_N7_02de09.Cells[02, viLinhas01].ToInteger +
                                             Stgr_N7_02de09.Cells[03, viLinhas01].ToInteger
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
            sleep(5);
        END; //  for viBaseComb
    finally
        Stgr_N7_05de09.RowCount := viLinhas01;
        Stgr_N7_05de09.Repaint;
        Stgr_N7_02de09.RowCount := viLinhas01;
        Stgr_N7_02de09.Repaint;
    end;
    Pgbr_EtaPa_01.Position := 10;
    Pgbr_EtaPa_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end;


FUNCTION T_F_Gerador_1LinhDe19e1de6.Ordenar12P7 (viLinhas01, viLinhas02: INTEGER) : string;
var
    viContar, viCntCelulas: INTEGER;
    vcDados : string;
begin
      // ************************
    // **  Ordena os dados   **
     // ************************
    FOR viContar :=1 TO 25 DO
    BEGIN
        STGR_Todos_Numeros.Cells[viContar,1] :='F';
    END;
    // ----> MONTADO E VERIFICANDO TODOS OS DÍGITOS
    FOR viContar :=2 TO 6 DO
    BEGIN
        STGR_Todos_Numeros.Cells [ (STRtoINT(Stgr_N7_05de09.Cells[viContar,viLinhas01])) ,1]:='V';
        STGR_Todos_Numeros.Cells [ (STRtoINT(Stgr_N7_05de10.Cells[viContar,viLinhas02])) ,1]:='V';
    END;
    FOR viContar :=2 TO 3 DO
    BEGIN
        STGR_Todos_Numeros.Cells [ (STRtoINT(Stgr_N7_02de06.Cells[viContar,viLinhas02])) ,1]:='V';
    END;
    vcDados := '';
    FOR viContar :=1 TO 25 DO
    BEGIN
        IF (STGR_Todos_Numeros.Cells[viContar,1]='V') THEN
        BEGIN
            vcDados := vcDados + RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[viContar,0]),2)+ ' ' ;
        END;
    END;
    result := Trim(vcDados);
end; // Function


Procedure T_F_Gerador_1LinhDe19e1de6.GravarP7();
var
    viContarLinhas01, viContarLinhas02 : integer;
    vcQUERY, vcNomeTabela, vcDados : string;
begin
    vcNomeTabela := ' GERADOR_1DE19_12n_P7';
    for viContarLinhas01 := 1 to Stgr_N7_05de09.RowCount-1 do
    begin
        for viContarLinhas02 := 1 to Stgr_N7_05de10.RowCount-1 do
        begin
            vcDados := Ordenar12P7 (viContarLinhas01, viContarLinhas02);
            vcQUERY  := 'INSERT INTO ' +vcNomeTabela+ ' (NUMERO, INICIAL) VALUES('
                 +#39+  TRIM(vcDados)  + #39 +','
                 +#39+  copy(TRIM(vcDados),1,2)
                 +#39+ ');';
            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add(vcQUERY)  ;
            DM1.IBQ_Combinacoes.ExecSQL;
        end;
    end;
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
    DM1.IBQ_Combinacoes.ExecSQL;
end;


Procedure T_F_Gerador_1LinhDe19e1de6.CarregarP7(vcSomenteComecadosComUm : string);
var
    viLinhas : integer;
    vcQUERY : string;
begin
    Stgr_N1_Aprovados.RowCount := 2;
    if trim(vcSomenteComecadosComUm)='01' then
        vcQUERY := 'select distinct(numero),inicial from GERADOR_1DE19_12N_P7 where inicial=''01'' order by numero'
    else
        vcQUERY := 'select distinct(numero),inicial from GERADOR_1DE19_12N_P7 where not(inicial=''01'') order by numero';
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add(vcQUERY)  ;
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;
    DM1.IBQ_Combinacoes.First;
    viLinhas := 1;
    while NOT(DM1.IBQ_Combinacoes.Eof) do
    begin
        Stgr_N7_12numeros.Cells[0,viLinhas] := viLinhas.ToString;
        Stgr_N7_12numeros.Cells[01,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('NUMERO').AsString,01,2);
        Stgr_N7_12numeros.Cells[02,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('NUMERO').AsString,04,2);
        Stgr_N7_12numeros.Cells[03,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('NUMERO').AsString,07,2);
        Stgr_N7_12numeros.Cells[04,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('NUMERO').AsString,10,2);
        Stgr_N7_12numeros.Cells[05,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('NUMERO').AsString,13,2);
        Stgr_N7_12numeros.Cells[06,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('NUMERO').AsString,16,2);
        Stgr_N7_12numeros.Cells[07,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('NUMERO').AsString,19,2);
        Stgr_N7_12numeros.Cells[08,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('NUMERO').AsString,22,2);
        Stgr_N7_12numeros.Cells[09,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('NUMERO').AsString,25,2);
        Stgr_N7_12numeros.Cells[10,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('NUMERO').AsString,28,2);
        Stgr_N7_12numeros.Cells[11,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('NUMERO').AsString,31,2);
        Stgr_N7_12numeros.Cells[12,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('NUMERO').AsString,34,2);
        viLinhas := viLinhas+1;
        DM1.IBQ_Combinacoes.Next;
    end;
    Stgr_N7_12numeros.RowCount := viLinhas;
end;



procedure T_F_Gerador_1LinhDe19e1de6.Etapa6Modo1();
var
    viComb1, viComb2, viComb3, viComb4: Integer;
    viLinhas: Integer;
begin
    Scbx_dados.HorzScrollBar.Position := 6445;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    Pa_Resultado.Repaint;
    SELF.Repaint;
    sleep(190);
    // ---> Etapa 6 Modo1 a)
    viLinhas := 1;
    for viComb1 := 1 to 2 do
    begin
        for viComb2 := viComb1+1 to 3 do
        begin
            stgr_N6Modo1a2.Cells[0,viLinhas] := '1';
            stgr_N6Modo1a2.Cells[1,viLinhas] := stgr_N6_5Triplas_L1.Cells[viComb1,1];
            stgr_N6Modo1a2.Cells[2,viLinhas] := stgr_N6_5Triplas_L1.Cells[viComb2,1];
            viLinhas := viLinhas + 1;
        end;
    end;
    for viComb1 := 1 to 2 do
    begin
        for viComb2 := viComb1+1 to 3 do
        begin
            stgr_N6Modo1a2.Cells[0,viLinhas] := '2';
            stgr_N6Modo1a2.Cells[1,viLinhas] := stgr_N6_5Triplas_L2.Cells[viComb1,1];
            stgr_N6Modo1a2.Cells[2,viLinhas] := stgr_N6_5Triplas_L2.Cells[viComb2,1];
            viLinhas := viLinhas + 1;
        end;
    end;
    for viComb1 := 1 to 2 do
    begin
        for viComb2 := viComb1+1 to 3 do
        begin
            stgr_N6Modo1a2.Cells[0,viLinhas] := '3';
            stgr_N6Modo1a2.Cells[1,viLinhas] := stgr_N6_5Triplas_L3.Cells[viComb1,1];
            stgr_N6Modo1a2.Cells[2,viLinhas] := stgr_N6_5Triplas_L3.Cells[viComb2,1];
            viLinhas := viLinhas + 1;
        end;
    end;
    for viComb1 := 1 to 2 do
    begin
        for viComb2 := viComb1+1 to 3 do
        begin
            stgr_N6Modo1a2.Cells[0,viLinhas] := '4';
            stgr_N6Modo1a2.Cells[1,viLinhas] := stgr_N6_5Triplas_L4.Cells[viComb1,1];
            stgr_N6Modo1a2.Cells[2,viLinhas] := stgr_N6_5Triplas_L4.Cells[viComb2,1];
            viLinhas := viLinhas + 1;
        end;
    end;
    for viComb1 := 1 to 2 do
    begin
        for viComb2 := viComb1+1 to 3 do
        begin
            stgr_N6Modo1a2.Cells[0,viLinhas] := '5';
            stgr_N6Modo1a2.Cells[1,viLinhas] := stgr_N6_5Triplas_L5.Cells[viComb1,1];
            stgr_N6Modo1a2.Cells[2,viLinhas] := stgr_N6_5Triplas_L5.Cells[viComb2,1];
            viLinhas := viLinhas + 1;
        end;
    end;
    stgr_N6Modo1a2.RowCount := viLinhas;
    // ---> Etapa 6 Modo1 b)
    viLinhas := 1;
    for viComb1 := 1 to 2 do
    begin
        for viComb2 := viComb1+1 to 3 do
        begin
            stgr_N6Modo1b2.Cells[0,viLinhas] := '1';
            stgr_N6Modo1b2.Cells[1,viLinhas] := stgr_N6_5Triplas_L1.Cells[viComb1,1];
            stgr_N6Modo1b2.Cells[2,viLinhas] := stgr_N6_5Triplas_L1.Cells[viComb2,1];
            viLinhas := viLinhas + 1;
        end;
    end;
    for viComb1 := 1 to 2 do
    begin
        for viComb2 := viComb1+1 to 3 do
        begin
            stgr_N6Modo1b2.Cells[0,viLinhas] := '2';
            stgr_N6Modo1b2.Cells[1,viLinhas] := stgr_N6_5Triplas_L2.Cells[viComb1,1];
            stgr_N6Modo1b2.Cells[2,viLinhas] := stgr_N6_5Triplas_L2.Cells[viComb2,1];
            viLinhas := viLinhas + 1;
        end;
    end;
    for viComb1 := 1 to 2 do
    begin
        for viComb2 := viComb1+1 to 3 do
        begin
            stgr_N6Modo1b2.Cells[0,viLinhas] := '3';
            stgr_N6Modo1b2.Cells[1,viLinhas] := stgr_N6_5Triplas_L3.Cells[viComb1,1];
            stgr_N6Modo1b2.Cells[2,viLinhas] := stgr_N6_5Triplas_L3.Cells[viComb2,1];
            viLinhas := viLinhas + 1;
        end;
    end;
    for viComb1 := 1 to 2 do
    begin
        for viComb2 := viComb1+1 to 3 do
        begin
            stgr_N6Modo1b2.Cells[0,viLinhas] := '3';
            stgr_N6Modo1b2.Cells[1,viLinhas] := stgr_N6_5Triplas_L4.Cells[viComb1,1];
            stgr_N6Modo1b2.Cells[2,viLinhas] := stgr_N6_5Triplas_L4.Cells[viComb2,1];
            viLinhas := viLinhas + 1;
        end;
    end;
    for viComb1 := 1 to 2 do
    begin
        for viComb2 := viComb1+1 to 3 do
        begin
            stgr_N6Modo1b2.Cells[0,viLinhas] := '5';
            stgr_N6Modo1b2.Cells[1,viLinhas] := stgr_N6_5Triplas_L5.Cells[viComb1,1];
            stgr_N6Modo1b2.Cells[2,viLinhas] := stgr_N6_5Triplas_L5.Cells[viComb2,1];
            viLinhas := viLinhas + 1;
        end;
    end;
    stgr_N6Modo1b2.RowCount := viLinhas;
    stgr_N6Modo1b3.Cells[0,1] := '1';
    stgr_N6Modo1b3.Cells[1,1] := stgr_N6_5Triplas_L1.Cells[1,1];
    stgr_N6Modo1b3.Cells[2,1] := stgr_N6_5Triplas_L1.Cells[2,1];
    stgr_N6Modo1b3.Cells[3,1] := stgr_N6_5Triplas_L1.Cells[3,1];
    stgr_N6Modo1b3.Cells[0,2] := '2';
    stgr_N6Modo1b3.Cells[1,2] := stgr_N6_5Triplas_L2.Cells[1,1];
    stgr_N6Modo1b3.Cells[2,2] := stgr_N6_5Triplas_L2.Cells[2,1];
    stgr_N6Modo1b3.Cells[3,2] := stgr_N6_5Triplas_L2.Cells[3,1];
    stgr_N6Modo1b3.Cells[0,3] := '3';
    stgr_N6Modo1b3.Cells[1,3] := stgr_N6_5Triplas_L3.Cells[1,1];
    stgr_N6Modo1b3.Cells[2,3] := stgr_N6_5Triplas_L3.Cells[2,1];
    stgr_N6Modo1b3.Cells[3,3] := stgr_N6_5Triplas_L3.Cells[3,1];
    stgr_N6Modo1b3.Cells[0,4] := '4';
    stgr_N6Modo1b3.Cells[1,4] := stgr_N6_5Triplas_L4.Cells[1,1];
    stgr_N6Modo1b3.Cells[2,4] := stgr_N6_5Triplas_L4.Cells[2,1];
    stgr_N6Modo1b3.Cells[3,4] := stgr_N6_5Triplas_L4.Cells[3,1];
    stgr_N6Modo1b3.Cells[0,5] := '5';
    stgr_N6Modo1b3.Cells[1,5] := stgr_N6_5Triplas_L5.Cells[1,1];
    stgr_N6Modo1b3.Cells[2,5] := stgr_N6_5Triplas_L5.Cells[2,1];
    stgr_N6Modo1b3.Cells[3,5] := stgr_N6_5Triplas_L5.Cells[3,1];
    stgr_N6Modo1b3.RowCount := 6 ;
    // ---> Etapa 6 Modo1 c)
    viLinhas := 1;
    for viComb1 := 1 to 2 do
    begin
        for viComb2 := viComb1+1 to 3 do
        begin
            stgr_N6Modo1c2.Cells[0,viLinhas] := '1';
            stgr_N6Modo1c2.Cells[1,viLinhas] := stgr_N6_5Triplas_L1.Cells[viComb1,1];
            stgr_N6Modo1c2.Cells[2,viLinhas] := stgr_N6_5Triplas_L1.Cells[viComb2,1];
            viLinhas := viLinhas + 1;
        end;
    end;
    for viComb1 := 1 to 2 do
    begin
        for viComb2 := viComb1+1 to 3 do
        begin
            stgr_N6Modo1c2.Cells[0,viLinhas] := '2';
            stgr_N6Modo1c2.Cells[1,viLinhas] := stgr_N6_5Triplas_L2.Cells[viComb1,1];
            stgr_N6Modo1c2.Cells[2,viLinhas] := stgr_N6_5Triplas_L2.Cells[viComb2,1];
            viLinhas := viLinhas + 1;
        end;
    end;
    for viComb1 := 1 to 2 do
    begin
        for viComb2 := viComb1+1 to 3 do
        begin
            stgr_N6Modo1c2.Cells[0,viLinhas] := '3';
            stgr_N6Modo1c2.Cells[1,viLinhas] := stgr_N6_5Triplas_L3.Cells[viComb1,1];
            stgr_N6Modo1c2.Cells[2,viLinhas] := stgr_N6_5Triplas_L3.Cells[viComb2,1];
            viLinhas := viLinhas + 1;
        end;
    end;
    for viComb1 := 1 to 2 do
    begin
        for viComb2 := viComb1+1 to 3 do
        begin
            stgr_N6Modo1c2.Cells[0,viLinhas] := '4';
            stgr_N6Modo1c2.Cells[1,viLinhas] := stgr_N6_5Triplas_L4.Cells[viComb1,1];
            stgr_N6Modo1c2.Cells[2,viLinhas] := stgr_N6_5Triplas_L4.Cells[viComb2,1];
            viLinhas := viLinhas + 1;
        end;
    end;
    for viComb1 := 1 to 2 do
    begin
        for viComb2 := viComb1+1 to 3 do
        begin
            stgr_N6Modo1c2.Cells[0,viLinhas] := '5';
            stgr_N6Modo1c2.Cells[1,viLinhas] := stgr_N6_5Triplas_L5.Cells[viComb1,1];
            stgr_N6Modo1c2.Cells[2,viLinhas] := stgr_N6_5Triplas_L5.Cells[viComb2,1];
            viLinhas := viLinhas + 1;
        end;
    end;
    stgr_N6Modo1c2.RowCount := viLinhas;
    stgr_N6Modo1c3.Cells[0,1] := '1';
    stgr_N6Modo1c3.Cells[1,1] := stgr_N6_5Triplas_L1.Cells[1,1];
    stgr_N6Modo1c3.Cells[2,1] := stgr_N6_5Triplas_L1.Cells[2,1];
    stgr_N6Modo1c3.Cells[3,1] := stgr_N6_5Triplas_L1.Cells[3,1];
    stgr_N6Modo1c3.Cells[0,2] := '2';
    stgr_N6Modo1c3.Cells[1,2] := stgr_N6_5Triplas_L2.Cells[1,1];
    stgr_N6Modo1c3.Cells[2,2] := stgr_N6_5Triplas_L2.Cells[2,1];
    stgr_N6Modo1c3.Cells[3,2] := stgr_N6_5Triplas_L2.Cells[3,1];
    stgr_N6Modo1c3.Cells[0,3] := '3';
    stgr_N6Modo1c3.Cells[1,3] := stgr_N6_5Triplas_L3.Cells[1,1];
    stgr_N6Modo1c3.Cells[2,3] := stgr_N6_5Triplas_L3.Cells[2,1];
    stgr_N6Modo1c3.Cells[3,3] := stgr_N6_5Triplas_L3.Cells[3,1];
    stgr_N6Modo1c3.Cells[0,4] := '4';
    stgr_N6Modo1c3.Cells[1,4] := stgr_N6_5Triplas_L4.Cells[1,1];
    stgr_N6Modo1c3.Cells[2,4] := stgr_N6_5Triplas_L4.Cells[2,1];
    stgr_N6Modo1c3.Cells[3,4] := stgr_N6_5Triplas_L4.Cells[3,1];
    stgr_N6Modo1c3.Cells[0,5] := '5';
    stgr_N6Modo1c3.Cells[1,5] := stgr_N6_5Triplas_L5.Cells[1,1];
    stgr_N6Modo1c3.Cells[2,5] := stgr_N6_5Triplas_L5.Cells[2,1];
    stgr_N6Modo1c3.Cells[3,5] := stgr_N6_5Triplas_L5.Cells[3,1];
    stgr_N6Modo1c3.RowCount := 6 ;
    // ---> Etapa 6 Modo1 d)
    viLinhas := 1;
    for viComb1 := 1 to 2 do
    begin
        for viComb2 := viComb1+1 to 3 do
        begin
            stgr_N6Modo1d2.Cells[0,viLinhas] := '1';
            stgr_N6Modo1d2.Cells[1,viLinhas] := stgr_N6_5Triplas_L1.Cells[viComb1,1];
            stgr_N6Modo1d2.Cells[2,viLinhas] := stgr_N6_5Triplas_L1.Cells[viComb2,1];
            viLinhas := viLinhas + 1;
        end;
    end;
    for viComb1 := 1 to 2 do
    begin
        for viComb2 := viComb1+1 to 3 do
        begin
            stgr_N6Modo1d2.Cells[0,viLinhas] := '2';
            stgr_N6Modo1d2.Cells[1,viLinhas] := stgr_N6_5Triplas_L2.Cells[viComb1,1];
            stgr_N6Modo1d2.Cells[2,viLinhas] := stgr_N6_5Triplas_L2.Cells[viComb2,1];
            viLinhas := viLinhas + 1;
        end;
    end;
    for viComb1 := 1 to 2 do
    begin
        for viComb2 := viComb1+1 to 3 do
        begin
            stgr_N6Modo1d2.Cells[0,viLinhas] := '3';
            stgr_N6Modo1d2.Cells[1,viLinhas] := stgr_N6_5Triplas_L3.Cells[viComb1,1];
            stgr_N6Modo1d2.Cells[2,viLinhas] := stgr_N6_5Triplas_L3.Cells[viComb2,1];
            viLinhas := viLinhas + 1;
        end;
    end;
    for viComb1 := 1 to 2 do
    begin
        for viComb2 := viComb1+1 to 3 do
        begin
            stgr_N6Modo1d2.Cells[0,viLinhas] := '4';
            stgr_N6Modo1d2.Cells[1,viLinhas] := stgr_N6_5Triplas_L4.Cells[viComb1,1];
            stgr_N6Modo1d2.Cells[2,viLinhas] := stgr_N6_5Triplas_L4.Cells[viComb2,1];
            viLinhas := viLinhas + 1;
        end;
    end;
    for viComb1 := 1 to 2 do
    begin
        for viComb2 := viComb1+1 to 3 do
        begin
            stgr_N6Modo1d2.Cells[0,viLinhas] := '5';
            stgr_N6Modo1d2.Cells[1,viLinhas] := stgr_N6_5Triplas_L5.Cells[viComb1,1];
            stgr_N6Modo1d2.Cells[2,viLinhas] := stgr_N6_5Triplas_L5.Cells[viComb2,1];
            viLinhas := viLinhas + 1;
        end;
    end;
    stgr_N6Modo1d2.RowCount := viLinhas;
    stgr_N6Modo1d1.Cells[0,1] := '1';
    stgr_N6Modo1d1.Cells[1,1] := stgr_N6_5Triplas_L1.Cells[1,1];
    stgr_N6Modo1d1.Cells[0,2] := '1';
    stgr_N6Modo1d1.Cells[1,2] := stgr_N6_5Triplas_L1.Cells[2,1];
    stgr_N6Modo1d1.Cells[0,3] := '1';
    stgr_N6Modo1d1.Cells[1,3] := stgr_N6_5Triplas_L1.Cells[3,1];
    stgr_N6Modo1d1.Cells[0,4] := '2';
    stgr_N6Modo1d1.Cells[1,4] := stgr_N6_5Triplas_L2.Cells[1,1];
    stgr_N6Modo1d1.Cells[0,5] := '2';
    stgr_N6Modo1d1.Cells[1,5] := stgr_N6_5Triplas_L2.Cells[2,1];
    stgr_N6Modo1d1.Cells[0,6] := '2';
    stgr_N6Modo1d1.Cells[1,6] := stgr_N6_5Triplas_L2.Cells[3,1];
    stgr_N6Modo1d1.Cells[0,7] := '3';
    stgr_N6Modo1d1.Cells[1,7] := stgr_N6_5Triplas_L3.Cells[1,1];
    stgr_N6Modo1d1.Cells[0,8] := '3';
    stgr_N6Modo1d1.Cells[1,8] := stgr_N6_5Triplas_L3.Cells[2,1];
    stgr_N6Modo1d1.Cells[0,9] := '3';
    stgr_N6Modo1d1.Cells[1,9] := stgr_N6_5Triplas_L3.Cells[3,1];
    stgr_N6Modo1d1.Cells[0,10] := '4';
    stgr_N6Modo1d1.Cells[1,10] := stgr_N6_5Triplas_L4.Cells[1,1];
    stgr_N6Modo1d1.Cells[0,11] := '4';
    stgr_N6Modo1d1.Cells[1,11] := stgr_N6_5Triplas_L4.Cells[2,1];
    stgr_N6Modo1d1.Cells[0,12] := '4';
    stgr_N6Modo1d1.Cells[1,12] := stgr_N6_5Triplas_L4.Cells[3,1];
    stgr_N6Modo1d1.Cells[0,13] := '5';
    stgr_N6Modo1d1.Cells[1,13] := stgr_N6_5Triplas_L4.Cells[1,1];
    stgr_N6Modo1d1.Cells[0,14] := '5';
    stgr_N6Modo1d1.Cells[1,14] := stgr_N6_5Triplas_L4.Cells[2,1];
    stgr_N6Modo1d1.Cells[0,15] := '5';
    stgr_N6Modo1d1.Cells[1,15] := stgr_N6_5Triplas_L4.Cells[3,1];
    stgr_N6Modo1d1.RowCount := 16;
    // ---> Etapa 6 Modo1 e)
    viLinhas := 1;
    for viComb1 := 1 to 2 do
    begin
        for viComb2 := viComb1+1 to 3 do
        begin
            stgr_N6Modo1e2.Cells[0,viLinhas] := '1';
            stgr_N6Modo1e2.Cells[1,viLinhas] := stgr_N6_5Triplas_L1.Cells[viComb1,1];
            stgr_N6Modo1e2.Cells[2,viLinhas] := stgr_N6_5Triplas_L1.Cells[viComb2,1];
            viLinhas := viLinhas + 1;
        end;
    end;
    for viComb1 := 1 to 2 do
    begin
        for viComb2 := viComb1+1 to 3 do
        begin
            stgr_N6Modo1e2.Cells[0,viLinhas] := '2';
            stgr_N6Modo1e2.Cells[1,viLinhas] := stgr_N6_5Triplas_L2.Cells[viComb1,1];
            stgr_N6Modo1e2.Cells[2,viLinhas] := stgr_N6_5Triplas_L2.Cells[viComb2,1];
            viLinhas := viLinhas + 1;
        end;
    end;
    for viComb1 := 1 to 2 do
    begin
        for viComb2 := viComb1+1 to 3 do
        begin
            stgr_N6Modo1e2.Cells[0,viLinhas] := '3';
            stgr_N6Modo1e2.Cells[1,viLinhas] := stgr_N6_5Triplas_L3.Cells[viComb1,1];
            stgr_N6Modo1e2.Cells[2,viLinhas] := stgr_N6_5Triplas_L3.Cells[viComb2,1];
            viLinhas := viLinhas + 1;
        end;
    end;
    for viComb1 := 1 to 2 do
    begin
        for viComb2 := viComb1+1 to 3 do
        begin
            stgr_N6Modo1e2.Cells[0,viLinhas] := '4';
            stgr_N6Modo1e2.Cells[1,viLinhas] := stgr_N6_5Triplas_L4.Cells[viComb1,1];
            stgr_N6Modo1e2.Cells[2,viLinhas] := stgr_N6_5Triplas_L4.Cells[viComb2,1];
            viLinhas := viLinhas + 1;
        end;
    end;
    for viComb1 := 1 to 2 do
    begin
        for viComb2 := viComb1+1 to 3 do
        begin
            stgr_N6Modo1e2.Cells[0,viLinhas] := '5';
            stgr_N6Modo1e2.Cells[1,viLinhas] := stgr_N6_5Triplas_L5.Cells[viComb1,1];
            stgr_N6Modo1e2.Cells[2,viLinhas] := stgr_N6_5Triplas_L5.Cells[viComb2,1];
            viLinhas := viLinhas + 1;
        end;
    end;
    stgr_N6Modo1e2.RowCount := viLinhas;
    stgr_N6Modo1e1.Cells[0,1] := '1';
    stgr_N6Modo1e1.Cells[1,1] := stgr_N6_5Triplas_L1.Cells[1,1];
    stgr_N6Modo1e1.Cells[0,2] := '1';
    stgr_N6Modo1e1.Cells[1,2] := stgr_N6_5Triplas_L1.Cells[2,1];
    stgr_N6Modo1e1.Cells[0,3] := '1';
    stgr_N6Modo1e1.Cells[1,3] := stgr_N6_5Triplas_L1.Cells[3,1];
    stgr_N6Modo1e1.Cells[0,4] := '2';
    stgr_N6Modo1e1.Cells[1,4] := stgr_N6_5Triplas_L2.Cells[1,1];
    stgr_N6Modo1e1.Cells[0,5] := '2';
    stgr_N6Modo1e1.Cells[1,5] := stgr_N6_5Triplas_L2.Cells[2,1];
    stgr_N6Modo1e1.Cells[0,6] := '2';
    stgr_N6Modo1e1.Cells[1,6] := stgr_N6_5Triplas_L2.Cells[3,1];
    stgr_N6Modo1e1.Cells[0,7] := '3';
    stgr_N6Modo1e1.Cells[1,7] := stgr_N6_5Triplas_L3.Cells[1,1];
    stgr_N6Modo1e1.Cells[0,8] := '3';
    stgr_N6Modo1e1.Cells[1,8] := stgr_N6_5Triplas_L3.Cells[2,1];
    stgr_N6Modo1e1.Cells[0,9] := '3';
    stgr_N6Modo1e1.Cells[1,9] := stgr_N6_5Triplas_L3.Cells[3,1];
    stgr_N6Modo1e1.Cells[0,10] := '4';
    stgr_N6Modo1e1.Cells[1,10] := stgr_N6_5Triplas_L4.Cells[1,1];
    stgr_N6Modo1e1.Cells[0,11] := '4';
    stgr_N6Modo1e1.Cells[1,11] := stgr_N6_5Triplas_L4.Cells[2,1];
    stgr_N6Modo1e1.Cells[0,12] := '4';
    stgr_N6Modo1e1.Cells[1,12] := stgr_N6_5Triplas_L4.Cells[3,1];
    stgr_N6Modo1e1.Cells[0,13] := '5';
    stgr_N6Modo1e1.Cells[1,13] := stgr_N6_5Triplas_L4.Cells[1,1];
    stgr_N6Modo1e1.Cells[0,14] := '5';
    stgr_N6Modo1e1.Cells[1,14] := stgr_N6_5Triplas_L4.Cells[2,1];
    stgr_N6Modo1e1.Cells[0,15] := '5';
    stgr_N6Modo1e1.Cells[1,15] := stgr_N6_5Triplas_L4.Cells[3,1];
    stgr_N6Modo1e1.RowCount := 16;
    if cb_N6Modo1Forma.ItemIndex = 0 then
    begin
        N6Modo1FormaSimples();
    end
    else
    begin
        //N6Modo1FormaCompleta();
    end;
end;


Function T_F_Gerador_1LinhDe19e1de6.N6Modo1Montando(viLinhas: Integer; vsModo: String): smallint;
var
  viContar, viContarCelulas,viFimContador: Integer;
begin
  //
  // --> Conferindo a quantidade de número gerados
  //
  for viContar := 1 to 25 do
  begin
    Stgr_Todos_Numeros.Cells[viContar, 1] := 'F';
  end;
  if vsModo='N6Modo1-08' then
      viFimContador := 8
  else
  if vsModo='N6Modo1-09' then
      viFimContador := 9
  else
  if vsModo='N6Modo1-10' then
      viFimContador := 10
  else
  if vsModo='N6Modo1-11' then
      viFimContador := 11
  else
  if vsModo='N6Modo1-12' then
      viFimContador := 12;
  for viContar := 1 to viFimContador do
  begin
    if vsModo='N6Modo1-08' then
        Stgr_Todos_Numeros.Cells[(STRtoINT(stgr_N6Modo1cj08.Cells[viContar, viLinhas])), 1] := 'V'
    else
    if vsModo='N6Modo1-09' then
        Stgr_Todos_Numeros.Cells[(STRtoINT(stgr_N6Modo1cj09.Cells[viContar, viLinhas])), 1] := 'V'
    else
    if vsModo='N6Modo1-10' then
        Stgr_Todos_Numeros.Cells[(STRtoINT(stgr_N6Modo1cj10.Cells[viContar, viLinhas])), 1] := 'V'
    else
    if vsModo='N6Modo1-11' then
        Stgr_Todos_Numeros.Cells[(STRtoINT(stgr_N6Modo1cj11.Cells[viContar, viLinhas])), 1] := 'V'
    else
    if vsModo='N6Modo1-12' then
        Stgr_Todos_Numeros.Cells[(STRtoINT(stgr_N6Modo1cj12.Cells[viContar, viLinhas])), 1] := 'V';
  end;
  viContarCelulas := 0;
  for viContar := 1 to 25 do
  begin
    if (Stgr_Todos_Numeros.Cells[viContar, 1] = 'V') then
    begin
      viContarCelulas := viContarCelulas + 1;
      if vsModo='N6Modo1-08' then
          stgr_N6Modo1cj08.Cells[viContarCelulas, viLinhas] := RIGHTSTR('0' + (Stgr_Todos_Numeros.Cells[viContar, 0]), 2)
      else
      if vsModo='N6Modo1-09' then
          stgr_N6Modo1cj09.Cells[viContarCelulas, viLinhas] := RIGHTSTR('0' + (Stgr_Todos_Numeros.Cells[viContar, 0]), 2)
      else
      if vsModo='N6Modo1-10' then
          stgr_N6Modo1cj10.Cells[viContarCelulas, viLinhas] := RIGHTSTR('0' + (Stgr_Todos_Numeros.Cells[viContar, 0]), 2)
      else
      if vsModo='N6Modo1-11' then
          stgr_N6Modo1cj11.Cells[viContarCelulas, viLinhas] := RIGHTSTR('0' + (Stgr_Todos_Numeros.Cells[viContar, 0]), 2)
      else
      if vsModo='N6Modo1-12' then
          stgr_N6Modo1cj12.Cells[viContarCelulas, viLinhas] := RIGHTSTR('0' + (Stgr_Todos_Numeros.Cells[viContar, 0]), 2);
    end;
  end;
  Result := viContarCelulas;
end;


procedure T_F_Gerador_1LinhDe19e1de6.N6Modo1FormaSimples();
var
    viComb1, viComb2, viComb3, viComb4, viComb5: Integer;
    viLinhas: Integer;
begin
    // ===================================
    //
    //  6 Modo 01 - Cjunto de 08 - simples
    //
    // ===================================
    viLinhas := 1;
    for viComb1 := 1 to stgr_N6Modo1a2.RowCount-1 do
    begin
        for viComb2 := 1 to stgr_N6Modo1b2.RowCount-1 do
        begin
            if stgr_N6Modo1a2.Cells[1,viComb1].ToInteger=stgr_N6Modo1b2.Cells[1,viComb2].ToInteger then
                continue;
            if stgr_N6Modo1a2.Cells[1,viComb1].ToInteger=stgr_N6Modo1b2.Cells[2,viComb2].ToInteger then
                continue;
            if stgr_N6Modo1a2.Cells[2,viComb1].ToInteger=stgr_N6Modo1b2.Cells[1,viComb2].ToInteger then
                continue;
            if stgr_N6Modo1a2.Cells[2,viComb1].ToInteger=stgr_N6Modo1b2.Cells[2,viComb2].ToInteger then
                continue;
            for viComb3 := 1 to stgr_N6Modo1c2.RowCount-1 do
            begin
                if stgr_N6Modo1a2.Cells[1,viComb1].ToInteger=stgr_N6Modo1c2.Cells[1,viComb3].ToInteger then
                    continue;
                if stgr_N6Modo1a2.Cells[1,viComb1].ToInteger=stgr_N6Modo1c2.Cells[2,viComb3].ToInteger then
                    continue;
                if stgr_N6Modo1a2.Cells[2,viComb1].ToInteger=stgr_N6Modo1c2.Cells[1,viComb3].ToInteger then
                    continue;
                if stgr_N6Modo1a2.Cells[2,viComb1].ToInteger=stgr_N6Modo1c2.Cells[2,viComb3].ToInteger then
                    continue;
                if stgr_N6Modo1c2.Cells[1,viComb3].ToInteger=stgr_N6Modo1b2.Cells[1,viComb2].ToInteger then
                    continue;
                if stgr_N6Modo1c2.Cells[1,viComb3].ToInteger=stgr_N6Modo1b2.Cells[2,viComb2].ToInteger then
                    continue;
                if stgr_N6Modo1c2.Cells[2,viComb3].ToInteger=stgr_N6Modo1b2.Cells[1,viComb2].ToInteger then
                    continue;
                if stgr_N6Modo1c2.Cells[2,viComb3].ToInteger=stgr_N6Modo1b2.Cells[2,viComb2].ToInteger then
                    continue;
                for viComb4 := 1 to stgr_N6Modo1d1.RowCount-1 do
                begin
//                    if stgr_N6Modo1d1.Cells[1,viComb4].ToInteger=stgr_N6Modo1a2.Cells[1,viComb1].ToInteger then
//                        continue;
//                    if stgr_N6Modo1d1.Cells[1,viComb4].ToInteger=stgr_N6Modo1a2.Cells[2,viComb1].ToInteger then
//                        continue;
//                    if stgr_N6Modo1d1.Cells[1,viComb4].ToInteger=stgr_N6Modo1b2.Cells[1,viComb2].ToInteger then
//                        continue;
//                    if stgr_N6Modo1d1.Cells[1,viComb4].ToInteger=stgr_N6Modo1b2.Cells[2,viComb2].ToInteger then
//                        continue;
//                    if stgr_N6Modo1d1.Cells[1,viComb4].ToInteger=stgr_N6Modo1c2.Cells[1,viComb3].ToInteger then
//                        continue;
//                    if stgr_N6Modo1d1.Cells[1,viComb4].ToInteger=stgr_N6Modo1c2.Cells[2,viComb3].ToInteger then
//                        continue;
                    for viComb5 := 1 to stgr_N6Modo1e1.RowCount-1 do
                    begin
//                        if stgr_N6Modo1e1.Cells[1,viComb5].ToInteger=stgr_N6Modo1a2.Cells[1,viComb1].ToInteger then
//                            continue;
//                        if stgr_N6Modo1e1.Cells[1,viComb5].ToInteger=stgr_N6Modo1a2.Cells[2,viComb1].ToInteger then
//                            continue;
//                        if stgr_N6Modo1e1.Cells[1,viComb5].ToInteger=stgr_N6Modo1b2.Cells[1,viComb2].ToInteger then
//                            continue;
//                        if stgr_N6Modo1e1.Cells[1,viComb5].ToInteger=stgr_N6Modo1b2.Cells[2,viComb2].ToInteger then
//                            continue;
//                        if stgr_N6Modo1e1.Cells[1,viComb5].ToInteger=stgr_N6Modo1c2.Cells[1,viComb3].ToInteger then
//                            continue;
//                        if stgr_N6Modo1e1.Cells[1,viComb5].ToInteger=stgr_N6Modo1c2.Cells[2,viComb3].ToInteger then
//                            continue;
//                        if stgr_N6Modo1e1.Cells[1,viComb5].ToInteger=stgr_N6Modo1d1.Cells[1,viComb4].ToInteger then
//                            continue;
                        stgr_N6Modo1cj08.Cells[0,viLinhas] := viLinhas.ToString;
                        stgr_N6Modo1cj08.Cells[1,viLinhas] := stgr_N6Modo1a2.Cells[1,viComb1];
                        stgr_N6Modo1cj08.Cells[2,viLinhas] := stgr_N6Modo1a2.Cells[2,viComb1];
                        stgr_N6Modo1cj08.Cells[3,viLinhas] := stgr_N6Modo1b2.Cells[1,viComb2];
                        stgr_N6Modo1cj08.Cells[4,viLinhas] := stgr_N6Modo1b2.Cells[2,viComb2];
                        stgr_N6Modo1cj08.Cells[5,viLinhas] := stgr_N6Modo1c2.Cells[1,viComb3];
                        stgr_N6Modo1cj08.Cells[6,viLinhas] := stgr_N6Modo1c2.Cells[2,viComb3];
                        stgr_N6Modo1cj08.Cells[7,viLinhas] := stgr_N6Modo1d1.Cells[1,viComb4];
                        stgr_N6Modo1cj08.Cells[8,viLinhas] := stgr_N6Modo1e1.Cells[1,viComb5];
                        if  N6Modo1Montando(viLinhas, 'N6Modo1-08') = 8 then
                            viLinhas := viLinhas +1;
                    end;
                end;
            end;
        end;
        stgr_N6Modo1cj08.RowCount := viLinhas;
        stgr_N6Modo1cj08.Repaint;
    end;
    stgr_N6Modo1cj08.RowCount := viLinhas;
    stgr_N6Modo1cj08.Repaint;
    // ===================================
    //
    //  6 Modo 01 - Cjunto de 09 - simples
    //
    // ===================================

    // ---> 09 combinação 2 + 3 +2 +1 +1
    viLinhas := 1;
    for viComb1 := 1 to stgr_N6Modo1a2.RowCount-1 do
    begin
        for viComb2 := 1 to stgr_N6Modo1b3.RowCount-1 do
        begin
            if stgr_N6Modo1a2.Cells[1,viComb1].ToInteger=stgr_N6Modo1b3.Cells[1,viComb2].ToInteger then
                continue;
            if stgr_N6Modo1a2.Cells[1,viComb1].ToInteger=stgr_N6Modo1b3.Cells[2,viComb2].ToInteger then
                continue;
            if stgr_N6Modo1a2.Cells[2,viComb1].ToInteger=stgr_N6Modo1b3.Cells[1,viComb2].ToInteger then
                continue;
            if stgr_N6Modo1a2.Cells[2,viComb1].ToInteger=stgr_N6Modo1b3.Cells[2,viComb2].ToInteger then
                continue;
            for viComb3 := 1 to stgr_N6Modo1c2.RowCount-1 do
            begin
                if stgr_N6Modo1a2.Cells[1,viComb1].ToInteger=stgr_N6Modo1c2.Cells[1,viComb3].ToInteger then
                    continue;
                if stgr_N6Modo1a2.Cells[1,viComb1].ToInteger=stgr_N6Modo1c2.Cells[2,viComb3].ToInteger then
                    continue;
                if stgr_N6Modo1a2.Cells[2,viComb1].ToInteger=stgr_N6Modo1c2.Cells[1,viComb3].ToInteger then
                    continue;
                if stgr_N6Modo1a2.Cells[2,viComb1].ToInteger=stgr_N6Modo1c2.Cells[2,viComb3].ToInteger then
                    continue;
                if stgr_N6Modo1c2.Cells[1,viComb3].ToInteger=stgr_N6Modo1b3.Cells[1,viComb2].ToInteger then
                    continue;
                if stgr_N6Modo1c2.Cells[1,viComb3].ToInteger=stgr_N6Modo1b3.Cells[2,viComb2].ToInteger then
                    continue;
                if stgr_N6Modo1c2.Cells[2,viComb3].ToInteger=stgr_N6Modo1b3.Cells[1,viComb2].ToInteger then
                    continue;
                if stgr_N6Modo1c2.Cells[2,viComb3].ToInteger=stgr_N6Modo1b3.Cells[2,viComb2].ToInteger then
                    continue;
                for viComb4 := 1 to stgr_N6Modo1d1.RowCount-1 do
                begin
                    for viComb5 := 1 to stgr_N6Modo1e1.RowCount-1 do
                    begin
                        stgr_N6Modo1cj09.Cells[0,viLinhas] := viLinhas.ToString;
                        stgr_N6Modo1cj09.Cells[1,viLinhas] := stgr_N6Modo1a2.Cells[1,viComb1];
                        stgr_N6Modo1cj09.Cells[2,viLinhas] := stgr_N6Modo1a2.Cells[2,viComb1];
                        stgr_N6Modo1cj09.Cells[3,viLinhas] := stgr_N6Modo1b3.Cells[1,viComb2];
                        stgr_N6Modo1cj09.Cells[4,viLinhas] := stgr_N6Modo1b3.Cells[2,viComb2];
                        stgr_N6Modo1cj09.Cells[5,viLinhas] := stgr_N6Modo1b3.Cells[3,viComb2];
                        stgr_N6Modo1cj09.Cells[6,viLinhas] := stgr_N6Modo1c2.Cells[1,viComb3];
                        stgr_N6Modo1cj09.Cells[7,viLinhas] := stgr_N6Modo1c2.Cells[2,viComb3];
                        stgr_N6Modo1cj09.Cells[8,viLinhas] := stgr_N6Modo1d1.Cells[1,viComb4];
                        stgr_N6Modo1cj09.Cells[9,viLinhas] := stgr_N6Modo1e1.Cells[1,viComb5];
                        if  N6Modo1Montando(viLinhas, 'N6Modo1-09') = 9 then
                            viLinhas := viLinhas +1;
                    end;
                end;
            end;
        end;
        stgr_N6Modo1cj09.RowCount := viLinhas;
        stgr_N6Modo1cj09.Repaint;
    end;
    // ---> 09 combinação 2 + 2 +3 +1 +1
    //viLinhas := 1;
    for viComb1 := 1 to stgr_N6Modo1a2.RowCount-1 do
    begin
        for viComb2 := 1 to stgr_N6Modo1b2.RowCount-1 do
        begin
            if stgr_N6Modo1a2.Cells[1,viComb1].ToInteger=stgr_N6Modo1b2.Cells[1,viComb2].ToInteger then
                continue;
            if stgr_N6Modo1a2.Cells[1,viComb1].ToInteger=stgr_N6Modo1b2.Cells[2,viComb2].ToInteger then
                continue;
            if stgr_N6Modo1a2.Cells[2,viComb1].ToInteger=stgr_N6Modo1b2.Cells[1,viComb2].ToInteger then
                continue;
            if stgr_N6Modo1a2.Cells[2,viComb1].ToInteger=stgr_N6Modo1b2.Cells[2,viComb2].ToInteger then
                continue;
            for viComb3 := 1 to stgr_N6Modo1c3.RowCount-1 do
            begin
                if stgr_N6Modo1a2.Cells[1,viComb1].ToInteger=stgr_N6Modo1c3.Cells[1,viComb3].ToInteger then
                    continue;
                if stgr_N6Modo1a2.Cells[1,viComb1].ToInteger=stgr_N6Modo1c3.Cells[2,viComb3].ToInteger then
                    continue;
                if stgr_N6Modo1a2.Cells[2,viComb1].ToInteger=stgr_N6Modo1c3.Cells[1,viComb3].ToInteger then
                    continue;
                if stgr_N6Modo1a2.Cells[2,viComb1].ToInteger=stgr_N6Modo1c3.Cells[2,viComb3].ToInteger then
                    continue;
                if stgr_N6Modo1c3.Cells[1,viComb3].ToInteger=stgr_N6Modo1b2.Cells[1,viComb2].ToInteger then
                    continue;
                if stgr_N6Modo1c3.Cells[1,viComb3].ToInteger=stgr_N6Modo1b2.Cells[2,viComb2].ToInteger then
                    continue;
                if stgr_N6Modo1c3.Cells[2,viComb3].ToInteger=stgr_N6Modo1b2.Cells[1,viComb2].ToInteger then
                    continue;
                if stgr_N6Modo1c3.Cells[2,viComb3].ToInteger=stgr_N6Modo1b2.Cells[2,viComb2].ToInteger then
                    continue;
                for viComb4 := 1 to stgr_N6Modo1d1.RowCount-1 do
                begin
                    for viComb5 := 1 to stgr_N6Modo1e1.RowCount-1 do
                    begin
                        stgr_N6Modo1cj09.Cells[0,viLinhas] := viLinhas.ToString;
                        stgr_N6Modo1cj09.Cells[1,viLinhas] := stgr_N6Modo1a2.Cells[1,viComb1];
                        stgr_N6Modo1cj09.Cells[2,viLinhas] := stgr_N6Modo1a2.Cells[2,viComb1];
                        stgr_N6Modo1cj09.Cells[3,viLinhas] := stgr_N6Modo1b2.Cells[1,viComb2];
                        stgr_N6Modo1cj09.Cells[4,viLinhas] := stgr_N6Modo1b2.Cells[2,viComb2];
                        stgr_N6Modo1cj09.Cells[5,viLinhas] := stgr_N6Modo1c3.Cells[1,viComb3];
                        stgr_N6Modo1cj09.Cells[6,viLinhas] := stgr_N6Modo1c3.Cells[2,viComb3];
                        stgr_N6Modo1cj09.Cells[7,viLinhas] := stgr_N6Modo1c3.Cells[3,viComb3];
                        stgr_N6Modo1cj09.Cells[8,viLinhas] := stgr_N6Modo1d1.Cells[1,viComb4];
                        stgr_N6Modo1cj09.Cells[9,viLinhas] := stgr_N6Modo1e1.Cells[1,viComb5];
                        if  N6Modo1Montando(viLinhas, 'N6Modo1-09') = 9 then
                            viLinhas := viLinhas +1;
                    end;
                end;
            end;
        end;
        stgr_N6Modo1cj09.RowCount := viLinhas;
        stgr_N6Modo1cj09.Repaint;
    end;
    // ---> 09 combinação 2 + 2 +2 +2 +1
    //viLinhas := 1;
    for viComb1 := 1 to stgr_N6Modo1a2.RowCount-1 do
    begin
        for viComb2 := 1 to stgr_N6Modo1b2.RowCount-1 do
        begin
            if stgr_N6Modo1a2.Cells[1,viComb1].ToInteger=stgr_N6Modo1b2.Cells[1,viComb2].ToInteger then
                continue;
            if stgr_N6Modo1a2.Cells[1,viComb1].ToInteger=stgr_N6Modo1b2.Cells[2,viComb2].ToInteger then
                continue;
            if stgr_N6Modo1a2.Cells[2,viComb1].ToInteger=stgr_N6Modo1b2.Cells[1,viComb2].ToInteger then
                continue;
            if stgr_N6Modo1a2.Cells[2,viComb1].ToInteger=stgr_N6Modo1b2.Cells[2,viComb2].ToInteger then
                continue;
            for viComb3 := 1 to stgr_N6Modo1c2.RowCount-1 do
            begin
                if stgr_N6Modo1a2.Cells[1,viComb1].ToInteger=stgr_N6Modo1c2.Cells[1,viComb3].ToInteger then
                    continue;
                if stgr_N6Modo1a2.Cells[1,viComb1].ToInteger=stgr_N6Modo1c2.Cells[2,viComb3].ToInteger then
                    continue;
                if stgr_N6Modo1a2.Cells[2,viComb1].ToInteger=stgr_N6Modo1c2.Cells[1,viComb3].ToInteger then
                    continue;
                if stgr_N6Modo1a2.Cells[2,viComb1].ToInteger=stgr_N6Modo1c2.Cells[2,viComb3].ToInteger then
                    continue;
                if stgr_N6Modo1c2.Cells[1,viComb3].ToInteger=stgr_N6Modo1b2.Cells[1,viComb2].ToInteger then
                    continue;
                if stgr_N6Modo1c2.Cells[1,viComb3].ToInteger=stgr_N6Modo1b2.Cells[2,viComb2].ToInteger then
                    continue;
                if stgr_N6Modo1c2.Cells[2,viComb3].ToInteger=stgr_N6Modo1b2.Cells[1,viComb2].ToInteger then
                    continue;
                if stgr_N6Modo1c2.Cells[2,viComb3].ToInteger=stgr_N6Modo1b2.Cells[2,viComb2].ToInteger then
                    continue;
                for viComb4 := 1 to stgr_N6Modo1d2.RowCount-1 do
                begin
                    for viComb5 := 1 to stgr_N6Modo1e1.RowCount-1 do
                    begin
                        stgr_N6Modo1cj09.Cells[0,viLinhas] := viLinhas.ToString;
                        stgr_N6Modo1cj09.Cells[1,viLinhas] := stgr_N6Modo1a2.Cells[1,viComb1];
                        stgr_N6Modo1cj09.Cells[2,viLinhas] := stgr_N6Modo1a2.Cells[2,viComb1];
                        stgr_N6Modo1cj09.Cells[3,viLinhas] := stgr_N6Modo1b2.Cells[1,viComb2];
                        stgr_N6Modo1cj09.Cells[4,viLinhas] := stgr_N6Modo1b2.Cells[2,viComb2];
                        stgr_N6Modo1cj09.Cells[5,viLinhas] := stgr_N6Modo1c2.Cells[1,viComb3];
                        stgr_N6Modo1cj09.Cells[6,viLinhas] := stgr_N6Modo1c2.Cells[2,viComb3];
                        stgr_N6Modo1cj09.Cells[7,viLinhas] := stgr_N6Modo1d2.Cells[1,viComb4];
                        stgr_N6Modo1cj09.Cells[8,viLinhas] := stgr_N6Modo1d2.Cells[2,viComb4];
                        stgr_N6Modo1cj09.Cells[9,viLinhas] := stgr_N6Modo1e1.Cells[1,viComb5];
                        if  N6Modo1Montando(viLinhas, 'N6Modo1-09') = 9 then
                            viLinhas := viLinhas +1;
                    end;
                end;
            end;
        end;
        stgr_N6Modo1cj09.RowCount := viLinhas;
        stgr_N6Modo1cj09.Repaint;
    end;
    // ---> 09 combinação 2 + 2 +2 +1 +2
    // viLinhas := 1;
    for viComb1 := 1 to stgr_N6Modo1a2.RowCount-1 do
    begin
        for viComb2 := 1 to stgr_N6Modo1b2.RowCount-1 do
        begin
            if stgr_N6Modo1a2.Cells[1,viComb1].ToInteger=stgr_N6Modo1b2.Cells[1,viComb2].ToInteger then
                continue;
            if stgr_N6Modo1a2.Cells[1,viComb1].ToInteger=stgr_N6Modo1b2.Cells[2,viComb2].ToInteger then
                continue;
            if stgr_N6Modo1a2.Cells[2,viComb1].ToInteger=stgr_N6Modo1b2.Cells[1,viComb2].ToInteger then
                continue;
            if stgr_N6Modo1a2.Cells[2,viComb1].ToInteger=stgr_N6Modo1b2.Cells[2,viComb2].ToInteger then
                continue;
            for viComb3 := 1 to stgr_N6Modo1c2.RowCount-1 do
            begin
                if stgr_N6Modo1a2.Cells[1,viComb1].ToInteger=stgr_N6Modo1c2.Cells[1,viComb3].ToInteger then
                    continue;
                if stgr_N6Modo1a2.Cells[1,viComb1].ToInteger=stgr_N6Modo1c2.Cells[2,viComb3].ToInteger then
                    continue;
                if stgr_N6Modo1a2.Cells[2,viComb1].ToInteger=stgr_N6Modo1c2.Cells[1,viComb3].ToInteger then
                    continue;
                if stgr_N6Modo1a2.Cells[2,viComb1].ToInteger=stgr_N6Modo1c2.Cells[2,viComb3].ToInteger then
                    continue;
                if stgr_N6Modo1c2.Cells[1,viComb3].ToInteger=stgr_N6Modo1b2.Cells[1,viComb2].ToInteger then
                    continue;
                if stgr_N6Modo1c2.Cells[1,viComb3].ToInteger=stgr_N6Modo1b2.Cells[2,viComb2].ToInteger then
                    continue;
                if stgr_N6Modo1c2.Cells[2,viComb3].ToInteger=stgr_N6Modo1b2.Cells[1,viComb2].ToInteger then
                    continue;
                if stgr_N6Modo1c2.Cells[2,viComb3].ToInteger=stgr_N6Modo1b2.Cells[2,viComb2].ToInteger then
                    continue;
                for viComb4 := 1 to stgr_N6Modo1d1.RowCount-1 do
                begin
                    for viComb5 := 1 to stgr_N6Modo1e2.RowCount-1 do
                    begin
                        stgr_N6Modo1cj09.Cells[0,viLinhas] := viLinhas.ToString;
                        stgr_N6Modo1cj09.Cells[1,viLinhas] := stgr_N6Modo1a2.Cells[1,viComb1];
                        stgr_N6Modo1cj09.Cells[2,viLinhas] := stgr_N6Modo1a2.Cells[2,viComb1];
                        stgr_N6Modo1cj09.Cells[3,viLinhas] := stgr_N6Modo1b2.Cells[1,viComb2];
                        stgr_N6Modo1cj09.Cells[4,viLinhas] := stgr_N6Modo1b2.Cells[2,viComb2];
                        stgr_N6Modo1cj09.Cells[5,viLinhas] := stgr_N6Modo1c2.Cells[1,viComb3];
                        stgr_N6Modo1cj09.Cells[6,viLinhas] := stgr_N6Modo1c2.Cells[2,viComb3];
                        stgr_N6Modo1cj09.Cells[7,viLinhas] := stgr_N6Modo1d1.Cells[1,viComb4];
                        stgr_N6Modo1cj09.Cells[8,viLinhas] := stgr_N6Modo1e2.Cells[1,viComb5];
                        stgr_N6Modo1cj09.Cells[9,viLinhas] := stgr_N6Modo1e2.Cells[2,viComb5];
                        if  N6Modo1Montando(viLinhas, 'N6Modo1-09') = 9 then
                            viLinhas := viLinhas +1;
                    end;
                end;
            end;
        end;
        stgr_N6Modo1cj09.RowCount := viLinhas;
        stgr_N6Modo1cj09.Repaint;
    end;
end;


procedure T_F_Gerador_1LinhDe19e1de6.Etapa6Modo2();
var
    viComb1, viComb2, viComb3, viComb4: Integer;
    viLinhas: Integer;
begin
    // ---> Etapa 6 Modo2 a)
    stgr_N6Modo2a3.Cells[1,1] := stgr_N6_5Triplas_L1.Cells[1,1];
    stgr_N6Modo2a3.Cells[2,1] := stgr_N6_5Triplas_L1.Cells[2,1];
    stgr_N6Modo2a3.Cells[3,1] := stgr_N6_5Triplas_L1.Cells[3,1];
    stgr_N6Modo2a3.RowCount := 2 ;
    // ---> Etapa 6 Modo2 b)
    stgr_N6Modo2b1.Cells[1,1] := stgr_N6_5Triplas_L2.Cells[1,1];
    stgr_N6Modo2b1.Cells[1,2] := stgr_N6_5Triplas_L2.Cells[2,1];
    stgr_N6Modo2b1.Cells[1,3] := stgr_N6_5Triplas_L2.Cells[3,1];
    stgr_N6Modo2b1.RowCount := 4;
    // ---> Etapa 6 Modo1 c)
    viLinhas := 1;
    for viComb1 := 1 to 2 do
    begin
        for viComb2 := viComb1+1 to 3 do
        begin
            stgr_N6Modo2c2.Cells[1,viLinhas] := stgr_N6_5Triplas_L3.Cells[viComb1,1];
            stgr_N6Modo2c2.Cells[2,viLinhas] := stgr_N6_5Triplas_L3.Cells[viComb2,1];
            viLinhas := viLinhas + 1;
        end;
    end;
    stgr_N6Modo2c2.RowCount := viLinhas;
    // ---> Etapa 6 Modo1 d)
    viLinhas := 1;
    for viComb1 := 1 to 2 do
    begin
        for viComb2 := viComb1+1 to 3 do
        begin
            stgr_N6Modo2d2.Cells[1,viLinhas] := stgr_N6_5Triplas_L4.Cells[viComb1,1];
            stgr_N6Modo2d2.Cells[2,viLinhas] := stgr_N6_5Triplas_L4.Cells[viComb2,1];
            viLinhas := viLinhas + 1;
        end;
    end;
    stgr_N6Modo2d2.RowCount := viLinhas;
    stgr_N6Modo2d1.Cells[1,1] := stgr_N6_5Triplas_L4.Cells[1,1];
    stgr_N6Modo2d1.Cells[1,2] := stgr_N6_5Triplas_L4.Cells[2,1];
    stgr_N6Modo2d1.Cells[1,3] := stgr_N6_5Triplas_L4.Cells[3,1];
    stgr_N6Modo2d1.RowCount := 4;
    // ---> Etapa 6 Modo1 e)
    viLinhas := 1;
    for viComb1 := 1 to 2 do
    begin
        for viComb2 := viComb1+1 to 3 do
        begin
            stgr_N6Modo2e2.Cells[1,viLinhas] := stgr_N6_5Triplas_L5.Cells[viComb1,1];
            stgr_N6Modo2e2.Cells[2,viLinhas] := stgr_N6_5Triplas_L5.Cells[viComb2,1];
            viLinhas := viLinhas + 1;
        end;
    end;
    stgr_N6Modo2e2.RowCount := viLinhas;
    stgr_N6Modo2e3.Cells[1,1] := stgr_N6_5Triplas_L5.Cells[1,1];
    stgr_N6Modo2e3.Cells[2,1] := stgr_N6_5Triplas_L5.Cells[2,1];
    stgr_N6Modo2e3.Cells[3,1] := stgr_N6_5Triplas_L5.Cells[3,1];
    stgr_N6Modo2e3.RowCount := 2;
end;

procedure T_F_Gerador_1LinhDe19e1de6.bbt_Numero6Modo1Click(Sender: TObject);
begin
    Etapa6Modo1();
    Etapa6Modo2();
end;


procedure T_F_Gerador_1LinhDe19e1de6.Etapa8Preparar();
var
    viComb1, viComb2: Integer;
    viLinhas: Integer;
begin
    Scbx_dados.HorzScrollBar.Position := 12380;
    Pa_Resultado.Repaint;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(190);
    viLinhas := 1;
    for viComb1 := 1 to stgr_N08Base1.RowCount-1 do
    begin
        for viComb2:= viComb1+1 to stgr_N08Base1.RowCount-1 do
        begin
            if stgr_N08Base1.Cells[01,viComb1]=stgr_N08Base1.Cells[01,viComb2] then
                continue;
            if stgr_N08Base1.Cells[01,viComb1]=stgr_N08Base1.Cells[02,viComb2] then
                continue;
            if stgr_N08Base1.Cells[01,viComb1]=stgr_N08Base1.Cells[03,viComb2] then
                continue;
            if stgr_N08Base1.Cells[01,viComb1]=stgr_N08Base1.Cells[04,viComb2] then
                continue;
            if stgr_N08Base1.Cells[02,viComb1]=stgr_N08Base1.Cells[03,viComb2] then
                continue;
            if stgr_N08Base1.Cells[02,viComb1]=stgr_N08Base1.Cells[02,viComb2] then
                continue;
            if stgr_N08Base1.Cells[02,viComb1]=stgr_N08Base1.Cells[01,viComb2] then
                continue;
            if stgr_N08Base1.Cells[03,viComb1]=stgr_N08Base1.Cells[04,viComb2] then
                continue;
            if stgr_N08Base1.Cells[04,viComb1]=stgr_N08Base1.Cells[03,viComb2] then
                continue;
            if stgr_N08Base1.Cells[04,viComb1]=stgr_N08Base1.Cells[04,viComb2] then
                continue;
            if stgr_N08Base1.Cells[04,viComb1]=stgr_N08Base1.Cells[05,viComb2] then
                continue;
            if stgr_N08Base1.Cells[05,viComb1]=stgr_N08Base1.Cells[04,viComb2] then
                continue;
            if stgr_N08Base1.Cells[05,viComb1]=stgr_N08Base1.Cells[05,viComb2] then
                continue;
            stgr_N08Modo1_1.Cells[00,viLinhas] := viLinhas.ToString;
            stgr_N08Modo1_1.Cells[01,viLinhas] := stgr_N08Base1.Cells[01,viComb1];
            stgr_N08Modo1_1.Cells[02,viLinhas] := stgr_N08Base1.Cells[02,viComb1];
            stgr_N08Modo1_1.Cells[03,viLinhas] := stgr_N08Base1.Cells[03,viComb1];
            stgr_N08Modo1_1.Cells[04,viLinhas] := stgr_N08Base1.Cells[04,viComb1];
            stgr_N08Modo1_1.Cells[05,viLinhas] := stgr_N08Base1.Cells[05,viComb1];
            stgr_N08Modo1_2.Cells[00,viLinhas] := viLinhas.ToString;
            stgr_N08Modo1_2.Cells[01,viLinhas] := stgr_N08Base1.Cells[01,viComb2];
            stgr_N08Modo1_2.Cells[02,viLinhas] := stgr_N08Base1.Cells[02,viComb2];
            stgr_N08Modo1_2.Cells[03,viLinhas] := stgr_N08Base1.Cells[03,viComb2];
            stgr_N08Modo1_2.Cells[04,viLinhas] := stgr_N08Base1.Cells[04,viComb2];
            stgr_N08Modo1_2.Cells[05,viLinhas] := stgr_N08Base1.Cells[05,viComb2];
            viLinhas := viLinhas  + 1;
        end;
        stgr_N08Modo1_1.Repaint;
        stgr_N08Modo1_2.Repaint;
    end;
    stgr_N08Modo1_1.RowCount := viLinhas;
    stgr_N08Modo1_2.RowCount := viLinhas;
end;


procedure T_F_Gerador_1LinhDe19e1de6.Etapa8Modo1();
var
    viComb1, viComb2: Integer;
    viLinhas: Integer;
begin
    viLinhas := 1;
    for viComb1 := 1 to stgr_N08Modo1_1.RowCount-1 do
    begin
        for viComb2:= 1 to 5 do
        begin
            stgr_N08Modo1_Resultado.Cells[00,viLinhas] := viLinhas.ToString;
            stgr_N08Modo1_Resultado.Cells[01,viLinhas] := stgr_N08Modo1_1.Cells[01,viComb1];
            stgr_N08Modo1_Resultado.Cells[02,viLinhas] := stgr_N08Modo1_1.Cells[02,viComb1];
            stgr_N08Modo1_Resultado.Cells[03,viLinhas] := stgr_N08Modo1_1.Cells[03,viComb1];
            stgr_N08Modo1_Resultado.Cells[04,viLinhas] := stgr_N08Modo1_1.Cells[04,viComb1];
            stgr_N08Modo1_Resultado.Cells[05,viLinhas] := stgr_N08Modo1_1.Cells[05,viComb1];
            stgr_N08Modo1_Resultado.Cells[06,viLinhas] := stgr_N08Modo1_2.Cells[viComb2,viComb1];

            stgr_N08Modo1_Resultado.Cells[00,viLinhas+1] := (viLinhas+1).ToString;
            stgr_N08Modo1_Resultado.Cells[01,viLinhas+1] := stgr_N08Modo1_2.Cells[01,viComb1];
            stgr_N08Modo1_Resultado.Cells[02,viLinhas+1] := stgr_N08Modo1_2.Cells[02,viComb1];
            stgr_N08Modo1_Resultado.Cells[03,viLinhas+1] := stgr_N08Modo1_2.Cells[03,viComb1];
            stgr_N08Modo1_Resultado.Cells[04,viLinhas+1] := stgr_N08Modo1_2.Cells[04,viComb1];
            stgr_N08Modo1_Resultado.Cells[05,viLinhas+1] := stgr_N08Modo1_2.Cells[05,viComb1];
            stgr_N08Modo1_Resultado.Cells[06,viLinhas+1] := stgr_N08Modo1_1.Cells[viComb2,viComb1];
            viLinhas := viLinhas  + 2;
        end;
        stgr_N08Modo1_Resultado.Repaint;
    end;
    stgr_N08Modo1_Resultado.RowCount := viLinhas;
end;


procedure T_F_Gerador_1LinhDe19e1de6.Etapa8Modo2();
var
    viComb1, viComb2, viComb3: Integer;
    viLinhas: Integer;
begin
    viLinhas := 1;
    for viComb1 := 1 to stgr_N08Modo1_1.RowCount-1 do
    begin
        for viComb2:= 1 to 4 do
        begin
            for viComb3:= viComb2+1 to 5 do
            begin
                stgr_N08Modo2_Resultado.Cells[00,viLinhas] := viLinhas.ToString;
                stgr_N08Modo2_Resultado.Cells[01,viLinhas] := stgr_N08Modo1_1.Cells[01,viComb1];
                stgr_N08Modo2_Resultado.Cells[02,viLinhas] := stgr_N08Modo1_1.Cells[02,viComb1];
                stgr_N08Modo2_Resultado.Cells[03,viLinhas] := stgr_N08Modo1_1.Cells[03,viComb1];
                stgr_N08Modo2_Resultado.Cells[04,viLinhas] := stgr_N08Modo1_1.Cells[04,viComb1];
                stgr_N08Modo2_Resultado.Cells[05,viLinhas] := stgr_N08Modo1_1.Cells[05,viComb1];
                stgr_N08Modo2_Resultado.Cells[06,viLinhas] := stgr_N08Modo1_2.Cells[viComb2,viComb1];
                stgr_N08Modo2_Resultado.Cells[07,viLinhas] := stgr_N08Modo1_2.Cells[viComb3,viComb1];

                stgr_N08Modo2_Resultado.Cells[00,viLinhas+1] := (viLinhas+1).ToString;
                stgr_N08Modo2_Resultado.Cells[01,viLinhas+1] := stgr_N08Modo1_2.Cells[01,viComb1];
                stgr_N08Modo2_Resultado.Cells[02,viLinhas+1] := stgr_N08Modo1_2.Cells[02,viComb1];
                stgr_N08Modo2_Resultado.Cells[03,viLinhas+1] := stgr_N08Modo1_2.Cells[03,viComb1];
                stgr_N08Modo2_Resultado.Cells[04,viLinhas+1] := stgr_N08Modo1_2.Cells[04,viComb1];
                stgr_N08Modo2_Resultado.Cells[05,viLinhas+1] := stgr_N08Modo1_2.Cells[05,viComb1];
                stgr_N08Modo2_Resultado.Cells[06,viLinhas+1] := stgr_N08Modo1_1.Cells[viComb2,viComb1];
                stgr_N08Modo2_Resultado.Cells[07,viLinhas+1] := stgr_N08Modo1_1.Cells[viComb3,viComb1];

                viLinhas := viLinhas  + 2;
            end;
            stgr_N08Modo2_Resultado.Repaint;
        end;
    end;
    stgr_N08Modo2_Resultado.RowCount := viLinhas;
end;


procedure T_F_Gerador_1LinhDe19e1de6.bbt_Numero8Click(Sender: TObject);
begin
    Etapa8Preparar();
    Etapa8Modo1();
    Etapa8Modo2();
end;




procedure T_F_Gerador_1LinhDe19e1de6.BBT_Numero07Click(Sender: TObject);
begin
    AnaliseComb_05e02em09();
    AnaliseComb_05e01em10();
    GravarP7();
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


procedure T_F_Gerador_1LinhDe19e1de6.RB_AC13em19Click(Sender: TObject);
begin
    cb_SubAmostragem.Visible := True;
end;

procedure T_F_Gerador_1LinhDe19e1de6.RB_AC14em19Click(Sender: TObject);
begin
    cb_SubAmostragem.Visible := False;
end;

procedure T_F_Gerador_1LinhDe19e1de6.RB_AC15em19Click(Sender: TObject);
begin
    cb_SubAmostragem.Visible := False;
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
    viContagemFinal, viContar, viContar2, viContar3, viContarCelulas,viSoma10 : Integer;
    vs3n1, vs3n2, vs3n3 : string;
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
        viContagemFinal := Trunc((Stgr_N1_13de19.RowCount-1)/STRtoINT(cb_SubAmostragem.Text){27130});
        for viComb01 := 1 to viContagemFinal do
        begin
            IF (Trunc((viComb01 /viContagemFinal)*100) mod 2) = 0 THEN
                Pgbr_EtaPa_01.Position := Trunc((viComb01 /viContagemFinal)*100);
            IF (Trunc((viComb01 /viContagemFinal)*100) mod 10) = 0 THEN
            BEGIN
                Pgbr_EtaPa_01.Position := Trunc((viComb01 /viContagemFinal)*100);
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
                SLEEP(5);
            END;
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
                                                Montando_Stgr_N4_7Numeros(viComb01, viLinhas01, viCombTriplas01, viCombDuplas101, viCombDuplas201);
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
                                        sleep(10);
                                        Montando_Stgr_N4_7Numeros(viComb01, viLinhas01, viCombTriplas01, viCombDuplas101, viCombDuplas201);
                                        Montado07FlagsNos19Numeros(viLinhas01);
//                                                if viLinhas01>=14  then
//                                                begin
//                                                    showmessage(viLinhas01.ToString);
//                                                    Self.WindowState := wsMinimized;
//                                                    Self.WindowState := wsNormal;
//                                                    Self.Repaint;
//                                                    Stgr_Todos19Numeros.Repaint;
//                                                    Scbx_dados.Repaint;
//                                                end;

                                            IF (Stgr_Todos19Numeros.Cells[viContar,1]='V') and (Stgr_Todos19Numeros.Cells[viContar,2]='F') THEN
                                            BEGIN
                                                vs3n1:='0';
                                                if (viContar = 1) and ((Stgr_Todos19Numeros.Cells[19,2]='F') and (Stgr_Todos19Numeros.Cells[19,1]='V')) then
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
                                                        if (viContar2 = 1) and ((Stgr_Todos19Numeros.Cells[19,2]='F') and (Stgr_Todos19Numeros.Cells[19,1]='V')) then
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
//                                                    Self.WindowState := wsMinimized;
//                                                    Self.WindowState := wsNormal;
//                                                    Self.Repaint;
//                                                    Stgr_Todos19Numeros.Repaint;
//                                                    Scbx_dados.Repaint;
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
                                                if (viContar = 1) and ((Stgr_Todos19Numeros.Cells[19,2]='F') and (Stgr_Todos19Numeros.Cells[19,1]='V')) THEN
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
                                                        if (viContar2 = 1) and ((Stgr_Todos19Numeros.Cells[19,2]='F') and (Stgr_Todos19Numeros.Cells[19,1]='V')) THEN
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
                                                                    if (viContar3 = 1) and ((Stgr_Todos19Numeros.Cells[19,2]='F') and (Stgr_Todos19Numeros.Cells[19,1]='V')) THEN
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
                                                                        if (vs3n1.ToInteger>0) and (vs3n2.ToInteger>0) and (vs3n3.ToInteger>0) then
                                                                        begin
                                                                // --> Limitador soma 104 a 156
                                                                            viSoma10 := Stgr_N4_7numeros.Cells[2, viLinhas01].ToInteger + Stgr_N4_7numeros.Cells[3, viLinhas01].ToInteger +
                                                                                 Stgr_N4_7numeros.Cells[4, viLinhas01].ToInteger + Stgr_N4_7numeros.Cells[5, viLinhas01].ToInteger +
                                                                                 Stgr_N4_7numeros.Cells[6, viLinhas01].ToInteger + Stgr_N4_7numeros.Cells[7, viLinhas01].ToInteger +
                                                                                 Stgr_N4_7numeros.Cells[8, viLinhas01].ToInteger +
                                                                                 Stgr_N4_1a.Cells[02, viLinhas01].ToInteger +      Stgr_N4_1b.Cells[02, viLinhas01].ToInteger +
                                                                                 Stgr_N4_1c.Cells[02, viLinhas01].ToInteger;
                                                                            if (viSoma10 <= 156) and
                                                                              (viSoma10>= 104) then
                                                                            begin
                                                                               viLinhas01 := viLinhas01 + 1;
                                                                               viContar3 := 26;
                                                                               viContar2 := 26;
                                                                               viContar := 26;
                                                                            end else
                                                                            begin
                                                                              viContar3 := 26;
                                                                            end;
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
    Pgbr_EtaPa_01.Position := 100;
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


Procedure T_F_Gerador_1LinhDe19e1de6.GravarP1();
var
    viContar : integer;
    vcQUERY, vcNomeTabela : string;
begin
    vcNomeTabela := ' GERADOR_1DE19_1DE06_P1';
    for viContar := 1 to Stgr_N4_7numeros.RowCount-1 do
    begin
        vcQUERY  := 'INSERT INTO ' +vcNomeTabela+ ' (NUMERO) VALUES('
             +#39+  TRIM(Stgr_N4_7numeros.Cells[1,viContar])
             +#39+ ');';
        DM1.IBQ_Combinacoes.SQL.Clear;
        DM1.IBQ_Combinacoes.SQL.Add(vcQUERY)  ;
        DM1.IBQ_Combinacoes.ExecSQL;
    end;
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
    DM1.IBQ_Combinacoes.ExecSQL;
end;

Procedure T_F_Gerador_1LinhDe19e1de6.CarregarP1();
var
    viContar : integer;
    vcQUERY : string;
begin
    Stgr_N1_Aprovados.RowCount := 2;
    vcQUERY := 'select distinct(numero) from GERADOR_1DE19_1DE06_P1';
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add(vcQUERY)  ;
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;
    DM1.IBQ_Combinacoes.First;
    viContar := 1;
    while NOT(DM1.IBQ_Combinacoes.Eof) do
    begin
        Stgr_N1_Aprovados.Cells[0,viContar] := viContar.ToString;
        Stgr_N1_Aprovados.Cells[1,viContar] := DM1.IBQ_Combinacoes.FieldByName('NUMERO').AsString;
        viContar := viContar+1;
        DM1.IBQ_Combinacoes.Next;
    end;
    Stgr_N1_Aprovados.RowCount := viContar;
end;


Procedure T_F_Gerador_1LinhDe19e1de6.AprovadosFase1();
var
    viComb01,viComb02 : integer;
    viLinhas,viLinhaCapturada : integer;
begin
    Stgr_N15_AprovadosFase1.RowCount := 2;
    viLinhas := 1;
    for viComb01 := 1 to Stgr_N1_Aprovados.RowCount-1 do
    begin
        viLinhaCapturada := Stgr_N1_Aprovados.Cells[1,viComb01].ToInteger;
        for viComb02 := 1 to Stgr_N2_02de06.RowCount-1 do
        begin
            // --> Gerando os 15 números
            Stgr_N15_AprovadosFase1.Cells[0,viLinhas] := viLinhas.ToString;
            Stgr_N15_AprovadosFase1.Cells[1,viLinhas] := '+'+viLinhaCapturada.ToString;
            Stgr_N15_AprovadosFase1.Cells[02,viLinhas] := Stgr_N1_13de19.Cells[02,viLinhaCapturada];
            Stgr_N15_AprovadosFase1.Cells[03,viLinhas] := Stgr_N1_13de19.Cells[03,viLinhaCapturada];
            Stgr_N15_AprovadosFase1.Cells[04,viLinhas] := Stgr_N1_13de19.Cells[04,viLinhaCapturada];
            Stgr_N15_AprovadosFase1.Cells[05,viLinhas] := Stgr_N1_13de19.Cells[05,viLinhaCapturada];
            Stgr_N15_AprovadosFase1.Cells[06,viLinhas] := Stgr_N1_13de19.Cells[06,viLinhaCapturada];
            Stgr_N15_AprovadosFase1.Cells[07,viLinhas] := Stgr_N1_13de19.Cells[07,viLinhaCapturada];
            Stgr_N15_AprovadosFase1.Cells[08,viLinhas] := Stgr_N1_13de19.Cells[08,viLinhaCapturada];
            Stgr_N15_AprovadosFase1.Cells[09,viLinhas] := Stgr_N1_13de19.Cells[09,viLinhaCapturada];
            Stgr_N15_AprovadosFase1.Cells[10,viLinhas] := Stgr_N1_13de19.Cells[10,viLinhaCapturada];
            Stgr_N15_AprovadosFase1.Cells[11,viLinhas] := Stgr_N1_13de19.Cells[11,viLinhaCapturada];
            Stgr_N15_AprovadosFase1.Cells[12,viLinhas] := Stgr_N1_13de19.Cells[12,viLinhaCapturada];
            Stgr_N15_AprovadosFase1.Cells[13,viLinhas] := Stgr_N1_13de19.Cells[13,viLinhaCapturada];
            Stgr_N15_AprovadosFase1.Cells[14,viLinhas] := Stgr_N1_13de19.Cells[14,viLinhaCapturada];
            Stgr_N15_AprovadosFase1.Cells[15,viLinhas] := Stgr_N2_02de06.Cells[02,viComb02];
            Stgr_N15_AprovadosFase1.Cells[16,viLinhas] := Stgr_N2_02de06.Cells[03,viComb02];
            Stgr_N15_AprovadosFase1.Cells[17,viLinhas] := 'True';
            Stgr_N15_AprovadosFase1.Cells[18,viLinhas] := 'True';
            Stgr_N15_AprovadosFase1.Cells[19,viLinhas] := 'True';
            Stgr_N15_AprovadosFase1.Cells[20,viLinhas] := 'True';
            Stgr_N15_AprovadosFase1.Cells[21,viLinhas] := 'True';
            Stgr_N15_AprovadosFase1.Cells[22,viLinhas] := 'True';
            viLinhas := viLinhas+1;
        end;
    end;
    Stgr_N15_AprovadosFase1.RowCount := viLinhas;
end;




Procedure T_F_Gerador_1LinhDe19e1de6.GravarP4_FiltroTriplasDuplas();
var
    VI_AN_Comb1, viContar, viContarCelulas, viContarStgGrid : integer;
    vcQUERY, vcNomeTabela, vcCombinacoes15, vcCombinacoes10 : string;
begin
    vcNomeTabela := ' GERADOR_RESULT_1de19_TDI';
    viContarStgGrid := Stgr_N15_AprovadosFase1.RowCount-1;
    for VI_AN_Comb1 := 1 to viContarStgGrid  do
    begin
       vcCombinacoes15 :='';
           FOR viContarCelulas := 1 TO 25 DO
           BEGIN
                Stgr_Todos_Numeros.Cells [viContarCelulas ,1]:='F';
           end;
           FOR viContarCelulas := 2 TO 16 DO
           BEGIN
//               try
//                   vcCombinacoes15 := vcCombinacoes15 + TRIM(Stgr_N15_AprovadosFase1.Cells[viContarCelulas,VI_AN_Comb1]) +' ';
//               except
//                  vcCombinacoes15 := vcCombinacoes15 +'00 ';
//               end;
               Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_N15_AprovadosFase1.Cells[viContarCelulas,VI_AN_Comb1])) ,1]:='V';
           END; // FOR viContarCelulas
               // -------------------------------
               // --  MONTANDO AS 10 SOBRAS   ---
               // -------------------------------
                  viContarCelulas := 1;
                  vcCombinacoes10 := '';
                  vcCombinacoes15 := '';
                  FOR viContar :=1 TO 25 DO
                  BEGIN
                      IF (Stgr_Todos_Numeros.Cells[viContar,1]='V') THEN
                      BEGIN
                          vcCombinacoes15 := vcCombinacoes15 + RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2) +' ' ;
                      END; // IF (Stgr_Todos_Numeros
                      // SOBRAS
                      IF (Stgr_Todos_Numeros.Cells[viContar,1]='F') THEN
                      BEGIN
                          vcCombinacoes10 := vcCombinacoes10 + RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2) +' ' ;
                          viContarCelulas := viContarCelulas + 1;
                      END; // IF (Stgr_Todos_Numeros
                  END; // FOR viContar
        vcQUERY  := 'INSERT INTO ' +vcNomeTabela+ ' (DADOS, DADOS_NS, Flag1, Flag8, Flag81, Flag6, Flag09) VALUES('
                 +#39+  TRIM(vcCombinacoes15)  + #39 +','
                 +#39+  TRIM(vcCombinacoes10)  + #39 +','
                 +#39+  TRIM(Stgr_N15_AprovadosFase1.Cells[17,VI_AN_Comb1]) + #39 +','
                 +#39+  TRIM(Stgr_N15_AprovadosFase1.Cells[18,VI_AN_Comb1]) + #39 +','
                 +#39+  TRIM(Stgr_N15_AprovadosFase1.Cells[19,VI_AN_Comb1]) + #39 +','
                 +#39+  TRIM(Stgr_N15_AprovadosFase1.Cells[20,VI_AN_Comb1]) + #39 +','
                 +#39+  TRIM(Stgr_N15_AprovadosFase1.Cells[21,VI_AN_Comb1])
             +#39+ ');';
        DM1.IBQ_Combinacoes.SQL.Clear;
        DM1.IBQ_Combinacoes.SQL.Add(vcQUERY)  ;
        DM1.IBQ_Combinacoes.ExecSQL;
    end;
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
    DM1.IBQ_Combinacoes.ExecSQL;
        DM1.IBQ_Combinacoes.Transaction.StartTransaction;
        DM1.IBQ_Combinacoes.Transaction.Commit;
        DM1.IBQ_Combinacoes.Transaction.StartTransaction;
end;


procedure T_F_Gerador_1LinhDe19e1de6.bbt_TriplasDuplasIsoladosClick(Sender: TObject);
begin
    if Stgr_N1_13de19.RowCount=2 then
        BBT_Numero01e02.Click;
    vi_N4Parte := 5;
    BBT_Numero04Triplas_Duplas();
    GravarP1();
    CarregarP1();
    AprovadosFase1();
    GravarP4_FiltroTriplasDuplas();
end;


Function T_F_Gerador_1LinhDe19e1de6.ConfirmaQtdParesDe14Numeros(viLinhas01, viModo: Integer) :boolean;
var
 viContar: Integer;
 viContarCelulas: Integer;
begin
  viContarCelulas := 0;
  for viContar := 2 to 15 do
  begin
    if (Stgr_N14de19.Cells[viContar, viLinhas01].ToInteger mod 2) = 0 then
      viContarCelulas := viContarCelulas + 1;
  end;
  if viModo = 1 then
      if (viContarCelulas = 6) then
      begin
        result := true;
        exit;
      end;
  if viModo = 2 then
      if (viContarCelulas = 6) OR (viContarCelulas=8) OR (viContarCelulas=4) then
      begin
        result := true;
        exit;
      end;
  result := false;
end;


procedure T_F_Gerador_1LinhDe19e1de6.bbt_ac14em19Click(Sender: TObject);
begin
    ac14em19 (2);
end;


procedure T_F_Gerador_1LinhDe19e1de6.ac14em19(viModo : Integer);
var
     viContarCelulas, viLinhas01, viLinhas02, viBaseComb, viContar : Integer;
     viComb15_01, viComb15_02, viComb15_03, viComb15_04, viComb15_05, viComb15_06, viComb15_07, viComb15_08, viComb15_09,
           viComb15_10, viComb15_11, viComb15_12, viComb15_13, viComb15_14 : Integer;
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
    Scbx_dados.HorzScrollBar.Position := 4300;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    viLinhas01 := 1;
    Stgr_N14de19.RowCount := 2;
    Stgr_N14de19.Repaint;
    try
        for viBaseComb := 1 TO (Stgr_Base19.RowCount-1) DO
        BEGIN
            for viComb15_01 := 2 TO 07 DO
            BEGIN
                for viComb15_02 := viComb15_01 + 1 TO 08 DO
                BEGIN
                    for viComb15_03 := viComb15_02 + 1 TO 09 DO
                    BEGIN
                        for viComb15_04 := viComb15_03 + 1 TO 10 DO
                        BEGIN
                            for viComb15_05 := viComb15_04 + 1 TO 11 DO
                            BEGIN
                                for viComb15_06 := viComb15_05 + 1 TO 12 DO
                                BEGIN
                                    for viComb15_07 := viComb15_06 + 1 TO 13-0 DO  //-2
                                    BEGIN
                                        for viComb15_08 := viComb15_07 + 1 TO 14-0 DO
                                        BEGIN
                                            for viComb15_09 := viComb15_08 + 1 TO 15-0 DO
                                            BEGIN
                                                for viComb15_10 := viComb15_09 + 1 TO 16-0 DO
                                                BEGIN
                                                    for viComb15_11 := viComb15_10 + 1 TO 17-0 DO
                                                        BEGIN
                                                        for viComb15_12 := viComb15_11 + 1 TO 18-0 DO
                                                        BEGIN
                                                            for viComb15_13 := viComb15_12 + 1 TO 19-0 DO
                                                            BEGIN
                                                                for viComb15_14 := viComb15_13 + 1 TO 20-0 DO
                                                                BEGIN
                                                                    Stgr_N14de19.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                                                    Stgr_N14de19.Cells[01,viLinhas01] := '+' + INTtoSTR( viBaseComb ) + '' ;
                                                                    Stgr_N14de19.Cells[02,viLinhas01] := Stgr_Base19.Cells[viComb15_01,viBaseComb] ;
                                                                    Stgr_N14de19.Cells[03,viLinhas01] := Stgr_Base19.Cells[viComb15_02,viBaseComb] ;
                                                                    Stgr_N14de19.Cells[04,viLinhas01] := Stgr_Base19.Cells[viComb15_03,viBaseComb] ;
                                                                    Stgr_N14de19.Cells[05,viLinhas01] := Stgr_Base19.Cells[viComb15_04,viBaseComb] ;
                                                                    Stgr_N14de19.Cells[06,viLinhas01] := Stgr_Base19.Cells[viComb15_05,viBaseComb] ;
                                                                    Stgr_N14de19.Cells[07,viLinhas01] := Stgr_Base19.Cells[viComb15_06,viBaseComb] ;
                                                                    Stgr_N14de19.Cells[08,viLinhas01] := Stgr_Base19.Cells[viComb15_07,viBaseComb] ;
                                                                    Stgr_N14de19.Cells[09,viLinhas01] := Stgr_Base19.Cells[viComb15_08,viBaseComb] ;
                                                                    Stgr_N14de19.Cells[10,viLinhas01] := Stgr_Base19.Cells[viComb15_09,viBaseComb] ;
                                                                    Stgr_N14de19.Cells[11,viLinhas01] := Stgr_Base19.Cells[viComb15_10,viBaseComb] ;
                                                                    Stgr_N14de19.Cells[12,viLinhas01] := Stgr_Base19.Cells[viComb15_11,viBaseComb] ;
                                                                    Stgr_N14de19.Cells[13,viLinhas01] := Stgr_Base19.Cells[viComb15_12,viBaseComb] ;
                                                                    Stgr_N14de19.Cells[14,viLinhas01] := Stgr_Base19.Cells[viComb15_13,viBaseComb] ;
                                                                    Stgr_N14de19.Cells[15,viLinhas01] := Stgr_Base19.Cells[viComb15_14,viBaseComb] ;
                                                                    if ConfirmaQtdParesDe14Numeros(viLinhas01, viModo) then
                                                                        viLinhas01 := viLinhas01 + 1;
                                                                END;
                                                            END; //  for viComb15_13
                                                        END; //  for viComb15_12
                                                    END; //  for viComb15_11
                                                END; //  for viComb15_10
                                            END; //  for viComb15_09
                                        END; //  for viComb15_08
                                    END; //  for viComb15_07
                                END; //  for viComb15_06
                            END; //  for viComb15_05
                            Stgr_N14de19.RowCount := viLinhas01;
                            Stgr_N14de19.Repaint;
                            Pgbr_EtaPa_01.Position := Trunc(((viComb15_01*viComb15_02) /(7*8*2))*100);
                            SLEEP(10);
                        END; //  for viComb15_04
                    END; //  for viComb15_03
                sleep(1);
                END; //  for viComb15_02
            END; //  for viComb15_01
            Stgr_N1_06de13.RowCount := viLinhas01;
            Stgr_N1_06de13.Repaint;
                Stgr_N14de19.RowCount := viLinhas01;
                Stgr_N14de19.Repaint;
                Pgbr_EtaPa_01.Position := Trunc(((viComb15_01*viComb15_02) /(7*8*2))*100);
                SLEEP(10);
        END; //  for viBaseComb
    finally
        Stgr_N14de19.RowCount := viLinhas01;
        Stgr_N14de19.Repaint;
    end;
    viLinhas01 := 01;
    try
        for viBaseComb := 1 TO (Stgr_N14de19.RowCount-1) DO
        BEGIN
            for viComb15_01 := 2 TO 07 DO
            BEGIN
                // --> Gerando os 15 números
                Stgr_N15_AprovadosFase1.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                Stgr_N15_AprovadosFase1.Cells[01,viLinhas01] := Stgr_N14de19.Cells[01,viBaseComb] ;
                Stgr_N15_AprovadosFase1.Cells[02,viLinhas01] := Stgr_N14de19.Cells[02,viBaseComb] ;
                Stgr_N15_AprovadosFase1.Cells[03,viLinhas01] := Stgr_N14de19.Cells[03,viBaseComb] ;
                Stgr_N15_AprovadosFase1.Cells[04,viLinhas01] := Stgr_N14de19.Cells[04,viBaseComb] ;
                Stgr_N15_AprovadosFase1.Cells[05,viLinhas01] := Stgr_N14de19.Cells[05,viBaseComb] ;
                Stgr_N15_AprovadosFase1.Cells[06,viLinhas01] := Stgr_N14de19.Cells[06,viBaseComb] ;
                Stgr_N15_AprovadosFase1.Cells[07,viLinhas01] := Stgr_N14de19.Cells[07,viBaseComb] ;
                Stgr_N15_AprovadosFase1.Cells[08,viLinhas01] := Stgr_N14de19.Cells[08,viBaseComb] ;
                Stgr_N15_AprovadosFase1.Cells[09,viLinhas01] := Stgr_N14de19.Cells[09,viBaseComb] ;
                Stgr_N15_AprovadosFase1.Cells[10,viLinhas01] := Stgr_N14de19.Cells[10,viBaseComb] ;
                Stgr_N15_AprovadosFase1.Cells[11,viLinhas01] := Stgr_N14de19.Cells[11,viBaseComb] ;
                Stgr_N15_AprovadosFase1.Cells[12,viLinhas01] := Stgr_N14de19.Cells[12,viBaseComb] ;
                Stgr_N15_AprovadosFase1.Cells[13,viLinhas01] := Stgr_N14de19.Cells[13,viBaseComb] ;
                Stgr_N15_AprovadosFase1.Cells[14,viLinhas01] := Stgr_N14de19.Cells[14,viBaseComb] ;
                Stgr_N15_AprovadosFase1.Cells[15,viLinhas01] := Stgr_N14de19.Cells[15,viBaseComb] ;
                Stgr_N15_AprovadosFase1.Cells[16,viLinhas01] := Stgr_Base06.Cells[viComb15_01,1];
                Stgr_N15_AprovadosFase1.Cells[17,viLinhas01] := 'True';
                Stgr_N15_AprovadosFase1.Cells[18,viLinhas01] := 'True';
                Stgr_N15_AprovadosFase1.Cells[19,viLinhas01] := 'True';
                Stgr_N15_AprovadosFase1.Cells[20,viLinhas01] := 'True';
                Stgr_N15_AprovadosFase1.Cells[21,viLinhas01] := 'True';
                Stgr_N15_AprovadosFase1.Cells[22,viLinhas01] := 'True';
//                if ConfirmaQtdParesDe15Numeros(viLinhas01) then
                    viLinhas01 := viLinhas01 + 1;
            END;
        END;
    finally
        Stgr_N15_AprovadosFase1.RowCount := viLinhas01;
        Stgr_N15_AprovadosFase1.Repaint;
        Pgbr_EtaPa_01.Position := 99;
        Pgbr_EtaPa_01.Repaint;
    end;
    Pgbr_EtaPa_01.Position := 100;
    Pgbr_EtaPa_01.Repaint;
    Pa_Titulo_Simulacao.Repaint;
    SLEEP(100);
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
    Pgbr_EtaPa_01.Repaint;
    SLEEP(100);
end;


procedure T_F_Gerador_1LinhDe19e1de6.bbt_ac15em19Click(Sender: TObject);
begin
    Ac15em19 (2);
end;

procedure T_F_Gerador_1LinhDe19e1de6.Ac15em19 (viModo : Integer);
var
     viContarCelulas, viLinhas01, viLinhas02, viBaseComb, viContar : Integer;
     viComb15_01, viComb15_02, viComb15_03, viComb15_04, viComb15_05, viComb15_06, viComb15_07, viComb15_08, viComb15_09,
           viComb15_10, viComb15_11, viComb15_12, viComb15_13, viComb15_14, viComb15_15 : Integer;
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
    Scbx_dados.HorzScrollBar.Position := 4300;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    viLinhas01 := 1;
    Stgr_N15_AprovadosFase1.RowCount := 2;
    Stgr_N15_AprovadosFase1.Repaint;
    try
        for viBaseComb := 1 TO (Stgr_Base19.RowCount-1) DO
        BEGIN
            for viComb15_01 := 2 TO 06 DO
            BEGIN
                for viComb15_02 := viComb15_01 + 1 TO 07 DO
                BEGIN
                    for viComb15_03 := viComb15_02 + 1 TO 08 DO
                    BEGIN
                        for viComb15_04 := viComb15_03 + 1 TO 09 DO
                        BEGIN
                            for viComb15_05 := viComb15_04 + 1 TO 10 DO
                            BEGIN
                                for viComb15_06 := viComb15_05 + 1 TO 11 DO
                                BEGIN
                                    for viComb15_07 := viComb15_06 + 1 TO 12-0 DO  //-2
                                    BEGIN
                                        for viComb15_08 := viComb15_07 + 1 TO 13-0 DO
                                            BEGIN
                                            for viComb15_09 := viComb15_08 + 1 TO 14-0 DO
                                            BEGIN
                                                for viComb15_10 := viComb15_09 + 1 TO 15-0 DO
                                                BEGIN
                                                    for viComb15_11 := viComb15_10 + 1 TO 16-0 DO
                                                        BEGIN
                                                        for viComb15_12 := viComb15_11 + 1 TO 17-0 DO
                                                        BEGIN
                                                            for viComb15_13 := viComb15_12 + 1 TO 18-0 DO
                                                            BEGIN
                                                                for viComb15_14 := viComb15_13 + 1 TO 19-0 DO
                                                                BEGIN
                                                                    for viComb15_15 := viComb15_14 + 1 TO 20-0 DO
                                                                    BEGIN
                                                                        // --> Gerando os 15 números
                                                                        Stgr_N15_AprovadosFase1.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                                                        Stgr_N15_AprovadosFase1.Cells[01,viLinhas01] := '+' + INTtoSTR( viBaseComb ) + '' ;
                                                                        Stgr_N15_AprovadosFase1.Cells[02,viLinhas01] := Stgr_Base19.Cells[viComb15_01,viBaseComb] ;
                                                                        Stgr_N15_AprovadosFase1.Cells[03,viLinhas01] := Stgr_Base19.Cells[viComb15_02,viBaseComb] ;
                                                                        Stgr_N15_AprovadosFase1.Cells[04,viLinhas01] := Stgr_Base19.Cells[viComb15_03,viBaseComb] ;
                                                                        Stgr_N15_AprovadosFase1.Cells[05,viLinhas01] := Stgr_Base19.Cells[viComb15_04,viBaseComb] ;
                                                                        Stgr_N15_AprovadosFase1.Cells[06,viLinhas01] := Stgr_Base19.Cells[viComb15_05,viBaseComb] ;
                                                                        Stgr_N15_AprovadosFase1.Cells[07,viLinhas01] := Stgr_Base19.Cells[viComb15_06,viBaseComb] ;
                                                                        Stgr_N15_AprovadosFase1.Cells[08,viLinhas01] := Stgr_Base19.Cells[viComb15_07,viBaseComb] ;
                                                                        Stgr_N15_AprovadosFase1.Cells[09,viLinhas01] := Stgr_Base19.Cells[viComb15_08,viBaseComb] ;
                                                                        Stgr_N15_AprovadosFase1.Cells[10,viLinhas01] := Stgr_Base19.Cells[viComb15_09,viBaseComb] ;
                                                                        Stgr_N15_AprovadosFase1.Cells[11,viLinhas01] := Stgr_Base19.Cells[viComb15_10,viBaseComb] ;
                                                                        Stgr_N15_AprovadosFase1.Cells[12,viLinhas01] := Stgr_Base19.Cells[viComb15_11,viBaseComb] ;
                                                                        Stgr_N15_AprovadosFase1.Cells[13,viLinhas01] := Stgr_Base19.Cells[viComb15_12,viBaseComb] ;
                                                                        Stgr_N15_AprovadosFase1.Cells[14,viLinhas01] := Stgr_Base19.Cells[viComb15_13,viBaseComb] ;
                                                                        Stgr_N15_AprovadosFase1.Cells[15,viLinhas01] := Stgr_Base19.Cells[viComb15_14,viBaseComb] ;
                                                                        Stgr_N15_AprovadosFase1.Cells[16,viLinhas01] := Stgr_Base19.Cells[viComb15_15,viBaseComb] ;
                                                                        Stgr_N15_AprovadosFase1.Cells[17,viLinhas01] := 'True';
                                                                        Stgr_N15_AprovadosFase1.Cells[18,viLinhas01] := 'True';
                                                                        Stgr_N15_AprovadosFase1.Cells[19,viLinhas01] := 'True';
                                                                        Stgr_N15_AprovadosFase1.Cells[20,viLinhas01] := 'True';
                                                                        Stgr_N15_AprovadosFase1.Cells[21,viLinhas01] := 'True';
                                                                        Stgr_N15_AprovadosFase1.Cells[22,viLinhas01] := 'True';
                                                                        if ConfirmaQtdParesDe15Numeros(viLinhas01, viModo) then
                                                                            viLinhas01 := viLinhas01 + 1;
                                                                    END;
                                                                END;
                                                            END; //  for viComb15_13
                                                        END; //  for viComb15_12
                                                    END; //  for viComb15_11
                                                END; //  for viComb15_10
                                            END; //  for viComb15_09
                                        END; //  for viComb15_08
                                    END; //  for viComb15_07
                                END; //  for viComb15_06
                            END; //  for viComb15_05
                            Stgr_N15_AprovadosFase1.RowCount := viLinhas01;
                            Stgr_N15_AprovadosFase1.Repaint;
                            Pgbr_EtaPa_01.Position := Trunc(((viComb15_01*viComb15_02) /(6*7))*100);
                            SLEEP(10);
                        END; //  for viComb15_04
                    END; //  for viComb15_03
                sleep(1);
                END; //  for viComb15_02
            END; //  for viComb15_01
            Stgr_N1_06de13.RowCount := viLinhas01;
            Stgr_N1_06de13.Repaint;
                Stgr_N15_AprovadosFase1.RowCount := viLinhas01;
                Stgr_N15_AprovadosFase1.Repaint;
                Pgbr_EtaPa_01.Position := Trunc(((viComb15_01*viComb15_02) /(6*7))*100);
                SLEEP(10);
        END; //  for viBaseComb
    finally
        Stgr_N15_AprovadosFase1.RowCount := viLinhas01;
        Stgr_N15_AprovadosFase1.Repaint;
    end;
    Pgbr_EtaPa_01.Position := 100;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
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
    vcCombinacoes2, vsQueryA, vsQueryB, vsCondicaoQuery1, vsSubTitulo : String;
begin
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_1de19_TDI;')  ;
    DM1.IBQ_Combinacoes.ExecSQL;
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
    DM1.IBQ_Combinacoes.ExecSQL ;
    DM1.IBQ_Combinacoes.Transaction.StartTransaction;
    DM1.IBQ_Combinacoes.Transaction.Commit;
    DM1.IBQ_Combinacoes.Transaction.StartTransaction;
    GravarP4_FiltroTriplasDuplas();
    vsCondicaoQuery1 := 'Where ';
    if RB_AC13em19.Checked then
        vsSubTitulo := '1/'+cb_SubAmostragem.Text+'. Filtragem a partir de 1Tripla, 2Duplas e 3Isolados.';
    if RB_AC15em19.Checked then
        vsSubTitulo := ' Filtragem a partir A.comb. 15 em 19 sendo 12 dos 15 são 6I e 6P / 8i e 4P / 4i e 8P.';
    if RB_AC15em19_6i.Checked then
        vsSubTitulo := ' A.comb. 15 em 19 sendo 12 dos 15 são 6I e 6P.';
    if RB_AC14em19.Checked then
        vsSubTitulo := ' Filtragem a A.comb. 14 em 19 sendo 12 dos 15 são 6I e 6P / 8i e 4P / 4i e 8P.';
    if RB_AC14em19_6i.Checked then
        vsSubTitulo := ' A.comb. 15 em 19 sendo 12 dos 15 são 6I e 6P.';
{ DONE 1 -oSilvão -cMarcador : Ajustar Flags }
    vsCondicaoQuery1  := vsCondicaoQuery1 +'(FLAG1=''True'' or FLAG1=''-1'') and (FLAG8=''True'' or FLAG8=''-1'') and (FLAG81=''True'' or FLAG81=''-1'') and (FLAG09=''14'' or FLAG09=''15'' or FLAG09=''-1'') ';

    if cb_Limitador18Soma234.ItemIndex=1 then
    begin
        IF cb_10Numeros05.ItemIndex < 1 then
            //vsCondicaoQuery1  := vsCondicaoQuery1 +'FLAG1=''True'' '
        else
            //vsCondicaoQuery1  := vsCondicaoQuery1 +'FLAG1=''True'' AND ';
        vsSubTitulo := vsSubTitulo + #13+ 'junto com a Etapa 07 -Limitador 18 nº soma 234';
    end;
    IF cb_10Numeros05.ItemIndex = 1 THEN
    BEGIN
        //vsCondicaoQuery1  := vsCondicaoQuery1 + 'FLAG8=''True'' ';
        vsSubTitulo := vsSubTitulo +#13+ 'junto com a Etapa 08 -10 Nºs de 05' + cb_10Numeros05.Text;
    end else
    IF cb_10Numeros05.ItemIndex = 2 THEN
    BEGIN
        //vsCondicaoQuery1  := vsCondicaoQuery1 + 'FLAG81=''True'' ';
        vsSubTitulo := vsSubTitulo +#13+ 'junto com a Etapa 08 -10 Nºs de 05' + cb_10Numeros05.Text;
    END ELSE
    IF cb_10Numeros05.ItemIndex = 3 THEN
    begin
        //vsCondicaoQuery1  := vsCondicaoQuery1 + 'FLAG8=''True'' and FLAG81 = ''True'' ';
        vsSubTitulo := vsSubTitulo +#13+ 'junto com a Etapa 08 -10 Nºs de 05' + cb_10Numeros05.Text;
    end;

    IF cb_Limitador8Linhas22.ItemIndex = 1 THEN
    begin
        //vsCondicaoQuery1  := vsCondicaoQuery1 + 'FLAG09=''True'' ';
        vsSubTitulo := vsSubTitulo +#13+ 'junto com a Etapa 09 - Limitador 8 Linhas com 22 Números';
    end;
    if (cb_Limitador18Soma234.ItemIndex<=0) and (cb_10Numeros05.ItemIndex <= 0) and (cb_Limitador8Linhas22.ItemIndex<=0) then
        vsCondicaoQuery1 := '';
    vsQueryA := 'SELECT COUNT(distinct(DADOS)) AS SOMADADOS FROM GERADOR_RESULT_1de19_TDI '+ vsCondicaoQuery1;
    vsQueryB := 'select DISTINCT (dados), dados_ns FROM GERADOR_RESULT_1de19_TDI '+vsCondicaoQuery1+' ORDER BY DADOS;';

    GerarBlocoNotas1('GERADOR_RESULT_1de19_TDI', 'GERADOR Resultados a Partir de 1 Linha de 19 x 1 linha de 06 ', vsSubTitulo, vsQueryA, vsQueryB);
    SHOWMESSAGE('BLOCO DE NOTAS GERADO em'+#13+'C:\CXLOTOFACIL\GERADOR_RESULT_1de19_TDI.TXT');
end;


Procedure T_F_Gerador_1LinhDe19e1de6.GerarBlocoNotas1(vc_Nome_Tabela, vcTitulo, vcSubTitulo, vsQuery1, vsQuery2: String);
var
    viContar, vc_qtd_pares : Integer;
    vcCombinacoes2 : String;
begin
        IF NOT(DM1.IBTransaction2.Active) THEN DM1.IBQ_Combin_02.Transaction.StartTransaction;
        DM1.IBQ_Combinacoes.Transaction.Commit;
        IF NOT(DM1.IBTransaction2.Active) THEN DM1.IBQ_Combin_02.Transaction.StartTransaction;
        DM1.IBDatabase2.ForceClose;
        DM1.IBDatabase2.Open;
        DM1.IBDatabase2.Connected := False;
        DM1.IBDatabase2.Connected := True;
        IF NOT(DM1.IBTransaction2.Active) THEN DM1.IBTransaction2.StartTransaction;

        IF NOT(DM1.IBTransaction1.Active) THEN DM1.IBQ_Combinacoes.Transaction.StartTransaction;
        DM1.IBQ_Combinacoes.Transaction.Commit;
        IF NOT(DM1.IBTransaction1.Active) THEN DM1.IBQ_Combinacoes.Transaction.StartTransaction;
        DM1.IBDatabase1.ForceClose;
        DM1.IBDatabase1.Open;
        DM1.IBDatabase1.Connected := False;
        DM1.IBDatabase1.Connected := True;

    Mem_Combinacoes_Todas.Clear;
    DM1.IBQ_Combinacoes.Close;
    DM1.IBQ_Combinacoes.SQL.Clear;
//    DM1.IBQ_Combinacoes.SQL.Add('SELECT COUNT(distinct(DADOS)) AS SOMADADOS FROM ' +vc_Nome_Tabela+ ' WHERE FLAG1=''True'';')  ;
    DM1.IBQ_Combinacoes.SQL.Add(vsQuery1)  ;
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;
    viContar := DM1.IBQ_Combinacoes.FIELDBYNAME('SOMADADOS').AsInteger;
     Mem_Combinacoes_Todas.Lines.Add(vcTitulo) ;
     Mem_Combinacoes_Todas.Lines.Add(vcSubTitulo) ;
    Mem_Combinacoes_Todas.Lines.Add('TOTAL: ' + viContar.ToString) ;
    Mem_Combinacoes_Todas.Lines.Add('----------------------------') ;
    IF NOT(DM1.IBTransaction1.Active) THEN DM1.IBTransaction1.StartTransaction;
    DM1.IBQ_Combinacoes.SQL.Clear;
//    DM1.IBQ_Combinacoes.SQL.Add('select DISTINCT (dados), dados_ns FROM ' +vc_Nome_Tabela+ '  WHERE FLAG1=''True'' ORDER BY DADOS;')  ;
    DM1.IBQ_Combinacoes.SQL.Add(vsQuery2)  ;
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
    sleep (500);
    winExec(PAnsiChar('Notepad.exe C:\CXLOTOFACIL\'+vc_Nome_Tabela+'.TXT'), sw_shownormal);
    winExec(PAnsiChar('Notepad.exe C:\CXLOTOFACIL\'+vc_Nome_Tabela+'.TXT'), sw_shownormal);
    winExec(PAnsiChar('Notepad.exe C:\CXLOTOFACIL\'+vc_Nome_Tabela+'.TXT'), sw_shownormal);
    winExec(PAnsiChar('Notepad.exe C:\CXLOTOFACIL\'+vc_Nome_Tabela+'.TXT'), sw_shownormal);
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


procedure T_F_Gerador_1LinhDe19e1de6.Limitador18Soma234();
var
    viLinhas15, viLinhas12 : Integer;
    viColunas15, viColunas12, viContarCelulas : Smallint;
begin
    Scbx_dados.HorzScrollBar.Position := 4425;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    Pgbr_EtaPa_01_07.Position := 0;
    for viLinhas15 := 1 to Stgr_N15_AprovadosFase1.RowCount-1 do
    begin
        Stgr_N15_AprovadosFase1.Cells[17,viLinhas15] := 'False';
        for viLinhas12 := 1 to Stgr_N7_12numeros.RowCount-1 do
        begin
            viContarCelulas := 0;
            for viColunas15 := 2 to 16 do
            begin
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N7_12numeros.Cells[01,viLinhas12] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N7_12numeros.Cells[02,viLinhas12] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N7_12numeros.Cells[03,viLinhas12] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N7_12numeros.Cells[04,viLinhas12] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N7_12numeros.Cells[05,viLinhas12] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N7_12numeros.Cells[06,viLinhas12] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N7_12numeros.Cells[07,viLinhas12] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N7_12numeros.Cells[08,viLinhas12] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N7_12numeros.Cells[09,viLinhas12] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N7_12numeros.Cells[10,viLinhas12] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N7_12numeros.Cells[11,viLinhas12] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N7_12numeros.Cells[12,viLinhas12] then
                    viContarCelulas:= viContarCelulas+1;
            end; // For viColunas15
            if viContarCelulas=12 then
               break;
        end; // For viLinhas12
            //  --> coluna 17 é flag para o filtro 7
            if (viContarCelulas=12) then Stgr_N15_AprovadosFase1.Cells[17,viLinhas15] := 'True';
            // else Stgr_N15_AprovadosFase1.Cells[17,viLinhas15] := 'False';
        Pgbr_EtaPa_01_07.Position := Trunc(viLinhas15/(Stgr_N15_AprovadosFase1.RowCount-1)*100);
    end; // For viLinhas15
    Pgbr_EtaPa_01_07.Position := 100;
    Pgbr_EtaPa_01_07.Repaint;
end;


procedure T_F_Gerador_1LinhDe19e1de6.Filtrar10Numeros05_1;
var
    viLinhas15, viLinhas12 : Integer;
    viColunas15, viColunas12, viContarCelulas : Smallint;
begin
    Scbx_dados.HorzScrollBar.Position := 4425;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    Pgbr_EtaPa_01_08_m1.Position := 0;
    for viLinhas15 := 1 to Stgr_N15_AprovadosFase1.RowCount-1 do
    begin
        Stgr_N15_AprovadosFase1.Cells[18,viLinhas15] := 'False';
        for viLinhas12 := 1 to stgr_N08Modo1_Resultado.RowCount-1 do
        begin
            viContarCelulas := 0;
            for viColunas15 := 2 to 16 do
            begin
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = stgr_N08Modo1_Resultado.Cells[01,viLinhas12] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = stgr_N08Modo1_Resultado.Cells[02,viLinhas12] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = stgr_N08Modo1_Resultado.Cells[03,viLinhas12] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = stgr_N08Modo1_Resultado.Cells[04,viLinhas12] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = stgr_N08Modo1_Resultado.Cells[05,viLinhas12] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = stgr_N08Modo1_Resultado.Cells[06,viLinhas12] then
                    viContarCelulas:= viContarCelulas+1;
            end; // For viColunas15
            if viContarCelulas=6 then
               break;
        end; // For viLinhas12
            //  --> coluna 17 é flag para o filtro 7
            if (viContarCelulas=6) then Stgr_N15_AprovadosFase1.Cells[18,viLinhas15] := 'True';
        Pgbr_EtaPa_01_08_m1.Position := Trunc(viLinhas15/(Stgr_N15_AprovadosFase1.RowCount-1)*100);
    end; // For viLinhas15
    Pgbr_EtaPa_01_08_m1.Position := 100;
    Pgbr_EtaPa_01_08_m1.Repaint;
end;


procedure T_F_Gerador_1LinhDe19e1de6.Filtrar10Numeros05_2;
var
    viLinhas15, viLinhas12 : Integer;
    viColunas15, viColunas12, viContarCelulas : Smallint;
begin
    Scbx_dados.HorzScrollBar.Position := 4425;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    Pgbr_EtaPa_01_08_m2.Position := 0;
    for viLinhas15 := 1 to Stgr_N15_AprovadosFase1.RowCount-1 do
    begin
        Stgr_N15_AprovadosFase1.Cells[19,viLinhas15] := 'False';
        for viLinhas12 := 1 to stgr_N08Modo2_Resultado.RowCount-1 do
        begin
            viContarCelulas := 0;
            for viColunas15 := 2 to 16 do
            begin
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = stgr_N08Modo2_Resultado.Cells[01,viLinhas12] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = stgr_N08Modo2_Resultado.Cells[02,viLinhas12] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = stgr_N08Modo2_Resultado.Cells[03,viLinhas12] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = stgr_N08Modo2_Resultado.Cells[04,viLinhas12] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = stgr_N08Modo2_Resultado.Cells[05,viLinhas12] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = stgr_N08Modo2_Resultado.Cells[06,viLinhas12] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = stgr_N08Modo2_Resultado.Cells[07,viLinhas12] then
                    viContarCelulas:= viContarCelulas+1;
            end; // For viColunas15
            if viContarCelulas=7 then
               break;
        end; // For viLinhas12
            //  --> coluna 17 é flag para o filtro 7
            if (viContarCelulas=7) then Stgr_N15_AprovadosFase1.Cells[19,viLinhas15] := 'True';
        Pgbr_EtaPa_01_08_m2.Position := Trunc(viLinhas15/(Stgr_N15_AprovadosFase1.RowCount-1)*100);
    end; // For viLinhas15
    Pgbr_EtaPa_01_08_m2.Position := 100;
    Pgbr_EtaPa_01_08_m2.Repaint;
end;



procedure T_F_Gerador_1LinhDe19e1de6.Limitador8Linhas22();
var
    viLinhas15, viLinhas08 : Integer;
    viColunas15, viColunas22, viContarCelulas : Smallint;
begin
    Scbx_dados.HorzScrollBar.Position := 13475;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    Pgbr_EtaPa_01_09.Position := 0;
    for viLinhas15 := 1 to Stgr_N15_AprovadosFase1.RowCount-1 do
    begin
        Stgr_N15_AprovadosFase1.Cells[21,viLinhas15] := 'False';
        for viLinhas08 := 1 to Stgr_N09Base22numeros.RowCount-1 do
        begin
            viContarCelulas := 0;
            for viColunas15 := 2 to 16 do
            begin
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N09Base22numeros.Cells[01,viLinhas08] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N09Base22numeros.Cells[02,viLinhas08] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N09Base22numeros.Cells[03,viLinhas08] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N09Base22numeros.Cells[04,viLinhas08] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N09Base22numeros.Cells[05,viLinhas08] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N09Base22numeros.Cells[06,viLinhas08] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N09Base22numeros.Cells[07,viLinhas08] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N09Base22numeros.Cells[08,viLinhas08] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N09Base22numeros.Cells[09,viLinhas08] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N09Base22numeros.Cells[10,viLinhas08] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N09Base22numeros.Cells[11,viLinhas08] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N09Base22numeros.Cells[12,viLinhas08] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N09Base22numeros.Cells[13,viLinhas08] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N09Base22numeros.Cells[14,viLinhas08] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N09Base22numeros.Cells[15,viLinhas08] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N09Base22numeros.Cells[16,viLinhas08] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N09Base22numeros.Cells[17,viLinhas08] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N09Base22numeros.Cells[18,viLinhas08] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N09Base22numeros.Cells[19,viLinhas08] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N09Base22numeros.Cells[20,viLinhas08] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N09Base22numeros.Cells[21,viLinhas08] then
                    viContarCelulas:= viContarCelulas+1;
                if Stgr_N15_AprovadosFase1.Cells[viColunas15,viLinhas15] = Stgr_N09Base22numeros.Cells[22,viLinhas08] then
                    viContarCelulas:= viContarCelulas+1;
            end; // For viColunas15
            if viContarCelulas>=15 then
               break;
        end; // For viLinhas08
            //  --> coluna 17 é flag para o filtro 7
            if (viContarCelulas>=15) then Stgr_N15_AprovadosFase1.Cells[21,viLinhas15] := viContarCelulas.ToString;
            // else Stgr_N15_AprovadosFase1.Cells[17,viLinhas15] := 'False';
        Pgbr_EtaPa_01_09.Position := Trunc(viLinhas15/(Stgr_N15_AprovadosFase1.RowCount-1)*100);
    end; // For viLinhas15
    Pgbr_EtaPa_01_09.Position := 100;
    Pgbr_EtaPa_01_09.Repaint;
end;


Procedure T_F_Gerador_1LinhDe19e1de6.Bbt_OKClick(Sender: TObject);
begin
    Pa_RemoveuRepetidos.Left := 9055;
    Pa_RemoveuRepetidos.Repaint;
    Self.Repaint;
    Pgbr_EtaPa_01.Position := 0;
    Pgbr_EtaPa_01_07.Position := 0;
    Pgbr_EtaPa_01_08_m1.Position := 0;
    Pgbr_EtaPa_01_08_m2.Position := 0;
    Pgbr_EtaPa_01_09.Position := 0;
    Pgbr_EtaPa_01.Repaint;
    Pgbr_EtaPa_01_07.Repaint;
    Pgbr_EtaPa_01_08_m1.Repaint;
    Pgbr_EtaPa_01_08_m2.Repaint;
    Pgbr_EtaPa_01_09.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    La_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
    IF RB_AC13em19.Checked THEN
        bbt_TriplasDuplasIsolados.Click;
    if RB_AC15em19.Checked then
        bbt_ac15em19.Click;
    if RB_AC15em19_6i.Checked then
        ac15em19 (1);
    if RB_AC14em19.Checked then
        bbt_ac14em19.Click;
    if RB_AC14em19_6i.Checked then
        ac14em19 (1);
    if cb_Limitador18Soma234.ItemIndex=1 then
        Self.Limitador18Soma234;
    if (cb_10Numeros05.ItemIndex=1) or (cb_10Numeros05.ItemIndex=3) then
        Filtrar10Numeros05_1();
    if (cb_10Numeros05.ItemIndex=2) or (cb_10Numeros05.ItemIndex=3) then
        Filtrar10Numeros05_2();
    if (cb_Limitador8Linhas22.ItemIndex=1) then
        Limitador8Linhas22();
    La_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
    Pgbr_EtaPa_01.Position := 100;
    Pgbr_EtaPa_01_07.Position := 100;
    Pgbr_EtaPa_01_08_m1.Position := 100;
    Pgbr_EtaPa_01_08_m2.Position := 100;
    Pgbr_EtaPa_01_09.Position := 100;
    Pa_RemoveuRepetidos.Left := 1055;
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
