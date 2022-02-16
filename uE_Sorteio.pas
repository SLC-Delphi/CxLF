unit uE_Sorteio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, StrUtils,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB;

type
  TF_E_Sorteio = class(TForm)
    PA_Dados: TPanel;
    ED_s01: TEdit;
    ED_s02: TEdit;
    ED_s03: TEdit;
    ED_s05: TEdit;
    ED_s04: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ED_s06: TEdit;
    ED_s07: TEdit;
    ED_s08: TEdit;
    ED_s09: TEdit;
    ED_s10: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    ED_s11: TEdit;
    ED_s12: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    ED_s13: TEdit;
    ED_s14: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    ED_s15: TEdit;
    ED_Ultimo_Sorteio: TEdit;
    Label42: TLabel;
    DS_E_Sorteio: TDataSource;
    paRodape: TPanel;
    BBT_Gravar: TBitBtn;
    BBT_Cancelar: TBitBtn;
    pa_Teto: TPanel;
    BBT_Editar: TBitBtn;
    BBT_Novo: TBitBtn;
    LAB_MODO: TLabel;
    BBT_Proximo: TBitBtn;
    BBT_Anterior: TBitBtn;
    sbtnEstatistica: TSpeedButton;
    Panel1: TPanel;
    procedure BBT_AnteriorClick(Sender: TObject);
    procedure BBT_ProximoClick(Sender: TObject);
    procedure BBT_NovoClick(Sender: TObject);
    procedure BBT_EditarClick(Sender: TObject);
    procedure ED_s01Exit(Sender: TObject);
    procedure ED_s02Exit(Sender: TObject);
    procedure ED_s03Exit(Sender: TObject);
    procedure ED_s04Exit(Sender: TObject);
    procedure ED_s05Exit(Sender: TObject);
    procedure ED_s06Exit(Sender: TObject);
    procedure ED_s07Exit(Sender: TObject);
    procedure ED_s08Exit(Sender: TObject);
    procedure ED_s09Exit(Sender: TObject);
    procedure ED_s10Exit(Sender: TObject);
    procedure ED_s11Exit(Sender: TObject);
    procedure ED_s12Exit(Sender: TObject);
    procedure ED_s13Exit(Sender: TObject);
    procedure ED_s14Exit(Sender: TObject);
    procedure ED_s15Exit(Sender: TObject);
    procedure BBT_CancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BBT_GravarClick(Sender: TObject);
    procedure sbtnEstatisticaClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirTabela();
    procedure AcertarBotoes();
    Procedure AcertarDados (vcOperacao : String);
    Procedure PR_Zerar_DADOS ();
    Procedure PR_LER_DADOS();
  public
    { Public declarations }
  end;

var
  F_E_Sorteio: TF_E_Sorteio;

implementation

uses uDataModule01, uEstatisica;

{$R *.dfm}




procedure TF_E_Sorteio.AbrirTabela();
begin
    DM1.IBQ_Combinacoes.Close ;
    DM1.IBQ_Combinacoes.SQL.Clear ;
    DM1.IBQ_Combinacoes.SQL.Add('SELECT * FROM E_SORTEIO_15N ORDER BY N_SORTEIO') ;
    DM1.IBQ_Combinacoes.Prepare ;
    DM1.IBQ_Combinacoes.Open;
    DM1.IBQ_Combinacoes.First;
END;


procedure TF_E_Sorteio.FormCreate(Sender: TObject);
begin
    LAB_Modo.Caption := 'CONSULTAR';
    Self.AbrirTabela () ;
    AcertarBotoes();
    PR_LER_DADOS();    
end;


