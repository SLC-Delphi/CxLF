unit uCjtos13Linhas7por6Impares;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, DB, strutils,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, IdBaseComponent, IdComponent, IdIPWatch ;

type
  T_F_Cjtos13Linhas7por6Impares = class(TForm)
    Mem_Combinacoes_Todas: TMemo;
    Pa_Topo: TPanel;
    La_Titulo: TLabel;
    Pa_Resultado: TPanel;
    Stgr_Todos_Numeros: TStringGrid;
    Scbx_Gabarito: TScrollBox;
    Pa_PreencherAlterar: TPanel;
    bbt_RecomecarAlterar: TBitBtn;
    Bbt_701: TBitBtn;
    Bbt_703: TBitBtn;
    Bbt_705: TBitBtn;
    Bbt_707: TBitBtn;
    Bbt_709: TBitBtn;
    Bbt_717: TBitBtn;
    Bbt_715: TBitBtn;
    Bbt_713: TBitBtn;
    Bbt_711: TBitBtn;
    Bbt_719: TBitBtn;
    Bbt_721: TBitBtn;
    Bbt_723: TBitBtn;
    Bbt_725: TBitBtn;
    Bbt_702: TBitBtn;
    Bbt_712: TBitBtn;
    Bbt_720: TBitBtn;
    Bbt_722: TBitBtn;
    Bbt_724: TBitBtn;
    Bbt_718: TBitBtn;
    Bbt_710: TBitBtn;
    Bbt_708: TBitBtn;
    Bbt_716: TBitBtn;
    Bbt_714: TBitBtn;
    Bbt_706: TBitBtn;
    Bbt_704: TBitBtn;
    bbt_EncerrarAlterar: TBitBtn;
    Bbt_PreencherPadrao: TBitBtn;
    Panel7: TPanel;
    Label56: TLabel;
    Label57: TLabel;
    Label59: TLabel;
    Stgr_Limitador19_Grupo1A: TStringGrid;
    Stgr_Limitador19_Grupo1B: TStringGrid;
    Stgr_Limitador19_Grupo1C: TStringGrid;
    Stgr_Limitador19_Grupo1D: TStringGrid;
    Stgr_Limitador19_Grupo2D: TStringGrid;
    Stgr_Limitador19_Grupo2C: TStringGrid;
    Stgr_Limitador19_Grupo2B: TStringGrid;
    Stgr_Limitador19_Grupo2A: TStringGrid;
    stgr_Base07: TStringGrid;
    stgr_Base06: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    Bbt_Alterar: TBitBtn;
    Pa_NumeroLinhaAlterar: TPanel;
    bbt_OkLinhaAlterar: TBitBtn;
    bbt_CancelarLinhaAlterar: TBitBtn;
    edt_NumeroLinhaAlterar: TEdit;
    Label3: TLabel;
    Bbt_Close: TImage;
    bbt_CancelarAlterar: TBitBtn;
    Label4: TLabel;
    cbxCoincidentes: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure Bbt_CloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure bbt_RecomecarAlterarClick(Sender: TObject);
    procedure Bbt_701Click(Sender: TObject);
    procedure Bbt_702Click(Sender: TObject);
    procedure Bbt_703Click(Sender: TObject);
    procedure Bbt_704Click(Sender: TObject);
    procedure Bbt_705Click(Sender: TObject);
    procedure Bbt_706Click(Sender: TObject);
    procedure Bbt_707Click(Sender: TObject);
    procedure Bbt_708Click(Sender: TObject);
    procedure Bbt_709Click(Sender: TObject);
    procedure Bbt_710Click(Sender: TObject);
    procedure Bbt_711Click(Sender: TObject);
    procedure Bbt_712Click(Sender: TObject);
    procedure Bbt_713Click(Sender: TObject);
    procedure Bbt_714Click(Sender: TObject);
    procedure Bbt_715Click(Sender: TObject);
    procedure Bbt_716Click(Sender: TObject);
    procedure Bbt_717Click(Sender: TObject);
    procedure Bbt_718Click(Sender: TObject);
    procedure Bbt_719Click(Sender: TObject);
    procedure Bbt_720Click(Sender: TObject);
    procedure Bbt_721Click(Sender: TObject);
    procedure Bbt_722Click(Sender: TObject);
    procedure Bbt_723Click(Sender: TObject);
    procedure Bbt_724Click(Sender: TObject);
    procedure Bbt_725Click(Sender: TObject);
    procedure Bbt_PreencherPadraoClick(Sender: TObject);
    procedure Bbt_AlterarClick(Sender: TObject);
    procedure bbt_CancelarLinhaAlterarClick(Sender: TObject);
    procedure bbt_OkLinhaAlterarClick(Sender: TObject);
    procedure bbt_CancelarAlterarClick(Sender: TObject);
    procedure bbt_EncerrarAlterarClick(Sender: TObject);
  private
    F_MODALIDADE: String;
    { Private declarations }
    procedure Set_MODALIDADE(const Value: String);
    Procedure BotoesBase25False ();
    Procedure BotoesBase25Add (vi_Numero: Integer);
    procedure ZeraLinhaBase;
   procedure OrdenarBase();
   Procedure GravarCjto();
  public
    { Public declarations }
     PROPERTY _MODALIDADE : String   read F_MODALIDADE write Set_MODALIDADE;
  end;
