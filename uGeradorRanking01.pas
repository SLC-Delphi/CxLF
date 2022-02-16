unit uGeradorRanking01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,  STRUtils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.ExtCtrls;

type
  T_F_GeradorRanking01 = class(TForm)
    Panel1: TPanel;
    Stgr_Rank1Linha01: TStringGrid;
    Stgr_Rank1Linha02: TStringGrid;
    Stgr_Rank1Linha03: TStringGrid;
    Stgr_Rank1Linha04: TStringGrid;
    Stgr_Rank1Linha05: TStringGrid;
    Panel2: TPanel;
    Panel4: TPanel;
    Stgr_RankGrid15: TStringGrid;
    Panel3: TPanel;
    BBT_PrepararMenu: TBitBtn;
    BBT_GerarMenu: TBitBtn;
    Stgr_Bloco01: TStringGrid;
    Stgr_Bloco02: TStringGrid;
    Stgr_Bloco03: TStringGrid;
    Stgr_Bloco04: TStringGrid;
    Stgr_Bloco05: TStringGrid;
    Label1: TLabel;
    Bbt_CapturarRank: TBitBtn;
    La_NumeroRT: TLabel;
    Label2: TLabel;
    ED_NumeroDaLinha: TEdit;
    Bbt_CapturarLinha: TBitBtn;
    Stgr_CapturarLinha: TStringGrid;
    STGR_Todos_Numeros: TStringGrid;
    Bevel1: TBevel;
    La_NumeroRank: TLabel;
    procedure Bbt_CapturarRankClick(Sender: TObject);
    procedure BBT_PrepararMenuClick(Sender: TObject);
    procedure Bbt_CapturarLinhaClick(Sender: TObject);
    procedure BBT_GerarMenuClick(Sender: TObject);
  private
    { Private declarations }
   Function QtdParesLinha01 (viNumeroLinha:integer) : boolean;
   Function QtdParesLinha02 (viNumeroLinha:integer) : boolean;
   Function QtdParesLinha03 (viNumeroLinha:integer) : boolean;
   Function QtdParesLinha04 (viNumeroLinha:integer) : boolean;
   Function QtdParesLinha05 (viNumeroLinha:integer) : boolean;
   Procedure OrdenarLinha01 (viLinhas1: INTEGER);
   Procedure OrdenarLinha02 (viLinhas1: INTEGER);
   Procedure OrdenarLinha03 (viLinhas1: INTEGER);
   Procedure OrdenarLinha04 (viLinhas1: INTEGER);
   Procedure OrdenarLinha05 (viLinhas1: INTEGER);
   Procedure OrdenarRankGrid15(viLinhas1: INTEGER);
   PROCEDURE PR_Gravar_Dados15 ();
  public
    procedure Stgr_CapturarLinhaClick(Sender: TObject);
    { Public declarations }
  end;

var
  _F_GeradorRanking01: T_F_GeradorRanking01;

implementation

{$R *.dfm}

uses uDataModule01;

procedure T_F_GeradorRanking01.Bbt_CapturarRankClick(Sender: TObject);
begin
    DM1.IBQ_Estatisica.Close;
    DM1.IBQ_Estatisica.SQL.Clear;
    DM1.IBQ_Estatisica.SQL.Add('SELECT ULTIMO_SORTEIO FROM ESTATISTICA_25N ORDER BY ULTIMO_SORTEIO');
    DM1.IBQ_Estatisica.Prepare;
    DM1.IBQ_Estatisica.Open;
    DM1.IBQ_Estatisica.Last;
    La_NumeroRank.Caption := DM1.IBQ_Estatisica.FieldByName('ULTIMO_SORTEIO').AsString;
    DM1.IBQ_Estatisica.Close;
   DM1.IBQ_Combinacoes.Close;
   DM1.IBQ_Combinacoes.SQL.Clear;
   DM1.IBQ_Combinacoes.SQL.Add('SELECT numero, qtd  FROM ESTATISTICA_25N ORDER BY (qtd) DESC, numero');
   DM1.IBQ_Combinacoes.Prepare;
   DM1.IBQ_Combinacoes.Open;
   DM1.IBQ_Combinacoes.First;
   // ===> BLOCO 01
   Stgr_Bloco01.Cells[1,0] := DM1.IBQ_Combinacoes.FieldByName('NUMERO').AsString;
   DM1.IBQ_Combinacoes.Next;
   Stgr_Bloco01.Cells[2,0] := DM1.IBQ_Combinacoes.FieldByName('NUMERO').AsString;
   DM1.IBQ_Combinacoes.Next;
   Stgr_Bloco01.Cells[3,0] := DM1.IBQ_Combinacoes.FieldByName('NUMERO').AsString;
   DM1.IBQ_Combinacoes.Next;
   Stgr_Bloco01.Cells[4,0] := DM1.IBQ_Combinacoes.FieldByName('NUMERO').AsString;
   DM1.IBQ_Combinacoes.Next;
   Stgr_Bloco01.Cells[5,0] := DM1.IBQ_Combinacoes.FieldByName('NUMERO').AsString;
   DM1.IBQ_Combinacoes.Next;
   // ===> BLOCO 02
   Stgr_Bloco02.Cells[1,0] := DM1.IBQ_Combinacoes.FieldByName('NUMERO').AsString;
   DM1.IBQ_Combinacoes.Next;
   Stgr_Bloco02.Cells[2,0] := DM1.IBQ_Combinacoes.FieldByName('NUMERO').AsString;
   DM1.IBQ_Combinacoes.Next;
   Stgr_Bloco02.Cells[3,0] := DM1.IBQ_Combinacoes.FieldByName('NUMERO').AsString;
   DM1.IBQ_Combinacoes.Next;
   Stgr_Bloco02.Cells[4,0] := DM1.IBQ_Combinacoes.FieldByName('NUMERO').AsString;
   DM1.IBQ_Combinacoes.Next;
   Stgr_Bloco02.Cells[5,0] := DM1.IBQ_Combinacoes.FieldByName('NUMERO').AsString;
   DM1.IBQ_Combinacoes.Next;
   // ===> BLOCO 03
   Stgr_Bloco03.Cells[1,0] := DM1.IBQ_Combinacoes.FieldByName('NUMERO').AsString;
   DM1.IBQ_Combinacoes.Next;
   Stgr_Bloco03.Cells[2,0] := DM1.IBQ_Combinacoes.FieldByName('NUMERO').AsString;
   DM1.IBQ_Combinacoes.Next;
   Stgr_Bloco03.Cells[3,0] := DM1.IBQ_Combinacoes.FieldByName('NUMERO').AsString;
   DM1.IBQ_Combinacoes.Next;
   Stgr_Bloco03.Cells[4,0] := DM1.IBQ_Combinacoes.FieldByName('NUMERO').AsString;
   DM1.IBQ_Combinacoes.Next;
   Stgr_Bloco03.Cells[5,0] := DM1.IBQ_Combinacoes.FieldByName('NUMERO').AsString;
   DM1.IBQ_Combinacoes.Next;
   // ===> BLOCO 04
   Stgr_Bloco04.Cells[1,0] := DM1.IBQ_Combinacoes.FieldByName('NUMERO').AsString;
   DM1.IBQ_Combinacoes.Next;
   Stgr_Bloco04.Cells[2,0] := DM1.IBQ_Combinacoes.FieldByName('NUMERO').AsString;
   DM1.IBQ_Combinacoes.Next;
   Stgr_Bloco04.Cells[3,0] := DM1.IBQ_Combinacoes.FieldByName('NUMERO').AsString;
   DM1.IBQ_Combinacoes.Next;
   Stgr_Bloco04.Cells[4,0] := DM1.IBQ_Combinacoes.FieldByName('NUMERO').AsString;
   DM1.IBQ_Combinacoes.Next;
   Stgr_Bloco04.Cells[5,0] := DM1.IBQ_Combinacoes.FieldByName('NUMERO').AsString;
   DM1.IBQ_Combinacoes.Next;
   // ===> BLOCO 05
   Stgr_Bloco05.Cells[1,0] := DM1.IBQ_Combinacoes.FieldByName('NUMERO').AsString;
   DM1.IBQ_Combinacoes.Next;
   Stgr_Bloco05.Cells[2,0] := DM1.IBQ_Combinacoes.FieldByName('NUMERO').AsString;
   DM1.IBQ_Combinacoes.Next;
   Stgr_Bloco05.Cells[3,0] := DM1.IBQ_Combinacoes.FieldByName('NUMERO').AsString;
   DM1.IBQ_Combinacoes.Next;
   Stgr_Bloco05.Cells[4,0] := DM1.IBQ_Combinacoes.FieldByName('NUMERO').AsString;
   DM1.IBQ_Combinacoes.Next;
   Stgr_Bloco05.Cells[5,0] := DM1.IBQ_Combinacoes.FieldByName('NUMERO').AsString;
   DM1.IBQ_Combinacoes.Next;
   MessageDlg('Rank Capturado',mtInformation,[mbOk],0);