procedure TF_E_Sorteio.AcertarBotoes();
begin
    IF (LAB_Modo.Caption = 'CONSULTAR')  THEN
    BEGIN
        BBT_Anterior.Enabled := True;
        BBT_Proximo.Enabled := True;
        BBT_Novo.Enabled := True;
        BBT_Editar.Enabled := True;
        PA_Dados.Enabled := False;
        BBT_Cancelar.Enabled := False;
        BBT_Gravar.Enabled := False;
    END ELSE
    IF (LAB_Modo.Caption = 'NOVO')  THEN
    BEGIN
        BBT_Anterior.Enabled := False;
        BBT_Proximo.Enabled := False;
        BBT_Novo.Enabled := False;
        BBT_Editar.Enabled := False;
        PA_Dados.Enabled := True;
        BBT_Cancelar.Enabled := True;
        BBT_Gravar.Enabled := True;
    END ELSE
    IF (LAB_Modo.Caption = 'EDITAR')  THEN
    BEGIN
        BBT_Anterior.Enabled := False;
        BBT_Proximo.Enabled := False;
        BBT_Novo.Enabled := False;
        BBT_Editar.Enabled := False;
        PA_Dados.Enabled := True;
        BBT_Cancelar.Enabled := True;
        BBT_Gravar.Enabled := True;
    END; // if
END;



Procedure TF_E_Sorteio.PR_Zerar_DADOS();
begin
    ED_Ultimo_Sorteio.Text := '';
    ED_s01.Text := '00' ;
    ED_s02.Text := '00' ;
    ED_s03.Text := '00' ;
    ED_s04.Text := '00' ;
    ED_s05.Text := '00' ;
    ED_s06.Text := '00' ;
    ED_s07.Text := '00' ;
    ED_s08.Text := '00' ;
    ED_s09.Text := '00' ;
    ED_s10.Text := '00' ;
    ED_s11.Text := '00' ;
    ED_s12.Text := '00' ;
    ED_s13.Text := '00' ;
    ED_s14.Text := '00' ;
    ED_s15.Text := '00' ;
end;


Procedure TF_E_Sorteio.PR_LER_DADOS();
begin
    ED_Ultimo_Sorteio.Text := DM1.IBQ_Combinacoes.FieldByName('N_SORTEIO').AsString;
    ED_s01.Text := DM1.IBQ_Combinacoes.FieldByName('S01').AsString;
    ED_s02.Text := DM1.IBQ_Combinacoes.FieldByName('S02').AsString;
    ED_s03.Text := DM1.IBQ_Combinacoes.FieldByName('S03').AsString;
    ED_s04.Text := DM1.IBQ_Combinacoes.FieldByName('S04').AsString;
    ED_s05.Text := DM1.IBQ_Combinacoes.FieldByName('S05').AsString;
    ED_s06.Text := DM1.IBQ_Combinacoes.FieldByName('S06').AsString;
    ED_s07.Text := DM1.IBQ_Combinacoes.FieldByName('S07').AsString;
    ED_s08.Text := DM1.IBQ_Combinacoes.FieldByName('S08').AsString;
    ED_s09.Text := DM1.IBQ_Combinacoes.FieldByName('S09').AsString;
    ED_s10.Text := DM1.IBQ_Combinacoes.FieldByName('S10').AsString;
    ED_s11.Text := DM1.IBQ_Combinacoes.FieldByName('S11').AsString;
    ED_s12.Text := DM1.IBQ_Combinacoes.FieldByName('S12').AsString;
    ED_s13.Text := DM1.IBQ_Combinacoes.FieldByName('S13').AsString;
    ED_s14.Text := DM1.IBQ_Combinacoes.FieldByName('S14').AsString;
    ED_s15.Text := DM1.IBQ_Combinacoes.FieldByName('S15').AsString;
end;


procedure TF_E_Sorteio.BBT_NovoClick(Sender: TObject);
begin
     LAB_Modo.Caption := 'NOVO';
     PR_ZERAR_DADOS();
     AcertarBotoes();
     {
    DM1.IBQ_Combinacoes.Close ;
    DM1.IBQ_Combinacoes.SQL.Clear ;
    DM1.IBQ_Combinacoes.SQL.Add('SELECT * FROM E_SORTEIO_15M ORDER BY N_SORTEIO') ;
    DM1.IBQ_Combinacoes.Prepare ;
    DM1.IBQ_Combinacoes.Open;
    DM1.IBQ_Combinacoes.Last;
     ED_Ultimo_Sorteio.Text := INTtoSTR(1+(DM1.IBQ_Combinacoes.FieldByName('N_SORTEIO').AsInteger));
     }
     ED_Ultimo_Sorteio.Enabled := True ;
     ED_Ultimo_Sorteio.Repaint;     
     ED_Ultimo_Sorteio.SetFocus;
