unit uGerador_08_Numeros_Fixos1;

interface

uses
  Windows, Graphics, ExtCtrls, StdCtrls, ComCtrls, Buttons, Controls, SysUtils, Dialogs, strutils,
  Classes, Forms, Grids;

type
  T_F_Gerador_08_NumerosFixos1 = class(TForm)
    PA_RemoveuRepetidos: TPanel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    LA_rTOTAL_COMB: TLabel;
    LA_rQTD_COMB: TLabel;
    Label58: TLabel;
    LA_gINICIO_100REPET: TLabel;
    Label60: TLabel;
    Label49: TLabel;
    LA_gFIM_100REPET: TLabel;
    LA_gFIM_GERAR: TLabel;
    BBT_RemoveuRepetidos: TBitBtn;
    PA_Inicial: TPanel;
    Label55: TLabel;
    BTN_NovaSimulacao: TButton;
    BTN_Reajustar: TButton;
    BTN_Sair: TButton;
    BBT_Cancelar: TBitBtn;
    MEM_Combinacoes_Todas: TMemo;
    PA_Topo: TPanel;
    LA_Titulo: TLabel;
    BBT_Close: TImage;
    PA_Resultado: TPanel;
    STGR_Comb10: TStringGrid;
    STGR_Todos_Numeros: TStringGrid;
    PA_ExecutarFiltro: TPanel;
    BBT_PrepararMenu: TBitBtn;
    BBT_GerarMenu: TBitBtn;
    PANEL_Titulo_Simulacao: TPanel;
    LA_Gerar_Comb: TLabel;
    PGBR_Etapa_01: TProgressBar;
    PA_Gerar: TPanel;
    Panel2: TPanel;
    Label63: TLabel;
    BBT_Etapa01: TBitBtn;
    BBT_Voltar: TBitBtn;
    PA_Preparar: TPanel;
    Panel1: TPanel;
    Label2: TLabel;
    BBT_Preparar1: TBitBtn;
    BBT_Gerar_Voltar: TBitBtn;
    BBT_CancelarSair: TBitBtn;
    SCBX_Gabarito: TScrollBox;
    Label7: TLabel;
    PA_Fixos: TPanel;
    Label1: TLabel;
    ED_Fixos01: TEdit;
    ED_Fixos02: TEdit;
    BBT_BlocoNotas: TBitBtn;
    SCBX_dados: TScrollBox;
    BTN_BlocoDeNotas1: TButton;
    btn_Carregar: TButton;
    Label3: TLabel;
    BBT_OK: TBitBtn;
    Label13: TLabel;
    STGR_Etapa07_15: TStringGrid;
    STGR_Etapa04_19: TStringGrid;
    STGR_Etapa03_11: TStringGrid;
    STGR_Etapa01_06: TStringGrid;
    Label31: TLabel;
    PGBR_Etapa_02: TProgressBar;
    PGBR_Etapa_03: TProgressBar;
    STGR_Etapa06_03: TStringGrid;
    Label32: TLabel;
    PGBR_Etapa_04: TProgressBar;
    Label33: TLabel;
    BBT_Etapa04: TBitBtn;
    Label34: TLabel;
    PGBR_Etapa_05: TProgressBar;
    Label35: TLabel;
    PGBR_Etapa_06: TProgressBar;
    PGBR_Etapa_07: TProgressBar;
    Label41: TLabel;
    STGR_Etapa05_12: TStringGrid;
    PA_Preencher5: TPanel;
    BBT_Recomecar: TBitBtn;
    BBT_701: TBitBtn;
    BBT_703: TBitBtn;
    BBT_705: TBitBtn;
    BBT_707: TBitBtn;
    BBT_709: TBitBtn;
    BBT_717: TBitBtn;
    BBT_715: TBitBtn;
    BBT_713: TBitBtn;
    BBT_711: TBitBtn;
    BBT_719: TBitBtn;
    BBT_721: TBitBtn;
    BBT_723: TBitBtn;
    BBT_725: TBitBtn;
    BBT_702: TBitBtn;
    BBT_712: TBitBtn;
    BBT_720: TBitBtn;
    BBT_722: TBitBtn;
    BBT_724: TBitBtn;
    BBT_718: TBitBtn;
    BBT_710: TBitBtn;
    BBT_708: TBitBtn;
    BBT_716: TBitBtn;
    BBT_714: TBitBtn;
    BBT_706: TBitBtn;
    BBT_704: TBitBtn;
    BBT_MontarBloco17: TBitBtn;
    STGR_Base08Fixos: TStringGrid;
    STGR_Base17Fixos: TStringGrid;
    Label5: TLabel;
    STGR_Etapa05_07: TStringGrid;
    STGR_Etapa07_21: TStringGrid;
    STGR_Etapa08_10a: TStringGrid;
    STGR_Etapa08_06: TStringGrid;
    PGBR_Etapa_08: TProgressBar;
    Label4: TLabel;
    STGR_Etapa08_19: TStringGrid;
    STGR_Etapa08_11: TStringGrid;
    Label8: TLabel;
    Label9: TLabel;
    PGBR_Etapa_08_01: TProgressBar;
    Label10: TLabel;
    STGR_Etapa08_12: TStringGrid;
    Label11: TLabel;
    PGBR_Etapa_08_02: TProgressBar;
    STGR_Etapa08_15: TStringGrid;
    PGBR_Etapa_08_03: TProgressBar;
    STGR_Etapa08_10b: TStringGrid;
    Label12: TLabel;
    Label14: TLabel;
    ED_Fixos03: TEdit;
    procedure BBT_Preparar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BBT_CloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBT_PrepararMenuClick(Sender: TObject);
    procedure BTN_NovaSimulacaoClick(Sender: TObject);
    procedure BBT_Gerar_VoltarClick(Sender: TObject);
    procedure BTN_SairClick(Sender: TObject);
    procedure BBT_CancelarClick(Sender: TObject);
    procedure BBT_Etapa01Click(Sender: TObject);
    procedure BBT_GerarMenuClick(Sender: TObject);
    procedure BTN_ReajustarClick(Sender: TObject);
    procedure BBT_CARREGARClick(Sender: TObject);
    procedure BBT_VoltarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BBT_BlocoNotasClick(Sender: TObject);
    procedure btn_CarregarClick(Sender: TObject);
    procedure BBT_OKClick(Sender: TObject);
    procedure BBT_RemoveuRepetidosClick(Sender: TObject);
    procedure BBT_Etapa04Click(Sender: TObject);
    procedure BBT_RecomecarClick(Sender: TObject);
    procedure BBT_701Click(Sender: TObject);
    procedure BBT_702Click(Sender: TObject);
    procedure BBT_703Click(Sender: TObject);
    procedure BBT_704Click(Sender: TObject);
    procedure BBT_705Click(Sender: TObject);
    procedure BBT_706Click(Sender: TObject);
    procedure BBT_707Click(Sender: TObject);
    procedure BBT_708Click(Sender: TObject);
    procedure BBT_709Click(Sender: TObject);
    procedure BBT_710Click(Sender: TObject);
    procedure BBT_711Click(Sender: TObject);
    procedure BBT_712Click(Sender: TObject);
    procedure BBT_713Click(Sender: TObject);
    procedure BBT_714Click(Sender: TObject);
    procedure BBT_715Click(Sender: TObject);
    procedure BBT_716Click(Sender: TObject);
    procedure BBT_717Click(Sender: TObject);
    procedure BBT_718Click(Sender: TObject);
    procedure BBT_719Click(Sender: TObject);
    procedure BBT_720Click(Sender: TObject);
    procedure BBT_721Click(Sender: TObject);
    procedure BBT_722Click(Sender: TObject);
    procedure BBT_723Click(Sender: TObject);
    procedure BBT_724Click(Sender: TObject);
    procedure BBT_725Click(Sender: TObject);
    procedure BBT_MontarBloco17Click(Sender: TObject);
    procedure ED_Fixos01Click(Sender: TObject);
    procedure ED_Fixos02Change(Sender: TObject);
    procedure ED_Fixos01Change(Sender: TObject);
  private
    F_MODALIDADE: STRING;
    Fvi_inicial1: INTEGER;
    Fvi_final1: INTEGER;
    { Private declarations }
    procedure Set_MODALIDADE(const Value: STRING);
    procedure LimparGrid_7Comb15();
    procedure LimparGrid_8Comb15();
    Procedure LimparGrid19 ();
    procedure Setvi_final1E(const Value: INTEGER);
    procedure Setvi_inicial1(const Value: INTEGER);
    Procedure Ordenar_Comb19 (viLinhas9,viEtapa: INTEGER);
    Function QtdPares19 (viLinhas: integer) : boolean;
    Function QtdPares12 (viLinhas, viEtapa: integer) : boolean;
    Function ConfereEtapa7(viLinhas: integer) : boolean;
    Procedure AnaliseComb1_03em07(viEtapa:integer);
    FUNCTION NumerosFixos6de8 (viLinhas1, viEtapa : integer) : BOOLEAN;
    FUNCTION NumerosFixos8 (viLinhas1, viEtapa : integer) : BOOLEAN;
    procedure Gerar12(viSoma, viEtapa: Integer) ;
    PROCEDURE PR_ORDENAR_15 (viLinhas9,viEtapa: INTEGER);
    PROCEDURE PR_Gravar_Dados_15 (vcNomeTabela : String; viEtapa:Integer);
    Procedure Gerando15de12_e_3 (viEtapa: Integer);
    Procedure AnaliseComb_06e17(viEtapa: integer);
    PROCEDURE BotoesBase25False ();
    PROCEDURE BotoesBase25Add (viNumero: INTEGER);
    procedure GerarBlocoNotas1(vcNomeTabela, vcTitulo, vcSubTitulo, vcTipo: string);
  public
    { Public declarations }
     PROPERTY _MODALIDADE : STRING  read F_MODALIDADE write Set_MODALIDADE;
     PROPERTY vi_inicial1 : INTEGER  read Fvi_inicial1 write Setvi_inicial1;
     PROPERTY vi_final1 : INTEGER  read Fvi_final1 write Setvi_final1E;
  end;

var
  _F_Gerador_08_NumerosFixos1: T_F_Gerador_08_NumerosFixos1;

implementation

uses uDataModule01;

{$R *.dfm}


procedure T_F_Gerador_08_NumerosFixos1.Set_MODALIDADE(const Value: STRING);
begin
  F_MODALIDADE := Value;
end;

procedure T_F_Gerador_08_NumerosFixos1.Setvi_final1E(const Value: INTEGER);
begin
  Fvi_final1 := Value;
end;

procedure T_F_Gerador_08_NumerosFixos1.Setvi_inicial1(const Value: INTEGER);
begin
  Fvi_inicial1 := Value;
end;



procedure T_F_Gerador_08_NumerosFixos1.FormCreate(Sender: TObject);
var
    viContarCelulas : smallint;
begin
     SELF.ClientWidth  := 1415;
     SELF.ClientHeight := 695;
     SELF.Top  := 59;
     SELF.Left := 9;
   //  SELF.Visible := TRUE;
     bbt_close.Left := SELF.ClientWidth-35;
          PA_RemoveuRepetidos.Left := 5000;
     PA_Preparar.Left := 5000;
     PA_Gerar.Left := 5000;
     SCBX_Gabarito.Visible := false;
     PA_Resultado.Visible := false;
     PA_Inicial.Enabled := TRUE;
     PA_Inicial.Left := 520;
     PA_Inicial.Top := 160;
    PA_ExecutarFiltro.Enabled := false;
    BBT_CancelarSair.Visible := false;
    BBT_Recomecar.Click;

        try
            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_08_Fixos01_DEF SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            DM1.IBQ_Combinacoes.ExecSQL;
            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
            DM1.IBQ_Combinacoes.ExecSQL;
        except
            //
        end; // try

    FOR viContarCelulas := 1 TO 25 DO
    BEGIN
       STGR_Todos_Numeros.Cells [viContarCelulas ,0]:=intTOstr(viContarCelulas);
    end;
end;



procedure T_F_Gerador_08_NumerosFixos1.FormActivate(Sender: TObject);
begin
      IF (SELF._MODALIDADE ='GERADOR') THEN
      begin
          LA_Titulo.Caption             := 'GERADOR 08 Números Fixos 1';
       //   CB_Classificacao17.ItemIndex := 0;
       //   CB_Classificacao17.Enabled := True;
      END ELSE
      BEGIN
          LA_Titulo.Caption             := 'SIMULAR a Partir de 08 Números Fixos 1';
       //   CB_Classificacao17.Enabled := True;
          BTN_NovaSimulacao.Click;
      end;
      LA_Titulo.Repaint;
end;



