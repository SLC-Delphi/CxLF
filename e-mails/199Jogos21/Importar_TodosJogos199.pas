unit Importar_TodosJogos199;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,  StrUtils,
  Dialogs, StdCtrls, DB, IBCustomDataSet, IBQuery, IBDatabase, ComCtrls, Vcl.Grids;

type
  TForm1 = class(TForm)
    TButton_Carregar: TButton;
    TButton_Gravar: TButton;
    TLabel_CarregarAviso: TLabel;
    TLabel_GravarAviso: TLabel;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBQ_Combinacoes: TIBQuery;
    PGBR_Gravando: TProgressBar;
    Label1_Number: TLabel;
    stgr_Jogos21Numeros: TStringGrid;
    TMemo_Numeros: TMemo;
    stgr_Jogos05Numeros: TStringGrid;
    Stgr_TodosNumeros: TStringGrid;
    Mem_CombinacoesTodas: TMemo;
    procedure TButton_CarregarClick(Sender: TObject);
    procedure TButton_GravarClick(Sender: TObject);
  private
    procedure Falso_Linha1TodosNumerosP21;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.TButton_CarregarClick(Sender: TObject);
var
     viContarColunas, ViContarCelulas, vsiContador : SmallInt;
     vcQuery : String;
begin
     TMemo_Numeros.Lines.Clear;
     TMemo_Numeros.Lines.LoadFromFile('.\199 jogos 21 dezenas lotofacil.txt');
     TLabel_CarregarAviso.Caption := 'Dados Carregados';
     TLabel_CarregarAviso.Repaint;
     TButton_Gravar.Enabled     := TRUE;
     TLabel_GravarAviso.Enabled := TRUE;
     stgr_Jogos21Numeros.ColWidths[0] := 39;
     stgr_Jogos21Numeros.RowCount :=2;
       try
          FOR vsiContador:= 0 TO TMemo_Numeros.lines.Count-1 DO
          BEGIN
               stgr_Jogos05Numeros.Cells[00,vsiContador+1] := (vsiContador+1).ToString;
               stgr_Jogos21Numeros.Cells[00,vsiContador+1] := (vsiContador+1).ToString;
               stgr_Jogos21Numeros.Cells[01,vsiContador+1] := COPY(TMemo_Numeros.Lines[vsiContador],1,2)  ;
               stgr_Jogos21Numeros.Cells[02,vsiContador+1] := COPY(TMemo_Numeros.Lines[vsiContador],4,2)  ;
               stgr_Jogos21Numeros.Cells[03,vsiContador+1] := COPY(TMemo_Numeros.Lines[vsiContador],7,2)  ;
               stgr_Jogos21Numeros.Cells[04,vsiContador+1] := COPY(TMemo_Numeros.Lines[vsiContador],10,2) ;
               stgr_Jogos21Numeros.Cells[05,vsiContador+1] := COPY(TMemo_Numeros.Lines[vsiContador],13,2) ;
               stgr_Jogos21Numeros.Cells[06,vsiContador+1] := COPY(TMemo_Numeros.Lines[vsiContador],16,2) ;
               stgr_Jogos21Numeros.Cells[07,vsiContador+1] := COPY(TMemo_Numeros.Lines[vsiContador],19,2) ;
               stgr_Jogos21Numeros.Cells[08,vsiContador+1] := COPY(TMemo_Numeros.Lines[vsiContador],22,2) ;
               stgr_Jogos21Numeros.Cells[09,vsiContador+1] := COPY(TMemo_Numeros.Lines[vsiContador],25,2) ;
               stgr_Jogos21Numeros.Cells[10,vsiContador+1] := COPY(TMemo_Numeros.Lines[vsiContador],28,2) ;
               stgr_Jogos21Numeros.Cells[11,vsiContador+1] := COPY(TMemo_Numeros.Lines[vsiContador],31,2) ;
               stgr_Jogos21Numeros.Cells[12,vsiContador+1] := COPY(TMemo_Numeros.Lines[vsiContador],34,2) ;
               stgr_Jogos21Numeros.Cells[13,vsiContador+1] := COPY(TMemo_Numeros.Lines[vsiContador],37,2) ;
               stgr_Jogos21Numeros.Cells[14,vsiContador+1] := COPY(TMemo_Numeros.Lines[vsiContador],40,2) ;
               stgr_Jogos21Numeros.Cells[15,vsiContador+1] := COPY(TMemo_Numeros.Lines[vsiContador],43,2) ;
               stgr_Jogos21Numeros.Cells[16,vsiContador+1] := COPY(TMemo_Numeros.Lines[vsiContador],46,2) ;
               stgr_Jogos21Numeros.Cells[17,vsiContador+1] := COPY(TMemo_Numeros.Lines[vsiContador],49,2) ;
               stgr_Jogos21Numeros.Cells[18,vsiContador+1] := COPY(TMemo_Numeros.Lines[vsiContador],52,2) ;
               stgr_Jogos21Numeros.Cells[19,vsiContador+1] := COPY(TMemo_Numeros.Lines[vsiContador],55,2) ;
               stgr_Jogos21Numeros.Cells[20,vsiContador+1] := COPY(TMemo_Numeros.Lines[vsiContador],58,2) ;
               stgr_Jogos21Numeros.Cells[21,vsiContador+1] := COPY(TMemo_Numeros.Lines[vsiContador],61,2) ;
              if (vsiContador MOD 2 = 0) then
              BEGIN
                  PGBR_Gravando.Position := (TRUNC((vsiContador+1)  / 199 *100));
                  PGBR_Gravando.Repaint;
                  sleep(3);
              END;
              Label1_Number.Caption := (vsiContador+1).ToString;
              Label1_Number.Refresh;

            // --> Capturando os dados
            Falso_Linha1TodosNumerosP21;
            for viContarColunas := 01 to 21 do
            begin
               Stgr_TodosNumeros.Cells[(STRtoINT(stgr_Jogos21Numeros.Cells[viContarColunas, vsiContador+1])), 1] := 'V';
            end;
             ViContarCelulas := 1;
             FOR viContarColunas :=1 TO 25 DO
             BEGIN
                  IF (Stgr_TodosNumeros.Cells[viContarColunas,1]='F') THEN
                  BEGIN
                       stgr_Jogos05Numeros.Cells [ViContarCelulas, vsiContador+1] := RIGHTSTR ('0'+(Stgr_TodosNumeros.Cells[viContarColunas,0]),2) ;
                       ViContarCelulas := ViContarCelulas+1;
                  END; // IF (STRGR_TODOS_NUMEROS
             END; // FOR viContarColunas

          END; // FOR VI_AN_COMB1
       finally
         stgr_Jogos21Numeros.RowCount := TMemo_Numeros.Lines.Count+1;
         stgr_Jogos05Numeros.RowCount := stgr_Jogos21Numeros.RowCount;
       end;