end;


Function T_F_GeradorRanking01.QtdParesLinha01 (viNumeroLinha:integer) : boolean;
var
     viCombLinhas, viContaCel : integer;
begin
    viContaCel := 0;
    for viCombLinhas:=1 to 05 do
    begin
        IF (STRtoINT(Stgr_Rank1Linha01.Cells[viCombLinhas,viNumeroLinha]) MOD 2)=0 THEN
        BEGIN
             viContaCel:= viContaCel +1;
        END;// IF
    END; // FOR
    if viContaCel = 2 then
    begin
        result := True;
        exit;
    end;
    result := False;
end;


Function T_F_GeradorRanking01.QtdParesLinha02 (viNumeroLinha:integer) : boolean;
var
     viCombLinhas, viContaCel : integer;
begin
    viContaCel := 0;
    for viCombLinhas:=1 to 05 do
    begin
        IF (STRtoINT(Stgr_Rank1Linha02.Cells[viCombLinhas,viNumeroLinha]) MOD 2)=0 THEN
        BEGIN
             viContaCel:= viContaCel +1;
        END;// IF
    END; // FOR
    if viContaCel = 2 then
    begin
        result := True;
        exit;
    end;
    result := False;
end;


Function T_F_GeradorRanking01.QtdParesLinha03 (viNumeroLinha:integer) : boolean;
var
     viCombLinhas, viContaCel : integer;
begin
    viContaCel := 0;
    for viCombLinhas:=1 to 05 do
    begin
        IF (STRtoINT(Stgr_Rank1Linha03.Cells[viCombLinhas,viNumeroLinha]) MOD 2)=0 THEN
        BEGIN
             viContaCel:= viContaCel +1;
        END;// IF
    END; // FOR
    if viContaCel = 2 then
    begin
        result := True;
        exit;
    end;
    result := False;
end;


Function T_F_GeradorRanking01.QtdParesLinha04 (viNumeroLinha:integer) : boolean;
var
     viCombLinhas, viContaCel : integer;
begin
    viContaCel := 0;
    for viCombLinhas:=1 to 05 do
    begin
        IF (STRtoINT(Stgr_Rank1Linha04.Cells[viCombLinhas,viNumeroLinha]) MOD 2)=0 THEN
        BEGIN
             viContaCel:= viContaCel +1;
        END;// IF
    END; // FOR
    if viContaCel = 3 then
    begin
        result := True;
        exit;
    end;
    result := False;
end;



Function T_F_GeradorRanking01.QtdParesLinha05 (viNumeroLinha:integer) : boolean;
var
     viCombLinhas, viContaCel : integer;
begin
    viContaCel := 0;
    for viCombLinhas:=1 to 05 do
    begin
        IF (STRtoINT(Stgr_Rank1Linha05.Cells[viCombLinhas,viNumeroLinha]) MOD 2)=0 THEN
        BEGIN
             viContaCel:= viContaCel +1;
        END;// IF
    END; // FOR
    if viContaCel = 3 then
    begin
        result := True;
        exit;
    end;
    result := False;
end;



procedure T_F_GeradorRanking01.Stgr_CapturarLinhaClick(Sender: TObject);
begin

end;

Procedure T_F_GeradorRanking01.OrdenarLinha01 (viLinhas1: INTEGER);
var
    viContar, viCntCelulas: INTEGER;