end;


Procedure TF_E_Sorteio.AcertarDados (vcOperacao : String);
VAR
    viUltimoValor, viContar : SMALLINT;
    vcNumeros : array [1..15] of string;
Begin
    if strTOint(ED_Ultimo_Sorteio.Text) <= 1826 then
    begin
        showmessage('Número do sorteio anterior ao 1826. Os valores não serão computados na estatística;');
        exit;
    end;
    vcNumeros [01] := ED_s01.Text;
    vcNumeros [02] := ED_s02.Text;
    vcNumeros [03] := ED_s03.Text;
    vcNumeros [04] := ED_s04.Text;
    vcNumeros [05] := ED_s05.Text;
    vcNumeros [06] := ED_s06.Text;
    vcNumeros [07] := ED_s07.Text;
    vcNumeros [08] := ED_s08.Text;
    vcNumeros [09] := ED_s09.Text;
    vcNumeros [10] := ED_s10.Text;
    vcNumeros [11] := ED_s11.Text;
    vcNumeros [12] := ED_s12.Text;
    vcNumeros [13] := ED_s13.Text;
    vcNumeros [14] := ED_s14.Text;
    vcNumeros [15] := ED_s15.Text;
    FOR viContar := 1 to 15 DO
    BEGIN
    DM1.IBQ_Combinacoes.Close ;
    DM1.IBQ_Combinacoes.SQL.Clear ;
    DM1.IBQ_Combinacoes.SQL.Add('SELECT * FROM ESTATISTICA_25N WHERE NUMERO= :pS0'+INTtoSTR(viContar) +' ORDER BY NUMERO' );
    DM1.IBQ_Combinacoes.ParamByName('pS0'+INTtoSTR(viContar)).AsString := vcNumeros [viContar]  ;
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;
    viUltimoValor :=  DM1.IBQ_Combinacoes.FieldByName('QTD').AsInteger ;
    DM1.IBQ_Combinacoes.SQL.Clear ;
    DM1.IBQ_Combinacoes.SQL.Add( 'UPDATE ESTATISTICA_25N SET QTD= :pQTD  WHERE NUMERO = :pS0'+INTtoSTR(viContar) );
    if (vcOperacao = '-') THEN
        DM1.IBQ_Combinacoes.ParamByName('pQTD').AsInteger := viUltimoValor-1
    else if (vcOperacao = '+') THEN
        DM1.IBQ_Combinacoes.ParamByName('pQTD').AsInteger := viUltimoValor+1;
    DM1.IBQ_Combinacoes.ParamByName('pS0'+INTtoSTR(viContar)).AsString := vcNumeros [viContar]  ;
    DM1.IBQ_Combinacoes.ExecSQL;
    end;
    DM1.IBTransaction1.Commit;
    if (DM1.IBTransaction1.Active) = False then
    DM1.IBTransaction1.StartTransaction;
end;


procedure TF_E_Sorteio.BBT_EditarClick(Sender: TObject);
begin
     LAB_Modo.Caption := 'EDITAR';
     AcertarBotoes();
     PR_LER_DADOS();
     Self.AcertarDados ('-');
     ED_Ultimo_Sorteio.Enabled := False ;
     ED_Ultimo_Sorteio.Repaint;             
     ED_s01.SetFocus;
end;



procedure TF_E_Sorteio.BBT_CancelarClick(Sender: TObject);
begin
    Self.AbrirTabela () ;
    PR_LER_DADOS();
    if (LAB_MODO.Caption = 'EDITAR') THEN
    begin
        Self.AcertarDados ('+');
        Self.AbrirTabela () ;
    end;
    LAB_Modo.Caption := 'CONSULTAR';
    AcertarBotoes();
    BBT_Anterior.SetFocus;
end;