var
  _F_Cjtos13Linhas7por6Impares: T_F_Cjtos13Linhas7por6Impares;
  vs_Base25 : String;

implementation

{$R *.dfm}

uses uDataModule01, uGeradorRanking01;


Procedure T_F_Cjtos13Linhas7por6Impares.Set_MODALIDADE(const Value: String);
begin
   F_MODALIDADE := Value;
end;



Procedure T_F_Cjtos13Linhas7por6Impares.FormCreate(Sender: TObject);
var
   viContar :integer;
begin
   SELF.ClientWidth  := 1150;
   SELF.ClientHeight := 494;
   SELF.Top  := 59;
   SELF.Left := 9;
   //  SELF.Visible := TRUE;
   Bbt_close.Left := SELF.ClientWidth-35;
   Scbx_Gabarito.Visible := True;
   Pa_Resultado.Visible := True;
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
   Try
      DM1.IBQ_Combinacoes.SQL.Clear;
      DM1.IBQ_Combinacoes.SQL.Add('CREATE TABLE CJTO_7POR6_IMPARES( DADOS07  VARCHAR(21) COLLATE PT_BR, DADOS06  VARCHAR(18) COLLATE PT_BR );') ;
      DM1.IBQ_Combinacoes.ExecSQL;
      DM1.IBQ_Combinacoes.SQL.Clear;
      DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
      DM1.IBQ_Combinacoes.ExecSQL;
      DM1.IBQ_Combinacoes.Transaction.StartTransaction;
      DM1.IBQ_Combinacoes.Transaction.Commit;
      DM1.IBQ_Combinacoes.Transaction.StartTransaction;
   Except
      DM1.IBQ_Combinacoes.SQL.Clear;
      DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM CJTO_7POR6_IMPARES;')  ;
      DM1.IBQ_Combinacoes.ExecSQL;
      DM1.IBQ_Combinacoes.SQL.Clear;
      DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
      DM1.IBQ_Combinacoes.ExecSQL ;
      DM1.IBQ_Combinacoes.Transaction.StartTransaction;
      DM1.IBQ_Combinacoes.Transaction.Commit;
      DM1.IBQ_Combinacoes.Transaction.StartTransaction;
   End;
   FOR viContar :=1 TO 25 DO
   BEGIN
       Stgr_Todos_Numeros.Cells[viContar,0] := viContar.ToString;
   END; // FOR viContar
   Bbt_CancelarAlterar.Click; //   Bbt_PreencherPadrao.Click; e ativado automaticamente
end;



Procedure T_F_Cjtos13Linhas7por6Impares.FormActivate(Sender: TObject);
begin
   IF (SELF._MODALIDADE ='GERADOR') THEN
   begin
      La_Titulo.Caption             := 'Conjunto 13 N�meros de 8 por 5 - �mpares';
   END ELSE
   BEGIN
      La_Titulo.Caption             := 'Conjunto 13 N�meros de 8 por 5 - �mpares';
   end;
   La_Titulo.Repaint;
end;