procedure T_F_Gerador_08_NumerosFixos1.FormClose(Sender: TObject;
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


procedure T_F_Gerador_08_NumerosFixos1.BBT_CloseClick(Sender: TObject);
begin
     SELF.Close;
end;







procedure T_F_Gerador_08_NumerosFixos1.BTN_NovaSimulacaoClick(Sender: TObject);
begin
     PA_Resultado.Enabled := TRUE;
  //   RB_RESULTADOS.SetFocus;
  //   RB_RES_GABARITOS.SetFocus;
     SCBX_Gabarito.Visible := TRUE;
     SCBX_Gabarito.Enabled := TRUE;
     PA_Resultado.Visible := TRUE;
     PA_Resultado.Enabled := TRUE;
     PA_ExecutarFiltro.Enabled := TRUE;
     BBT_PrepararMenu.Enabled := TRUE;
     BBT_GerarMenu.Enabled := false;
     BBT_GerarMenu.Enabled := false;
     BBT_CancelarSair.Visible := false;
     PA_Inicial.Enabled := false;
     PA_Inicial.Left := 2198;
     SCBX_Gabarito.Top:=247;
     SCBX_Gabarito.Repaint;
end;


procedure T_F_Gerador_08_NumerosFixos1.BTN_SairClick(Sender: TObject);
begin
     SELF.Close;
end;



procedure T_F_Gerador_08_NumerosFixos1.BBT_CancelarClick(Sender: TObject);
begin
            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_08_Fixos01_DEF SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            DM1.IBQ_Combinacoes.ExecSQL;
            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add('COMMIT;')  ;
            DM1.IBQ_Combinacoes.ExecSQL;
          SELF.Close;
end;




procedure T_F_Gerador_08_NumerosFixos1.LimparGrid_7Comb15();
var
    viContaSel1: integer;
begin
    STGR_Etapa07_15.CleanupInstance;
    //STGR_Comb15_p5.Free;
    freeANDnil(STGR_Etapa07_15);
    sleep (350);
    SCBX_dados.HorzScrollBar.Position := 2490;
    SCBX_dados.Repaint;
    STGR_Etapa07_15 := TstringGrid.Create(SELF);
    STGR_Etapa07_15.Parent := SCBX_dados;
    with STGR_Etapa07_15 do
    begin
      Left := 520     ;
      Top := 8       ;
      Width := 645      ;
      Height := 331     ;
      TabStop := False     ;
      Align := alCustom    ;
      Color := 14017159    ;
      ColCount := 19          ;
      DefaultColWidth := 27   ;
      DefaultRowHeight := 25  ;
      FixedColor := clMedGray ;
      FixedCols := 2      ;
      RowCount := 2       ;
      Font.Charset := DEFAULT_CHARSET ;
      Font.Color := clWindowText     ;
      Font.Height := -16           ;
      Font.Name := 'Times New Roman'      ;
      Font.Style := []         ;
      GridLineWidth := 2 ;
      Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
      ParentFont := False ;
      TabOrder := 0       ;
    end; // with
    STGR_Etapa07_15.ColWidths [0]:= 55 ;
    STGR_Etapa07_15.ColWidths [1]:= 40 ;
    STGR_Etapa07_15.RowCount := 1;    
    STGR_Etapa07_15.Repaint;
end;


procedure T_F_Gerador_08_NumerosFixos1.LimparGrid_8Comb15();
var
    viContaSel1: integer;
begin
    STGR_Etapa08_15.CleanupInstance;
    //STGR_Comb15_p5.Free;
    freeANDnil(STGR_Etapa08_15);
    sleep (350);
    SCBX_dados.HorzScrollBar.Position := 5998;
    SCBX_dados.Repaint;
    STGR_Etapa08_15 := TstringGrid.Create(SELF);
    STGR_Etapa08_15.Parent := SCBX_dados;
    with STGR_Etapa08_15 do
    begin
      Left := 126  ;
      Top := 34       ;
      Width := 645      ;
      Height := 331     ;
      TabStop := False     ;
      Align := alCustom    ;
      Color := 14017159    ;
      ColCount := 19          ;
      DefaultColWidth := 27   ;
      DefaultRowHeight := 25  ;
      FixedColor := clMedGray ;
      FixedCols := 2      ;
      RowCount := 2       ;
      Font.Charset := DEFAULT_CHARSET ;
      Font.Color := clWindowText     ;
      Font.Height := -16           ;
      Font.Name := 'Times New Roman'      ;
      Font.Style := []         ;
      GridLineWidth := 2 ;
      Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
      ParentFont := False ;
      TabOrder := 13       ;
    end; // with
    STGR_Etapa08_15.ColWidths [0]:= 55 ;
    STGR_Etapa08_15.ColWidths [1]:= 40 ;
    STGR_Etapa08_15.RowCount := 1;    
    STGR_Etapa08_15.Repaint;
end;


Procedure T_F_Gerador_08_NumerosFixos1.LimparGrid19 ();
begin
    STGR_Etapa04_19.CleanupInstance;
    STGR_Etapa04_19.Free;
    STGR_Etapa04_19 := TStringGrid.Create(SELF);
    STGR_Etapa04_19.Parent := SCBX_dados;
    with  STGR_Etapa04_19 do
    begin
        Left := 849      ;
        Top := 19        ;
        Width := 650     ;
        Height := 300    ;
        TabStop := False ;
        Anchors := [akLeft, akTop, akBottom] ;
        Color := 14017159;
        ColCount := 20   ;
        Ctl3D := False   ;
        DefaultColWidth := 27 ;
        DefaultRowHeight := 25  ;
        FixedColor := clMedGray  ;
        FixedCols := 1    ;
        RowCount := 8     ;
        Font.Charset := DEFAULT_CHARSET ;
        Font.Color := clWindowText   ;
        Font.Height := -15 ;
        Font.Name := 'Times New Roman' ;
        Font.Style := []   ;
        GridLineWidth := 2 ;
        Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
        ParentCtl3D := False;
        ParentFont := False ;
        TabOrder := 3    ;
    end;
    STGR_Etapa04_19.ColWidths [0]:= 60 ;
    SCBX_dados.HorzScrollBar.Position := 305;
    SCBX_dados.Repaint;
end;


procedure T_F_Gerador_08_NumerosFixos1.BBT_PrepararMenuClick(Sender: TObject);
begin
     PA_Preparar.Visible := TRUE;
     PA_Preparar.Enabled := TRUE;
     PA_Preparar.Top  := 245;
     PA_Preparar.Left := 460;
     PA_Preparar.Repaint;
end;



procedure T_F_Gerador_08_NumerosFixos1.BBT_Gerar_VoltarClick(Sender: TObject);
begin
    SELF.BotoesBase25False();
    PA_Preparar.Visible := false;
    PA_Preparar.Enabled := false;
    PA_Preparar.Left := 4500;
    PA_Preparar.Repaint;
end;


procedure T_F_Gerador_08_NumerosFixos1.BBT_Preparar1Click(Sender: TObject);
Begin

     DM1.IBQ_Combinacoes.Close;
     DM1.IBQ_Combinacoes.Open;
     IF NOT(DM1.IBTransaction1.Active) THEN DM1.IBTransaction1.StartTransaction;
     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_08_Fixos01_DEF')  ;
     DM1.IBQ_Combinacoes.ExecSQL;
{
     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_FINAL')  ;
     DM1.IBQ_Combinacoes.ExecSQL;
}
     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
     DM1.IBQ_Combinacoes.ExecSQL;

     SELF.Repaint;

     BBT_MontarBloco17.Click;
     PA_Preparar.Visible := false;
     PA_Preparar.Enabled := false;
     PA_Preparar.Left := 4500;
     PA_Preparar.Repaint;

     BBT_PrepararMenu.Enabled := TRUE;
     BBT_GerarMenu.Enabled := TRUE;
     BBT_GerarMenu.Enabled := TRUE;
     SHOWMESSAGE('OK');
end;




procedure T_F_Gerador_08_NumerosFixos1.BBT_GerarMenuClick(Sender: TObject);
begin
     PA_Gerar.Visible := TRUE;
     PA_Gerar.Enabled := TRUE;
     PA_Gerar.Top  := 225;
     PA_Gerar.Left := 150;;//660;
     PA_Gerar.Repaint;
    LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;     
end;



Procedure T_F_Gerador_08_NumerosFixos1.Ordenar_Comb19 (viLinhas9,viEtapa: INTEGER);
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
    FOR viContar :=1 TO 19 DO
    BEGIN
        IF viEtapa=4 THEN STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa04_19.Cells[viContar,viLinhas9])) ,1]:='V';
        IF viEtapa=8 THEN STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa08_19.Cells[viContar,viLinhas9])) ,1]:='V';
    END; // FOR viContar1
    viCntCelulas := 1;
    FOR viContar :=1 TO 25 DO
    BEGIN
        IF (STGR_Todos_Numeros.Cells[viContar,1]='V') THEN
        BEGIN
            IF viEtapa=4 THEN STGR_Etapa04_19.Cells[viCntCelulas, viLinhas9] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[viContar,0]),2) ;
            IF viEtapa=8 THEN STGR_Etapa08_19.Cells[viCntCelulas, viLinhas9] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[viContar,0]),2) ;
            viCntCelulas := viCntCelulas + 1;
        END; // IF (STGR_Todos_Numeros
    END; // FOR viContar
end; // PROCEDURE PR_Ordenar_Simulacao_15_8i7p


Function T_F_Gerador_08_NumerosFixos1.QtdPares19 (viLinhas:integer) : boolean;
var
     viComb_T, viContaSel1 : integer;
begin
    viContaSel1 := 0;
    for viComb_T:=1 to 19 do
    begin
        IF (STRtoINT(STGR_Etapa04_19.Cells[viComb_T,viLinhas]) MOD 2)=0 THEN
        BEGIN
             viContaSel1:= viContaSel1 +1;
        END;// IF
    END; // FOR
    if (viContaSel1 = 9) or (viContaSel1 = 10) then
    begin
        result := True;
        exit;
    end;
    result := False;
end;


Function T_F_Gerador_08_NumerosFixos1.QtdPares12 (viLinhas, viEtapa:integer) : boolean;
var
     viComb12_01, viContaSel1 : integer;
begin
    viContaSel1 := 0;
    for viComb12_01:=1 to 12 do
    begin
        if viEtapa =4 then
            IF (STRtoINT(STGR_Etapa05_12.Cells[viComb12_01,viLinhas]) MOD 2)=0 THEN
            BEGIN
                 viContaSel1:= viContaSel1 +1;
            END;// IF
        if viEtapa =8 then
            IF (STRtoINT(STGR_Etapa08_12.Cells[viComb12_01,viLinhas]) MOD 2)=0 THEN
            BEGIN
                 viContaSel1:= viContaSel1 +1;
            END;// IF
    END; // FOR
    if viContaSel1 = 6 then
    begin
        result := True;
        exit;
    end;
    result := False;
end;

Function T_F_Gerador_08_NumerosFixos1.ConfereEtapa7(viLinhas: integer) : boolean;
var
    viCombinacoesT, viContarCelulas, viContar, viLinhasGrid : integer;
begin
    for viLinhasGrid := 1 to STGR_Etapa07_21.RowCount-1 do
    begin
        viContarCelulas := 0;    
        for viContar := 1 TO 21 do
        BEGIN
            IF TRIM(STGR_Etapa06_03.Cells[02,viLinhas]) = TRIM(STGR_Etapa07_21.Cells[viContar,viLinhasGrid]) THEN viContarCelulas := viContarCelulas +1;
            IF TRIM(STGR_Etapa06_03.Cells[03,viLinhas]) = TRIM(STGR_Etapa07_21.Cells[viContar,viLinhasGrid]) THEN viContarCelulas := viContarCelulas +1;
            IF TRIM(STGR_Etapa06_03.Cells[04,viLinhas]) = TRIM(STGR_Etapa07_21.Cells[viContar,viLinhasGrid]) THEN viContarCelulas := viContarCelulas +1;
        END;
        IF viContarCelulas = 3 THEN
        Begin
            RESULT := True ;
            Exit;
        end; // if
    end;
    DM1.IBQ_Combin_02.Next;
    RESULT := False;
end;

Procedure T_F_Gerador_08_NumerosFixos1.AnaliseComb1_03em07(viEtapa:integer);

   Procedure LimparGrid03 ();
    begin
        SCBX_dados.HorzScrollBar.Position := 1980;
        SCBX_dados.Repaint;
        STGR_Etapa06_03.CleanupInstance;
        STGR_Etapa06_03.Free;
        STGR_Etapa06_03 := TStringGrid.Create(SELF);
        STGR_Etapa06_03.Parent := SCBX_dados;
        with  STGR_Etapa06_03 do
        begin
          Left := 762  ;
          Top := 19    ;
          Width := 239  ;
          Height := 339   ;
          TabStop := False ;
          Anchors := [akLeft, akTop, akBottom] ;
          Color := 14017159 ;
          Ctl3D := False      ;
          DefaultColWidth := 27  ;
          DefaultRowHeight := 25  ;
          FixedColor := clMedGray  ;
          FixedCols := 2 ;
          RowCount := 25 ;
          Font.Charset := DEFAULT_CHARSET ;
          Font.Color := clWindowText ;
          Font.Height := -15        ;
          Font.Name := 'Times New Roman' ;
          Font.Style := []   ;
          GridLineWidth := 2 ;
          Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
          ParentCtl3D := False ;
          ParentFont := False ;
          TabOrder := 21      ;
        end ;
        STGR_Etapa06_03.ColWidths[0] := 60 ;
        STGR_Etapa06_03.ColWidths[1] := 50 ;
        STGR_Etapa06_03.RowCount :=1;
    end;


 PROCEDURE PR_Gravar_Dados_etapa6a ();
    VAR
        viAnaliseCombinatoria1, viContarCelulas, viContarStgGrid : INTEGER;
        vcQuery, vcNomeTabela : STRING;
        vsCombinacoes03 : STRING;
    BEGIN
        //viTotalGERADO := STGR_Comb10.RowCount-1;
        // ************************
        // **   BANCO DE DADOS   **
        // ************************
        SELF.Repaint;
       viContarStgGrid := TRUNC((STGR_Etapa06_03.RowCount-1)/1);
       FOR viAnaliseCombinatoria1:= 1 TO viContarStgGrid DO
       BEGIN
          vsCombinacoes03 := '';
           FOR viContarCelulas := 2 TO 4 DO
           BEGIN
               vsCombinacoes03 := vsCombinacoes03 + RIGHTSTR ('0'+TRIM(STGR_Etapa06_03.Cells[viContarCelulas,viAnaliseCombinatoria1]),2) +' ';
           END; // FOR viContarCelulas
           vcNomeTabela := ' GERADOR_RESULT_08_Fixos01_D03';
           vcQuery  := 'INSERT INTO ' +vcNomeTabela+ ' (DADOS_03, QTD, N) VALUES('
                 +#39+  TRIM(vsCombinacoes03)  + #39 +','
                 +#39+  TRIM(STGR_Etapa06_03.Cells[01,viAnaliseCombinatoria1]) + #39 +','
                 +#39+  '-1 '
                 +#39+ ');';
           DM1.IBQ_Combin_02.SQL.Clear;
           DM1.IBQ_Combin_02.SQL.Add(vcQuery)  ;
           DM1.IBQ_Combin_02.ExecSQL;
       END; // FOR viAnaliseCombinatoria1
    DM1.IBQ_Combin_02.SQL.Clear;
    DM1.IBQ_Combin_02.SQL.Add('COMMIT')  ;
    DM1.IBQ_Combin_02.ExecSQL;
    SLEEP(4);
    DM1.IBQ_Combin_02.SQL.Clear;
    END; // PROCEDURE GRAVAR_DADOS

var
     viCombinacoesT, viLinhas01, viContar : integer;
     viComb07_01, viComb07_02, viComb07_03 : integer;