begin
      // ************************
    // **  Ordena os dados   **
     // ************************
    FOR viContar :=1 TO 25 DO
    BEGIN
        STGR_Todos_Numeros.Cells[viContar,1] :='F';
    END; // FOR viContar
    // ----> MONTADO E VERIFICANDO TODOS OS DÍGITOS
    FOR viContar :=1 TO 5 DO
    BEGIN
        STGR_Todos_Numeros.Cells [ (STRtoINT(Stgr_Rank1Linha01.Cells[viContar,viLinhas1])) ,1]:='V';
    END; // FOR viContar1
    viCntCelulas := 1;
    FOR viContar :=1 TO 25 DO
    BEGIN
        IF (STGR_Todos_Numeros.Cells[viContar,1]='V') THEN
        BEGIN
            Stgr_Rank1Linha01.Cells[viCntCelulas, viLinhas1] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[viContar,0]),2) ;
            viCntCelulas := viCntCelulas + 1;
        END; // IF (STGR_Todos_Numeros
    END; // FOR viContar
end; //


Procedure T_F_GeradorRanking01.OrdenarLinha02(viLinhas1: INTEGER);
var
    viContar, viCntCelulas: INTEGER;
begin
      // ************************
    // **  Ordena os dados   **
     // ************************
    FOR viContar :=1 TO 25 DO
    BEGIN
        STGR_Todos_Numeros.Cells[viContar,1] :='F';
    END; // FOR viContar
    // ----> MONTADO E VERIFICANDO TODOS OS DÍGITOS
    FOR viContar :=1 TO 5 DO
    BEGIN
        STGR_Todos_Numeros.Cells [ (STRtoINT(Stgr_Rank1Linha02.Cells[viContar,viLinhas1])) ,1]:='V';
    END; // FOR viContar1
    viCntCelulas := 1;
    FOR viContar :=1 TO 25 DO
    BEGIN
        IF (STGR_Todos_Numeros.Cells[viContar,1]='V') THEN
        BEGIN
            Stgr_Rank1Linha02.Cells[viCntCelulas, viLinhas1] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[viContar,0]),2) ;
            viCntCelulas := viCntCelulas + 1;
        END; // IF (STGR_Todos_Numeros
    END; // FOR viContar
end; //


Procedure T_F_GeradorRanking01.OrdenarLinha03(viLinhas1: INTEGER);
var
    viContar, viCntCelulas: INTEGER;
begin
      // ************************
    // **  Ordena os dados   **
     // ************************
    FOR viContar :=1 TO 25 DO
    BEGIN
        STGR_Todos_Numeros.Cells[viContar,1] :='F';
    END; // FOR viContar
    // ----> MONTADO E VERIFICANDO TODOS OS DÍGITOS
    FOR viContar :=1 TO 5 DO
    BEGIN
        STGR_Todos_Numeros.Cells [ (STRtoINT(Stgr_Rank1Linha03.Cells[viContar,viLinhas1])) ,1]:='V';
    END; // FOR viContar1
    viCntCelulas := 1;
    FOR viContar :=1 TO 25 DO
    BEGIN
        IF (STGR_Todos_Numeros.Cells[viContar,1]='V') THEN
        BEGIN
            Stgr_Rank1Linha03.Cells[viCntCelulas, viLinhas1] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[viContar,0]),2) ;
            viCntCelulas := viCntCelulas + 1;
        END; // IF (STGR_Todos_Numeros
    END; // FOR viContar
end; //


Procedure T_F_GeradorRanking01.OrdenarLinha04(viLinhas1: INTEGER);
var
    viContar, viCntCelulas: INTEGER;
begin
      // ************************
    // **  Ordena os dados   **
     // ************************
    FOR viContar :=1 TO 25 DO
    BEGIN
        STGR_Todos_Numeros.Cells[viContar,1] :='F';
    END; // FOR viContar
    // ----> MONTADO E VERIFICANDO TODOS OS DÍGITOS
    FOR viContar :=1 TO 5 DO
    BEGIN
        STGR_Todos_Numeros.Cells [ (STRtoINT(Stgr_Rank1Linha04.Cells[viContar,viLinhas1])) ,1]:='V';
    END; // FOR viContar1
    viCntCelulas := 1;
    FOR viContar :=1 TO 25 DO
    BEGIN
        IF (STGR_Todos_Numeros.Cells[viContar,1]='V') THEN
        BEGIN
            Stgr_Rank1Linha04.Cells[viCntCelulas, viLinhas1] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[viContar,0]),2) ;
            viCntCelulas := viCntCelulas + 1;
        END; // IF (STGR_Todos_Numeros
    END; // FOR viContar
end; //


Procedure T_F_GeradorRanking01.OrdenarLinha05(viLinhas1: INTEGER);
var
    viContar, viCntCelulas: INTEGER;
begin
      // ************************
    // **  Ordena os dados   **
     // ************************
    FOR viContar :=1 TO 25 DO
    BEGIN
        STGR_Todos_Numeros.Cells[viContar,1] :='F';
    END; // FOR viContar
    // ----> MONTADO E VERIFICANDO TODOS OS DÍGITOS
    FOR viContar :=1 TO 5 DO
    BEGIN
        STGR_Todos_Numeros.Cells [ (STRtoINT(Stgr_Rank1Linha05.Cells[viContar,viLinhas1])) ,1]:='V';
    END; // FOR viContar1
    viCntCelulas := 1;
    FOR viContar :=1 TO 25 DO
    BEGIN
        IF (STGR_Todos_Numeros.Cells[viContar,1]='V') THEN
        BEGIN
            Stgr_Rank1Linha05.Cells[viCntCelulas, viLinhas1] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[viContar,0]),2) ;
            viCntCelulas := viCntCelulas + 1;
        END; // IF (STGR_Todos_Numeros
    END; // FOR viContar
end; //




procedure T_F_GeradorRanking01.BBT_PrepararMenuClick(Sender: TObject);
var
   viSoma, viLinhas, viComb11, viComb12, viComb13, viComb14, viComb15 : integer;
   viComb21, viComb22, viComb23, viComb24, viComb25 : integer;
   viComb31, viComb32, viComb33, viComb34, viComb35 : integer;
   viComb41, viComb42, viComb43, viComb44, viComb45 : integer;
   viComb51, viComb52, viComb53, viComb54, viComb55 : integer;