Procedure T_F_Cjtos13Linhas7por6Impares.FormClose(Sender: TObject;
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


Procedure T_F_Cjtos13Linhas7por6Impares.Bbt_CloseClick(Sender: TObject);
begin
   GravarCjto();
   SELF.Close;
end;


Procedure T_F_Cjtos13Linhas7por6Impares.GravarCjto();
var
    VI_AN_Comb1, viContar : integer;
    vcQUERY, vcNomeTabela, vcCombinacoes07, vcCombinacoes06 : string;
begin
   vcNomeTabela := ' CJTO_7POR6_IMPARES';
   for VI_AN_Comb1 := 1 to 13  do
   begin
      vcCombinacoes07 :='';
      vcCombinacoes06 :='';
      FOR viContar :=1 TO 07 DO
      BEGIN
          vcCombinacoes07 := vcCombinacoes07 + RIGHTSTR ('0'+(stgr_Base07.Cells[viContar,VI_AN_Comb1]),2) +' ' ;
          IF (viContar<=6) THEN
          BEGIN
              vcCombinacoes06 := vcCombinacoes06 + RIGHTSTR ('0'+(stgr_Base06.Cells[viContar,VI_AN_Comb1]),2) +' ' ;
          END; // IF (Stgr_Todos_Numeros
      END; // FOR viContar
      vcQUERY  := 'INSERT INTO ' +vcNomeTabela+ ' (DADOS07, DADOS06) VALUES('
              +#39+  TRIM(vcCombinacoes07)  + #39 +','
              +#39+  TRIM(vcCombinacoes06)
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


procedure T_F_Cjtos13Linhas7por6Impares.bbt_EncerrarAlterarClick(Sender: TObject);
var
   viContar :smallint;
begin
   FOR viContar := 1 TO 7 DO
   BEGIN
      IF (STRtoINT (stgr_Base07.Cells [viContar,strTOint(edt_NumeroLinhaAlterar.Text)]) = 0) THEN
      BEGIN
         Showmessage ('Preenchimento imcompleto, favor concluir ou cancelar ou recome�ar.');
         exit;
      END;
   END;
   FOR viContar := 1 TO 6 DO
   BEGIN
      IF (STRtoINT (stgr_Base06.Cells [viContar,strTOint(edt_NumeroLinhaAlterar.Text)]) = 0) THEN
      BEGIN
         Showmessage ('Preenchimento imcompleto, favor concluir ou cancelar ou recome�ar.');
         exit;
      END;
   END;
   OrdenarBase();
   stgr_Base07.Cells[00,strTOint(edt_NumeroLinhaAlterar.Text)] := '-M' + RIGHTSTR ('0'+trim(edt_NumeroLinhaAlterar.Text),2);
   stgr_Base06.Cells[00,strTOint(edt_NumeroLinhaAlterar.Text)] := '-M' + RIGHTSTR ('0'+trim(edt_NumeroLinhaAlterar.Text),2);
   edt_NumeroLinhaAlterar.Text := '00';
   bbt_PreencherPadrao.Enabled := True;
   bbt_Alterar.Enabled := True;
   pa_NumeroLinhaAlterar.Enabled := True;
   pa_NumeroLinhaAlterar.Visible := False;
   pa_PreencherAlterar.Visible := False;
end;

procedure T_F_Cjtos13Linhas7por6Impares.OrdenarBase();
var
   viContador1, viContar, viContarCelulas : Integer;
begin
   ///
   ///   ---> base de 7 �mpares
   ///
   FOR viContar :=1 TO 25 DO
   BEGIN
       Stgr_Todos_Numeros.Cells[viContar,1] :='F';
   END; // FOR viContar
   // ----> MONTADO E VERIFICANDO TODOS OS 23 D�GITOS
   FOR viContar :=1 TO 7 DO
   BEGIN
       Stgr_Todos_Numeros.Cells [ (STRtoINT(stgr_Base07.Cells[viContar,strTOint(edt_NumeroLinhaAlterar.Text)])) ,1]:='V';
   END; // FOR viContador1
   viContarCelulas := 1;
   FOR viContar :=1 TO 25 DO
   BEGIN
       IF (Stgr_Todos_Numeros.Cells[viContar,1]='V') THEN
       BEGIN
            stgr_Base07.Cells [viContarCelulas, strTOint(edt_NumeroLinhaAlterar.Text)] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2) ;
            viContarCelulas := viContarCelulas + 1;
       END; // IF (Stgr_Todos_Numeros
   END; // FOR viContar
   ///
   ///   ---> base de 6 �mpares
   ///
   FOR viContar :=1 TO 25 DO
   BEGIN
       Stgr_Todos_Numeros.Cells[viContar,1] :='F';
   END; // FOR viContar
   // ----> MONTADO E VERIFICANDO TODOS OS 23 D�GITOS
   FOR viContar :=1 TO 6 DO
   BEGIN
       Stgr_Todos_Numeros.Cells [ (STRtoINT(stgr_Base06.Cells[viContar,strTOint(edt_NumeroLinhaAlterar.Text)])) ,1]:='V';
   END; // FOR viContador1
   viContarCelulas := 1;
   FOR viContar :=1 TO 25 DO
   BEGIN
       IF (Stgr_Todos_Numeros.Cells[viContar,1]='V') THEN
       BEGIN
            stgr_Base06.Cells [viContarCelulas, strTOint(edt_NumeroLinhaAlterar.Text)] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2) ;
            viContarCelulas := viContarCelulas + 1;
       END; // IF (Stgr_Todos_Numeros
   END; // FOR viContar
end;

procedure T_F_Cjtos13Linhas7por6Impares.bbt_OkLinhaAlterarClick(Sender: TObject);
begin
   if (STRtoINT(edt_NumeroLinhaAlterar.Text)<1) OR (STRtoINT(edt_NumeroLinhaAlterar.Text)>13) then
   BEGIN
      Showmessage ('N�mero de linha inv�lido');
      edt_NumeroLinhaAlterar.SetFocus;
      Exit;
   END;
   Pa_NumeroLinhaAlterar.Enabled := False;
   Pa_PreencherAlterar.Visible := True;
   bbt_RecomecarAlterar.Click;
   Bbt_PreencherPadrao.Enabled := False;
   Bbt_Alterar.Enabled := False;
