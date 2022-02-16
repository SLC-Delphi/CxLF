unit uImportar166_21;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery,
  IBX.IBDatabase, System.Rtti, FMX.Layouts, FMX.Grid, FMX.ScrollBox, FMX.Memo,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm2 = class(TForm)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    Layout1: TLayout;
    Layout2: TLayout;
    Bt_Importar3Blocos: TButton;
    Memo1: TMemo;
    StyleBook1: TStyleBook;
    Bt_Importar116: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Bt_Importar3BlocosClick(Sender: TObject);
    procedure Bt_Importar116Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}
{$R *.Windows.fmx MSWINDOWS}

procedure TForm2.FormCreate(Sender: TObject);
begin
   Try
      IBQuery1.SQL.Clear;
      IBQuery1.SQL.Add('CREATE TABLE RANK_166JGS_21NUMEROS1( Numero integer, Dados VARCHAR(64) COLLATE PT_BR);') ;
      IBQuery1.ExecSQL;
      IBQuery1.SQL.Clear;
      IBQuery1.SQL.Add('COMMIT')  ;
      IBQuery1.ExecSQL;
      IBQuery1.Transaction.StartTransaction;
      IBQuery1.Transaction.Commit;
      IBQuery1.Transaction.StartTransaction;
   Except
      //
   End;
   Try
      IBQuery1.SQL.Clear;
      IBQuery1.SQL.Add('CREATE TABLE RANK_166JGS_21NUMEROS2( Numero integer, Dados VARCHAR(64) COLLATE PT_BR, Bloco integer);') ;
      IBQuery1.ExecSQL;
      IBQuery1.SQL.Clear;
      IBQuery1.SQL.Add('COMMIT')  ;
      IBQuery1.ExecSQL;
      IBQuery1.Transaction.StartTransaction;
      IBQuery1.Transaction.Commit;
      IBQuery1.Transaction.StartTransaction;
   Except
      //
   End;
end;

procedure TForm2.Bt_Importar3BlocosClick(Sender: TObject);
Var
   viLinhas : Integer;
   vsQuery : String;
begin

   Try
      IBQuery1.SQL.Clear;
      IBQuery1.SQL.Add('Delete From RANK_166JGS_21NUMEROS2;') ;
      IBQuery1.ExecSQL;
      IBQuery1.SQL.Clear;
      IBQuery1.SQL.Add('COMMIT')  ;
      IBQuery1.ExecSQL;
      IBQuery1.Transaction.StartTransaction;
      IBQuery1.Transaction.Commit;
      IBQuery1.Transaction.StartTransaction;
   Except
      //
   End;
   Memo1.Lines.Clear;
   Memo1.Lines.LoadFromFile('C:\CxLotoFacil\06linhas21nspara15sorteados.txt');
   for viLinhas := 0 to Memo1.Lines.Count-1 do
   begin
      if Trim(Memo1.Lines[viLinhas])='' then
         continue;
      IBQuery1.SQL.Clear;
      vsQuery := 'Insert into RANK_166JGS_21NUMEROS2 ( Numero, Dados, Bloco ) ' ;
      vsQuery := vsQuery + 'Values ( ';
      vsQuery := vsQuery + QuotedStr((viLinhas+1).ToString) + ', ';
      vsQuery := vsQuery + QuotedStr(Memo1.Lines[viLinhas]) + ', ';
      vsQuery := vsQuery + QuotedStr('1');
      vsQuery := vsQuery + ' )' ;
      IBQuery1.SQL.Add(vsQuery) ;
      IBQuery1.ExecSQL;
   end;
   IBQuery1.SQL.Clear;
   IBQuery1.SQL.Add('COMMIT')  ;
   IBQuery1.ExecSQL;
   ShowMessage('Bloco 1 importado. Clique em OK para ir para o Bloco 2');
   Memo1.Lines.Clear;
   Memo1.Lines.LoadFromFile('C:\CxLotoFacil\50linhas21nspara15sorteados.txt');
   for viLinhas := 0 to Memo1.Lines.Count-1 do
   begin
      if Trim(Memo1.Lines[viLinhas])='' then
         continue;
      IBQuery1.SQL.Clear;
      vsQuery := 'Insert into RANK_166JGS_21NUMEROS2 ( Numero, Dados, Bloco ) ' ;
      vsQuery := vsQuery + 'Values ( ';
      vsQuery := vsQuery + QuotedStr((viLinhas+1).ToString) + ', ';
      vsQuery := vsQuery + QuotedStr(Memo1.Lines[viLinhas]) + ', ';
      vsQuery := vsQuery + QuotedStr('2');
      vsQuery := vsQuery + ' )' ;
      IBQuery1.SQL.Add(vsQuery) ;
      IBQuery1.ExecSQL;
   end;
   IBQuery1.SQL.Clear;
   IBQuery1.SQL.Add('COMMIT')  ;
   IBQuery1.ExecSQL;
   ShowMessage('Bloco 2 importado. Clique em OK para ir para o Bloco 3');
   Memo1.Lines.Clear;
   Memo1.Lines.LoadFromFile('C:\CxLotoFacil\60linhas21nspara15sorteados.txt');
   for viLinhas := 0 to Memo1.Lines.Count-1 do
   begin
      if Trim(Memo1.Lines[viLinhas])='' then
         continue;
      IBQuery1.SQL.Clear;
      vsQuery := 'Insert into RANK_166JGS_21NUMEROS2 ( Numero, Dados, Bloco ) ' ;
      vsQuery := vsQuery + 'Values ( ';
      vsQuery := vsQuery + QuotedStr((viLinhas+1).ToString) + ', ';
      vsQuery := vsQuery + QuotedStr(Memo1.Lines[viLinhas]) + ', ';
      vsQuery := vsQuery + QuotedStr('3');
      vsQuery := vsQuery + ' )' ;
      IBQuery1.SQL.Add(vsQuery) ;
      IBQuery1.ExecSQL;
   end;
   IBQuery1.SQL.Clear;
   IBQuery1.SQL.Add('COMMIT')  ;
   IBQuery1.ExecSQL;
   ShowMessage('Fim - Terminou');
end;

procedure TForm2.Bt_Importar116Click(Sender: TObject);
Var
   viLinhas : Integer;
   vsQuery : String;
begin
   Memo1.Lines.Clear;
   Memo1.Lines.LoadFromFile('C:\CxLotoFacil\116 linhas 21 ns.txt');
   for viLinhas := 0 to Memo1.Lines.Count-1 do
   begin
      if Trim(Memo1.Lines[viLinhas])='' then
         continue;
      IBQuery1.SQL.Clear;
      vsQuery := 'Insert into RANK_166JGS_21NUMEROS1 ( Numero, Dados ) ' ;
      vsQuery := vsQuery + 'Values ( ';
      vsQuery := vsQuery + QuotedStr((viLinhas+1).ToString) + ', ';
      vsQuery := vsQuery + QuotedStr(Memo1.Lines[viLinhas]);
      vsQuery := vsQuery + ' )' ;
      IBQuery1.SQL.Add(vsQuery) ;
      IBQuery1.ExecSQL;
   end;
   IBQuery1.SQL.Clear;
   IBQuery1.SQL.Add('COMMIT')  ;
   IBQuery1.ExecSQL;
   ShowMessage('Fim');
end;


end.