begin
    FOR viLinhas := 1 TO 25 DO
    BEGIN
        STGR_Todos_Numeros.Cells[viLinhas,0] := INTtoSTR(viLinhas);
    END;
   ED_NumeroDaLinha.Text := '0';
   viLinhas := 1;
   Stgr_Rank1Linha01.ColWidths[0] := 45;
   Stgr_Rank1Linha02.ColWidths[0] := 45;
   Stgr_Rank1Linha03.ColWidths[0] := 45;
   Stgr_Rank1Linha04.ColWidths[0] := 45;
   Stgr_Rank1Linha05.ColWidths[0] := 45;
   for viComb11 := 1 to 5 do
   begin
      for viComb12 := 1 to 5 do
      begin
         for viComb13 := 1 to 5 do
         begin
            for viComb14 := 1 to 5 do
            begin
               for viComb15 := 1 to 5 do
               begin
               viSoma := Stgr_Bloco01.Cells[viComb11,0].ToInteger
                         + Stgr_Bloco02.Cells[viComb12,0].ToInteger
                         + Stgr_Bloco03.Cells[viComb13,0].ToInteger
                         + Stgr_Bloco04.Cells[viComb14,0].ToInteger
                         + Stgr_Bloco05.Cells[viComb15,0].ToInteger;
               if viSoma<>65 then
                  continue;
   for viComb21 := 1 to 5 do
   begin
      for viComb22 := 1 to 5 do
      begin
         for viComb23 := 1 to 5 do
         begin
            for viComb24 := 1 to 5 do
            begin
               for viComb25 := 1 to 5 do
               begin
               viSoma := Stgr_Bloco01.Cells[viComb21,0].ToInteger
                         + Stgr_Bloco02.Cells[viComb22,0].ToInteger
                         + Stgr_Bloco03.Cells[viComb23,0].ToInteger
                         + Stgr_Bloco04.Cells[viComb24,0].ToInteger
                         + Stgr_Bloco05.Cells[viComb25,0].ToInteger;
               if viSoma<>65 then
                  continue;
               if  (Stgr_Bloco01.Cells[viComb11,0].ToInteger = Stgr_Bloco01.Cells[viComb21,0].ToInteger)
                  or (Stgr_Bloco01.Cells[viComb12,0].ToInteger = Stgr_Bloco01.Cells[viComb22,0].ToInteger)
                  or (Stgr_Bloco01.Cells[viComb13,0].ToInteger = Stgr_Bloco01.Cells[viComb23,0].ToInteger)
                  or (Stgr_Bloco01.Cells[viComb14,0].ToInteger = Stgr_Bloco01.Cells[viComb24,0].ToInteger)
                  or (Stgr_Bloco01.Cells[viComb15,0].ToInteger = Stgr_Bloco01.Cells[viComb25,0].ToInteger)
               then
                  continue;
   for viComb31 := 1 to 5 do
   begin
      for viComb32 := 1 to 5 do
      begin
         for viComb33 := 1 to 5 do
         begin
            for viComb34 := 1 to 5 do
            begin
               for viComb35 := 1 to 5 do
               begin
               viSoma := Stgr_Bloco01.Cells[viComb31,0].ToInteger
                         + Stgr_Bloco02.Cells[viComb32,0].ToInteger
                         + Stgr_Bloco03.Cells[viComb33,0].ToInteger
                         + Stgr_Bloco04.Cells[viComb34,0].ToInteger
                         + Stgr_Bloco05.Cells[viComb35,0].ToInteger;
               if viSoma<>65 then
                  continue;
               if  (Stgr_Bloco01.Cells[viComb11,0].ToInteger = Stgr_Bloco01.Cells[viComb31,0].ToInteger)
                  or (Stgr_Bloco01.Cells[viComb12,0].ToInteger = Stgr_Bloco01.Cells[viComb32,0].ToInteger)
                  or (Stgr_Bloco01.Cells[viComb13,0].ToInteger = Stgr_Bloco01.Cells[viComb33,0].ToInteger)
                  or (Stgr_Bloco01.Cells[viComb14,0].ToInteger = Stgr_Bloco01.Cells[viComb34,0].ToInteger)
                  or (Stgr_Bloco01.Cells[viComb15,0].ToInteger = Stgr_Bloco01.Cells[viComb35,0].ToInteger)
                  or (Stgr_Bloco01.Cells[viComb21,0].ToInteger = Stgr_Bloco01.Cells[viComb31,0].ToInteger)
                  or (Stgr_Bloco01.Cells[viComb22,0].ToInteger = Stgr_Bloco01.Cells[viComb32,0].ToInteger)
                  or (Stgr_Bloco01.Cells[viComb23,0].ToInteger = Stgr_Bloco01.Cells[viComb33,0].ToInteger)
                  or (Stgr_Bloco01.Cells[viComb24,0].ToInteger = Stgr_Bloco01.Cells[viComb34,0].ToInteger)
                  or (Stgr_Bloco01.Cells[viComb25,0].ToInteger = Stgr_Bloco01.Cells[viComb35,0].ToInteger)
               then
                  continue;
   for viComb41 := 1 to 5 do
   begin
      for viComb42 := 1 to 5 do
      begin
         for viComb43 := 1 to 5 do
         begin
            for viComb44 := 1 to 5 do
            begin
               for viComb45 := 1 to 5 do
               begin
               viSoma := Stgr_Bloco01.Cells[viComb41,0].ToInteger
                         + Stgr_Bloco02.Cells[viComb42,0].ToInteger
                         + Stgr_Bloco03.Cells[viComb43,0].ToInteger
                         + Stgr_Bloco04.Cells[viComb44,0].ToInteger
                         + Stgr_Bloco05.Cells[viComb45,0].ToInteger;
               if viSoma<>64 then
                  continue;
               if  (Stgr_Bloco01.Cells[viComb11,0].ToInteger = Stgr_Bloco01.Cells[viComb41,0].ToInteger)
                  or (Stgr_Bloco01.Cells[viComb12,0].ToInteger = Stgr_Bloco01.Cells[viComb42,0].ToInteger)
                  or (Stgr_Bloco01.Cells[viComb13,0].ToInteger = Stgr_Bloco01.Cells[viComb43,0].ToInteger)
                  or (Stgr_Bloco01.Cells[viComb14,0].ToInteger = Stgr_Bloco01.Cells[viComb44,0].ToInteger)
                  or (Stgr_Bloco01.Cells[viComb15,0].ToInteger = Stgr_Bloco01.Cells[viComb45,0].ToInteger)
                  or (Stgr_Bloco01.Cells[viComb21,0].ToInteger = Stgr_Bloco01.Cells[viComb41,0].ToInteger)
                  or (Stgr_Bloco01.Cells[viComb22,0].ToInteger = Stgr_Bloco01.Cells[viComb42,0].ToInteger)
                  or (Stgr_Bloco01.Cells[viComb23,0].ToInteger = Stgr_Bloco01.Cells[viComb43,0].ToInteger)
                  or (Stgr_Bloco01.Cells[viComb24,0].ToInteger = Stgr_Bloco01.Cells[viComb44,0].ToInteger)
                  or (Stgr_Bloco01.Cells[viComb25,0].ToInteger = Stgr_Bloco01.Cells[viComb45,0].ToInteger)
                  or (Stgr_Bloco01.Cells[viComb31,0].ToInteger = Stgr_Bloco01.Cells[viComb41,0].ToInteger)
                  or (Stgr_Bloco01.Cells[viComb32,0].ToInteger = Stgr_Bloco01.Cells[viComb42,0].ToInteger)
                  or (Stgr_Bloco01.Cells[viComb33,0].ToInteger = Stgr_Bloco01.Cells[viComb43,0].ToInteger)
                  or (Stgr_Bloco01.Cells[viComb34,0].ToInteger = Stgr_Bloco01.Cells[viComb44,0].ToInteger)
                  or (Stgr_Bloco01.Cells[viComb35,0].ToInteger = Stgr_Bloco01.Cells[viComb45,0].ToInteger)
               then
                  continue;
               for viComb51 := 1 to 5 do
               begin
                  for viComb52 := 1 to 5 do
                  begin
                     for viComb53 := 1 to 5 do
                     begin
                        for viComb54 := 1 to 5 do
                        begin
                           for viComb55 := 1 to 5 do
                           begin
                           viSoma := Stgr_Bloco01.Cells[viComb51,0].ToInteger
                                     + Stgr_Bloco02.Cells[viComb52,0].ToInteger
                                     + Stgr_Bloco03.Cells[viComb53,0].ToInteger
                                     + Stgr_Bloco04.Cells[viComb54,0].ToInteger
                                     + Stgr_Bloco05.Cells[viComb55,0].ToInteger;
                           if viSoma<>66 then
                              continue;
                           if  (Stgr_Bloco01.Cells[viComb11,0].ToInteger = Stgr_Bloco01.Cells[viComb51,0].ToInteger)
                              or (Stgr_Bloco01.Cells[viComb12,0].ToInteger = Stgr_Bloco01.Cells[viComb52,0].ToInteger)
                              or (Stgr_Bloco01.Cells[viComb13,0].ToInteger = Stgr_Bloco01.Cells[viComb53,0].ToInteger)
                              or (Stgr_Bloco01.Cells[viComb14,0].ToInteger = Stgr_Bloco01.Cells[viComb54,0].ToInteger)
                              or (Stgr_Bloco01.Cells[viComb15,0].ToInteger = Stgr_Bloco01.Cells[viComb55,0].ToInteger)
                              or (Stgr_Bloco01.Cells[viComb21,0].ToInteger = Stgr_Bloco01.Cells[viComb51,0].ToInteger)
                              or (Stgr_Bloco01.Cells[viComb22,0].ToInteger = Stgr_Bloco01.Cells[viComb52,0].ToInteger)
                              or (Stgr_Bloco01.Cells[viComb23,0].ToInteger = Stgr_Bloco01.Cells[viComb53,0].ToInteger)
                              or (Stgr_Bloco01.Cells[viComb24,0].ToInteger = Stgr_Bloco01.Cells[viComb54,0].ToInteger)
                              or (Stgr_Bloco01.Cells[viComb25,0].ToInteger = Stgr_Bloco01.Cells[viComb55,0].ToInteger)
                              or (Stgr_Bloco01.Cells[viComb31,0].ToInteger = Stgr_Bloco01.Cells[viComb51,0].ToInteger)
                              or (Stgr_Bloco01.Cells[viComb32,0].ToInteger = Stgr_Bloco01.Cells[viComb52,0].ToInteger)
                              or (Stgr_Bloco01.Cells[viComb33,0].ToInteger = Stgr_Bloco01.Cells[viComb53,0].ToInteger)
                              or (Stgr_Bloco01.Cells[viComb34,0].ToInteger = Stgr_Bloco01.Cells[viComb54,0].ToInteger)
                              or (Stgr_Bloco01.Cells[viComb35,0].ToInteger = Stgr_Bloco01.Cells[viComb55,0].ToInteger)
                              or (Stgr_Bloco01.Cells[viComb41,0].ToInteger = Stgr_Bloco01.Cells[viComb51,0].ToInteger)
                              or (Stgr_Bloco01.Cells[viComb42,0].ToInteger = Stgr_Bloco01.Cells[viComb52,0].ToInteger)
                              or (Stgr_Bloco01.Cells[viComb43,0].ToInteger = Stgr_Bloco01.Cells[viComb53,0].ToInteger)
                              or (Stgr_Bloco01.Cells[viComb44,0].ToInteger = Stgr_Bloco01.Cells[viComb54,0].ToInteger)
                              or (Stgr_Bloco01.Cells[viComb45,0].ToInteger = Stgr_Bloco01.Cells[viComb55,0].ToInteger)
                           then
                              continue;
                              // ===> BLOCO 01
                              Stgr_Rank1Linha01.Cells[0,viLinhas] := viLinhas.ToString;
                              Stgr_Rank1Linha01.Cells[1,viLinhas] := Stgr_Bloco01.Cells[viComb11,0];
                              Stgr_Rank1Linha01.Cells[2,viLinhas] := Stgr_Bloco02.Cells[viComb12,0];
                              Stgr_Rank1Linha01.Cells[3,viLinhas] := Stgr_Bloco03.Cells[viComb13,0];
                              Stgr_Rank1Linha01.Cells[4,viLinhas] := Stgr_Bloco04.Cells[viComb14,0];
                              Stgr_Rank1Linha01.Cells[5,viLinhas] := Stgr_Bloco05.Cells[viComb15,0];
                              // ===> BLOCO 02
                              Stgr_Rank1Linha02.Cells[0,viLinhas] := viLinhas.ToString;
                              Stgr_Rank1Linha02.Cells[1,viLinhas] := Stgr_Bloco01.Cells[viComb21,0];
                              Stgr_Rank1Linha02.Cells[2,viLinhas] := Stgr_Bloco02.Cells[viComb22,0];
                              Stgr_Rank1Linha02.Cells[3,viLinhas] := Stgr_Bloco03.Cells[viComb23,0];
                              Stgr_Rank1Linha02.Cells[4,viLinhas] := Stgr_Bloco04.Cells[viComb24,0];
                              Stgr_Rank1Linha02.Cells[5,viLinhas] := Stgr_Bloco05.Cells[viComb25,0];
                              // ===> BLOCO 03
                              Stgr_Rank1Linha03.Cells[0,viLinhas] := viLinhas.ToString;
                              Stgr_Rank1Linha03.Cells[1,viLinhas] := Stgr_Bloco01.Cells[viComb31,0];
                              Stgr_Rank1Linha03.Cells[2,viLinhas] := Stgr_Bloco02.Cells[viComb32,0];
                              Stgr_Rank1Linha03.Cells[3,viLinhas] := Stgr_Bloco03.Cells[viComb33,0];
                              Stgr_Rank1Linha03.Cells[4,viLinhas] := Stgr_Bloco04.Cells[viComb34,0];
                              Stgr_Rank1Linha03.Cells[5,viLinhas] := Stgr_Bloco05.Cells[viComb35,0];
            //                  // ===> BLOCO 04
                              Stgr_Rank1Linha04.Cells[0,viLinhas] := viLinhas.ToString;
                              Stgr_Rank1Linha04.Cells[1,viLinhas] := Stgr_Bloco01.Cells[viComb41,0];
                              Stgr_Rank1Linha04.Cells[2,viLinhas] := Stgr_Bloco02.Cells[viComb42,0];
                              Stgr_Rank1Linha04.Cells[3,viLinhas] := Stgr_Bloco03.Cells[viComb43,0];
                              Stgr_Rank1Linha04.Cells[4,viLinhas] := Stgr_Bloco04.Cells[viComb44,0];
                              Stgr_Rank1Linha04.Cells[5,viLinhas] := Stgr_Bloco05.Cells[viComb45,0];
            //                  // ===> BLOCO 05
                              Stgr_Rank1Linha05.Cells[0,viLinhas] := viLinhas.ToString;
                              Stgr_Rank1Linha05.Cells[1,viLinhas] := Stgr_Bloco01.Cells[viComb51,0];
                              Stgr_Rank1Linha05.Cells[2,viLinhas] := Stgr_Bloco02.Cells[viComb52,0];
                              Stgr_Rank1Linha05.Cells[3,viLinhas] := Stgr_Bloco03.Cells[viComb53,0];
                              Stgr_Rank1Linha05.Cells[4,viLinhas] := Stgr_Bloco04.Cells[viComb54,0];
                              Stgr_Rank1Linha05.Cells[5,viLinhas] := Stgr_Bloco05.Cells[viComb55,0];
                              if Not QtdParesLinha01(viLinhas) then
                                 Continue;
                              if Not QtdParesLinha02(viLinhas) then
                                 Continue;
                              if Not QtdParesLinha03(viLinhas) then
                                 Continue;
                              if Not QtdParesLinha04(viLinhas) then
                                 Continue;
                              if Not QtdParesLinha05(viLinhas) then
                                 Continue;
                              Self.OrdenarLinha01(viLinhas);
                              Self.OrdenarLinha02(viLinhas);
                              Self.OrdenarLinha03(viLinhas);
                              Self.OrdenarLinha04(viLinhas);
                              Self.OrdenarLinha05(viLinhas);
                              viLinhas := viLinhas + 1;
                           end;
                        end;
                     end;
                  end;
               end;
               end;
            end;
         end;
      end;
   end;
               end;
            end;
         end;
      end;
   end;
               end;
            end;
         end;
      end;
      Stgr_Rank1Linha01.RowCount := viLinhas;
      Stgr_Rank1Linha02.RowCount := viLinhas;
      Stgr_Rank1Linha03.RowCount := viLinhas;
      Stgr_Rank1Linha04.RowCount := viLinhas;
      Stgr_Rank1Linha05.RowCount := viLinhas;
      Stgr_Rank1Linha01.Repaint ;
      Stgr_Rank1Linha02.Repaint ;
      Stgr_Rank1Linha03.Repaint ;
      Stgr_Rank1Linha04.Repaint ;
      Stgr_Rank1Linha05.Repaint ;
   end;

               end;
            end;
         end;
      end;
   end;
   Stgr_Rank1Linha01.RowCount := viLinhas;
   Stgr_Rank1Linha02.RowCount := viLinhas;
   Stgr_Rank1Linha03.RowCount := viLinhas;
   Stgr_Rank1Linha04.RowCount := viLinhas;
   Stgr_Rank1Linha05.RowCount := viLinhas;
   ED_NumeroDaLinha.SetFocus;
   MessageDlg('Preparar concluído',mtInformation,[mbOk],0);