procedure TF_E_Sorteio.BBT_GravarClick(Sender: TObject);
VAR
    viUltimoSorteioBancoDados, viUltimoValorDigitado : Integer;
begin
{
ALTER SEQUENCE GEN_E_SORTEIO_15M_ID RESTART WITH 1826
}
{
    if (LAB_MODO.Caption = 'NOVO') THEN
    begin
        if (DM1.IBTransaction1.Active) = False then
            DM1.IBTransaction1.StartTransaction;
        DM1.IBQ_Combinacoes.Close ;
        DM1.IBQ_Combinacoes.SQL.Clear ;
        DM1.IBQ_Combinacoes.SQL.Add('INSERT INTO E_SORTEIO_15M (USUARIO_UMOD) VALUES (''Jose Baleeiro'') ');
        DM1.IBQ_Combinacoes.ExecSQL;
        DM1.IBTransaction1.Commit;
    end;

    if (DM1.IBTransaction1.Active) = False then
        DM1.IBTransaction1.StartTransaction;
    DM1.IBQ_Combinacoes.Close ;
    DM1.IBQ_Combinacoes.SQL.Clear ;
    DM1.IBQ_Combinacoes.SQL.Add('SELECT * FROM E_SORTEIO_15M ORDER BY N_SORTEIO' );
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;
    viUltimoSorteioBancoDados := DM1.IBQ_Combinacoes.FieldByName('N_Sorteio').AsInteger ;
    }
    try
        viUltimoValorDigitado := strTOint(ED_Ultimo_Sorteio.Text)
    Except
        showmessage('Número do sorteio é invalido');
        ED_Ultimo_Sorteio.SetFocus ;
        Exit;
    end;
    if (strTOint(ED_s01.Text) > 0) Then
        IF (strTOint(ED_s01.Text)>=strTOint(ED_s02.Text))
            or (strTOint(ED_s02.Text)>=strTOint(ED_s03.Text))
            or (strTOint(ED_s03.Text)>=strTOint(ED_s04.Text))
            or (strTOint(ED_s04.Text)>=strTOint(ED_s05.Text))
            or (strTOint(ED_s05.Text)>=strTOint(ED_s06.Text))
            or (strTOint(ED_s06.Text)>=strTOint(ED_s07.Text))
            or (strTOint(ED_s07.Text)>=strTOint(ED_s08.Text))
            or (strTOint(ED_s08.Text)>=strTOint(ED_s09.Text))
            or (strTOint(ED_s09.Text)>=strTOint(ED_s10.Text))
            or (strTOint(ED_s10.Text)>=strTOint(ED_s11.Text))
            or (strTOint(ED_s11.Text)>=strTOint(ED_s12.Text))
            or (strTOint(ED_s12.Text)>=strTOint(ED_s13.Text))
            or (strTOint(ED_s13.Text)>=strTOint(ED_s14.Text))
            or (strTOint(ED_s14.Text)>=strTOint(ED_s15.Text))
        then
        begin
            showmessage('Os Números precisam estar em ordem crescente');
            ED_s01.SetFocus ;
            Exit;
        end;
    DM1.IBQ_Combinacoes.Close ;
    DM1.IBQ_Combinacoes.SQL.Clear ;
    if (LAB_MODO.Caption = 'NOVO') THEN
    begin
        DM1.IBQ_Combinacoes.SQL.Add('SELECT ULTIMO_SORTEIO FROM ESTATISTICA_25N ORDER BY ULTIMO_SORTEIO');
        DM1.IBQ_Combinacoes.Prepare;
        DM1.IBQ_Combinacoes.Open;
        DM1.IBQ_Combinacoes.Last;
            viUltimoSorteioBancoDados := DM1.IBQ_Combinacoes.FieldByName('ULTIMO_SORTEIO').AsInteger;
        DM1.IBQ_Combinacoes.SQL.Clear ;
        DM1.IBQ_Combinacoes.SQL.Add('INSERT INTO E_SORTEIO_15N (N_Sorteio, S01, S02, S03, S04, S05, S06, S07, S08, S09, S10, S11, S12, S13, S14, S15) VALUES (:pN_Sorteio, :pS01, :pS02, :pS03, :pS04, :pS05, :pS06, :pS07, :pS08, :pS09, :pS10, :pS11, :pS12, :pS13, :pS14, :pS15) ');
    end
    ELSE if (LAB_MODO.Caption = 'EDITAR') THEN
        DM1.IBQ_Combinacoes.SQL.Add('UPDATE E_SORTEIO_15N SET S01= :pS01, S02= :pS02, S03= :pS03, S04= :pS04, S05= :pS05, S06= :pS06, S07= :pS07, S08= :pS08, S09= :pS09, S10= :pS10, S11= :pS11, S12= :pS12, S13= :pS13, S14= :pS14, S15= :pS15  WHERE N_Sorteio = :pN_Sorteio') ;
    DM1.IBQ_Combinacoes.ParamByName('pN_Sorteio').AsInteger := strTOint(ED_Ultimo_Sorteio.Text) ;
    DM1.IBQ_Combinacoes.ParamByName('pS01').AsString := ED_s01.Text ;
    DM1.IBQ_Combinacoes.ParamByName('pS02').AsString := ED_s02.Text ;
    DM1.IBQ_Combinacoes.ParamByName('pS03').AsString := ED_s03.Text ;
    DM1.IBQ_Combinacoes.ParamByName('pS04').AsString := ED_s04.Text ; 
    DM1.IBQ_Combinacoes.ParamByName('pS05').AsString := ED_s05.Text ; 
    DM1.IBQ_Combinacoes.ParamByName('pS06').AsString := ED_s06.Text ; 
    DM1.IBQ_Combinacoes.ParamByName('pS07').AsString := ED_s07.Text ; 
    DM1.IBQ_Combinacoes.ParamByName('pS08').AsString := ED_s08.Text ; 
    DM1.IBQ_Combinacoes.ParamByName('pS09').AsString := ED_s09.Text ; 
    DM1.IBQ_Combinacoes.ParamByName('pS10').AsString := ED_s10.Text ; 
    DM1.IBQ_Combinacoes.ParamByName('pS11').AsString := ED_s11.Text ; 
    DM1.IBQ_Combinacoes.ParamByName('pS12').AsString := ED_s12.Text ; 
    DM1.IBQ_Combinacoes.ParamByName('pS13').AsString := ED_s13.Text ; 
    DM1.IBQ_Combinacoes.ParamByName('pS14').AsString := ED_s14.Text ;
    DM1.IBQ_Combinacoes.ParamByName('pS15').AsString := ED_s15.Text ;
    DM1.IBQ_Combinacoes.ExecSQL;
    if (LAB_MODO.Caption = 'NOVO')  and  (viUltimoValorDigitado >  viUltimoSorteioBancoDados) then
    begin
        DM1.IBQ_Combinacoes.SQL.Clear ;
        DM1.IBQ_Combinacoes.SQL.Add( 'UPDATE ESTATISTICA_25N SET ULTIMO_SORTEIO= :pUSorteio');
        DM1.IBQ_Combinacoes.ParamByName('pUSorteio').AsInteger := viUltimoValorDigitado;
        DM1.IBQ_Combinacoes.ExecSQL;
    end; /// if
    Self.AcertarDados ('+');
    DM1.IBTransaction1.Commit;
    if (DM1.IBTransaction1.Active) = False then
        DM1.IBTransaction1.StartTransaction;
    LAB_Modo.Caption := 'CONSULTAR';
    Self.AbrirTabela () ;
    PR_LER_DADOS();
    AcertarBotoes();
    BBT_Anterior.SetFocus;