begin
    LA_Gerar_Comb.Caption := '#:                   ';
    LA_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    STGR_Etapa06_03.RowCount := viLinhas01;
    STGR_Etapa06_03.Repaint;
    STGR_Etapa05_12.Repaint;
    SCBX_dados.HorzScrollBar.Position := 1464;
    SCBX_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    viLinhas01 := 1;
    viCombinacoesT := 1;
    viContar := 1;
    if viEtapa=8 then
        PGBR_Etapa_08_03.Position := 0
    else
        pgbr_etapa_06.Position := 0;
    try
    sleep(5);
       DM1.IBQ_Combinacoes.Close;
        DM1.IBQ_Combinacoes.SQL.Clear;
        DM1.IBQ_Combinacoes.SQL.Add('select count(*) as Quantidade from RESULTADO_GERADOS_199COMB21 ');
        DM1.IBQ_Combinacoes.Prepare;
        DM1.IBQ_Combinacoes.Open;
        viCombinacoesT := DM1.IBQ_Combinacoes.fieldBYname('Quantidade').AsInteger;
        DM1.IBQ_Combinacoes.SQL.Clear;
        DM1.IBQ_Combinacoes.SQL.Add('select * from RESULTADO_GERADOS_199COMB21 order by QTD ');
        DM1.IBQ_Combinacoes.Prepare;
        DM1.IBQ_Combinacoes.Open;
        DM1.IBQ_Combinacoes.First;
         viLinhas01 := 1;
        While NOT(DM1.IBQ_Combinacoes.Eof) do
        begin
            STGR_Etapa07_21.Cells[01,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,1,2);
            STGR_Etapa07_21.Cells[02,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,4,2);
            STGR_Etapa07_21.Cells[03,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,7,2);
            STGR_Etapa07_21.Cells[04,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,10,2);
            STGR_Etapa07_21.Cells[05,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,13,2);
            STGR_Etapa07_21.Cells[06,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,16,2);
            STGR_Etapa07_21.Cells[07,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,19,2);
            STGR_Etapa07_21.Cells[08,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,22,2);
            STGR_Etapa07_21.Cells[09,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,25,2);
            STGR_Etapa07_21.Cells[10,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,28,2);
            STGR_Etapa07_21.Cells[11,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,31,2);
            STGR_Etapa07_21.Cells[12,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,34,2);
            STGR_Etapa07_21.Cells[13,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,37,2);
            STGR_Etapa07_21.Cells[14,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,40,2);
            STGR_Etapa07_21.Cells[15,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,43,2);
            STGR_Etapa07_21.Cells[16,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,46,2);
            STGR_Etapa07_21.Cells[17,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,49,2);
            STGR_Etapa07_21.Cells[18,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,52,2);
            STGR_Etapa07_21.Cells[19,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,55,2);
            STGR_Etapa07_21.Cells[20,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,58,2);
            STGR_Etapa07_21.Cells[21,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,61,2);
            viLinhas01 := viLinhas01 + 1 ;
            DM1.IBQ_Combinacoes.Next;
        end; // while
        STGR_Etapa07_21.RowCount := viLinhas01;
        STGR_Etapa07_21.Repaint;
        sleep(2000);
        DM1.IBQ_Combinacoes.Close;
        DM1.IBQ_Combinacoes.SQL.Clear;
        if viEtapa=8 then
            DM1.IBQ_Combinacoes.SQL.Add('select count(*) as Quantidade  from GERADOR_RESULT_08_FIXOS01B_D12 ')
        else
            DM1.IBQ_Combinacoes.SQL.Add('select count(*) as Quantidade from GERADOR_RESULT_08_FIXOS01_D12');
        DM1.IBQ_Combinacoes.Prepare;
        DM1.IBQ_Combinacoes.Open;
        viCombinacoesT := DM1.IBQ_Combinacoes.fieldBYname('Quantidade').AsInteger;
        DM1.IBQ_Combinacoes.SQL.Clear;
        if viEtapa =8 then
            DM1.IBQ_Combinacoes.SQL.Add('select * from  GERADOR_RESULT_08_FIXOS01B_D12 order by QTD ')
        else
            DM1.IBQ_Combinacoes.SQL.Add('select * from GERADOR_RESULT_08_FIXOS01_D12 order by QTD');
        DM1.IBQ_Combinacoes.Prepare;
        DM1.IBQ_Combinacoes.Open;
        DM1.IBQ_Combinacoes.First;
        viLinhas01 := 1;
        While NOT(DM1.IBQ_Combinacoes.Eof) do
        begin
            STGR_Etapa05_07.Cells[00,01] := DM1.IBQ_Combinacoes.FieldBYname('QTD').AsString;
            STGR_Etapa05_07.Cells[01,01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados_07').AsString,1,2);
            STGR_Etapa05_07.Cells[02,01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados_07').AsString,4,2);
            STGR_Etapa05_07.Cells[03,01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados_07').AsString,7,2);
            STGR_Etapa05_07.Cells[04,01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados_07').AsString,10,2);
            STGR_Etapa05_07.Cells[05,01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados_07').AsString,13,2);
            STGR_Etapa05_07.Cells[06,01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados_07').AsString,16,2);
            STGR_Etapa05_07.Cells[07,01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados_07').AsString,19,2);
            for viComb07_01 := 1 TO 05 DO
            BEGIN
                for viComb07_02 := viComb07_01 + 1 TO 06 DO
                BEGIN
                    for viComb07_03 := viComb07_02 + 1 TO 07 DO
                    BEGIN
                        STGR_Etapa06_03.Cells[00,viLinhas01] := INTtoSTR( viLinhas01 ) ;
                        STGR_Etapa06_03.Cells[01,viLinhas01] := '+' + DM1.IBQ_Combinacoes.FieldBYname('QTD').AsString;
                        STGR_Etapa06_03.Cells[02,viLinhas01] := STGR_Etapa05_07.Cells[viComb07_01,01] ;
                        STGR_Etapa06_03.Cells[03,viLinhas01] := STGR_Etapa05_07.Cells[viComb07_02,01] ;
                        STGR_Etapa06_03.Cells[04,viLinhas01] := STGR_Etapa05_07.Cells[viComb07_03,01] ;
                        // ---> Confere com os 199 jogos de 21
                        if (SELF.ConfereEtapa7(viLinhas01)) then
                        begin
                            viLinhas01 := viLinhas01 + 1;
                            if ((viLinhas01 mod 8500)=0) then  //25000    /4000

                            begin
                               STGR_Etapa06_03.RowCount := viLinhas01;
                               STGR_Etapa06_03.Repaint ;
                               sleep(70); //290/520
                               if viEtapa=8 then
                                   PGBR_Etapa_08_03.Position := (TRUNC((viContar  / viCombinacoesT) *100) )
                               else
                                   pgbr_etapa_06.Position := (TRUNC((viContar  / viCombinacoesT) *100) );
                               PR_Gravar_Dados_etapa6a();
                               viLinhas01 := 1;
                               if viEtapa=8 then pgbr_etapa_08_03.Repaint
                                   else pgbr_etapa_06.Repaint;
                               LimparGrid03();
                               sleep(70);
                            end;
                        end; //
                    END; //  for viComb10_03
                END; //  for viComb10_02
            END; //  for viComb07_01
            viContar := viContar +1;
           // if ((viContar mod 10147)>=0) and ((viContar mod 10147)<=1)   then
            DM1.IBQ_Combinacoes.Next;
        END; //  While
        STGR_Etapa06_03.RowCount := viLinhas01;
        STGR_Etapa06_03.Repaint;
    finally
        STGR_Etapa06_03.RowCount := viLinhas01;
        STGR_Etapa06_03.Repaint;
    end;
    PR_Gravar_Dados_etapa6a();
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
end; // procedure




FUNCTION T_F_Gerador_08_NumerosFixos1.NumerosFixos6de8 (viLinhas1, viEtapa : integer) : BOOLEAN;
VAR
     viContarCelulas, viNumeroCelula, viFinalContador : INTEGER;
begin
   FOR viContarCelulas := 1 TO 25 DO
  BEGIN
      STGR_Todos_Numeros.Cells [viContarCelulas ,1]:='F';
      STGR_Todos_Numeros.Cells [viContarCelulas ,2]:='F';
   end;
   if viEtapa=4 then viFinalContador := 13;
   if viEtapa=8 then viFinalContador := 13;

   FOR viContarCelulas := 2 TO viFinalContador DO
   BEGIN
       if viEtapa=4 then
         STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa05_12.Cells[viContarCelulas,viLinhas1])) ,1]:='V';
       if viEtapa=8 then
         STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa08_12.Cells[viContarCelulas,viLinhas1])) ,1]:='V';
   END; // FOR viContarCelulas
    FOR viContarCelulas := 1 TO 8 DO
   BEGIN
      STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Base08Fixos.Cells[viContarCelulas,0])) ,2]:='V';
   END; // FOR viContarCelulas
   // --> contando a quantidade
   viContarCelulas := 0;
   FOR viNumeroCelula := 1 TO 25 DO
   BEGIN
       IF ( (STGR_Todos_Numeros.Cells[viNumeroCelula,1]='V') and (STGR_Todos_Numeros.Cells[viNumeroCelula,2]='V') ) THEN
       BEGIN
           viContarCelulas := viContarCelulas + 1 ;
       end; /// if
   end; // for
   if viContarCelulas >= 7 then
   begin
       Result := True;
       exit;
   end;
   Result := False;
end; // function



FUNCTION T_F_Gerador_08_NumerosFixos1.NumerosFixos8 (viLinhas1, viEtapa : integer) : BOOLEAN;
VAR
     viContarCelulas, viNumeroCelula, viFinalContador : INTEGER;
begin
   FOR viContarCelulas := 1 TO 25 DO
  BEGIN
      STGR_Todos_Numeros.Cells [viContarCelulas ,1]:='F';
      STGR_Todos_Numeros.Cells [viContarCelulas ,2]:='F';
   end;
   viFinalContador := 16;
   FOR viContarCelulas := 2 TO viFinalContador DO
   BEGIN
         STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa08_15.Cells[viContarCelulas,viLinhas1])) ,1]:='V';
   END; // FOR viContarCelulas
    FOR viContarCelulas := 1 TO 8 DO
   BEGIN
      STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Base08Fixos.Cells[viContarCelulas,0])) ,2]:='V';
   END; // FOR viContarCelulas
   // --> contando a quantidade
   viContarCelulas := 0;
   FOR viNumeroCelula := 1 TO 25 DO
   BEGIN
       IF ( (STGR_Todos_Numeros.Cells[viNumeroCelula,1]='V') and (STGR_Todos_Numeros.Cells[viNumeroCelula,2]='V') ) THEN
       BEGIN
           viContarCelulas := viContarCelulas + 1 ;
       end; /// if
   end; // for
   if viContarCelulas >= 8 then
   begin
       Result := True;
       exit;
   end;
   Result := False;
end; // function



procedure T_F_Gerador_08_NumerosFixos1.Gerar12(viSoma, viEtapa: Integer) ;
VAR
     viComb12i_1, viComb12i_2, viComb12i_3, viComb12i_4, viComb12i_5, viComb12i_6, viComb12i_7, viComb12i_8, viComb12i_9, viComb12i_A, viComb12i_B, viComb12i_C : iNTEGER;
     viCombinacoes1, viSomaTotal, viLinhas, viTotalLinhas : INTEGER;
BEGIN
    viLinhas := 01;
    if viEtapa = 4 then
         viTotalLinhas := Trunc((STGR_Etapa04_19.RowCount-1)/1)
    else
    if viEtapa = 8 then
         viTotalLinhas := Trunc((STGR_Etapa08_19.RowCount-1)/1)
    else
        showmessage('Valores Errados');
    for viCombinacoes1 := 1 to viTotalLinhas do
    begin
        for  viComb12i_1 := 1 to 08 do
        begin
            for  viComb12i_2 := viComb12i_1 +1  to 09 do
            begin
                for  viComb12i_3 := viComb12i_2+ 1  to 10 do
                begin
                    for  viComb12i_4 := viComb12i_3 +1  to 11 do
                    begin
                        for  viComb12i_5 := viComb12i_4 +1  to 12 do
                        begin
                            for  viComb12i_6 := viComb12i_5 +1  to 13 do
                            begin
                                for  viComb12i_7 := viComb12i_6 +1  to 14 do
                                begin
                                    for  viComb12i_8 := viComb12i_7+ 1  to 15 do
                                    begin
                                        for  viComb12i_9 := viComb12i_8 +1  to 16 do
                                        begin
                                            for  viComb12i_A := viComb12i_9 +1  to 17 do
                                            begin
                                                for  viComb12i_B := viComb12i_A +1  to 18 do
                                                begin
                                                    for  viComb12i_C := viComb12i_B +1  to 19 do
                                                    begin
                                                        if viEtapa = 4 then
                                                            viSomaTotal := STRtoINT(STGR_Etapa04_19.Cells[viComb12i_1,viCombinacoes1])
                                                                       + STRtoINT(STGR_Etapa04_19.Cells[viComb12i_2,viCombinacoes1])
                                                                       + STRtoINT(STGR_Etapa04_19.Cells[viComb12i_3,viCombinacoes1])
                                                                       + STRtoINT(STGR_Etapa04_19.Cells[viComb12i_4,viCombinacoes1])
                                                                       + STRtoINT(STGR_Etapa04_19.Cells[viComb12i_5,viCombinacoes1])
                                                                       + STRtoINT(STGR_Etapa04_19.Cells[viComb12i_6,viCombinacoes1])
                                                                       + STRtoINT(STGR_Etapa04_19.Cells[viComb12i_7,viCombinacoes1])
                                                                       + STRtoINT(STGR_Etapa04_19.Cells[viComb12i_8,viCombinacoes1])
                                                                       + STRtoINT(STGR_Etapa04_19.Cells[viComb12i_9,viCombinacoes1])
                                                                       + STRtoINT(STGR_Etapa04_19.Cells[viComb12i_A,viCombinacoes1])
                                                                       + STRtoINT(STGR_Etapa04_19.Cells[viComb12i_B,viCombinacoes1])
                                                                       + STRtoINT(STGR_Etapa04_19.Cells[viComb12i_C,viCombinacoes1])
                                                        else
                                                            viSomaTotal := STRtoINT(STGR_Etapa08_19.Cells[viComb12i_1,viCombinacoes1])
                                                                       + STRtoINT(STGR_Etapa08_19.Cells[viComb12i_2,viCombinacoes1])
                                                                       + STRtoINT(STGR_Etapa08_19.Cells[viComb12i_3,viCombinacoes1])
                                                                       + STRtoINT(STGR_Etapa08_19.Cells[viComb12i_4,viCombinacoes1])
                                                                       + STRtoINT(STGR_Etapa08_19.Cells[viComb12i_5,viCombinacoes1])
                                                                       + STRtoINT(STGR_Etapa08_19.Cells[viComb12i_6,viCombinacoes1])
                                                                       + STRtoINT(STGR_Etapa08_19.Cells[viComb12i_7,viCombinacoes1])
                                                                       + STRtoINT(STGR_Etapa08_19.Cells[viComb12i_8,viCombinacoes1])
                                                                       + STRtoINT(STGR_Etapa08_19.Cells[viComb12i_9,viCombinacoes1])
                                                                       + STRtoINT(STGR_Etapa08_19.Cells[viComb12i_A,viCombinacoes1])
                                                                       + STRtoINT(STGR_Etapa08_19.Cells[viComb12i_B,viCombinacoes1])
                                                                       + STRtoINT(STGR_Etapa08_19.Cells[viComb12i_C,viCombinacoes1])  ;
                                                        if (viSomaTotal = viSoma ) then
                                                        begin
                                                            if viEtapa = 4 then
                                                            begin
                                                                STGR_Etapa05_12.Cells[00,viLinhas] := intTOstr(viLinhas);
                                                                STGR_Etapa05_12.Cells[01,viLinhas] := STGR_Etapa04_19.Cells[0,viCombinacoes1] ;
                                                                STGR_Etapa05_12.Cells[02,viLinhas] := STGR_Etapa04_19.Cells[viComb12i_1,viCombinacoes1];
                                                                STGR_Etapa05_12.Cells[03,viLinhas] := STGR_Etapa04_19.Cells[viComb12i_2,viCombinacoes1];
                                                                STGR_Etapa05_12.Cells[04,viLinhas] := STGR_Etapa04_19.Cells[viComb12i_3,viCombinacoes1];
                                                                STGR_Etapa05_12.Cells[05,viLinhas] := STGR_Etapa04_19.Cells[viComb12i_4,viCombinacoes1];
                                                                STGR_Etapa05_12.Cells[06,viLinhas] := STGR_Etapa04_19.Cells[viComb12i_5,viCombinacoes1];
                                                                STGR_Etapa05_12.Cells[07,viLinhas] := STGR_Etapa04_19.Cells[viComb12i_6,viCombinacoes1];
                                                                STGR_Etapa05_12.Cells[08,viLinhas] := STGR_Etapa04_19.Cells[viComb12i_7,viCombinacoes1];
                                                                STGR_Etapa05_12.Cells[09,viLinhas] := STGR_Etapa04_19.Cells[viComb12i_8,viCombinacoes1];
                                                                STGR_Etapa05_12.Cells[10,viLinhas] := STGR_Etapa04_19.Cells[viComb12i_9,viCombinacoes1];
                                                                STGR_Etapa05_12.Cells[11,viLinhas] := STGR_Etapa04_19.Cells[viComb12i_A,viCombinacoes1];
                                                                STGR_Etapa05_12.Cells[12,viLinhas] := STGR_Etapa04_19.Cells[viComb12i_B,viCombinacoes1];
                                                                STGR_Etapa05_12.Cells[13,viLinhas] := STGR_Etapa04_19.Cells[viComb12i_C,viCombinacoes1];
                                                            end else
                                                            begin
                                                                STGR_Etapa08_12.Cells[00,viLinhas] := intTOstr(viLinhas);
                                                                STGR_Etapa08_12.Cells[01,viLinhas] := STGR_Etapa08_19.Cells[0,viCombinacoes1] ;
                                                                STGR_Etapa08_12.Cells[02,viLinhas] := STGR_Etapa08_19.Cells[viComb12i_1,viCombinacoes1];
                                                                STGR_Etapa08_12.Cells[03,viLinhas] := STGR_Etapa08_19.Cells[viComb12i_2,viCombinacoes1];
                                                                STGR_Etapa08_12.Cells[04,viLinhas] := STGR_Etapa08_19.Cells[viComb12i_3,viCombinacoes1];
                                                                STGR_Etapa08_12.Cells[05,viLinhas] := STGR_Etapa08_19.Cells[viComb12i_4,viCombinacoes1];
                                                                STGR_Etapa08_12.Cells[06,viLinhas] := STGR_Etapa08_19.Cells[viComb12i_5,viCombinacoes1];
                                                                STGR_Etapa08_12.Cells[07,viLinhas] := STGR_Etapa08_19.Cells[viComb12i_6,viCombinacoes1];
                                                                STGR_Etapa08_12.Cells[08,viLinhas] := STGR_Etapa08_19.Cells[viComb12i_7,viCombinacoes1];
                                                                STGR_Etapa08_12.Cells[09,viLinhas] := STGR_Etapa08_19.Cells[viComb12i_8,viCombinacoes1];
                                                                STGR_Etapa08_12.Cells[10,viLinhas] := STGR_Etapa08_19.Cells[viComb12i_9,viCombinacoes1];
                                                                STGR_Etapa08_12.Cells[11,viLinhas] := STGR_Etapa08_19.Cells[viComb12i_A,viCombinacoes1];
                                                                STGR_Etapa08_12.Cells[12,viLinhas] := STGR_Etapa08_19.Cells[viComb12i_B,viCombinacoes1];
                                                                STGR_Etapa08_12.Cells[13,viLinhas] := STGR_Etapa08_19.Cells[viComb12i_C,viCombinacoes1];
                                                            end;
                                                            if (SELF.QtdPares12(viLinhas, viEtapa)) and (NumerosFixos6de8 (viLinhas, viEtapa)) then
                                                                viLinhas := viLinhas + 1 ;
                                                        end; /// IF
                                                    end; // for for  viComb12i_C
                                                end; // for
                                            end; // for
                                        end; // for
                                    end; // for
                                end; // for
                            end; // for
                        end; // for
                    end; // for
                end; // for
                            if viEtapa = 4 then STGR_Etapa05_12.RowCount := viLinhas
                            else STGR_Etapa08_12.RowCount := viLinhas;
            end; // for
        end; // for for for  viComb12i_1
        if viEtapa = 4 then PGBR_Etapa_05.Position := (TRUNC(viCombinacoes1 / Trunc((STGR_Etapa04_19.RowCount-1)/1) *100) )
        else  PGBR_Etapa_08_02.Position := (TRUNC(viCombinacoes1 / Trunc((STGR_Etapa08_19.RowCount-1)/1) *100) );
        STGR_Etapa05_12.Repaint;
        PGBR_Etapa_08_02.Repaint;
    end; // for viCombinacoes1 := 1 to Trunc((STGR_Etapa04_19.RowCount-1)/1)  do
    if viEtapa = 4 then STGR_Etapa05_12.RowCount := viLinhas
        else STGR_Etapa08_12.RowCount := viLinhas;
    if viEtapa = 4 then  PGBR_Etapa_05.Position := 100
        else PGBR_Etapa_08_02.Position := 100;
    PGBR_Etapa_05.Repaint;
    PGBR_Etapa_08_02.Repaint;