end;

procedure T_F_Cjtos13Linhas7por6Impares.Bbt_PreencherPadraoClick(Sender: TObject);
begin
   // --> 01
   stgr_Base07.ColWidths[0]:= 47;
   stgr_Base07.Cells[00,01] := 'L-01';
   stgr_Base07.Cells[01,01] := '01';
   stgr_Base07.Cells[02,01] := '03';
   stgr_Base07.Cells[03,01] := '05';
   stgr_Base07.Cells[04,01] := '07';
   stgr_Base07.Cells[05,01] := '13';
   stgr_Base07.Cells[06,01] := '17';
   stgr_Base07.Cells[07,01] := '21';
   stgr_Base06.ColWidths[0]:= 47;
   stgr_Base06.Cells[00,01] := 'L-01';
   stgr_Base06.Cells[01,01] := '09';
   stgr_Base06.Cells[02,01] := '11';
   stgr_Base06.Cells[03,01] := '15';
   stgr_Base06.Cells[04,01] := '19';
   stgr_Base06.Cells[05,01] := '23';
   stgr_Base06.Cells[06,01] := '23';
   // --> 02
   stgr_Base07.Cells[00,02] := 'L-02';
   stgr_Base07.Cells[01,02] := '01';
   stgr_Base07.Cells[02,02] := '03';
   stgr_Base07.Cells[03,02] := '05';
   stgr_Base07.Cells[04,02] := '07';
   stgr_Base07.Cells[05,02] := '09';
   stgr_Base07.Cells[06,02] := '15';
   stgr_Base07.Cells[07,02] := '19';
   stgr_Base06.Cells[00,02] := 'L-02';
   stgr_Base06.Cells[01,02] := '11';
   stgr_Base06.Cells[02,02] := '13';
   stgr_Base06.Cells[03,02] := '17';
   stgr_Base06.Cells[04,02] := '21';
   stgr_Base06.Cells[05,02] := '25';
   stgr_Base06.Cells[06,02] := '25';
   // --> 03
   stgr_Base07.Cells[00,03] := 'L-03';
   stgr_Base07.Cells[01,03] := '03';
   stgr_Base07.Cells[02,03] := '05';
   stgr_Base07.Cells[03,03] := '07';
   stgr_Base07.Cells[04,03] := '09';
   stgr_Base07.Cells[05,03] := '11';
   stgr_Base07.Cells[06,03] := '17';
   stgr_Base07.Cells[07,03] := '21';
   stgr_Base06.Cells[00,03] := 'L-03';
   stgr_Base06.Cells[01,03] := '01';
   stgr_Base06.Cells[02,03] := '13';
   stgr_Base06.Cells[03,03] := '15';
   stgr_Base06.Cells[04,03] := '19';
   stgr_Base06.Cells[05,03] := '23';
   stgr_Base06.Cells[06,03] := '23';
   // --> 04
   stgr_Base07.Cells[00,04] := 'L-04';
   stgr_Base07.Cells[01,04] := '01';
   stgr_Base07.Cells[02,04] := '05';
   stgr_Base07.Cells[03,04] := '07';
   stgr_Base07.Cells[04,04] := '09';
   stgr_Base07.Cells[05,04] := '11';
   stgr_Base07.Cells[06,04] := '13';
   stgr_Base07.Cells[07,04] := '19';
   stgr_Base06.Cells[00,04] := 'L-04';
   stgr_Base06.Cells[01,04] := '03';
   stgr_Base06.Cells[02,04] := '15';
   stgr_Base06.Cells[03,04] := '17';
   stgr_Base06.Cells[04,04] := '21';
   stgr_Base06.Cells[05,04] := '25';
   stgr_Base06.Cells[06,04] := '25';
   // --> 05
   stgr_Base07.Cells[00,05] := 'L-05';
   stgr_Base07.Cells[01,05] := '03';
   stgr_Base07.Cells[02,05] := '07';
   stgr_Base07.Cells[03,05] := '09';
   stgr_Base07.Cells[04,05] := '11';
   stgr_Base07.Cells[05,05] := '13';
   stgr_Base07.Cells[06,05] := '15';
   stgr_Base07.Cells[07,05] := '21';
   stgr_Base06.Cells[00,05] := 'L-05';
   stgr_Base06.Cells[01,05] := '01';
   stgr_Base06.Cells[02,05] := '05';
   stgr_Base06.Cells[03,05] := '17';
   stgr_Base06.Cells[04,05] := '19';
   stgr_Base06.Cells[05,05] := '23';
   stgr_Base06.Cells[06,05] := '23';
   // --> 06
   stgr_Base07.Cells[00,06] := 'L-06';
   stgr_Base07.Cells[01,06] := '01';
   stgr_Base07.Cells[02,06] := '05';
   stgr_Base07.Cells[03,06] := '09';
   stgr_Base07.Cells[04,06] := '11';
   stgr_Base07.Cells[05,06] := '13';
   stgr_Base07.Cells[06,06] := '15';
   stgr_Base07.Cells[07,06] := '17';
   stgr_Base06.Cells[00,06] := 'L-06';
   stgr_Base06.Cells[01,06] := '03';
   stgr_Base06.Cells[02,06] := '07';
   stgr_Base06.Cells[03,06] := '19';
   stgr_Base06.Cells[04,06] := '21';
   stgr_Base06.Cells[05,06] := '25';
   stgr_Base06.Cells[06,06] := '25';
   // --> 07
   stgr_Base07.Cells[00,07] := 'L-07';
   stgr_Base07.Cells[01,07] := '03';
   stgr_Base07.Cells[02,07] := '07';
   stgr_Base07.Cells[03,07] := '11';
   stgr_Base07.Cells[04,07] := '13';
   stgr_Base07.Cells[05,07] := '15';
   stgr_Base07.Cells[06,07] := '17';
   stgr_Base07.Cells[07,07] := '19';
   stgr_Base06.Cells[00,07] := 'L-07';
   stgr_Base06.Cells[01,07] := '01';
   stgr_Base06.Cells[02,07] := '05';
   stgr_Base06.Cells[03,07] := '09';
   stgr_Base06.Cells[04,07] := '21';
   stgr_Base06.Cells[05,07] := '23';
   stgr_Base06.Cells[06,07] := '23';
   // --> 08
   stgr_Base07.Cells[00,08] := 'L-08';
   stgr_Base07.Cells[01,08] := '01';
   stgr_Base07.Cells[02,08] := '05';
   stgr_Base07.Cells[03,08] := '09';
   stgr_Base07.Cells[04,08] := '13';
   stgr_Base07.Cells[05,08] := '15';
   stgr_Base07.Cells[06,08] := '17';
   stgr_Base07.Cells[07,08] := '19';
   stgr_Base06.Cells[00,08] := 'L-08';
   stgr_Base06.Cells[01,08] := '03';
   stgr_Base06.Cells[02,08] := '07';
   stgr_Base06.Cells[03,08] := '11';
   stgr_Base06.Cells[04,08] := '23';
   stgr_Base06.Cells[05,08] := '25';
   stgr_Base06.Cells[06,08] := '25';
   // --> 09
   stgr_Base07.Cells[00,09] := 'L-09';
   stgr_Base07.Cells[01,09] := '03';
   stgr_Base07.Cells[02,09] := '07';
   stgr_Base07.Cells[03,09] := '11';
   stgr_Base07.Cells[04,09] := '15';
   stgr_Base07.Cells[05,09] := '17';
   stgr_Base07.Cells[06,09] := '19';
   stgr_Base07.Cells[07,09] := '21';
   stgr_Base06.Cells[00,09] := 'L-09';
   stgr_Base06.Cells[01,09] := '01';
   stgr_Base06.Cells[02,09] := '05';
   stgr_Base06.Cells[03,09] := '09';
   stgr_Base06.Cells[04,09] := '13';
   stgr_Base06.Cells[05,09] := '25';
   stgr_Base06.Cells[06,09] := '25';
   // --> 10
   stgr_Base07.Cells[00,10] := 'L-10';
   stgr_Base07.Cells[01,10] := '05';
   stgr_Base07.Cells[02,10] := '09';
   stgr_Base07.Cells[03,10] := '13';
   stgr_Base07.Cells[04,10] := '17';
   stgr_Base07.Cells[05,10] := '19';
   stgr_Base07.Cells[06,10] := '21';
   stgr_Base07.Cells[07,10] := '23';
   stgr_Base06.Cells[00,10] := 'L-10';
   stgr_Base06.Cells[01,10] := '01';
   stgr_Base06.Cells[02,10] := '03';
   stgr_Base06.Cells[03,10] := '07';
   stgr_Base06.Cells[04,10] := '11';
   stgr_Base06.Cells[05,10] := '17';
   stgr_Base06.Cells[06,10] := '17';
   // --> 11
   stgr_Base07.Cells[00,11] := 'L-11';
   stgr_Base07.Cells[01,11] := '01';
   stgr_Base07.Cells[02,11] := '07';
   stgr_Base07.Cells[03,11] := '11';
   stgr_Base07.Cells[04,11] := '15';
   stgr_Base07.Cells[05,11] := '19';
   stgr_Base07.Cells[06,11] := '21';
   stgr_Base07.Cells[07,11] := '23';
   stgr_Base06.Cells[00,11] := 'L-11';
   stgr_Base06.Cells[01,11] := '03';
   stgr_Base06.Cells[02,11] := '05';
   stgr_Base06.Cells[03,11] := '09';
   stgr_Base06.Cells[04,11] := '13';
   stgr_Base06.Cells[05,11] := '17';
   stgr_Base06.Cells[06,11] := '17';
   // --> 12
   stgr_Base07.Cells[00,12] := 'L-12';
   stgr_Base07.Cells[01,12] := '01';
   stgr_Base07.Cells[02,12] := '03';
   stgr_Base07.Cells[03,12] := '09';
   stgr_Base07.Cells[04,12] := '13';
   stgr_Base07.Cells[05,12] := '17';
   stgr_Base07.Cells[06,12] := '21';
   stgr_Base07.Cells[07,12] := '23';
   stgr_Base06.Cells[00,12] := 'L-12';
   stgr_Base06.Cells[01,12] := '05';
   stgr_Base06.Cells[02,12] := '07';
   stgr_Base06.Cells[03,12] := '11';
   stgr_Base06.Cells[04,12] := '15';
   stgr_Base06.Cells[05,12] := '19';
   stgr_Base06.Cells[06,12] := '19';
   // --> 13
   stgr_Base07.Cells[00,13] := 'L-13';
   stgr_Base07.Cells[01,13] := '01';
   stgr_Base07.Cells[02,13] := '03';
   stgr_Base07.Cells[03,13] := '05';
   stgr_Base07.Cells[04,13] := '11';
   stgr_Base07.Cells[05,13] := '15';
   stgr_Base07.Cells[06,13] := '19';
   stgr_Base07.Cells[07,13] := '23';
   stgr_Base06.Cells[00,13] := 'L-13';
   stgr_Base06.Cells[01,13] := '07';
   stgr_Base06.Cells[02,13] := '09';
   stgr_Base06.Cells[03,13] := '13';
   stgr_Base06.Cells[04,13] := '17';
   stgr_Base06.Cells[05,13] := '21';
   stgr_Base06.Cells[06,13] := '21';