end;


//=======================
// PROCEDURES PARA PRÓXIMO E ANTERIOR
//=======================
procedure TF_E_Sorteio.BBT_AnteriorClick(Sender: TObject);
begin
   DS_E_Sorteio.DataSet.Prior;
   IF NOT (DS_E_Sorteio.DataSet.Bof) Then
   BEGIN
      PR_LER_DADOS();
      SELF.Refresh;
   END;  // IF NOT
end;


procedure TF_E_Sorteio.BBT_ProximoClick(Sender: TObject);
BEGIN
   DS_E_Sorteio.DataSet.Next;
   IF NOT (DS_E_Sorteio.DataSet.Eof) Then
   BEGIN
      PR_LER_DADOS();
      self.Refresh;
   END;  // IF NOT
end;




//=======================
// PROCEDURES PARA VALIDAÇÃO NUMÉRICA
//=======================
procedure TF_E_Sorteio.ED_s01Exit(Sender: TObject);
VAR
    viNumero: Smallint;
begin
    try
        viNumero := STRtoINT(ED_s01.Text);
    except
        showmessage('Digite um número.');
        ED_s01.SetFocus ;
        Exit;
    end; // try
    if viNumero >= 11 then
    begin
        showmessage('Número inválido.');
        ED_s01.SetFocus ;
        Exit;
    end;