end;


procedure TForm1.TButton_GravarClick(Sender: TObject);
var
     vsiContador : SmallInt;
     vsCombinacoes2 : String;
begin
   Mem_CombinacoesTodas.Clear;
   FOR vsiContador:= 0 TO TMemo_Numeros.lines.Count-1 DO
   BEGIN
       vsCombinacoes2 := '';
       vsCombinacoes2 := {Rightstr('000'+stgr_Jogos05Numeros.Cells[00,vsiContador+1],4) + ' => '+}
                          stgr_Jogos21Numeros.Cells[01,vsiContador+1] + ' '+
                          stgr_Jogos21Numeros.Cells[02,vsiContador+1] + ' '+
                          stgr_Jogos21Numeros.Cells[03,vsiContador+1] + ' '+
                          stgr_Jogos21Numeros.Cells[04,vsiContador+1] + ' '+
                          stgr_Jogos21Numeros.Cells[05,vsiContador+1] + ' '+
                          stgr_Jogos21Numeros.Cells[06,vsiContador+1] + ' '+
                          stgr_Jogos21Numeros.Cells[07,vsiContador+1] + ' '+
                          stgr_Jogos21Numeros.Cells[08,vsiContador+1] + ' '+
                          stgr_Jogos21Numeros.Cells[09,vsiContador+1] + ' '+
                          stgr_Jogos21Numeros.Cells[10,vsiContador+1] + ' '+
                          stgr_Jogos21Numeros.Cells[11,vsiContador+1] + ' '+
                          stgr_Jogos21Numeros.Cells[12,vsiContador+1] + ' '+
                          stgr_Jogos21Numeros.Cells[13,vsiContador+1] + ' '+
                          stgr_Jogos21Numeros.Cells[14,vsiContador+1] + ' '+
                          stgr_Jogos21Numeros.Cells[15,vsiContador+1] + ' '+
                          stgr_Jogos21Numeros.Cells[16,vsiContador+1] + ' '+
                          stgr_Jogos21Numeros.Cells[17,vsiContador+1] + ' '+
                          stgr_Jogos21Numeros.Cells[18,vsiContador+1] + ' '+
                          stgr_Jogos21Numeros.Cells[19,vsiContador+1] + ' '+
                          stgr_Jogos21Numeros.Cells[20,vsiContador+1] + ' '+
                          stgr_Jogos21Numeros.Cells[21,vsiContador+1] + '   - '+
                          stgr_Jogos05Numeros.Cells[01,vsiContador+1] + ' '+
                          stgr_Jogos05Numeros.Cells[02,vsiContador+1] + ' '+
                          stgr_Jogos05Numeros.Cells[03,vsiContador+1] + ' '+
                          stgr_Jogos05Numeros.Cells[04,vsiContador+1];
       Mem_CombinacoesTodas.Lines.Append(vsCombinacoes2);
    END; // FOR viContar
    Mem_CombinacoesTodas.Repaint;
    //Mem_CombinacoesTodas.SelectAll;
    //Mem_CombinacoesTodas.CopyToClipboard;
    //Mem_CombinacoesTodas.Repaint;
    Mem_CombinacoesTodas.Lines.SaveToFile('C:\CXLOTOFACIL\0199Jogos_21Numeros_05Numeros_Lotofacil.TXT');
    winExec(PAnsiChar('Notepad.exe C:\CXLOTOFACIL\0199Jogos_21Numeros_05Numeros_Lotofacil.TXT'), sw_shownormal);
end;


procedure TForm1.Falso_Linha1TodosNumerosP21();
var
  viContar: Integer;
begin
  for viContar := 1 to 25 do
  begin
    Stgr_TodosNumeros.Cells[viContar, 0] := viContar.ToString;
    Stgr_TodosNumeros.Cells[viContar, 1] := 'F';
  end;
  Stgr_TodosNumeros.Repaint;
end;


end.