END;



Procedure T_F_Gerador_08_NumerosFixos1.AnaliseComb_06e17(viEtapa: integer);
var
     viSomaTotal, viCombinacoes1, viLinhas01 : integer;
     viComb06_01, viComb06_02, viComb06_03, viComb06_04, viComb06_05, viComb06_06 : integer;
begin
    LA_Gerar_Comb.Caption := '#:                   ';
    LA_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    STGR_Etapa01_06.RowCount := 1;
    STGR_Etapa01_06.Repaint;
    if viEtapa = 1 then SCBX_dados.HorzScrollBar.Position := 1;
    if viEtapa = 8 then SCBX_dados.HorzScrollBar.Position := 3300;
    SCBX_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    viLinhas01 := 1;
    viCombinacoes1 := 1;
    try
    viLinhas01 := 1;
    sleep(5);
            for viComb06_01 := 1 TO 12 DO
            BEGIN
                for viComb06_02 := viComb06_01 + 1 TO 13 DO
                BEGIN
                    for viComb06_03 := viComb06_02 + 1 TO 14 DO
                    BEGIN
                        for viComb06_04 := viComb06_03 + 1 TO 15 DO
                        BEGIN
                            for viComb06_05 := viComb06_04 + 1 TO 16 DO
                            BEGIN
                                for viComb06_06 := viComb06_05 + 1 TO 17 DO
                                BEGIN
                                    if viEtapa = 1 then
                                    begin
                                        viSomaTotal := strTOint (STGR_Base17Fixos.Cells[viComb06_01,0]) + STRtoINT (STGR_Base17Fixos.Cells[viComb06_02,0]) + STRtoINT (STGR_Base17Fixos.Cells[viComb06_03,0])
                                                        + strTOint (STGR_Base17Fixos.Cells[viComb06_04,0]) + STRtoINT (STGR_Base17Fixos.Cells[viComb06_05,0]) + STRtoINT (STGR_Base17Fixos.Cells[viComb06_06,0]) ;
                                        IF (viSomaTotal>=78) and  (viSomaTotal<=78) THEN
                                        BEGIN
                                            STGR_Etapa01_06.Cells[00,viLinhas01] := INTtoSTR( viLinhas01 ) ;
                                            STGR_Etapa01_06.Cells[01,viLinhas01] := STGR_Base17Fixos.Cells[viComb06_01,0] ;
                                            STGR_Etapa01_06.Cells[02,viLinhas01] := STGR_Base17Fixos.Cells[viComb06_02,0] ;
                                            STGR_Etapa01_06.Cells[03,viLinhas01] := STGR_Base17Fixos.Cells[viComb06_03,0] ;
                                            STGR_Etapa01_06.Cells[04,viLinhas01] := STGR_Base17Fixos.Cells[viComb06_04,0] ;
                                            STGR_Etapa01_06.Cells[05,viLinhas01] := STGR_Base17Fixos.Cells[viComb06_05,0] ;
                                            STGR_Etapa01_06.Cells[06,viLinhas01] := STGR_Base17Fixos.Cells[viComb06_06,0] ;
                                            viLinhas01 := viLinhas01 + 1;
                                        END; /// IF
                                    end else
                                    begin
                                        STGR_Etapa08_06.Cells[00,viLinhas01] := INTtoSTR( viLinhas01 ) ;
                                        STGR_Etapa08_06.Cells[01,viLinhas01] := STGR_Base17Fixos.Cells[viComb06_01,0] ;
                                        STGR_Etapa08_06.Cells[02,viLinhas01] := STGR_Base17Fixos.Cells[viComb06_02,0] ;
                                        STGR_Etapa08_06.Cells[03,viLinhas01] := STGR_Base17Fixos.Cells[viComb06_03,0] ;
                                        STGR_Etapa08_06.Cells[04,viLinhas01] := STGR_Base17Fixos.Cells[viComb06_04,0] ;
                                        STGR_Etapa08_06.Cells[05,viLinhas01] := STGR_Base17Fixos.Cells[viComb06_05,0] ;
                                        STGR_Etapa08_06.Cells[06,viLinhas01] := STGR_Base17Fixos.Cells[viComb06_06,0] ;
                                        STGR_Etapa08_06.Cells[07,viLinhas01] := 'False' ;
                                        viLinhas01 := viLinhas01 + 1;
                                    end; /// if
                                END; //  for viComb10_06
                            END; //  for viComb10_05
                        END; //  for viComb06_04
                    END; //  for viComb10_03
                END; //  for viComb10_02
            END; //  for viComb06_01
		if viEtapa = 1 then STGR_Etapa01_06.RowCount := viLinhas01;
		if viEtapa = 1 then STGR_Etapa01_06.Repaint;
        if viEtapa = 8 then STGR_Etapa08_06.RowCount := viLinhas01;
        if viEtapa = 8 then STGR_Etapa08_06.Repaint;
    finally
		if viEtapa = 1 then STGR_Etapa01_06.RowCount := viLinhas01;
		if viEtapa = 1 then STGR_Etapa01_06.Repaint;
        if viEtapa = 8 then STGR_Etapa08_06.RowCount := viLinhas01;
        if viEtapa = 8 then STGR_Etapa08_06.Repaint;
    end;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
end; // procedure





procedure T_F_Gerador_08_NumerosFixos1.BBT_Etapa01Click(Sender: TObject);

    FUNCTION Ordenar_Comb15 (viLinhas9: INTEGER):integer;
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
        FOR viContar :=2 TO 21 DO
        BEGIN
            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa07_15.Cells[viContar,viLinhas9])) ,1]:='V';
        END; // FOR viContar1
        viCntCelulas := 2;
        FOR viContar :=1 TO 25 DO
        BEGIN
            IF (STGR_Todos_Numeros.Cells[viContar,1]='V') THEN
            BEGIN
                STGR_Etapa07_15.Cells[viCntCelulas, viLinhas9] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[viContar,0]),2) ;
                viCntCelulas := viCntCelulas + 1;
            END; // IF (STGR_Todos_Numeros
        END; // FOR viContar
        Ordenar_Comb15 := (viCntCelulas-2);
    end; // PROCEDURE PR_Ordenar_Simulacao_15_8i7p


   Procedure LimparGrid12 ();
    begin
        STGR_Etapa05_12.CleanupInstance;
        STGR_Etapa05_12.Free;
        STGR_Etapa05_12 := TStringGrid.Create(SELF);
        SCBX_dados.HorzScrollBar.Position := 1464;
        STGR_Etapa05_12.Parent := SCBX_dados ;
        with  STGR_Etapa05_12 do
        begin
          Left := 85   ;
          Top := 14    ;
          Width := 480 ;
          Height := 335;
          TabStop := False ;
          Anchors := [akLeft, akTop, akBottom] ;
          Color := 9742476 ;
          ColCount := 14   ;
          Ctl3D := False   ;
          DefaultColWidth := 27  ;
          DefaultRowHeight := 25 ;
          FixedColor := clMedGray ;
          FixedCols := 2  ;
          RowCount := 25  ;
          Font.Charset := DEFAULT_CHARSET  ;
          Font.Color := clWindowText   ;
          Font.Height := -15        ;
          Font.Name := 'Times New Roman' ;
          Font.Style := []              ;
          GridLineWidth := 2          ;
          Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
          ParentCtl3D := False ;
          ParentFont := False  ;
          TabOrder := 7      ;
        end;
        STGR_Etapa05_12.ColWidths[0] := 60 ;
        STGR_Etapa05_12.ColWidths[1] := 40 ;
        STGR_Etapa05_12.RowCount :=1;
    end;

 PROCEDURE PR_Gravar_Dados_Dados12_e4 ();
    VAR
        viAnaliseCombinatoria1, viContarCelulas, viContar, viContarStgGrid : INTEGER;
        vcQuery, vcNomeTabela : STRING;
        vsCombinacoes12, vsCombinacoes07 : STRING;
    BEGIN
        //viTotalGERADO := STGR_Comb10.RowCount-1;
          // ************************
          // **   BANCO DE DADOS   **
          // ************************
          SELF.Repaint;
          // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
          viContarStgGrid := TRUNC((STGR_Etapa05_12.RowCount-1)/1);
       FOR viAnaliseCombinatoria1:= 1 TO viContarStgGrid DO
       BEGIN
            FOR viContarCelulas := 1 TO 25 DO
            BEGIN
               STGR_Todos_Numeros.Cells [viContarCelulas ,1]:='F';
               STGR_Todos_Numeros.Cells [viContarCelulas ,2]:='F';
            end;
           vsCombinacoes12 := '';
           FOR viContarCelulas := 1 TO 19 DO
           BEGIN
               STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa04_19.Cells[viContarCelulas,STRtoINT(STGR_Etapa05_12.Cells[01,viAnaliseCombinatoria1]) ])) ,1]:='V';
           END; // FOR viContarCelulas

           FOR viContarCelulas := 2 TO 13 DO
           BEGIN
               vsCombinacoes12 := vsCombinacoes12 + RIGHTSTR ('0'+TRIM(STGR_Etapa05_12.Cells[viContarCelulas,viAnaliseCombinatoria1]),2) +' ';
               STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa05_12.Cells[viContarCelulas,viAnaliseCombinatoria1])) ,2]:='V';
           END; // FOR viContarCelulas
               // -------------------------------
               // --  MONTANDO AS 07 SOBRAS   ---
               // -------------------------------
                  viContarCelulas := 1;
                  vsCombinacoes07 := '';
                  FOR viContar :=1 TO 25 DO
                  BEGIN
                      // SOBRAS
                      IF ( (STGR_Todos_Numeros.Cells[viContar,1]='V') and (STGR_Todos_Numeros.Cells[viContar,2]='F') ) THEN
                      BEGIN
                          vsCombinacoes07 := vsCombinacoes07 + RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[viContar,0]),2) +' ' ;
                          viContarCelulas := viContarCelulas + 1;
                      END; // IF (STGR_Todos_Numeros
                  END; // FOR viContar
          vcNomeTabela := ' GERADOR_RESULT_08_FIXOS01_D12';
           vcQuery  := 'INSERT INTO ' +vcNomeTabela+ ' (DADOS_12, DADOS_07, QTD, N) VALUES('
                 +#39+  TRIM(vsCombinacoes12)  + #39 +','
                 +#39+  TRIM(vsCombinacoes07)  + #39 +','
                 +#39+  TRIM(STGR_Etapa05_12.Cells[0,viAnaliseCombinatoria1]) + #39 +','
                 +#39+  TRIM(STGR_Etapa05_12.Cells[1,viAnaliseCombinatoria1])
                 +#39+ ');';
           DM1.IBQ_Combin_02.SQL.Clear;
           DM1.IBQ_Combin_02.SQL.Add(vcQuery)  ;
           DM1.IBQ_Combin_02.ExecSQL;
       END; // FOR viAnaliseCombinatoria1
    DM1.IBQ_Combin_02.SQL.Clear;
    DM1.IBQ_Combin_02.SQL.Add('COMMIT')  ;
    DM1.IBQ_Combin_02.ExecSQL;
    SLEEP(4);
    DM1.IBQ_Combin_02.SQL.Clear;
    END; // PROCEDURE GRAVAR_DADOS

var
     viCombinacoes1, viCombinacoes2, viContar, viQtdDados, viContarCelulas :integer;
     viLinhas01 : integer;
     viSomaTotal : INTEGER;
begin

    sleep(1000);
    PA_Gerar.Left := 6000;
    PA_Gerar.Enabled := False ;
    PA_Gerar.Repaint;



     DM1.IBQ_Combinacoes.Close;
     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('SELECT * FROM GERADOR_RESULT_08_Fixos01_DEF; ')  ;
     DM1.IBQ_Combinacoes.Prepare;
     DM1.IBQ_Combinacoes.Open;

     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_08_FIXOS01_D12')  ;
     DM1.IBQ_Combinacoes.ExecSQL;

     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_08_Fixos01_D03')  ;
     DM1.IBQ_Combinacoes.ExecSQL;

     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_08_FIXOS01b_D12')  ;
     DM1.IBQ_Combinacoes.ExecSQL;

     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_08_Fixos01_D15a')  ;
     DM1.IBQ_Combinacoes.ExecSQL;

     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_08_FINAL')  ;
     DM1.IBQ_Combinacoes.ExecSQL;