end;

procedure T_F_GeradorRanking01.Bbt_CapturarLinhaClick(Sender: TObject);
var
   viLinha: Integer;
begin
   if (StrToInt(ED_NumeroDaLinha.Text)) <= 0 then
      exit;
   viLinha := strTOint(ED_NumeroDaLinha.Text);
   Stgr_CapturarLinha.Cells[1,0] := Stgr_Rank1Linha01.Cells[1,viLinha];
   Stgr_CapturarLinha.Cells[2,0] := Stgr_Rank1Linha01.Cells[2,viLinha];
   Stgr_CapturarLinha.Cells[3,0] := Stgr_Rank1Linha01.Cells[3,viLinha];
   Stgr_CapturarLinha.Cells[4,0] := Stgr_Rank1Linha01.Cells[4,viLinha];
   Stgr_CapturarLinha.Cells[5,0] := Stgr_Rank1Linha01.Cells[5,viLinha];

   Stgr_CapturarLinha.Cells[1,1] := Stgr_Rank1Linha02.Cells[1,viLinha];
   Stgr_CapturarLinha.Cells[2,1] := Stgr_Rank1Linha02.Cells[2,viLinha];
   Stgr_CapturarLinha.Cells[3,1] := Stgr_Rank1Linha02.Cells[3,viLinha];
   Stgr_CapturarLinha.Cells[4,1] := Stgr_Rank1Linha02.Cells[4,viLinha];
   Stgr_CapturarLinha.Cells[5,1] := Stgr_Rank1Linha02.Cells[5,viLinha];

   Stgr_CapturarLinha.Cells[1,2] := Stgr_Rank1Linha03.Cells[1,viLinha];
   Stgr_CapturarLinha.Cells[2,2] := Stgr_Rank1Linha03.Cells[2,viLinha];
   Stgr_CapturarLinha.Cells[3,2] := Stgr_Rank1Linha03.Cells[3,viLinha];
   Stgr_CapturarLinha.Cells[4,2] := Stgr_Rank1Linha03.Cells[4,viLinha];
   Stgr_CapturarLinha.Cells[5,2] := Stgr_Rank1Linha03.Cells[5,viLinha];

   Stgr_CapturarLinha.Cells[1,3] := Stgr_Rank1Linha04.Cells[1,viLinha];
   Stgr_CapturarLinha.Cells[2,3] := Stgr_Rank1Linha04.Cells[2,viLinha];
   Stgr_CapturarLinha.Cells[3,3] := Stgr_Rank1Linha04.Cells[3,viLinha];
   Stgr_CapturarLinha.Cells[4,3] := Stgr_Rank1Linha04.Cells[4,viLinha];
   Stgr_CapturarLinha.Cells[5,3] := Stgr_Rank1Linha04.Cells[5,viLinha];

   Stgr_CapturarLinha.Cells[1,4] := Stgr_Rank1Linha05.Cells[1,viLinha];
   Stgr_CapturarLinha.Cells[2,4] := Stgr_Rank1Linha05.Cells[2,viLinha];
   Stgr_CapturarLinha.Cells[3,4] := Stgr_Rank1Linha05.Cells[3,viLinha];
   Stgr_CapturarLinha.Cells[4,4] := Stgr_Rank1Linha05.Cells[4,viLinha];
   Stgr_CapturarLinha.Cells[5,4] := Stgr_Rank1Linha05.Cells[5,viLinha];
   MessageDlg('Linha: '+intTOstr(viLinha)+' capturada',mtInformation,[mbOk],0);