end;


Procedure T_F_Cjtos13Linhas7por6Impares.bbt_RecomecarAlterarClick(Sender: TObject);
begin
   Bbt_701.Enabled := TRUE;
   Bbt_702.Enabled := FALSE;
   Bbt_703.Enabled := TRUE;
   Bbt_704.Enabled := FALSE;
   Bbt_705.Enabled := TRUE;
   Bbt_706.Enabled := FALSE;
   Bbt_707.Enabled := TRUE;
   Bbt_708.Enabled := FALSE;
   Bbt_709.Enabled := TRUE;
   Bbt_710.Enabled := FALSE;
   Bbt_711.Enabled := TRUE;
   Bbt_712.Enabled := FALSE;
   Bbt_713.Enabled := TRUE;
   Bbt_714.Enabled := FALSE;
   Bbt_715.Enabled := TRUE;
   Bbt_716.Enabled := FALSE;
   Bbt_717.Enabled := TRUE;
   Bbt_718.Enabled := FALSE;
   Bbt_719.Enabled := TRUE;
   Bbt_720.Enabled := FALSE;
   Bbt_721.Enabled := TRUE;
   Bbt_722.Enabled := FALSE;
   Bbt_723.Enabled := TRUE;
   Bbt_724.Enabled := FALSE;
   Bbt_725.Enabled := TRUE;
   ZeraLinhaBase();