{
     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_LINHAS2_D3A')  ;
     DM1.IBQ_Combinacoes.ExecSQL;

     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_LINHAS2_D15A')  ;
     DM1.IBQ_Combinacoes.ExecSQL;

     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_LINHAS2_D15B')  ;
     DM1.IBQ_Combinacoes.ExecSQL;
}
     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('insert INTO GERADOR_RESULT_08_Fixos01_DEF (FLAG_FILTRAR,FLAG_GRAVAR) values (''N'',''N'');')  ;
     DM1.IBQ_Combinacoes.ExecSQL;
     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
     DM1.IBQ_Combinacoes.ExecSQL;


    STGR_Etapa01_06.ColWidths [0] := 60 ;
    STGR_Etapa03_11.ColWidths [0] := 60 ;
    STGR_Etapa04_19.ColWidths [0] := 60 ;
    STGR_Etapa05_12.ColWidths [0] := 60 ;
    STGR_Etapa06_03.ColWidths [0] := 60 ;
    STGR_Etapa08_10a.ColWidths [0] := 60 ;
    STGR_Etapa08_06.ColWidths [0] := 60 ;
    STGR_Etapa08_11.ColWidths [0] := 60 ;
    STGR_Etapa08_19.ColWidths [0] := 50 ;
    STGR_Etapa08_12.ColWidths [0] := 60 ;
    STGR_Etapa08_10b.ColWidths [0] := 60 ;

     STGR_Etapa04_19.ColWidths [1] := 33 ;
     STGR_Etapa06_03.ColWidths [1] := 33 ;
     STGR_Etapa08_11.ColWidths [1] := 40 ;
     STGR_Etapa08_12.ColWidths [1] := 40 ;

    PGBR_Etapa_01.Position := 0 ;
    PGBR_Etapa_01.Repaint;
    PGBR_Etapa_02.Position :=0 ;
    PGBR_Etapa_02.Repaint;
    PGBR_Etapa_03.Position := 0 ;
    PGBR_Etapa_03.Repaint;
    PGBR_Etapa_04.Position := 0 ;
    PGBR_Etapa_04.Repaint;
    PGBR_Etapa_05.Position := 0 ;
    PGBR_Etapa_05.Repaint;
    PGBR_Etapa_06.Position := 0 ;
    PGBR_Etapa_06.Repaint;
    PGBR_Etapa_07.Position := 0 ;
    PGBR_Etapa_07.Repaint;
    PGBR_Etapa_08.Position := 0 ;
    PGBR_Etapa_08.Repaint;
    PGBR_Etapa_08_01.Position := 0 ;
    PGBR_Etapa_08_01.Repaint;
    PGBR_Etapa_08_02.Position := 0 ;
    PGBR_Etapa_08_02.Repaint;
    PGBR_Etapa_08_03.Position := 0 ;
    PGBR_Etapa_08_03.Repaint;
    LA_Gerar_Comb.Caption := '#:                   ';
    LA_Gerar_Comb.Repaint;
    PA_Gerar.Enabled := false;
    PA_Gerar.Left := 4500;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
      //  SCBX_dados.HorzScrollBar.Position := 1;
      //  SCBX_dados.Repaint;

    //PR_GRAVAR_DADOS ('INICIO',viLinhas_01_01, 1, TRUNC(STGR_Base08Fixos.RowCount-1));

        PGBR_Etapa_01.Position := 100;
        PGBR_Etapa_01.Repaint;
    AnaliseComb_06e17 (1);
    Sleep(1540);
    PGBR_Etapa_02.Position := 100;
    PGBR_Etapa_02.Repaint;
    //
    //  -- > Montando o Bloco de 11
    //
    STGR_Etapa03_11.RowCount := 1;
    STGR_Etapa03_11.Repaint;
    viQtdDados := Trunc((STGR_Etapa01_06.RowCount-1)/011);
    for viCombinacoes1 := 1 TO viQtdDados DO
    BEGIN
        FOR viContarCelulas := 1 TO 25 DO
        BEGIN
           STGR_Todos_Numeros.Cells [viContarCelulas ,1]:='F';
           STGR_Todos_Numeros.Cells [viContarCelulas ,2]:='F';
        end;
        FOR viContar :=1 TO 06 DO
        BEGIN
            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa01_06.Cells[viContar,viCombinacoes1])) ,1]:='V';
        END; // FOR viContar
        FOR viContar :=1 TO 17 DO
        BEGIN
            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Base17Fixos.Cells[viContar,0])) ,2]:='V';
        END; // FOR viContar
        // -------------------------------
        // --  MONTANDO AS 11 SOBRAS   ---
        // -------------------------------
        viContarCelulas := 1;
        FOR viContar :=1 TO 25 DO
        BEGIN
            // SOBRAS
            STGR_Etapa03_11.Cells[0,viCombinacoes1] := intTOstr(viCombinacoes1);
            IF (STGR_Todos_Numeros.Cells[viContar,1]='F') and (STGR_Todos_Numeros.Cells[viContar,2]='V') THEN
            BEGIN
                STGR_Etapa03_11.Cells[viContarCelulas,viCombinacoes1] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[viContar,0]),2) ;
                viContarCelulas := viContarCelulas + 1;
            End;
        END; // FOR viContar
    END;
    Sleep(1540);
    PGBR_Etapa_03.Position := 100;
    STGR_Etapa03_11.RowCount :=  viCombinacoes1 ;
    STGR_Etapa03_11.Repaint;
    //
    //  -- > Montando o Bloco de 19
    //
    LimparGrid19() ;
    STGR_Etapa04_19.RowCount := 1;
    STGR_Etapa04_19.Repaint;
    viLinhas01 := 1;
    viQtdDados := TRUNC((STGR_Etapa03_11.RowCount -1)/011);
    for viCombinacoes1 := 1 TO viQtdDados DO
    BEGIN
        STGR_Etapa04_19.Cells[0,viCombinacoes1] := intTOstr(viCombinacoes1);
        FOR viContar :=1 TO 08 DO
        BEGIN
            STGR_Etapa04_19.Cells[viContar,viLinhas01] := STGR_Base08Fixos.Cells[viContar,0];;
        END; // FOR viContar
        FOR viContar :=1 TO 11 DO
        BEGIN
            STGR_Etapa04_19.Cells[viContar+8,viLinhas01] := STGR_Etapa03_11.Cells[viContar,viCombinacoes1];;
        END; // FOR viContar
        viSomaTotal := 0 ;
        FOR viContar :=1 TO 19 DO
        BEGIN
            viSomaTotal := viSomaTotal + strTOint(STGR_Etapa04_19.Cells[viContar,viLinhas01]);
        end;
        if viSomaTotal = 247 then
            if (SELF.QtdPares19(viLinhas01)) then
            begin
                SELF.Ordenar_Comb19(viLinhas01,4);
                viLinhas01 := viLinhas01 + 1 ;
            end;
    end; // viCombinacoes1
    STGR_Etapa04_19.RowCount :=  viLinhas01 ;
    STGR_Etapa04_19.Repaint;
    SCBX_dados.HorzScrollBar.Position := 730;
    SCBX_dados.Repaint;
    Sleep (1540);
    PGBR_Etapa_04.Position := 100;
    SELF.Gerar12 (156,4);
    PR_Gravar_Dados_Dados12_e4 () ;
   LimparGrid12 () ;
   BBT_Etapa04.Click;
end;


PROCEDURE T_F_Gerador_08_NumerosFixos1.PR_ORDENAR_15 (viLinhas9,viEtapa: INTEGER);
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
    // ----> MONTADO E VERIFICANDO TODOS OS 15 DÍGITOS
    FOR viContar :=2 TO 16 DO
    BEGIN
        if viEtapa=8 then
            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa08_15.Cells[viContar,viLinhas9])) ,1]:='V'
        else
            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa07_15.Cells[viContar,viLinhas9])) ,1]:='V';
    END; // FOR viContar1
    viCntCelulas := 2;
    FOR viContar :=1 TO 25 DO
    BEGIN
        IF (STGR_Todos_Numeros.Cells[viContar,1]='V') THEN
        BEGIN
            if viEtapa=8 then
                STGR_Etapa08_15.Cells [viCntCelulas, viLinhas9] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[viContar,0]),2)             
            else
                STGR_Etapa07_15.Cells [viCntCelulas, viLinhas9] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[viContar,0]),2) ;
            viCntCelulas := viCntCelulas + 1;
        END; // IF (STGR_Todos_Numeros
    END; // FOR viContar
end; // PROCEDURE ORDENAR_SIMULACAO_15


PROCEDURE T_F_Gerador_08_NumerosFixos1.PR_Gravar_Dados_15 (vcNomeTabela : String; viEtapa:Integer);
VAR
    viAnaliseCombinatoria1, viContarCelulas, viContar, viContarStgGrid : INTEGER;
    vcQuery : STRING;
    vsCombinacoes10, vsCombinacoes15, vsContadorDaTabela : STRING;
BEGIN
    //viTotalGERADO := STGR_Comb10.RowCount-1;
      // ************************
      // **   BANCO DE DADOS   **
      // ************************
      SELF.Repaint;
      // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
      if viEtapa=8 then viContarStgGrid := TRUNC((STGR_Etapa08_15.RowCount-1)/1)
          else  viContarStgGrid := TRUNC((STGR_Etapa07_15.RowCount-1)/1);
    FOR viAnaliseCombinatoria1:= 1 TO viContarStgGrid DO
    BEGIN
        if viEtapa=8 then
            if strToInt(STGR_Etapa08_15.Cells[0,viAnaliseCombinatoria1]) <=-1 then
                continue;
        vsCombinacoes15 :='';
        FOR viContarCelulas := 1 TO 25 DO
        BEGIN
            STGR_Todos_Numeros.Cells [viContarCelulas ,1]:='F';
        end;
        FOR viContarCelulas := 2 TO 16 DO
        BEGIN
            if viEtapa=8 then
            begin
               vsCombinacoes15 := vsCombinacoes15 + TRIM(STGR_Etapa08_15.Cells[viContarCelulas,viAnaliseCombinatoria1]) +' ';
               STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa08_15.Cells[viContarCelulas,viAnaliseCombinatoria1])) ,1]:='V';
               vsContadorDaTabela :=  STGR_Etapa08_15.Cells[1,viAnaliseCombinatoria1] ;
            end else
            begin
               vsCombinacoes15 := vsCombinacoes15 + TRIM(STGR_Etapa07_15.Cells[viContarCelulas,viAnaliseCombinatoria1]) +' ';
               STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa07_15.Cells[viContarCelulas,viAnaliseCombinatoria1])) ,1]:='V';
               vsContadorDaTabela :=  STGR_Etapa07_15.Cells[1,viAnaliseCombinatoria1] ;
           end;
        END; // FOR viContarCelulas
           // -------------------------------
           // --  MONTANDO AS 10 SOBRAS   ---
           // -------------------------------
              viContarCelulas := 1;
              vsCombinacoes10 := '';
              FOR viContar :=1 TO 25 DO
              BEGIN
                  // SOBRAS
                  IF (STGR_Todos_Numeros.Cells[viContar,1]='F') THEN
                  BEGIN
                      vsCombinacoes10 := vsCombinacoes10 + RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[viContar,0]),2) +' ' ;
                      viContarCelulas := viContarCelulas + 1;
                  END; // IF (STGR_Todos_Numeros
              END; // FOR viContar
     // vcNomeTabela := ' GERADOR_RESULT_25_FINAL';
       vcQuery  := 'INSERT INTO ' +vcNomeTabela+ ' (DADOS, DADOS_NS, TIPO) VALUES(' ;
       vcQuery  := vcQuery     +#39+  TRIM(vsCombinacoes15)  + #39 +',' ;
       vcQuery  := vcQuery     +#39+  TRIM(vsCombinacoes10)  + #39 +',' ;
        if viEtapa=8 then
           vcQuery  := vcQuery     +#39+  TRIM(STGR_Etapa08_15.Cells[18,viAnaliseCombinatoria1])
        else
           vcQuery  := vcQuery     +#39+  TRIM(STGR_Etapa07_15.Cells[18,viAnaliseCombinatoria1]);
       vcQuery  := vcQuery     +#39+ ');';
       DM1.IBQ_Combin_02.SQL.Clear;
       DM1.IBQ_Combin_02.SQL.Add(vcQuery)  ;
       DM1.IBQ_Combin_02.ExecSQL;
   END; // FOR viAnaliseCombinatoria1
    DM1.IBQ_Combin_02.SQL.Clear;
    DM1.IBQ_Combin_02.SQL.Add('COMMIT')  ;
    DM1.IBQ_Combin_02.ExecSQL;
    SLEEP(14);
END; // PROCEDURE GRAVAR_DADOS




Procedure T_F_Gerador_08_NumerosFixos1.Gerando15de12_e_3 (viEtapa: Integer);

     FUNCTION NumerosFixos1Nos15 (vi_Linhas1 : integer) : BOOLEAN;
     VAR
          vi_ContaSel1, vi_Primeiro, vi_NumeroCelula  : INTEGER;
          vb_Retorno : boolean  ;
     begin
          vi_Primeiro := strTOint(ED_Fixos01.Text);
          IF (vi_Primeiro >=1) and (vi_Primeiro<=25)  THEN
          BEGIN
               vb_Retorno := False;
               FOR vi_ContaSel1 := 2 TO 16 DO
               BEGIN
                    vi_NumeroCelula:=  STRtoINT(STGR_Etapa08_15.Cells[vi_ContaSel1,vi_Linhas1]);
                    IF (vi_NumeroCelula=vi_Primeiro) THEN
                    begin
                         vb_Retorno := True;
                    end;
               END; // FOR vi_ContaSel1
               Result :=  vb_Retorno;
          END ELSE
          BEGIN
               Result := False; /// o zero nunca esta dentro dos 15
          END;// IF
     end; // function

     FUNCTION NumerosFixos2Nos15 (vi_Linhas1 : integer) : BOOLEAN;
     VAR
          vi_ContaSel1, vi_Primeiro, vi_NumeroCelula  : INTEGER;
          vb_Retorno : boolean  ;
     begin
          vi_Primeiro := strTOint(ED_Fixos02.Text);
          IF (vi_Primeiro >0) and (vi_Primeiro<=25)  THEN
          BEGIN
               vb_Retorno := False;
               FOR vi_ContaSel1 := 2 TO 16 DO
               BEGIN
                    vi_NumeroCelula:=  STRtoINT(STGR_Etapa08_15.Cells[vi_ContaSel1,vi_Linhas1]);
                    IF (vi_NumeroCelula=vi_Primeiro) THEN
                    begin
                         vb_Retorno := True;
                    end;
               END; // FOR vi_ContaSel1
               Result :=  vb_Retorno;
          END ELSE
          BEGIN
               Result := False; // o 0 nunca está dentro dos 15
          END;// IF
     end; // function


     FUNCTION NumerosFixos3Nos15 (vi_Linhas1 : integer) : BOOLEAN;
     VAR
          vi_ContaSel1, vi_Primeiro, vi_NumeroCelula  : INTEGER;
          vb_Retorno : boolean  ;
     begin
          vi_Primeiro := strTOint(ED_Fixos03.Text);
          IF (vi_Primeiro >0) and (vi_Primeiro<=25)  THEN
          BEGIN
               vb_Retorno := False;
               FOR vi_ContaSel1 := 2 TO 16 DO
               BEGIN
                    vi_NumeroCelula:=  STRtoINT(STGR_Etapa08_15.Cells[vi_ContaSel1,vi_Linhas1]);
                    IF (vi_NumeroCelula=vi_Primeiro) THEN
                    begin
                         vb_Retorno := True;
                    end;
               END; // FOR vi_ContaSel1
               Result :=  vb_Retorno;
          END ELSE
          BEGIN
               Result := False; // o 0 nunca está dentro dos 15
          END;// IF
     end; // function