end;


Procedure T_F_GeradorRanking01.OrdenarRankGrid15(viLinhas1: INTEGER);
var
    viContar, viCntCelulas: INTEGER;
begin
      // ************************
    // **  Ordena os dados   **
     // ************************
    FOR viContar :=1 TO 25 DO
    BEGIN
        STGR_Todos_Numeros.Cells[viContar,1] :='F';
    END; // FOR viContar
    // ----> MONTADO E VERIFICANDO TODOS OS DÍGITOS
    FOR viContar :=1 TO 15 DO
    BEGIN
        STGR_Todos_Numeros.Cells [ (STRtoINT(Stgr_RankGrid15.Cells[viContar,viLinhas1])) ,1]:='V';
    END; // FOR viContar1
    viCntCelulas := 1;
    FOR viContar :=1 TO 25 DO
    BEGIN
        IF (STGR_Todos_Numeros.Cells[viContar,1]='V') THEN
        BEGIN
            Stgr_RankGrid15.Cells[viCntCelulas, viLinhas1] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[viContar,0]),2) ;
            viCntCelulas := viCntCelulas + 1;
        END; // IF (STGR_Todos_Numeros
    END; // FOR viContar
end; //


PROCEDURE T_F_GeradorRanking01.PR_Gravar_Dados15 ();
VAR
   VI_AN_Comb1, viContarCelulas, viContar, viContarStgGrid : INTEGER;
   vcQUERY, vcNomeTabela, vcLinha_01, vcLinha_02, vcLinha_03, vcLinha_04, vcLinha_05: STRING;
   vcCombinacoes15, vc_Contador_da_Tabela : STRING;