end;

Procedure T_F_Cjtos13Linhas7por6Impares.BotoesBase25False ();
begin
   Bbt_701.Enabled := False ;
   Bbt_702.Enabled := False ;
   Bbt_703.Enabled := False ;
   Bbt_704.Enabled := False ;
   Bbt_705.Enabled := False ;
   Bbt_706.Enabled := False ;
   Bbt_707.Enabled := False ;
   Bbt_708.Enabled := False ;
   Bbt_709.Enabled := False ;
   Bbt_710.Enabled := False ;
   Bbt_711.Enabled := False ;
   Bbt_712.Enabled := False ;
   Bbt_713.Enabled := False ;
   Bbt_714.Enabled := False ;
   Bbt_715.Enabled := False ;
   Bbt_716.Enabled := False ;
   Bbt_717.Enabled := False ;
   Bbt_718.Enabled := False ;
   Bbt_719.Enabled := False ;
   Bbt_720.Enabled := False ;
   Bbt_721.Enabled := False ;
   Bbt_722.Enabled := False ;
   Bbt_723.Enabled := False ;
   Bbt_724.Enabled := False ;
   Bbt_725.Enabled := False ;
end;



Procedure T_F_Cjtos13Linhas7por6Impares.BotoesBase25Add (vi_Numero: Integer);
VAR
   viContar, viContar2 : Integer;