var viContarCombinacoes1, viContar, viCombinacoes1, viLinhas01 : integer;
Begin
    sleep(5);
    Self.LimparGrid_7Comb15();
    Self.LimparGrid_8Comb15();
    // ---> Ordenar os 15 números
    DM1.IBDatabase1.Close;
    DM1.IBDatabase1.Open;
    DM1.IBQ_Combinacoes.Close;
    DM1.IBQ_Combinacoes.SQL.Clear;
    if viEtapa=8 then DM1.IBQ_Combinacoes.SQL.Add(' select count(distinct (A.DADOS_12 || '' '' || B.DADOS_03)) as Quantidade from GERADOR_RESULT_08_FIXOS01B_D12 AS A, GERADOR_RESULT_08_FIXOS01_D03 AS B  WHERE A.qtd = B.qtd  ')
        else DM1.IBQ_Combinacoes.SQL.Add('select count(distinct (A.DADOS_12 || '' '' || B.DADOS_03)) as Quantidade from GERADOR_RESULT_08_FIXOS01_D12 AS A, GERADOR_RESULT_08_FIXOS01_D03 AS B  WHERE A.qtd = B.qtd  ');
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;
    viContarCombinacoes1 := DM1.IBQ_Combinacoes.fieldBYname('Quantidade').AsInteger;
    DM1.IBQ_Combinacoes.SQL.Clear;
    if viEtapa=8
    then
        DM1.IBQ_Combinacoes.SQL.Add('SELECT distinct (A.DADOS_12 || '' '' || B.DADOS_03) as dados '
                                    + ' FROM GERADOR_RESULT_08_FIXOS01B_D12 AS A, GERADOR_RESULT_08_FIXOS01_D03 AS B '
                                    + ' WHERE A.qtd = B.qtd  Order by dados')
    else
        DM1.IBQ_Combinacoes.SQL.Add('SELECT distinct (A.DADOS_12 || '' '' || B.DADOS_03) as dados '
                                    + ' FROM GERADOR_RESULT_08_FIXOS01_D12 AS A, GERADOR_RESULT_08_FIXOS01_D03 AS B '
                                    + ' WHERE A.qtd = B.qtd');
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;
    DM1.IBQ_Combinacoes.First;
     viLinhas01 := 1;
     viContar :=1 ;
    While viContar <= viContarCombinacoes1 do //NOT(DM1.IBQ_Combinacoes.Eof) do
    begin
        if viEtapa=8  then
        begin
            STGR_Etapa08_15.Cells[00,viLinhas01] := intTOstr(viLinhas01);
            STGR_Etapa08_15.Cells[02,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,1,2);
            STGR_Etapa08_15.Cells[03,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,4,2);
            STGR_Etapa08_15.Cells[04,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,7,2);
            STGR_Etapa08_15.Cells[05,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,10,2);
            STGR_Etapa08_15.Cells[06,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,13,2);
            STGR_Etapa08_15.Cells[07,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,16,2);
            STGR_Etapa08_15.Cells[08,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,19,2);
            STGR_Etapa08_15.Cells[09,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,22,2);
            STGR_Etapa08_15.Cells[10,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,25,2);
            STGR_Etapa08_15.Cells[11,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,28,2);
            STGR_Etapa08_15.Cells[12,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,31,2);
            STGR_Etapa08_15.Cells[13,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,34,2);
            STGR_Etapa08_15.Cells[14,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,37,2);
            STGR_Etapa08_15.Cells[15,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,40,2);
            STGR_Etapa08_15.Cells[16,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,43,2);
            STGR_Etapa08_15.Cells[18,viLinhas01] := ' / ';
            PR_ORDENAR_15 (viLinhas01, viEtapa);
            if not(NumerosFixos8(viLinhas01, viEtapa)) then
            begin
                STGR_Etapa08_15.Cells[00,viLinhas01] := '-1';
            end;
            IF (NumerosFixos1Nos15(viLinhas01)) then
            begin
                STGR_Etapa08_15.Cells[00,viLinhas01] := '-1';
            end;
            IF NumerosFixos2Nos15(viLinhas01) then
            begin
                STGR_Etapa08_15.Cells[00,viLinhas01] := '-1';
            end;
            IF NumerosFixos3Nos15(viLinhas01) then
            begin
                STGR_Etapa08_15.Cells[00,viLinhas01] := '-1';
            end;
            if strToInt(STGR_Etapa08_15.Cells[00,viLinhas01])>0 then
                viLinhas01 := viLinhas01 + 1 ;
        end else
        begin
            STGR_Etapa07_15.Cells[00,viLinhas01] := intTOstr(viLinhas01);
            STGR_Etapa07_15.Cells[02,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,1,2);
            STGR_Etapa07_15.Cells[03,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,4,2);
            STGR_Etapa07_15.Cells[04,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,7,2);
            STGR_Etapa07_15.Cells[05,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,10,2);
            STGR_Etapa07_15.Cells[06,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,13,2);
            STGR_Etapa07_15.Cells[07,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,16,2);
            STGR_Etapa07_15.Cells[08,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,19,2);
            STGR_Etapa07_15.Cells[09,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,22,2);
            STGR_Etapa07_15.Cells[10,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,25,2);
            STGR_Etapa07_15.Cells[11,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,28,2);
            STGR_Etapa07_15.Cells[12,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,31,2);
            STGR_Etapa07_15.Cells[13,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,34,2);
            STGR_Etapa07_15.Cells[14,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,37,2);
            STGR_Etapa07_15.Cells[15,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,40,2);
            STGR_Etapa07_15.Cells[16,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,43,2);
            STGR_Etapa07_15.Cells[18,viLinhas01] := ' / ';
            PR_ORDENAR_15 (viLinhas01, viEtapa);
            viLinhas01 := viLinhas01 + 1 ;
        end; /// if
        DM1.IBQ_Combinacoes.Next;
        if (viLinhas01 mod 4000)=0 then   //1500
        begin
            if viEtapa=8  then
            begin
                STGR_Etapa08_15.RowCount := viLinhas01 ;
                STGR_Etapa08_15.Repaint;
                PR_Gravar_Dados_15 (' GERADOR_RESULT_08_Fixos01_D15a ', viEtapa);
                sleep(50);
                Self.LimparGrid_8Comb15();
                viLinhas01 := 1;
                sleep(100);
            end  else
            begin
                STGR_Etapa07_15.RowCount := viLinhas01;
                STGR_Etapa07_15.Repaint;
                if (viLinhas01 mod 1500)=0 then
                begin
                    PR_Gravar_Dados_15 (' GERADOR_RESULT_08_Fixos01_D15a ', viEtapa);
                    sleep(50);
                    Self.LimparGrid_7Comb15();
                    viLinhas01 := 1;
                    sleep(100);
                end;
            end;

        end;
        viContar := viContar +1;
    end; // while While viContar <= viContarCombinacoes1
    if viEtapa=8  then
        STGR_Etapa08_15.RowCount := viLinhas01
    else
        STGR_Etapa07_15.RowCount := viLinhas01;
    if viLinhas01>0 then
    begin
        PR_Gravar_Dados_15 (' GERADOR_RESULT_08_Fixos01_D15a ', viEtapa);
    end;
    // --- > carregando os 10 não sorteados e os 15 sem repetidos
        DM1.IBQ_Combin_02.SQL.Clear;
        DM1.IBDatabase1.Close;
        DM1.IBDatabase1.Open;
        DM1.IBQ_Combinacoes.Close;
        DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.Close;
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('select distinct(DADOS_ns) from GERADOR_RESULT_08_FIXOS01_D15A');
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;
    DM1.IBQ_Combinacoes.First;
     viLinhas01 := 1;
    While NOT(DM1.IBQ_Combinacoes.Eof) do
    begin
        if viEtapa=8  then
        begin
            STGR_Etapa08_10b.Cells[00,viLinhas01] := intTOstr(viLinhas01);
            STGR_Etapa08_10b.Cells[01,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('DADOS_ns').AsString,1,2);
            STGR_Etapa08_10b.Cells[02,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('DADOS_ns').AsString,4,2);
            STGR_Etapa08_10b.Cells[03,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('DADOS_ns').AsString,7,2);
            STGR_Etapa08_10b.Cells[04,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('DADOS_ns').AsString,10,2);
            STGR_Etapa08_10b.Cells[05,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('DADOS_ns').AsString,13,2);
            STGR_Etapa08_10b.Cells[06,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('DADOS_ns').AsString,16,2);
            STGR_Etapa08_10b.Cells[07,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('DADOS_ns').AsString,19,2);
            STGR_Etapa08_10b.Cells[08,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('DADOS_ns').AsString,22,2);
            STGR_Etapa08_10b.Cells[09,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('DADOS_ns').AsString,25,2);
            STGR_Etapa08_10b.Cells[10,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('DADOS_ns').AsString,28,2);
        end else
        begin
            STGR_Etapa08_10a.Cells[00,viLinhas01] := intTOstr(viLinhas01);
            STGR_Etapa08_10a.Cells[01,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('DADOS_ns').AsString,1,2);
            STGR_Etapa08_10a.Cells[02,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('DADOS_ns').AsString,4,2);
            STGR_Etapa08_10a.Cells[03,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('DADOS_ns').AsString,7,2);
            STGR_Etapa08_10a.Cells[04,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('DADOS_ns').AsString,10,2);
            STGR_Etapa08_10a.Cells[05,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('DADOS_ns').AsString,13,2);
            STGR_Etapa08_10a.Cells[06,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('DADOS_ns').AsString,16,2);
            STGR_Etapa08_10a.Cells[07,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('DADOS_ns').AsString,19,2);
            STGR_Etapa08_10a.Cells[08,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('DADOS_ns').AsString,22,2);
            STGR_Etapa08_10a.Cells[09,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('DADOS_ns').AsString,25,2);
            STGR_Etapa08_10a.Cells[10,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('DADOS_ns').AsString,28,2);
        end;
        viLinhas01 := viLinhas01 + 1 ;
        DM1.IBQ_Combinacoes.Next;
    end; // while
    if viEtapa=8  then
    begin
        STGR_Etapa08_10b.RowCount := viLinhas01;
        STGR_Etapa08_10b.Repaint;
        SELF.LimparGrid_8Comb15();
    end else
    begin
        STGR_Etapa08_10a.RowCount := viLinhas01;
        STGR_Etapa08_10a.Repaint;
        SELF.LimparGrid_7Comb15();
    end;
    sleep(5);
    // ---> Carrgeando os 15 números sem os repetidos
    DM1.IBQ_Combinacoes.Close;
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('select distinct(DADOS) from GERADOR_RESULT_08_FIXOS01_D15A');
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;
    DM1.IBQ_Combinacoes.First;
     viLinhas01 := 1;
    While NOT(DM1.IBQ_Combinacoes.Eof) do
    begin
        if viEtapa=8  then
        begin
            STGR_Etapa08_15.Cells[00,viLinhas01] := intTOstr(viLinhas01);
            STGR_Etapa08_15.Cells[02,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,1,2);
            STGR_Etapa08_15.Cells[03,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,4,2);
            STGR_Etapa08_15.Cells[04,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,7,2);
            STGR_Etapa08_15.Cells[05,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,10,2);
            STGR_Etapa08_15.Cells[06,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,13,2);
            STGR_Etapa08_15.Cells[07,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,16,2);
            STGR_Etapa08_15.Cells[08,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,19,2);
            STGR_Etapa08_15.Cells[09,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,22,2);
            STGR_Etapa08_15.Cells[10,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,25,2);
            STGR_Etapa08_15.Cells[11,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,28,2);
            STGR_Etapa08_15.Cells[12,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,31,2);
            STGR_Etapa08_15.Cells[13,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,34,2);
            STGR_Etapa08_15.Cells[14,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,37,2);
            STGR_Etapa08_15.Cells[15,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,40,2);
            STGR_Etapa08_15.Cells[16,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,43,2);
            STGR_Etapa08_15.Cells[18,viLinhas01] := ' / ';
        end else
        begin
            STGR_Etapa07_15.Cells[00,viLinhas01] := intTOstr(viLinhas01);
            STGR_Etapa07_15.Cells[02,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,1,2);
            STGR_Etapa07_15.Cells[03,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,4,2);
            STGR_Etapa07_15.Cells[04,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,7,2);
            STGR_Etapa07_15.Cells[05,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,10,2);
            STGR_Etapa07_15.Cells[06,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,13,2);
            STGR_Etapa07_15.Cells[07,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,16,2);
            STGR_Etapa07_15.Cells[08,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,19,2);
            STGR_Etapa07_15.Cells[09,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,22,2);
            STGR_Etapa07_15.Cells[10,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,25,2);
            STGR_Etapa07_15.Cells[11,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,28,2);
            STGR_Etapa07_15.Cells[12,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,31,2);
            STGR_Etapa07_15.Cells[13,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,34,2);
            STGR_Etapa07_15.Cells[14,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,37,2);
            STGR_Etapa07_15.Cells[15,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,40,2);
            STGR_Etapa07_15.Cells[16,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,43,2);
            STGR_Etapa07_15.Cells[18,viLinhas01] := ' / ';
        end; /// if
        viLinhas01 := viLinhas01 + 1 ;
        DM1.IBQ_Combinacoes.Next;
        if (viLinhas01 mod 2500)=0 then
        begin
            if viEtapa=8  then STGR_Etapa08_15.RowCount := viLinhas01 else  STGR_Etapa07_15.RowCount := viLinhas01;
            sleep(5);
            if viEtapa=8  then STGR_Etapa08_15.Repaint else  STGR_Etapa07_15.Repaint;
        end;
    end; // while
    if viEtapa=8  then
        STGR_Etapa08_15.RowCount := viLinhas01
    else
        STGR_Etapa07_15.RowCount := viLinhas01;
end;




procedure T_F_Gerador_08_NumerosFixos1.BBT_Etapa04Click(Sender: TObject);

    Function Compara06comNS(vsEtapa: String): Boolean;
    var
        viContarCombinacoes1,viContarCelulas, viContar, viQtd : integer;
    begin
    if trim(vsEtapa)='b' then viQtd:= STGR_Etapa08_10b.RowCount-1
    else  viQtd:= STGR_Etapa08_10a.RowCount-1;
        FOR viContarCombinacoes1 := 1 TO viQtd DO
        BEGIN
            FOR viContarCelulas := 1 TO 25 DO
            BEGIN
               STGR_Todos_Numeros.Cells [viContarCelulas ,2]:='F';
            end;
            FOR viContar :=1 TO 10 DO
            BEGIN
                if trim(vsEtapa)='b' then
                    STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa08_10b.Cells[viContar,viContarCombinacoes1])) ,2]:='V'
                else
                    STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa08_10a.Cells[viContar,viContarCombinacoes1])) ,2]:='V';                
            END; // FOR viContar
            // -------------------------------
            // --  CONFERINDO  ---
            // -------------------------------
            viContarCelulas := 1;
            FOR viContar :=1 TO 25 DO
            BEGIN
                // SOBRAS
                IF (STGR_Todos_Numeros.Cells[viContar,1]='V') and (STGR_Todos_Numeros.Cells[viContar,2]='V') THEN
                BEGIN
                    viContarCelulas := viContarCelulas + 1;
                End;
            END; // FOR viContar
            IF viContarCelulas = 6 THEN
            begin
                Result := True;
                Exit;
            end;
        end; // For
        Result := False;
    End;

    function Etapa8_11_Com7(viLinhas1: Smallint):Boolean ;
    Var
        viNumeroCelula, viContarCelulas, viLinhas15 : integer;
    Begin
        For viLinhas15 :=1 To STGR_Etapa07_15.RowCount-1 Do
        Begin
            FOR viContarCelulas := 1 TO 25 DO
            BEGIN
               STGR_Todos_Numeros.Cells [viContarCelulas ,1]:='F';
               STGR_Todos_Numeros.Cells [viContarCelulas ,2]:='F';
            end;
            FOR viContarCelulas := 2 TO 12 DO
            BEGIN
               STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa08_11.Cells[viContarCelulas,viLinhas1])) ,1]:='V';
            END; // FOR viContarCelulas

            FOR viContarCelulas := 2 TO 16 DO
            BEGIN
               STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa07_15.Cells[viContarCelulas,viLinhas15])) ,2]:='V';
            END; // FOR viContarCelulas
            // --> contando a quantidade
            viContarCelulas := 0;
            FOR viNumeroCelula := 1 TO 25 DO
            BEGIN
                IF ( (STGR_Todos_Numeros.Cells[viNumeroCelula,1]='V') and (STGR_Todos_Numeros.Cells[viNumeroCelula,2]='V') ) THEN
                BEGIN
                    viContarCelulas := viContarCelulas + 1 ;
                end; /// if
            end; // for
            if viContarCelulas = 7 then
            begin
                Result := True;
                exit;
            end;
        End; // For
        Result := False;
    End; /// function

 PROCEDURE PR_Gravar_Dados_Dados12_e8 ();
    VAR
        viAnaliseCombinatoria1, viContarCelulas, viContar, viContarStgGrid : INTEGER;
        vcQuery, vcNomeTabela : STRING;
        vsCombinacoes12, vsCombinacoes07 : STRING;
    BEGIN
        //viTotalGERADO := STGR_Comb10.RowCount-1;
          // ************************
          // **   BANCO DE DADOS   **
          // ************************
          SELF.Repaint;
          // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
          viContarStgGrid := TRUNC((STGR_Etapa08_12.RowCount-1)/1);
       FOR viAnaliseCombinatoria1:= 1 TO viContarStgGrid DO
       BEGIN
            FOR viContarCelulas := 1 TO 25 DO
            BEGIN
               STGR_Todos_Numeros.Cells [viContarCelulas ,1]:='F';
               STGR_Todos_Numeros.Cells [viContarCelulas ,2]:='F';
            end;
           vsCombinacoes12 := '';
           FOR viContarCelulas := 1 TO 19 DO
           BEGIN
               STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa08_19.Cells[viContarCelulas,STRtoINT(STGR_Etapa08_12.Cells[01,viAnaliseCombinatoria1]) ])) ,1]:='V';
           END; // FOR viContarCelulas

           FOR viContarCelulas := 2 TO 13 DO
           BEGIN
               vsCombinacoes12 := vsCombinacoes12 + RIGHTSTR ('0'+TRIM(STGR_Etapa08_12.Cells[viContarCelulas,viAnaliseCombinatoria1]),2) +' ';
               STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa08_12.Cells[viContarCelulas,viAnaliseCombinatoria1])) ,2]:='V';
           END; // FOR viContarCelulas
               // -------------------------------
               // --  MONTANDO AS 07 SOBRAS   ---
               // -------------------------------
                  viContarCelulas := 1;
                  vsCombinacoes07 := '';
                  FOR viContar :=1 TO 25 DO
                  BEGIN
                      // SOBRAS
                      IF ( (STGR_Todos_Numeros.Cells[viContar,1]='V') and (STGR_Todos_Numeros.Cells[viContar,2]='F') ) THEN
                      BEGIN
                          vsCombinacoes07 := vsCombinacoes07 + RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[viContar,0]),2) +' ' ;
                          viContarCelulas := viContarCelulas + 1;
                      END; // IF (STGR_Todos_Numeros
                  END; // FOR viContar
          vcNomeTabela := ' GERADOR_RESULT_08_FIXOS01b_D12';
           vcQuery  := 'INSERT INTO ' +vcNomeTabela+ ' (DADOS_12, DADOS_07, QTD, N) VALUES('
                 +#39+  TRIM(vsCombinacoes12)  + #39 +','
                 +#39+  TRIM(vsCombinacoes07)  + #39 +','
                 +#39+  TRIM(STGR_Etapa08_12.Cells[0,viAnaliseCombinatoria1]) + #39 +','
                 +#39+  TRIM(STGR_Etapa08_12.Cells[1,viAnaliseCombinatoria1])
                 +#39+ ');';
           DM1.IBQ_Combin_02.SQL.Clear;
           DM1.IBQ_Combin_02.SQL.Add(vcQuery)  ;
           DM1.IBQ_Combin_02.ExecSQL;
       END; // FOR viAnaliseCombinatoria1
    DM1.IBQ_Combin_02.SQL.Clear;
    DM1.IBQ_Combin_02.SQL.Add('COMMIT')  ;
    DM1.IBQ_Combin_02.ExecSQL;
    SLEEP(4);
    DM1.IBQ_Combin_02.SQL.Clear;
    END; // PROCEDURE GRAVAR_DADOS