BEGIN
   SELF.Repaint;
   viContarStgGrid := TRUNC((Stgr_RankGrid15.RowCount-1)/1);
   FOR VI_AN_Comb1:= 1 TO viContarStgGrid DO
   BEGIN
     vcCombinacoes15 :='';
     FOR viContarCelulas := 1 TO 15 DO
     BEGIN
         vcCombinacoes15 := vcCombinacoes15 + TRIM(Stgr_RankGrid15.Cells[viContarCelulas,VI_AN_Comb1]) +' ';
     END; // FOR viContarCelulas
     vcNomeTabela := 'GERADOR_RESULT_25_Rank1D';
     vcQUERY  := 'INSERT INTO ' +vcNomeTabela+ ' (DADOS) VALUES('
           +#39+  TRIM(vcCombinacoes15)
           +#39+ ');';
     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add(vcQUERY)  ;
     DM1.IBQ_Combinacoes.ExecSQL;
   END; // FOR VI_AN_Comb1
   vcLinha_01 := Stgr_CapturarLinha.Cells[1,0]  + ' '
                 +Stgr_CapturarLinha.Cells[2,0] + ' '
                 +Stgr_CapturarLinha.Cells[3,0] + ' '
                 +Stgr_CapturarLinha.Cells[4,0] + ' '
                 +Stgr_CapturarLinha.Cells[5,0];
   vcLinha_02 := Stgr_CapturarLinha.Cells[1,1]  + ' '
                 +Stgr_CapturarLinha.Cells[2,1] + ' '
                 +Stgr_CapturarLinha.Cells[3,1] + ' '
                 +Stgr_CapturarLinha.Cells[4,1] + ' '
                 +Stgr_CapturarLinha.Cells[5,1];
   vcLinha_03 := Stgr_CapturarLinha.Cells[1,2] + ' '
                 +Stgr_CapturarLinha.Cells[2,2]+ ' '
                 +Stgr_CapturarLinha.Cells[3,2]+ ' '
                 +Stgr_CapturarLinha.Cells[4,2]+ ' '
                 +Stgr_CapturarLinha.Cells[5,2];
   vcLinha_04 :=Stgr_CapturarLinha.Cells[1,3] + ' '
                +Stgr_CapturarLinha.Cells[2,3]+ ' '
                +Stgr_CapturarLinha.Cells[3,3]+ ' '
                +Stgr_CapturarLinha.Cells[4,3]+ ' '
                +Stgr_CapturarLinha.Cells[5,3];
   vcLinha_05 :=  Stgr_CapturarLinha.Cells[1,4]  + ' '
                  +Stgr_CapturarLinha.Cells[2,4] + ' '
                  +Stgr_CapturarLinha.Cells[3,4] + ' '
                  +Stgr_CapturarLinha.Cells[4,4] + ' '
                  +Stgr_CapturarLinha.Cells[5,4];
   DM1.IBQ_Combinacoes.SQL.Clear;
     vcQUERY  := 'INSERT INTO GERADOR_RESULT_25_Rank1H (ULTIMO_SORTEIO, N_LINHA, Linha_01, Linha_02, Linha_03, Linha_04, Linha_05, DATA_DEFINICAO, HORA_DEFINICAO) VALUES('
           +#39+  TRIM(La_NumeroRank.Caption)  + #39 +','
           +#39+  TRIM(ED_NumeroDaLinha.Text)  + #39 +','
           +#39+  TRIM(vcLinha_01)  + #39 +','
           +#39+  TRIM(vcLinha_02)  + #39 +','
           +#39+  TRIM(vcLinha_03)  + #39 +','
           +#39+  TRIM(vcLinha_04)  + #39 +','
           +#39+  TRIM(vcLinha_05)  + #39 +','
           +#39+  StringReplace(DateToStr(Date),'/','.',[]) + #39 +','
           +#39+  TimeToStr(Time())
           +#39+ ');';
   DM1.IBQ_Combinacoes.SQL.Add(vcQUERY)  ;
   DM1.IBQ_Combinacoes.ExecSQL;
   DM1.IBQ_Combinacoes.SQL.Clear;
   DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
   DM1.IBQ_Combinacoes.ExecSQL;

   DM1.IBQ_Combinacoes.SQL.Clear;