BEGIN
   FOR viContar := 1 TO 7 DO
   BEGIN
      IF (STRtoINT (stgr_Base07.Cells [viContar,strTOint(edt_NumeroLinhaAlterar.Text)]) = 0) THEN
      BEGIN
         stgr_Base07.Cells [viContar,strTOint(edt_NumeroLinhaAlterar.Text)] := RIGHTSTR ('0'+INTtoSTR(vi_Numero),2);
         EXIT;
      END ELSE
      IF (viContar = 7) THEN
      BEGIN
         FOR viContar2 :=1 TO 6 DO
         BEGIN
            IF (STRtoINT (stgr_Base06.Cells [viContar2,strTOint(edt_NumeroLinhaAlterar.Text)]) = 0) THEN
            BEGIN
               stgr_Base06.Cells [viContar2,strTOint(edt_NumeroLinhaAlterar.Text)] := RIGHTSTR ('0'+INTtoSTR(vi_Numero),2);
               EXIT;
            END
        END; // viContar2
      END;
   END; // viContar
END;



procedure T_F_Cjtos13Linhas7por6Impares.ZeraLinhaBase;
begin
   if strTOint(edt_NumeroLinhaAlterar.Text) =0 then
      exit;
   stgr_Base07.Cells[1, STRtoINT(edt_NumeroLinhaAlterar.Text)] := '0';
   stgr_Base07.Cells[2, STRtoINT(edt_NumeroLinhaAlterar.Text)] := '0';
   stgr_Base07.Cells[3, STRtoINT(edt_NumeroLinhaAlterar.Text)] := '0';
   stgr_Base07.Cells[4, STRtoINT(edt_NumeroLinhaAlterar.Text)] := '0';
   stgr_Base07.Cells[5, STRtoINT(edt_NumeroLinhaAlterar.Text)] := '0';
   stgr_Base07.Cells[6, STRtoINT(edt_NumeroLinhaAlterar.Text)] := '0';
   stgr_Base07.Cells[7, STRtoINT(edt_NumeroLinhaAlterar.Text)] := '0';
   stgr_Base06.Cells[1, STRtoINT(edt_NumeroLinhaAlterar.Text)] := '0';
   stgr_Base06.Cells[2, STRtoINT(edt_NumeroLinhaAlterar.Text)] := '0';
   stgr_Base06.Cells[3, STRtoINT(edt_NumeroLinhaAlterar.Text)] := '0';
   stgr_Base06.Cells[4, STRtoINT(edt_NumeroLinhaAlterar.Text)] := '0';
   stgr_Base06.Cells[5, STRtoINT(edt_NumeroLinhaAlterar.Text)] := '0';
   stgr_Base06.Cells[6, STRtoINT(edt_NumeroLinhaAlterar.Text)] := '0';
end;


Procedure T_F_Cjtos13Linhas7por6Impares.Bbt_701Click(Sender: TObject);
begin
   SELF.BotoesBase25Add(01);
   Bbt_701.Enabled := FALSE;
end;


Procedure T_F_Cjtos13Linhas7por6Impares.Bbt_702Click(Sender: TObject);
begin
  SELF.BotoesBase25Add(02);
  Bbt_702.Enabled := FALSE;
end;

Procedure T_F_Cjtos13Linhas7por6Impares.Bbt_703Click(Sender: TObject);
begin
   SELF.BotoesBase25Add(03);
   Bbt_703.Enabled := FALSE;
end;

Procedure T_F_Cjtos13Linhas7por6Impares.Bbt_704Click(Sender: TObject);
begin
   SELF.BotoesBase25Add(04);
   Bbt_704.Enabled := FALSE;
end;

Procedure T_F_Cjtos13Linhas7por6Impares.Bbt_705Click(Sender: TObject);
begin
   SELF.BotoesBase25Add(05);
   Bbt_705.Enabled := FALSE;
end;

Procedure T_F_Cjtos13Linhas7por6Impares.Bbt_706Click(Sender: TObject);
begin
   SELF.BotoesBase25Add(06);
   Bbt_706.Enabled := FALSE;
end;


Procedure T_F_Cjtos13Linhas7por6Impares.Bbt_707Click(Sender: TObject);
begin
  SELF.BotoesBase25Add(07);
  Bbt_707.Enabled := FALSE;
end;

Procedure T_F_Cjtos13Linhas7por6Impares.Bbt_708Click(Sender: TObject);
begin
  SELF.BotoesBase25Add(08);
  Bbt_708.Enabled := FALSE;
end;