end;


procedure TF_E_Sorteio.ED_s02Exit(Sender: TObject);
VAR
    viNumero: Smallint;
begin
    try
        viNumero := STRtoINT(ED_s02.Text);
    except
        showmessage('Digite um número.');
        ED_s02.SetFocus ;
        Exit;
    end; // try
    if (viNumero <> 0) then
        if (viNumero < 2) or (viNumero > 12) then
        begin
            showmessage('Número inválido.');
            ED_s02.SetFocus ;
            Exit;
        end;
end;


procedure TF_E_Sorteio.ED_s03Exit(Sender: TObject);
VAR
    viNumero: Smallint;
begin
    try
        viNumero := STRtoINT(ED_s03.Text);
    except
        showmessage('Digite um número.');
        ED_s03.SetFocus ;
        Exit;
    end; // try
    if (viNumero <> 0) then
    if (viNumero < 3) or (viNumero > 13) then
    begin
        showmessage('Número inválido.');
        ED_s03.SetFocus ;
        Exit;
    end;
end;


procedure TF_E_Sorteio.ED_s04Exit(Sender: TObject);
VAR
    viNumero: Smallint;
begin
    try
        viNumero := STRtoINT(ED_s04.Text);
    except
        showmessage('Digite um número.');
        ED_s04.SetFocus ;
        Exit;
    end; // try
    if (viNumero <> 0) then
    if (viNumero < 4) or (viNumero > 14) then
    begin
        showmessage('Número inválido.');
        ED_s04.SetFocus ;
        Exit;
    end;
end;


procedure TF_E_Sorteio.ED_s05Exit(Sender: TObject);
VAR
    viNumero: Smallint;
begin
    try
        viNumero := STRtoINT(ED_s05.Text);
    except
        showmessage('Digite um número.');
        ED_s05.SetFocus ;
        Exit;
    end; // try
    if (viNumero <> 0) then
    if (viNumero < 5) or (viNumero > 15) then
    begin
        showmessage('Número inválido.');
        ED_s05.SetFocus ;
        Exit;
    end;
end;


procedure TF_E_Sorteio.ED_s06Exit(Sender: TObject);
VAR
    viNumero: Smallint;
begin
    try
        viNumero := STRtoINT(ED_s06.Text);
    except
        showmessage('Digite um número.');
        ED_s06.SetFocus ;
        Exit;
    end; // try
    if (viNumero <> 0) then
    if (viNumero < 6) or (viNumero > 16) then
    begin
        showmessage('Número inválido.');
        ED_s06.SetFocus ;
        Exit;
    end;
end;


procedure TF_E_Sorteio.ED_s07Exit(Sender: TObject);
VAR
    viNumero: Smallint;
begin
    try
        viNumero := STRtoINT(ED_s07.Text);
    except
        showmessage('Digite um número.');
        ED_s07.SetFocus ;
        Exit;
    end; // try
    if (viNumero <> 0) then
    if (viNumero < 7) or (viNumero > 17) then
    begin
        showmessage('Número inválido.');
        ED_s07.SetFocus ;
        Exit;
    end;
end;


procedure TF_E_Sorteio.ED_s08Exit(Sender: TObject);
VAR
    viNumero: Smallint;