var
     viContarCombinacoes1, viQtdDados, viContar : integer;
     viCombinacoes1, viCombinacoes2 :integer;
     viTotal_Comb1, viLinhas01, viContarCelulas : integer;
     viSomaTotal, viContaSel1, viContarQtdPares : INTEGER;
     vsQuery : String;
begin
    PA_Gerar.Left := 6000;
    PA_Gerar.Enabled := False;
    PA_Gerar.Repaint;
    PGBR_Etapa_07.Position := 0 ;
    PGBR_Etapa_07.Repaint;
    PGBR_Etapa_08.Position := 0 ;
    PGBR_Etapa_08.Repaint;
    PGBR_Etapa_08_01.Position := 0 ;
    PGBR_Etapa_08_01.Repaint;
    STGR_Etapa08_10a.ColWidths [0] := 60 ;
    STGR_Etapa08_06.ColWidths [0] := 60 ;
    STGR_Etapa08_06.ColWidths [7] := 50 ;
    STGR_Etapa08_11.ColWidths [0] := 60 ;
    STGR_Etapa08_19.ColWidths [0] := 50 ;
    STGR_Etapa08_12.ColWidths [0] := 51 ;
    STGR_Etapa08_12.ColWidths [1] := 40 ;
    STGR_Etapa08_10b.ColWidths [0] := 60 ;
     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_08_Fixos01_D03')  ;
     DM1.IBQ_Combinacoes.ExecSQL;
     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
     DM1.IBQ_Combinacoes.ExecSQL;
    // ---> Faz na etapa 8 - Análise combinatória de 3 em 7
   SELF.AnaliseComb1_03em07 (6);
   PGBR_Etapa_06.Position := 100;
   PGBR_Etapa_06.Repaint;
   STGR_Etapa06_03.REPAINT;
    SELF.WindowState := wsMinimized ;
    SELF.WindowState := wsNormal ;
    SELF.Repaint;   
    STGR_Etapa07_15.RowCount := 1;
    // ---> Gera os 15 números sem os repetidos
    Self.Gerando15de12_e_3 (7);
    AnaliseComb_06e17 (8);
   PGBR_Etapa_07.Position := 100;
   PGBR_Etapa_07.Repaint;
    DM1.IBQ_Combinacoes.Close;
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('select distinct(DADOS_ns) from GERADOR_RESULT_08_FIXOS01_D15A');
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;
    DM1.IBQ_Combinacoes.First;    
    SELF.WindowState := wsMinimized ;
    SELF.WindowState := wsNormal ;
    SELF.Repaint;

    // ---> Comparando os 6 números com os 10 não sorteados
    viQtdDados:= trunc((STGR_Etapa08_06.RowCount-1)/001);
    for viCombinacoes1 := 1 TO viQtdDados DO
    BEGIN
        FOR viContarCelulas := 1 TO 25 DO
        BEGIN
            STGR_Todos_Numeros.Cells [viContarCelulas ,1]:='F';
        END;
        FOR viContar :=1 TO 06 DO
        BEGIN
            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa08_06.Cells[viContar,viCombinacoes1])) ,1]:='V';
        END; // FOR viContar
        if Compara06comNS('a') then
            STGR_Etapa08_06.Cells[07,viCombinacoes1] := 'True' ;
        PGBR_Etapa_08.Position := trunc(viCombinacoes1 / trunc((STGR_Etapa08_06.RowCount-1)/1) * 100);
        PGBR_Etapa_08.Repaint;
    END; // For
    Sleep(1040);
    PGBR_Etapa_08.Position := 100;
    PGBR_Etapa_08.Repaint;
    SELF.WindowState := wsMinimized ;
    SELF.WindowState := wsNormal ;
    SELF.Repaint;
    
    //=========================================
    //
    //  -- > Montando o Bloco de 11 da etapa 08
    //
    //
     SCBX_dados.HorzScrollBar.Position := 4000 ;
     SCBX_dados.Repaint;
    STGR_Etapa08_11.RowCount := 1;
    STGR_Etapa08_11.Repaint;
    viQtdDados := Trunc((STGR_Etapa08_06.RowCount -1)/001);
    viLinhas01 := 1;
    for viCombinacoes1 := 1 TO viQtdDados DO
    BEGIN
        FOR viContarCelulas := 1 TO 25 DO
        BEGIN
           STGR_Todos_Numeros.Cells [viContarCelulas ,1]:='F';
           STGR_Todos_Numeros.Cells [viContarCelulas ,2]:='F';           
        end;
        FOR viContar :=1 TO 06 DO
        BEGIN
            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa08_06.Cells[viContar,viCombinacoes1])) ,1]:='V';
        END; // FOR viContar
        FOR viContar :=1 TO 17 DO
        BEGIN
            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Base17Fixos.Cells[viContar,0])) ,2]:='V';
        END; // FOR viContar
        // -------------------------------
        // --  MONTANDO AS 11 SOBRAS   ---
        // -------------------------------
        if TRIM(STGR_Etapa08_06.Cells[07,viCombinacoes1]) = 'True' Then
        begin
            viContarCelulas := 2;
            FOR viContar :=1 TO 25 DO
            BEGIN
                // SOBRAS
                STGR_Etapa08_11.Cells[0,viLinhas01] := intTOstr(viLinhas01);
                STGR_Etapa08_11.Cells[1,viLinhas01] := STGR_Etapa08_06.Cells[00,viCombinacoes1];
                IF (STGR_Todos_Numeros.Cells[viContar,1]='F') and (STGR_Todos_Numeros.Cells[viContar,2]='V') THEN
                BEGIN
                    STGR_Etapa08_11.Cells[viContarCelulas,viLinhas01] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[viContar,0]),2) ;
                    viContarCelulas := viContarCelulas + 1;
                End;
            END; // FOR viContar
            IF Etapa8_11_Com7(viLinhas01) THEN
                viLinhas01 := viLinhas01 + 1 ;
            if (viCombinacoes1 MOD 900)=0 then
            BEGIN
                PGBR_Etapa_08_01.Position := trunc((viCombinacoes1 / viQtdDados/1) * 100);
                PGBR_Etapa_08_01.Repaint;
            END;
        end; /// if
    END;
    Sleep(1040);
    PGBR_Etapa_08_01.Position := 100;
    STGR_Etapa08_11.RowCount :=  viLinhas01 ;
    STGR_Etapa08_11.Repaint;
    SELF.WindowState := wsMinimized ;
    SELF.WindowState := wsNormal ;
    SELF.Repaint;

    //==============================
    //
    //  -- > Montando o Bloco de 19
    //
    //
     SCBX_dados.HorzScrollBar.Position := 4875 ;
     SCBX_dados.Repaint;
    STGR_Etapa08_19.RowCount := 1;
    STGR_Etapa08_19.Repaint;
    viLinhas01 := 1;
    viQtdDados := Trunc((STGR_Etapa08_11.RowCount -1)/011);
    for viCombinacoes1 := 1 TO viQtdDados DO
    BEGIN
        STGR_Etapa08_19.Cells[0,viCombinacoes1] := intTOstr(viCombinacoes1);
        FOR viContar :=1 TO 08 DO
        BEGIN
            STGR_Etapa08_19.Cells[viContar,viLinhas01] := STGR_Base08Fixos.Cells[viContar,0];;
        END; // FOR viContar
        FOR viContar :=2 TO 12 DO
        BEGIN
            STGR_Etapa08_19.Cells[viContar+7,viLinhas01] := STGR_Etapa08_11.Cells[viContar,viCombinacoes1];;
        END; // FOR viContar
        viSomaTotal := 0 ;
        FOR viContar :=1 TO 19 DO
        BEGIN
            viSomaTotal := viSomaTotal + strTOint(STGR_Etapa08_19.Cells[viContar,viLinhas01]);
        end;
        //if viSomaTotal = 247 then
        //    if (SELF.QtdPares19(viLinhas01)) then
        //   begin
                SELF.Ordenar_Comb19(viLinhas01,8);
                viLinhas01 := viLinhas01 + 1 ;
        //    end;
    end; // viCombinacoes1
    STGR_Etapa08_19.RowCount :=  viLinhas01 ;
    STGR_Etapa08_19.Repaint;
    PGBR_Etapa_08_01.Position := 100;
    PGBR_Etapa_08_02.Position := 0 ;
    PGBR_Etapa_08_02.Repaint;

    SELF.WindowState := wsMinimized ;
    SELF.WindowState := wsNormal ;
    SELF.Repaint;
    Sleep (1540);
    PGBR_Etapa_04.Position := 100;
    SELF.Gerar12 (156,8);
    PR_Gravar_Dados_Dados12_e8 ();

     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_08_Fixos01_D03')  ;
     DM1.IBQ_Combinacoes.ExecSQL;
     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
     DM1.IBQ_Combinacoes.ExecSQL;
    SELF.WindowState := wsMinimized ;
    SELF.WindowState := wsNormal ;
    SELF.Repaint;     
    // ---> Faz na etapa 8 - Análise combinatória de 3 em 7
    // ---> E faz a conferência com os 199 jogos de 21
    PGBR_Etapa_08_03.Position := 0 ;
    PGBR_Etapa_08_03.Repaint;
    SELF.AnaliseComb1_03em07 (8);
     PGBR_Etapa_08_03.Position := 100;
    PGBR_Etapa_08_03.Repaint;
    STGR_Etapa06_03.REPAINT;
    SELF.WindowState := wsMinimized ;
    SELF.WindowState := wsNormal ;
    SELF.Repaint;     
     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_08_Fixos01_D15a')  ;
     DM1.IBQ_Combinacoes.ExecSQL;
     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
     DM1.IBQ_Combinacoes.ExecSQL;
    // ---> Limpando a memória
    FreeAndNil(STGR_Etapa03_11) ;
    FreeAndNil(STGR_Etapa04_19) ;
    FreeAndNil(STGR_Etapa08_10a);
    FreeAndNil(STGR_Etapa08_19);
    FreeAndNil(STGR_Etapa06_03);
    SELF.WindowState := wsMinimized ;
    SELF.WindowState := wsNormal ;
    SELF.Repaint;    
    sleep(2540);
    // ---> Gera os 15 números sem os repetidos
    try
         Self.Gerando15de12_e_3 (8);
    except
        showMessage('Estouro de memória. Fazer ajustes.');
    end;
    Sleep(540);
    viCombinacoes1 := 1 ;
    try
        WHILE viCombinacoes1 <= (TRUNC((STGR_Etapa08_15.RowCount-1)/1)) do
        BEGIN
                    viContarQtdPares := 0 ;
                    for  viContaSel1 := 2  to 16  do
                    begin
                        if (strTOint(STGR_Etapa08_15.Cells[viContaSel1, viCombinacoes1]) MOD 2) = 0  THEN
                            viContarQtdPares := viContarQtdPares +1 ;
                    end; // for
                    case viContarQtdPares of
                      4:  STGR_Etapa08_15.Cells[18, viCombinacoes1] := '.11i/4p' ;
                      5:  STGR_Etapa08_15.Cells[18, viCombinacoes1] := '.10i/5p' ;
                      6:  STGR_Etapa08_15.Cells[18, viCombinacoes1] := '.9i/6p' ;
                      7:  STGR_Etapa08_15.Cells[18, viCombinacoes1] := '.8i/7p' ;
                      8:  STGR_Etapa08_15.Cells[18, viCombinacoes1] := '.7i/8p' ;
                      9:  STGR_Etapa08_15.Cells[18, viCombinacoes1] := '.6i/9p' ;
                      10:  STGR_Etapa08_15.Cells[18, viCombinacoes1] := '.5i/10p' ;
                      else
                          STGR_Etapa08_15.Cells[18, viCombinacoes1] := intTOstr(viContarQtdPares)+ ' pares' ;
                    end; //// case
            viCombinacoes1 := viCombinacoes1 + 1;
        end; // WHILE viCombinacoes1
    except
        showmessage('Erros Pares e ìmpares - Conferir!');
    end;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    try
        PR_Gravar_Dados_15 (' GERADOR_RESULT_08_FINAL ', 8);
    except
        //
    end;
    SELF.WindowState := wsMinimized ;
    SELF.WindowState := wsNormal ;
    SELF.Repaint;    
        DM1.IBQ_Combin_02.SQL.Clear;
        DM1.IBDatabase1.Close;
        DM1.IBDatabase1.Open;
        DM1.IBQ_Combinacoes.Close;
        DM1.IBQ_Combinacoes.SQL.Clear;


    DM1.IBQ_Combin_02.SQL.Clear;
    DM1.IBQ_Combin_02.SQL.Add('COMMIT')  ;
    DM1.IBQ_Combin_02.ExecSQL;

    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_08_Fixos01_DEF SET HORA_TERMINO ='''+FORMATDATETIME('h:n:s',time())+''', QTD_DADOS= ''' +INTtoSTR(viContarCombinacoes1)+ ''';')  ;
    DM1.IBQ_Combinacoes.ExecSQL;
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
    DM1.IBQ_Combinacoes.ExecSQL;

            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add('SELECT count(DISTINCT(DADOS)) as QTD FROM GERADOR_RESULT_08_FINAL;')  ;
            DM1.IBQ_Combinacoes.Prepare;
            DM1.IBQ_Combinacoes.Open;
    LA_rTOTAL_Comb.Caption  := DM1.IBQ_Combinacoes.fieldBYname('QTD').AsString;
    LA_rQTD_COMB.Caption  := INTtoSTR(STGR_Etapa07_15.RowCount-1);
    LA_gFIM_GERAR.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('SELECT count(distinct(dados)) as quantidade FROM GERADOR_RESULT_08_FINAL') ;
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;

    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('SELECT count(distinct(dados)) as quantidade FROM GERADOR_RESULT_08_FINAL  where tipo =''.8i/7p''') ;
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;

        DM1.IBQ_Combinacoes.SQL.Clear;
        DM1.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_08_Fixos01_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
        DM1.IBQ_Combinacoes.ExecSQL;
        DM1.IBQ_Combinacoes.SQL.Clear;
           try
               vsQuery := 'UPDATE GERADOR_RESULT_08_Fixos01_DEF SET N08_FIXOS= ''' + STGR_Base08Fixos.Cells[1,0]+' '+ STGR_Base08Fixos.Cells[2,0]+' '
                   + STGR_Base08Fixos.Cells[3,0]+' '+STGR_Base08Fixos.Cells[4,0]+' '
                   + STGR_Base08Fixos.Cells[5,0]+' '+STGR_Base08Fixos.Cells[6,0]+' '
                   + STGR_Base08Fixos.Cells[7,0]+' '+STGR_Base08Fixos.Cells[8,0]
                   + ''' ;';
               DM1.IBQ_Combinacoes.SQL.Add(vsQuery);
               DM1.IBQ_Combinacoes.ExecSQL;               
           except
            //
           end;
           try
               DM1.IBQ_Combinacoes.SQL.Clear;
               vsQuery := 'UPDATE GERADOR_RESULT_08_Fixos01_DEF SET FIXOS_01= ''' + ED_Fixos01.Text  + #39 +
                    ', FIXOS_02= ''' + ED_Fixos02.Text   + #39 +
                    ', FIXOS_03= ''' + ED_Fixos03.Text
                    + ''' ;';
               DM1.IBQ_Combinacoes.SQL.Add(vsQuery);
               DM1.IBQ_Combinacoes.ExecSQL;
           except
                ShowMessage('Gravação dos fixos não sorteados, tem de conferir!');
           end; //

       DM1.IBQ_Combinacoes.SQL.Clear;
       DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
       DM1.IBQ_Combinacoes.ExecSQL;

    LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
    PA_RemoveuRepetidos.Left := 1105;
end;




procedure T_F_Gerador_08_NumerosFixos1.BTN_ReajustarClick(Sender: TObject);
begin
     SCBX_Gabarito.Visible := TRUE;
     SCBX_Gabarito.Enabled := TRUE;
     PA_Resultado.Visible := TRUE;
     PA_Resultado.Enabled := TRUE;
     BBT_PrepararMenu.Enabled := TRUE;
     BBT_GerarMenu.Enabled := false;
     BBT_CancelarSair.Visible := false;
     PA_Inicial.Enabled := false;
     PA_Inicial.Left := 2198;
     SCBX_Gabarito.Top:=247;
     SCBX_Gabarito.Repaint;
end;



procedure T_F_Gerador_08_NumerosFixos1.BBT_CARREGARClick(Sender: TObject);
begin
    BBT_CancelarSair.Visible := TRUE;
//       SELF.PR_LIMPAR_GRID10();
     SCBX_Gabarito.Visible := TRUE;
     SCBX_Gabarito.Enabled := TRUE;
     PA_Resultado.Visible := TRUE;
     PA_Resultado.Enabled := TRUE;
     PA_ExecutarFiltro.Enabled := TRUE;

     BBT_PrepararMenu.Enabled := false;
     BBT_GerarMenu.Enabled := false;
     PA_Inicial.Enabled := false;
     PA_Inicial.Left := 2198;
     LA_Gerar_Comb.Visible := false;
            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_08_Fixos01_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            DM1.IBQ_Combinacoes.ExecSQL;
            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
            DM1.IBQ_Combinacoes.ExecSQL;
end;



procedure T_F_Gerador_08_NumerosFixos1.BBT_VoltarClick(Sender: TObject);
begin
     PA_Gerar.Enabled := false;
     PA_Gerar.Left := 4500;    ;
     PA_Gerar.Repaint;
end;



procedure T_F_Gerador_08_NumerosFixos1.BBT_BlocoNotasClick(Sender: TObject);
var
    viContar : INTEGER;
    vsCombinacoes2 : string;
begin
    GerarBlocoNotas1('GERADOR_RESULT_08_FINAL','GERADOR 08 Numeros Fixos 6i9p','.6Ímpares e 9Pares.','.6i/9p');
    sleep(1000);
    SHOWMESSAGE('1 de 4 - BLOCO DE NOTAS GERADO');
        GerarBlocoNotas1('GERADOR_RESULT_08_FINAL','GERADOR 08 Numeros Fixos 7i8p', '.7Ímpares e 8Pares .','.8i/7p');
    sleep(1000);
    SHOWMESSAGE('2 de 4 - BLOCO DE NOTAS GERADO');
        GerarBlocoNotas1('GERADOR_RESULT_08_FINAL','GERADOR 08 Numeros Fixos 8i7p',' - 8Ímpares e 7Pares .','.7i/8p') ;
    sleep(1000);
    SHOWMESSAGE('3 de 4 - BLOCO DE NOTAS GERADO');
        GerarBlocoNotas1('GERADOR_RESULT_08_FINAL','GERADOR 08 Numeros Fixos 9i6p',' - 9Ímpares e 6Pares .','.9i/6p') ;
    sleep(1000);
    SHOWMESSAGE('4 de 4 - BLOCO DE NOTAS GERADO');
end;


procedure T_F_Gerador_08_NumerosFixos1.GerarBlocoNotas1(vcNomeTabela, vcTitulo, vcSubTitulo, vcTipo: string);
var
    viContar, vsQuantidadePares : INTEGER;
    vsCombinacoes2 : string;
begin
    MEM_Combinacoes_Todas.Clear;
    DM1.IBQ_Combinacoes.Close;
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('SELECT COUNT(distinct(DADOS)) AS SOMADADOS FROM ' +vcNomeTabela+ ' where tipo=''' +vcTipo+ ''' ;')  ;
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;
    viContar := DM1.IBQ_Combinacoes.FIELDBYNAME('SOMADADOS').AsInteger;
     MEM_Combinacoes_Todas.Lines.Add(vcTitulo) ;
     MEM_Combinacoes_Todas.Lines.Add(vcSubTitulo) ;
    MEM_Combinacoes_Todas.Lines.Add('TOTAL: ' + INTtoSTR(viContar)) ;
    MEM_Combinacoes_Todas.Lines.Add('----------------------------') ;
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('select DISTINCT (dados), dados_ns FROM ' +vcNomeTabela+ '  where tipo=''' +vcTipo+ ''' ORDER BY DADOS;')  ;
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;
    DM1.IBQ_Combinacoes.First;
    WHILE (NOT(DM1.IBQ_Combinacoes.Eof)) DO
    BEGIN
       vsCombinacoes2 := '';
        vsCombinacoes2 := trim(DM1.IBQ_Combinacoes.FIELDBYNAME('DADOS').AsString);
            MEM_Combinacoes_Todas.Lines.Add(vsCombinacoes2) ;
       DM1.IBQ_Combinacoes.Next;
    END; // FOR viContar
    MEM_Combinacoes_Todas.Repaint;
    //MEM_Combinacoes_Todas.SelectAll;
    //MEM_Combinacoes_Todas.CopyToClipboard;
    //MEM_Combinacoes_Todas.Repaint;
    MEM_Combinacoes_Todas.Lines.SaveToFile('C:\CXLOTOFACIL\'+vcTitulo+'.TXT');
    winExec(PAnsiChar('Notepad.exe C:\CXLOTOFACIL\'+vcTitulo+'.TXT'), sw_shownormal);
end;

procedure T_F_Gerador_08_NumerosFixos1.btn_CarregarClick(Sender: TObject);
begin
     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_08_Fixos01_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
     DM1.IBQ_Combinacoes.ExecSQL;
     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
     DM1.IBQ_Combinacoes.ExecSQL;
     SHOWMESSAGE('OK');
     SELF.Close;
end;







procedure T_F_Gerador_08_NumerosFixos1.BBT_OKClick(Sender: TObject);
begin
    PGBR_Etapa_01.Position :=0 ;
    BBT_Etapa01.Click;
end;






procedure T_F_Gerador_08_NumerosFixos1.BBT_RemoveuRepetidosClick(
  Sender: TObject);
begin
     PA_RemoveuRepetidos.Left := 5000;
     BBT_PrepararMenu.Enabled := false;
     BBT_GerarMenu.Enabled := false;
     PA_Inicial.Enabled := TRUE;
     BTN_NovaSimulacao.Enabled := false;
     BTN_Reajustar.Enabled := TRUE;
//     BBT_CARREGAR.Enabled := false;
     PA_Inicial.Left := 1215;
     PA_Inicial.Top := 29;
end;





procedure T_F_Gerador_08_NumerosFixos1.BBT_RecomecarClick(Sender: TObject);
VAR
    viContar : INTEGER;
begin
    BBT_701.Enabled := TRUE;
    BBT_702.Enabled := TRUE;
    BBT_703.Enabled := TRUE;
    BBT_704.Enabled := TRUE;
    BBT_705.Enabled := TRUE;
    BBT_706.Enabled := TRUE;
    BBT_707.Enabled := TRUE;
    BBT_708.Enabled := TRUE;
    BBT_709.Enabled := TRUE;
    BBT_710.Enabled := TRUE;
    BBT_711.Enabled := TRUE;
    BBT_712.Enabled := TRUE;
    BBT_713.Enabled := TRUE;
    BBT_714.Enabled := TRUE;
    BBT_715.Enabled := TRUE;
    BBT_716.Enabled := TRUE;
    BBT_717.Enabled := TRUE;
    BBT_718.Enabled := TRUE;
    BBT_719.Enabled := TRUE;
    BBT_720.Enabled := TRUE;
    BBT_721.Enabled := TRUE;
    BBT_722.Enabled := TRUE;
    BBT_723.Enabled := TRUE;
    BBT_724.Enabled := TRUE;
    BBT_725.Enabled := TRUE;
    FOR viContar := 1 TO 8 DO
    BEGIN
        STGR_Base08Fixos.Cells [viContar,0] := '0';
    END;
    FOR viContar := 1 TO 17 DO
    BEGIN
        STGR_Base17Fixos.Cells [viContar,0] := '0';
    END;
end;

PROCEDURE T_F_Gerador_08_NumerosFixos1.BotoesBase25False ();
begin
    BBT_701.Enabled := False ;
    BBT_702.Enabled := False ;
    BBT_703.Enabled := False ;
    BBT_704.Enabled := False ;
    BBT_705.Enabled := False ;
    BBT_706.Enabled := False ;
    BBT_707.Enabled := False ;
    BBT_708.Enabled := False ;
    BBT_709.Enabled := False ;
    BBT_710.Enabled := False ;
    BBT_711.Enabled := False ;
    BBT_712.Enabled := False ;
    BBT_713.Enabled := False ;
    BBT_714.Enabled := False ;
    BBT_715.Enabled := False ;
    BBT_716.Enabled := False ;
    BBT_717.Enabled := False ;
    BBT_718.Enabled := False ;
    BBT_719.Enabled := False ;
    BBT_720.Enabled := False ;
    BBT_721.Enabled := False ;
    BBT_722.Enabled := False ;
    BBT_723.Enabled := False ;
    BBT_724.Enabled := False ;
    BBT_725.Enabled := False ;
end;


PROCEDURE T_F_Gerador_08_NumerosFixos1.BotoesBase25Add (viNumero: INTEGER);
VAR
    viContar, viContar2, viContar3, viContar4, viContar5 : INTEGER;
BEGIN
    FOR viContar := 1 TO 8 DO
    BEGIN
        IF (STRtoINT (STGR_Base08Fixos.Cells [viContar,0]) = 0) THEN
        BEGIN
            STGR_Base08Fixos.Cells [viContar,0] := RIGHTSTR ('0'+INTtoSTR(viNumero),2);
            if viContar = 8 then
                BotoesBase25False();
            EXIT;
        END;
    END; // viContar
END;



procedure T_F_Gerador_08_NumerosFixos1.BBT_701Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(01);
    BBT_701.Enabled := FALSE;
end;


procedure T_F_Gerador_08_NumerosFixos1.BBT_702Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(02);
    BBT_702.Enabled := FALSE;
end;

procedure T_F_Gerador_08_NumerosFixos1.BBT_703Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(03);
    BBT_703.Enabled := FALSE;
end;

procedure T_F_Gerador_08_NumerosFixos1.BBT_704Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(04);
    BBT_704.Enabled := FALSE;
end;

procedure T_F_Gerador_08_NumerosFixos1.BBT_705Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(05);
    BBT_705.Enabled := FALSE;
end;

procedure T_F_Gerador_08_NumerosFixos1.BBT_706Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(06);
    BBT_706.Enabled := FALSE;
end;


procedure T_F_Gerador_08_NumerosFixos1.BBT_707Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(07);
    BBT_707.Enabled := FALSE;
end;

procedure T_F_Gerador_08_NumerosFixos1.BBT_708Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(08);
    BBT_708.Enabled := FALSE;
end;

procedure T_F_Gerador_08_NumerosFixos1.BBT_709Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(09);
    BBT_709.Enabled := FALSE;
end;

procedure T_F_Gerador_08_NumerosFixos1.BBT_710Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(10);
    BBT_710.Enabled := FALSE;
end;

procedure T_F_Gerador_08_NumerosFixos1.BBT_711Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(11);
    BBT_711.Enabled := FALSE;
end;

procedure T_F_Gerador_08_NumerosFixos1.BBT_712Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(12);
    BBT_712.Enabled := FALSE;
end;


procedure T_F_Gerador_08_NumerosFixos1.BBT_713Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(13);
    BBT_713.Enabled := FALSE;
end;

procedure T_F_Gerador_08_NumerosFixos1.BBT_714Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(14);
    BBT_714.Enabled := FALSE;
end;

procedure T_F_Gerador_08_NumerosFixos1.BBT_715Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(15);
    BBT_715.Enabled := FALSE;
end;

procedure T_F_Gerador_08_NumerosFixos1.BBT_716Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(16);
    BBT_716.Enabled := FALSE;
end;

procedure T_F_Gerador_08_NumerosFixos1.BBT_717Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(17);
    BBT_717.Enabled := FALSE;
end;

procedure T_F_Gerador_08_NumerosFixos1.BBT_718Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(18);
    BBT_718.Enabled := FALSE;
end;

procedure T_F_Gerador_08_NumerosFixos1.BBT_719Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(19);
    BBT_719.Enabled := FALSE;
end;


procedure T_F_Gerador_08_NumerosFixos1.BBT_720Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(20);
    BBT_720.Enabled := FALSE;
end;

procedure T_F_Gerador_08_NumerosFixos1.BBT_721Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(21);
    BBT_721.Enabled := FALSE;
end;

procedure T_F_Gerador_08_NumerosFixos1.BBT_722Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(22);
    BBT_722.Enabled := FALSE;
end;

procedure T_F_Gerador_08_NumerosFixos1.BBT_723Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(23);
    BBT_723.Enabled := FALSE;
end;

procedure T_F_Gerador_08_NumerosFixos1.BBT_724Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(24);
    BBT_724.Enabled := FALSE;
end;

procedure T_F_Gerador_08_NumerosFixos1.BBT_725Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(25);
    BBT_725.Enabled := FALSE;
end;


procedure T_F_Gerador_08_NumerosFixos1.BBT_MontarBloco17Click(
  Sender: TObject);
VAR
    viContarCelulas, viContar, viContarCel08 : INTEGER;
begin
    FOR viContarCelulas := 1 TO 25 DO
    BEGIN
       STGR_Todos_Numeros.Cells [viContarCelulas ,1]:='F';
    end;
    FOR viContar :=1 TO 08 DO
    BEGIN
        STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Base08Fixos.Cells[viContar,0])) ,1]:='V';
    END; // FOR viContar
    // -------------------------------
    // --  MONTANDO AS 06 SOBRAS   ---
    // -------------------------------
    viContarCelulas := 1;
    viContarCel08 := 1  ;
    FOR viContar :=1 TO 25 DO
    BEGIN
        // SOBRAS
        IF (STGR_Todos_Numeros.Cells[viContar,1]='F') THEN
        BEGIN
            STGR_Base17Fixos.Cells[viContarCelulas,0] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[viContar,0]),2) ;
            viContarCelulas := viContarCelulas + 1;
        End Else
        begin
            STGR_Base08Fixos.Cells[viContarCel08,0] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[viContar,0]),2) ;
            viContarCel08 := viContarCel08 + 1;
        END; // IF (STGR_Todos_Numeros
    END; // FOR viContar
end;

procedure T_F_Gerador_08_NumerosFixos1.ED_Fixos01Click(
  Sender: TObject);
begin
//
end;



procedure T_F_Gerador_08_NumerosFixos1.ED_Fixos02Change(
  Sender: TObject);
begin
    try
        if (strToInt(ED_Fixos02.Text)<1) and (strToInt(ED_Fixos02.Text)>25) then
        begin
            ShowMessage('Entre com um valor entre 1 e 25');
            ED_Fixos02.SetFocus;
        end;
    except
        ShowMessage('Entre com um valor entre 1 e 25');
        ED_Fixos02.SetFocus;
    end;
end;



procedure T_F_Gerador_08_NumerosFixos1.ED_Fixos01Change(
  Sender: TObject);
begin
    try
        if (strToInt(ED_Fixos01.Text)<1) and (strToInt(ED_Fixos01.Text)>25) then
        begin
            ShowMessage('Entre com um valor entre 1 e 25');
            ED_Fixos01.SetFocus;
        end;
    except
        ShowMessage('Entre com um valor entre 1 e 25');
        ED_Fixos01.SetFocus;
    end;
end;



end.