END;


procedure T_F_GeradorRanking01.BBT_GerarMenuClick(Sender: TObject);
var
   viComb11, viComb12, viComb13 : integer;
   viComb21, viComb22, viComb23 : integer;
   viComb31, viComb32, viComb33 : integer;
   viComb41, viComb42, viComb43 : integer;
   viComb51, viComb52, viComb53, viLinhas : integer;
begin
     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_Rank1D')  ;
     DM1.IBQ_Combinacoes.ExecSQL;
     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_Rank1H')  ;
     DM1.IBQ_Combinacoes.ExecSQL;
     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
     DM1.IBQ_Combinacoes.ExecSQL;
   viLinhas := 1;
   Stgr_RankGrid15.ColWidths[0] := 75 ;
   for viComb11 := 1 to 5 do
   begin
      for viComb12 := viComb11+1 to 5 do
      begin
         for viComb13 := viComb12+1 to 5 do
         begin
   for viComb21 := 1 to 5 do
   begin
      for viComb22 := viComb21+1 to 5 do
      begin
         for viComb23 := viComb22+1 to 5 do
         begin
   for viComb31 := 1 to 5 do
   begin
      for viComb32 := viComb31+1 to 5 do
      begin
         for viComb33 := viComb32+1 to 5 do
         begin
   for viComb41 := 1 to 5 do
   begin
      for viComb42 := viComb41+1 to 5 do
      begin
         for viComb43 := viComb42+1 to 5 do
         begin
            for viComb51 := 1 to 5 do
            begin
               for viComb52 := viComb51+1 to 5 do
               begin
                  for viComb53 := viComb52+1 to 5 do
                  begin
                     Stgr_RankGrid15.Cells[0,viLinhas] := viLinhas.ToString;
                     Stgr_RankGrid15.Cells[01,viLinhas] := Stgr_CapturarLinha.Cells[viComb11,0];
                     Stgr_RankGrid15.Cells[02,viLinhas] := Stgr_CapturarLinha.Cells[viComb12,0];
                     Stgr_RankGrid15.Cells[03,viLinhas] := Stgr_CapturarLinha.Cells[viComb13,0];
                     Stgr_RankGrid15.Cells[04,viLinhas] := Stgr_CapturarLinha.Cells[viComb21,1];
                     Stgr_RankGrid15.Cells[05,viLinhas] := Stgr_CapturarLinha.Cells[viComb22,1];
                     Stgr_RankGrid15.Cells[06,viLinhas] := Stgr_CapturarLinha.Cells[viComb23,1];
                     Stgr_RankGrid15.Cells[07,viLinhas] := Stgr_CapturarLinha.Cells[viComb31,2];
                     Stgr_RankGrid15.Cells[08,viLinhas] := Stgr_CapturarLinha.Cells[viComb32,2];
                     Stgr_RankGrid15.Cells[09,viLinhas] := Stgr_CapturarLinha.Cells[viComb33,2];
                     Stgr_RankGrid15.Cells[10,viLinhas] := Stgr_CapturarLinha.Cells[viComb41,3];
                     Stgr_RankGrid15.Cells[11,viLinhas] := Stgr_CapturarLinha.Cells[viComb42,3];
                     Stgr_RankGrid15.Cells[12,viLinhas] := Stgr_CapturarLinha.Cells[viComb43,3];
                     Stgr_RankGrid15.Cells[13,viLinhas] := Stgr_CapturarLinha.Cells[viComb51,4];
                     Stgr_RankGrid15.Cells[14,viLinhas] := Stgr_CapturarLinha.Cells[viComb52,4];
                     Stgr_RankGrid15.Cells[15,viLinhas] := Stgr_CapturarLinha.Cells[viComb53,4];
                     OrdenarRankGrid15(viLinhas);
                     viLinhas := viLInhas + 1;
                  end;
               end;
            end;
         end;
      end;
   end;
         end;
      end;
   end;
         end;
      end;
   end;
            Stgr_RankGrid15.RowCount := viLinhas;
            Stgr_RankGrid15.Repaint;
         end;
      end;
   end;
   Stgr_RankGrid15.RowCount := viLinhas;
   PR_Gravar_Dados15 ();
   MessageDlg('Concluído',mtInformation,[mbOk],0);
end;


end.