begin
    try
        viNumero := STRtoINT(ED_s08.Text);
    except
        showmessage('Digite um número.');
        ED_s08.SetFocus ;
        Exit;
    end; // try
    if (viNumero <> 0) then
    if (viNumero < 08) or (viNumero > 18) then
    begin
        showmessage('Número inválido.');
        ED_s08.SetFocus ;
        Exit;
    end;
end;


procedure TF_E_Sorteio.ED_s09Exit(Sender: TObject);
VAR
    viNumero: Smallint;
begin
    try
        viNumero := STRtoINT(ED_s09.Text);
    except
        showmessage('Digite um número.');
        ED_s09.SetFocus ;
        Exit;
    end; // try
    if (viNumero <> 0) then
    if (viNumero < 09) or (viNumero > 19) then
    begin
        showmessage('Número inválido.');
        ED_s09.SetFocus ;
        Exit;
    end;
end;


procedure TF_E_Sorteio.ED_s10Exit(Sender: TObject);
VAR
    viNumero: Smallint;
begin
    try
        viNumero := STRtoINT(ED_s10.Text);
    except
        showmessage('Digite um número.');
        ED_s10.SetFocus ;
        Exit;
    end; // try
    if (viNumero <> 0) then
    if (viNumero < 10) or (viNumero > 20) then
    begin
        showmessage('Número inválido.');
        ED_s10.SetFocus ;
        Exit;
    end;
end;


procedure TF_E_Sorteio.ED_s11Exit(Sender: TObject);
VAR
    viNumero: Smallint;
begin
    try
        viNumero := STRtoINT(ED_s11.Text);
    except
        showmessage('Digite um número.');
        ED_s11.SetFocus ;
        Exit;
    end; // try
    if (viNumero <> 0) then
    if (viNumero < 11) or (viNumero > 21) then
    begin
        showmessage('Número inválido.');
        ED_s11.SetFocus ;
        Exit;
    end;
end;


procedure TF_E_Sorteio.ED_s12Exit(Sender: TObject);
VAR
    viNumero: Smallint;
begin
    try
        viNumero := STRtoINT(ED_s12.Text);
    except
        showmessage('Digite um número.');
        ED_s12.SetFocus ;
        Exit;
    end; // try
    if (viNumero <> 0) then
    if (viNumero < 12) or (viNumero > 22) then
    begin
        showmessage('Número inválido.');
        ED_s12.SetFocus ;
        Exit;
    end;
end;


procedure TF_E_Sorteio.ED_s13Exit(Sender: TObject);
VAR
    viNumero: Smallint;
begin
    try
        viNumero := STRtoINT(ED_s13.Text);
    except
        showmessage('Digite um número.');
        ED_s13.SetFocus ;
        Exit;
    end; // try
    if (viNumero <> 0) then
    if (viNumero < 13) or (viNumero > 23) then
    begin
        showmessage('Número inválido.');
        ED_s13.SetFocus ;
        Exit;
    end;
end;


procedure TF_E_Sorteio.ED_s14Exit(Sender: TObject);
VAR
    viNumero: Smallint;
begin
    try
        viNumero := STRtoINT(ED_s14.Text);
    except
        showmessage('Digite um número.');
        ED_s14.SetFocus ;
        Exit;
    end; // try
    if (viNumero <> 0) then
    if (viNumero < 14) or (viNumero > 24) then
    begin
        showmessage('Número inválido.');
        ED_s14.SetFocus ;
        Exit;
    end;
end;


procedure TF_E_Sorteio.ED_s15Exit(Sender: TObject);
VAR
    viNumero: Smallint;
begin
    try
        viNumero := STRtoINT(ED_s15.Text);
    except
        showmessage('Digite um número.');
        ED_s15.SetFocus ;
        Exit;
    end; // try
    if (viNumero <> 0) then    
    if (viNumero < 15) or (viNumero > 25) then
    begin
        showmessage('Número inválido.');
        ED_s15.SetFocus ;
        Exit;
    end;
end;






procedure TF_E_Sorteio.sbtnEstatisticaClick(Sender: TObject);
begin
    F_Estatisica.Show ; 
end;

end.