Procedure T_F_Cjtos13Linhas7por6Impares.Bbt_709Click(Sender: TObject);
begin
  SELF.BotoesBase25Add(09);
  Bbt_709.Enabled := FALSE;
end;

Procedure T_F_Cjtos13Linhas7por6Impares.Bbt_710Click(Sender: TObject);
begin
  SELF.BotoesBase25Add(10);
  Bbt_710.Enabled := FALSE;
end;

Procedure T_F_Cjtos13Linhas7por6Impares.Bbt_711Click(Sender: TObject);
begin
  SELF.BotoesBase25Add(11);
  Bbt_711.Enabled := FALSE;
end;

Procedure T_F_Cjtos13Linhas7por6Impares.Bbt_712Click(Sender: TObject);
begin
  SELF.BotoesBase25Add(12);
  Bbt_712.Enabled := FALSE;
end;


Procedure T_F_Cjtos13Linhas7por6Impares.Bbt_713Click(Sender: TObject);
begin
  SELF.BotoesBase25Add(13);
  Bbt_713.Enabled := FALSE;
end;

Procedure T_F_Cjtos13Linhas7por6Impares.Bbt_714Click(Sender: TObject);
begin
  SELF.BotoesBase25Add(14);
  Bbt_714.Enabled := FALSE;
end;

Procedure T_F_Cjtos13Linhas7por6Impares.Bbt_715Click(Sender: TObject);
begin
  SELF.BotoesBase25Add(15);
  Bbt_715.Enabled := FALSE;
end;

Procedure T_F_Cjtos13Linhas7por6Impares.Bbt_716Click(Sender: TObject);
begin
  SELF.BotoesBase25Add(16);
  Bbt_716.Enabled := FALSE;
end;

Procedure T_F_Cjtos13Linhas7por6Impares.Bbt_717Click(Sender: TObject);
begin
  SELF.BotoesBase25Add(17);
  Bbt_717.Enabled := FALSE;
end;

Procedure T_F_Cjtos13Linhas7por6Impares.Bbt_718Click(Sender: TObject);
begin
  SELF.BotoesBase25Add(18);
  Bbt_718.Enabled := FALSE;
end;

Procedure T_F_Cjtos13Linhas7por6Impares.Bbt_719Click(Sender: TObject);
begin
  SELF.BotoesBase25Add(19);
  Bbt_719.Enabled := FALSE;
end;

Procedure T_F_Cjtos13Linhas7por6Impares.Bbt_720Click(Sender: TObject);
begin
  SELF.BotoesBase25Add(20);
  Bbt_720.Enabled := FALSE;
end;

Procedure T_F_Cjtos13Linhas7por6Impares.Bbt_721Click(Sender: TObject);
begin
   SELF.BotoesBase25Add(21);
   Bbt_721.Enabled := FALSE;
end;

Procedure T_F_Cjtos13Linhas7por6Impares.Bbt_722Click(Sender: TObject);
begin
   SELF.BotoesBase25Add(22);
   Bbt_722.Enabled := FALSE;
end;

Procedure T_F_Cjtos13Linhas7por6Impares.Bbt_723Click(Sender: TObject);
begin
   SELF.BotoesBase25Add(23);
   Bbt_723.Enabled := FALSE;
end;

Procedure T_F_Cjtos13Linhas7por6Impares.Bbt_724Click(Sender: TObject);
begin
   SELF.BotoesBase25Add(24);
   Bbt_724.Enabled := FALSE;
end;

Procedure T_F_Cjtos13Linhas7por6Impares.Bbt_725Click(Sender: TObject);
begin
   SELF.BotoesBase25Add(25);
   Bbt_725.Enabled := FALSE;
end;


procedure T_F_Cjtos13Linhas7por6Impares.Bbt_AlterarClick(Sender: TObject);
begin
   pa_NumeroLinhaAlterar.Enabled := True;
   pa_NumeroLinhaAlterar.Visible := True;
   edt_NumeroLinhaAlterar.SetFocus;
end;

procedure T_F_Cjtos13Linhas7por6Impares.bbt_CancelarAlterarClick(Sender: TObject);
begin
   edt_NumeroLinhaAlterar.Text := '00';
   bbt_PreencherPadrao.Enabled := True;
   bbt_Alterar.Enabled := True;
   bbt_RecomecarAlterar.Click;
   bbt_PreencherPadrao.Click;
   pa_NumeroLinhaAlterar.Enabled := True;
   pa_NumeroLinhaAlterar.Visible := False;
   pa_PreencherAlterar.Visible := False;
end;

procedure T_F_Cjtos13Linhas7por6Impares.bbt_CancelarLinhaAlterarClick(Sender: TObject);
begin
   edt_NumeroLinhaAlterar.Text := '00';
   pa_NumeroLinhaAlterar.Visible := False;
   Bbt_PreencherPadrao.SetFocus;
end;

end.

