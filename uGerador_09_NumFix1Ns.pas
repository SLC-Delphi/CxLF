unit uGerador_09_NumFix1Ns;

interface

uses
  Windows, Graphics, ExtCtrls, StdCtrls, ComCtrls, Buttons, Controls, SysUtils, Dialogs, strutils,
  Classes, Forms, Grids;

type
  T_F_Gerador_09_NumFix1Ns = class(TForm)
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
    BBT_Etapa01: TBitBtn;
    BBT_Voltar: TBitBtn;
    PA_Preparar: TPanel;
    Panel1: TPanel;
    Label2: TLabel;
    BBT_Preparar1: TBitBtn;
    BBT_Gerar_Voltar: TBitBtn;
    BBT_CancelarSair: TBitBtn;
    SCBX_Gabarito: TScrollBox;
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
    STGR_Etapa01_07a: TStringGrid;
    Label14: TLabel;
    ED_Fixos03: TEdit;
    STGR_Etapa07_15: TStringGrid;
    STGR_Base: TStringGrid;
    STGR_Base10: TStringGrid;
    Label7: TLabel;
    Label5: TLabel;
    STGR_7Duplas: TStringGrid;
    STGR_Etapa01_07b: TStringGrid;
    STGR_Etapa01_06: TStringGrid;
    Label63: TLabel;
    PA_FixosExcluidos: TPanel;
    Label4: TLabel;
    ED_Fixos01Exc: TEdit;
    ED_Fixos02Exc: TEdit;
    ED_Fixos03Exc: TEdit;
    cb_InicioFimContador: TComboBox;
    Label6: TLabel;
    STGR_4Duplas: TStringGrid;
    Label8: TLabel;
    cb_Formacao_06Numeros1: TComboBox;
    STGR_7Numeros: TStringGrid;
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
    procedure ED_Fixos02Change(Sender: TObject);
    procedure ED_Fixos01Change(Sender: TObject);
    procedure ED_Fixos03Change(Sender: TObject);
    procedure ED_Fixos01ExcChange(Sender: TObject);
    procedure ED_Fixos02ExcChange(Sender: TObject);
    procedure ED_Fixos03ExcChange(Sender: TObject);
  private
    F_MODALIDADE: STRING;
    Fvi_inicial1: INTEGER;
    Fvi_final1: INTEGER;
    { Private declarations }
    procedure GeradosFlag(vsFlag: String);    
    procedure Set_MODALIDADE(const Value: STRING);
    procedure LimparGrid_7Comb15();
    procedure Setvi_final1E(const Value: INTEGER);
    procedure Setvi_inicial1(const Value: INTEGER);
    PROCEDURE PR_ORDENAR_15 (viLinhas9: INTEGER);
    PROCEDURE PR_Gravar_Dados_15 (vcNomeTabela : String);
    procedure AnaliseComb2de7e4de7();
    procedure AnaliseComb4de7e2de7();
    procedure AnaliseComb3de7e3de7();
    procedure Montar07Numeros(viLinhaDeOrigem: Integer);    
    procedure Montar15Numeros(viLinhaDeOrigem: integer);
    procedure ClassificarAnalise();
    Function Conferencia15em15(viLinhasPrimeiro: Integer; viLinhasSegundo: integer): boolean;
    Function Conferencia15em10(viLinhasPrimeiro: Integer; viLinhasSegundo: integer): boolean;    
    procedure GerarBlocoNotas1(vcNomeTabela, vcTitulo, vcSubTitulo, vcTipo: string);
  public
    { Public declarations }
     PROPERTY _MODALIDADE : STRING  read F_MODALIDADE write Set_MODALIDADE;
     PROPERTY vi_inicial1 : INTEGER  read Fvi_inicial1 write Setvi_inicial1;
     PROPERTY vi_final1 : INTEGER  read Fvi_final1 write Setvi_final1E;
  end;

var
  _F_Gerador_09_NumFix1Ns: T_F_Gerador_09_NumFix1Ns;

implementation

uses uDataModule01;

{$R *.dfm}


procedure T_F_Gerador_09_NumFix1Ns.Set_MODALIDADE(const Value: STRING);
begin
  F_MODALIDADE := Value;
end;

procedure T_F_Gerador_09_NumFix1Ns.Setvi_final1E(const Value: INTEGER);
begin
  Fvi_final1 := Value;
end;

procedure T_F_Gerador_09_NumFix1Ns.Setvi_inicial1(const Value: INTEGER);
begin
  Fvi_inicial1 := Value;
end;



procedure T_F_Gerador_09_NumFix1Ns.GeradosFlag(vsFlag: String);
var
    vsQuery: String;
begin
        DM1.IBQ_Combinacoes.SQL.Clear;
        DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
        DM1.IBQ_Combinacoes.ExecSQL;
    DM1.IBQ_Combinacoes.Close;
    try
        DM1.IBQ_Combinacoes.SQL.Clear;
        if vsFlag='SIM' then
            vsQuery := 'UPDATE GERADOR_RESULT_09S1NS_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';'
        else
            vsQuery := 'UPDATE GERADOR_RESULT_09S1NS_DEF SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';' ;
        DM1.IBQ_Combinacoes.SQL.Add(vsQuery) ;
        DM1.IBQ_Combinacoes.ExecSQL;
        DM1.IBQ_Combinacoes.SQL.Clear;
        DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
        DM1.IBQ_Combinacoes.ExecSQL;
    except
        //
    end; // try
end;


procedure T_F_Gerador_09_NumFix1Ns.FormCreate(Sender: TObject);
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

        Self.GeradosFlag('NAO');

    FOR viContarCelulas := 1 TO 25 DO
    BEGIN
       STGR_Todos_Numeros.Cells [viContarCelulas ,0]:=intTOstr(viContarCelulas);
    end;
end;



procedure T_F_Gerador_09_NumFix1Ns.FormActivate(Sender: TObject);
begin
      IF (SELF._MODALIDADE ='GERADOR') then
      begin
          LA_Titulo.Caption             := 'GERADOR 09 Números Fixos 1 Não Sorteado';
       //   CB_Classificacao17.ItemIndex := 0;
       //   CB_Classificacao17.Enabled := True;
      END ELSE
      BEGIN
          LA_Titulo.Caption             := 'SIMULAR a Partir de 09 Números Fixos 1 Não Sorteado';
       //   CB_Classificacao17.Enabled := True;
          BTN_NovaSimulacao.Click;
      end;
      LA_Titulo.Repaint;
end;



procedure T_F_Gerador_09_NumFix1Ns.FormClose(Sender: TObject;
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


procedure T_F_Gerador_09_NumFix1Ns.BBT_CloseClick(Sender: TObject);
begin
     SELF.Close;
end;







procedure T_F_Gerador_09_NumFix1Ns.BTN_NovaSimulacaoClick(Sender: TObject);
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


procedure T_F_Gerador_09_NumFix1Ns.BTN_SairClick(Sender: TObject);
begin
     SELF.Close;
end;



procedure T_F_Gerador_09_NumFix1Ns.BBT_CancelarClick(Sender: TObject);
begin
    Self.GeradosFlag('NAO');
    SELF.Close;
end;




procedure T_F_Gerador_09_NumFix1Ns.LimparGrid_7Comb15();
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
      Color := 14016149    ;
      ColCount := 19          ;
      DefaultColWidth := 27   ;
      DefaultRowHeight := 25  ;
      FixedColor := clAqua ;
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




procedure T_F_Gerador_09_NumFix1Ns.BBT_PrepararMenuClick(Sender: TObject);
begin
     PA_Preparar.Visible := TRUE;
     PA_Preparar.Enabled := TRUE;
     PA_Preparar.Top  := 245;
     PA_Preparar.Left := 460;
     PA_Preparar.Repaint;
end;



procedure T_F_Gerador_09_NumFix1Ns.BBT_Gerar_VoltarClick(Sender: TObject);
begin
    PA_Preparar.Visible := false;
    PA_Preparar.Enabled := false;
    PA_Preparar.Left := 4500;
    PA_Preparar.Repaint;
end;


procedure T_F_Gerador_09_NumFix1Ns.BBT_Preparar1Click(Sender: TObject);
var
    viContar, viContarCelulas, viLinhas : integer;
Begin

    DM1.IBQ_Combinacoes.Close;
    DM1.IBQ_Combinacoes.Open;
    IF NOT(DM1.IBTransaction1.Active) then DM1.IBTransaction1.StartTransaction;
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_09S1NS_DEF')  ;
    DM1.IBQ_Combinacoes.ExecSQL;

    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
    DM1.IBQ_Combinacoes.ExecSQL;


    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('Select Dados From GERADOR_10S1NS_102 order by Dados')  ;
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;
    DM1.IBQ_Combinacoes.First;
    viLinhas :=1;
    while not(DM1.IBQ_Combinacoes.Eof) do
    begin
        STGR_Base.Cells[00,viLinhas] := IntToStr(viLinhas);
        STGR_Base10.Cells[00,viLinhas] := IntToStr(viLinhas);
        STGR_Base.Cells[01,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,1,2);
        STGR_Base.Cells[02,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,4,2);
        STGR_Base.Cells[03,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,7,2);
        STGR_Base.Cells[04,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,10,2);
        STGR_Base.Cells[05,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,13,2);
        STGR_Base.Cells[06,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,16,2);
        STGR_Base.Cells[07,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,19,2);
        STGR_Base.Cells[08,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,22,2);
        STGR_Base.Cells[09,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,25,2);
        STGR_Base.Cells[10,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,28,2);
        STGR_Base.Cells[11,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,31,2);
        STGR_Base.Cells[12,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,34,2);
        STGR_Base.Cells[13,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,37,2);
        STGR_Base.Cells[14,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,40,2);
        STGR_Base.Cells[15,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,43,2);
        FOR viContarCelulas := 1 TO 25 DO
        BEGIN
            STGR_Todos_Numeros.Cells [viContarCelulas ,1]:='F';
        end;
        FOR viContarCelulas := 1 TO 15 DO
        BEGIN
            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Base.Cells[viContarCelulas,viLinhas])) ,1]:='V';
        end;
        // -------------------------------
        // --  MONTANDO AS 10 SOBRAS   ---
        // -------------------------------
        viContarCelulas := 1;
        FOR viContar :=1 TO 25 DO
        BEGIN
            // SOBRAS
            IF (STGR_Todos_Numeros.Cells[viContar,1]='F') then
            BEGIN
                STGR_Base10.Cells[viContarCelulas,viLinhas] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[viContar,0]),2) ;
                viContarCelulas := viContarCelulas + 1;
            END; // IF (STGR_Todos_Numeros
        END; // FOR viContar
        viLinhas := viLinhas + 1;
        DM1.IBQ_Combinacoes.Next;
    end;
    STGR_Base10.RowCount := viLinhas;
    STGR_Base.RowCount := viLinhas;
    SELF.Repaint;

    PA_Preparar.Visible := false;
    PA_Preparar.Enabled := false;
    PA_Preparar.Left := 4500;
    PA_Preparar.Repaint;

    BBT_PrepararMenu.Enabled := TRUE;
    BBT_GerarMenu.Enabled := TRUE;
    BBT_GerarMenu.Enabled := TRUE;
    SHOWMESSAGE('OK');
end;




procedure T_F_Gerador_09_NumFix1Ns.BBT_GerarMenuClick(Sender: TObject);
begin
     PA_Gerar.Visible := TRUE;
     PA_Gerar.Enabled := TRUE;
     PA_Gerar.Top  := 225;
     PA_Gerar.Left := 150;;//660;
     PA_Gerar.Repaint;
    LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;     
end;



procedure T_F_Gerador_09_NumFix1Ns.AnaliseComb2de7e4de7();
var
    viComb02de7_01, viComb02de7_02 : integer;
    viComb04de7_01, viComb04de7_02, viComb04de7_03, viComb04de7_04 : integer;
    viLinhas : integer;
begin
    viLinhas := 1;
    for viComb02de7_01 := 1 to 6 do
    begin
        for viComb02de7_02 := viComb02de7_01+1 to 7 do
        begin
            for viComb04de7_01 := 1 to 5 do
            begin
                for viComb04de7_02 := viComb04de7_01+1 to 6 do
                begin
                    for viComb04de7_03 := viComb04de7_02+1 to 7 do
                    begin
                        for viComb04de7_04 := viComb04de7_03+1 to 7 do
                        begin
                            STGR_Etapa01_06.Cells[0,viLinhas] := IntToStr(viLinhas);
                            STGR_Etapa01_06.Cells[2,viLinhas] := STGR_Etapa01_07a.Cells[viComb02de7_01,1];
                            STGR_Etapa01_06.Cells[3,viLinhas] := STGR_Etapa01_07a.Cells[viComb02de7_02,1];
                            STGR_Etapa01_06.Cells[4,viLinhas] := STGR_Etapa01_07b.Cells[viComb04de7_01,1];
                            STGR_Etapa01_06.Cells[5,viLinhas] := STGR_Etapa01_07b.Cells[viComb04de7_02,1];
                            STGR_Etapa01_06.Cells[6,viLinhas] := STGR_Etapa01_07b.Cells[viComb04de7_03,1];
                            STGR_Etapa01_06.Cells[7,viLinhas] := STGR_Etapa01_07b.Cells[viComb04de7_04,1];                            
                            viLinhas := viLinhas + 1;
                        end; // viComb04de7_04
                    end; // viComb04de7_03
                end; // viComb04de7_02
            end; // viComb04de7_01
        end; // viComb02de7_02
    end; // viComb02de7_01
    STGR_Etapa01_06.RowCount := viLinhas;
    Self.Repaint;
end;



procedure T_F_Gerador_09_NumFix1Ns.AnaliseComb4de7e2de7();
var
    viComb02de7_01, viComb02de7_02 : integer;
    viComb04de7_01, viComb04de7_02, viComb04de7_03, viComb04de7_04 : integer;
    viLinhas : integer;
begin
    viLinhas := STGR_Etapa01_06.RowCount;
    //viLinhas := 1;
    for viComb04de7_01 := 1 to 5 do
    begin
        for viComb04de7_02 := viComb04de7_01+1 to 6 do
        begin
            for viComb04de7_03 := viComb04de7_02+1 to 7 do
            begin
                for viComb04de7_04 := viComb04de7_03+1 to 7 do
                begin
                    for viComb02de7_01 := 1 to 6 do
                    begin
                        for viComb02de7_02 := viComb02de7_01+1 to 7 do
                        begin
                            STGR_Etapa01_06.Cells[0,viLinhas] := IntToStr(viLinhas);
                            STGR_Etapa01_06.Cells[2,viLinhas] := STGR_Etapa01_07a.Cells[viComb04de7_01,1];
                            STGR_Etapa01_06.Cells[3,viLinhas] := STGR_Etapa01_07a.Cells[viComb04de7_02,1];
                            STGR_Etapa01_06.Cells[4,viLinhas] := STGR_Etapa01_07a.Cells[viComb04de7_03,1];
                            STGR_Etapa01_06.Cells[5,viLinhas] := STGR_Etapa01_07a.Cells[viComb04de7_04,1];
                            STGR_Etapa01_06.Cells[6,viLinhas] := STGR_Etapa01_07b.Cells[viComb02de7_01,1];
                            STGR_Etapa01_06.Cells[7,viLinhas] := STGR_Etapa01_07b.Cells[viComb02de7_02,1];
                            viLinhas := viLinhas + 1;
                        end; // viComb02de7_01
                    end; // viComb02de7_02
                end; // viComb04de7_04
            end; // viComb04de7_03
        end; // viComb04de7_02
    end; // viComb04de7_01
    STGR_Etapa01_06.RowCount := viLinhas;
    Self.Repaint;
end;



procedure T_F_Gerador_09_NumFix1Ns.AnaliseComb3de7e3de7();
var
    viComb02de7_01, viComb02de7_02, viComb02de7_03 : integer;
    viComb04de7_01, viComb04de7_02, viComb04de7_03 : integer;
    viLinhas : integer;
begin
    viLinhas := STGR_Etapa01_06.RowCount;
    //viLinhas := 1;
    for viComb04de7_01 := 1 to 5 do
    begin
        for viComb04de7_02 := viComb04de7_01+1 to 6 do
        begin
            for viComb04de7_03 := viComb04de7_02+1 to 7 do
            begin
                for viComb02de7_01 := 1 to 6 do
                begin
                    for viComb02de7_02 := viComb02de7_01+1 to 7 do
                    begin
                        for viComb02de7_03 := viComb02de7_02+1 to 7 do
                        begin
                            STGR_Etapa01_06.Cells[0,viLinhas] := IntToStr(viLinhas);
                            STGR_Etapa01_06.Cells[2,viLinhas] := STGR_Etapa01_07a.Cells[viComb04de7_01,1];
                            STGR_Etapa01_06.Cells[3,viLinhas] := STGR_Etapa01_07a.Cells[viComb04de7_02,1];
                            STGR_Etapa01_06.Cells[4,viLinhas] := STGR_Etapa01_07a.Cells[viComb04de7_03,1];
                            STGR_Etapa01_06.Cells[5,viLinhas] := STGR_Etapa01_07b.Cells[viComb02de7_01,1];
                            STGR_Etapa01_06.Cells[6,viLinhas] := STGR_Etapa01_07b.Cells[viComb02de7_02,1];
                            STGR_Etapa01_06.Cells[7,viLinhas] := STGR_Etapa01_07b.Cells[viComb02de7_03,1];
                            viLinhas := viLinhas + 1;
                        end; // viComb02de7_01
                    end; // viComb02de7_02
                end; // viComb04de7_04
            end; // viComb04de7_03
        end; // viComb04de7_02
    end; // viComb04de7_01
    STGR_Etapa01_06.RowCount := viLinhas;
    Self.Repaint;
end;



procedure T_F_Gerador_09_NumFix1Ns.ClassificarAnalise();
var
    viCombinacoes, viColunas, viQtd, viLinha7d :integer;
begin
    for viCombinacoes := 1 to STGR_Etapa01_06.RowCount-1 do
    begin
        STGR_7Duplas.Cells[1,0] := '0';
        STGR_7Duplas.Cells[2,0] := '0';
        for viLinha7d := 1 to 7 do
        begin
            viQtd := 0;
            for viColunas :=2 to 7 do
            begin
                if StrToInt(STGR_Etapa01_06.Cells[viColunas,viCombinacoes]) = StrToInt(STGR_7Duplas.Cells[2,viLinha7d]) then
                    viQtd:= viQtd +1;
                if StrToInt(STGR_Etapa01_06.Cells[viColunas,viCombinacoes]) = StrToInt(STGR_7Duplas.Cells[3,viLinha7d]) then
                    viQtd:= viQtd +1;
                STGR_7Duplas.Cells[1,viLinha7d] := IntToStr(viQtd);
            end; // viColunas
            if viQtd =1 then STGR_7Duplas.Cells[1,0] := IntToStr(StrToInt(STGR_7Duplas.Cells[1,0])+1) ;
            if viQtd =2 then STGR_7Duplas.Cells[2,0] := IntToStr(StrToInt(STGR_7Duplas.Cells[2,0])+1) ;
        end; // viLinha7d
        if (cb_Formacao_06Numeros1.ItemIndex = 1) then
        begin
            if (StrTOint(STGR_7Duplas.Cells[2,0]) = 2) and (StrTOint(STGR_7Duplas.Cells[1,0])=2) then
                STGR_Etapa01_06.Cells[1,viCombinacoes] := 'True'
            else
                STGR_Etapa01_06.Cells[1,viCombinacoes] := 'False';
        end else
        begin
            if (StrTOint(STGR_7Duplas.Cells[2,0]) = 1) and (StrTOint(STGR_7Duplas.Cells[1,0])=4) then
                STGR_Etapa01_06.Cells[1,viCombinacoes] := 'True'
            else
                STGR_Etapa01_06.Cells[1,viCombinacoes] := 'False';
        end; /// if (cb_
      //  STGR_7Duplas.Repaint;
      // STGR_Etapa01_06.Repaint;
    end; // viCombinacoes
    STGR_7Duplas.Repaint;
    STGR_Etapa01_06.Repaint;
end;



Function T_F_Gerador_09_NumFix1Ns.Conferencia15em15(viLinhasPrimeiro: Integer; viLinhasSegundo: integer): boolean;
var
    viCombinacoes, viContarCelulas, viContar :integer;
begin
    FOR viContarCelulas := 1 TO 25 DO
    BEGIN
       STGR_Todos_Numeros.Cells [viContarCelulas ,1]:='F';
       STGR_Todos_Numeros.Cells [viContarCelulas ,2]:='F';
    end;
    FOR viContarCelulas := 2 TO 16 DO
    BEGIN
       STGR_Todos_Numeros.Cells[ (STRtoINT(STGR_Etapa07_15.Cells[viContarCelulas,viLinhasSegundo])) ,1]:='V';
    END; // FOR viContarCelulas
    FOR viContarCelulas := 1 TO 15 DO
    BEGIN
       STGR_Todos_Numeros.Cells[ (STRtoINT(STGR_Base.Cells[viContarCelulas,viLinhasPrimeiro])) ,2]:='V';
    END; // FOR viContarCelulas
       // -------------------------------
       // --  conferindo   ---
       // -------------------------------
    viContarCelulas := 1;
    FOR viContar :=1 TO 25 DO
    BEGIN
      // SOBRAS
      IF ( (STGR_Todos_Numeros.Cells[viContar,1]='V') and (STGR_Todos_Numeros.Cells[viContar,2]='V') ) THEN
      BEGIN
          viContarCelulas := viContarCelulas + 1;
      END; // IF (STGR_Todos_Numeros
    END; // FOR viContar
    if viContarCelulas>=2 then
    begin
        result:=True;
        exit;
    end;
    result:=False;
end;


Function T_F_Gerador_09_NumFix1Ns.Conferencia15em10(viLinhasPrimeiro: Integer; viLinhasSegundo: integer): boolean;
var
    viCombinacoes, viContarCelulas, viContar :integer;
begin
    FOR viContarCelulas := 1 TO 25 DO
    BEGIN
       STGR_Todos_Numeros.Cells [viContarCelulas ,1]:='F';
       STGR_Todos_Numeros.Cells [viContarCelulas ,2]:='F';
    end;
    FOR viContarCelulas := 2 TO 16 DO
    BEGIN
       STGR_Todos_Numeros.Cells[ (STRtoINT(STGR_Etapa07_15.Cells[viContarCelulas,viLinhasSegundo])) ,1]:='V';
    END; // FOR viContarCelulas
    FOR viContarCelulas := 1 TO 10 DO
    BEGIN
       STGR_Todos_Numeros.Cells[ (STRtoINT(STGR_Base10.Cells[viContarCelulas,viLinhasPrimeiro])) ,2]:='V';
    END; // FOR viContarCelulas
       // -------------------------------
       // --  conferindo   ---
       // -------------------------------
    viContarCelulas := 1;
    FOR viContar :=1 TO 25 DO
    BEGIN
      // SOBRAS
      IF ( (STGR_Todos_Numeros.Cells[viContar,1]='V') and (STGR_Todos_Numeros.Cells[viContar,2]='V') ) THEN
      BEGIN
          viContarCelulas := viContarCelulas + 1;
      END; // IF (STGR_Todos_Numeros
    END; // FOR viContar
    if viContarCelulas>=5 then
    begin
        result:=True;
        exit;
    end;
    result:=False;
end;



procedure T_F_Gerador_09_NumFix1Ns.Montar07Numeros(viLinhaDeOrigem: Integer);
var
    vi_Linhas: integer;
begin
        STGR_4Duplas.Cells[2,1] := STGR_Base10.Cells[01,viLinhaDeOrigem];
        STGR_4Duplas.Cells[3,1] := STGR_Base10.Cells[10,viLinhaDeOrigem];
        STGR_4Duplas.Cells[2,2] := STGR_Base10.Cells[02,viLinhaDeOrigem];
        STGR_4Duplas.Cells[3,2] := STGR_Base10.Cells[09,viLinhaDeOrigem];
        STGR_4Duplas.Cells[2,3] := STGR_Base10.Cells[03,viLinhaDeOrigem];
        STGR_4Duplas.Cells[3,3] := STGR_Base10.Cells[08,viLinhaDeOrigem];
        STGR_4Duplas.Cells[2,4] := STGR_Base10.Cells[04,viLinhaDeOrigem];
        STGR_4Duplas.Cells[3,4] := STGR_Base10.Cells[07,viLinhaDeOrigem];
        vi_Linhas := 1;
            STGR_7Numeros.Cells[01, vi_Linhas] := STGR_Base10.Cells[01,viLinhaDeOrigem];
            STGR_7Numeros.Cells[02, vi_Linhas] := STGR_Base10.Cells[02,viLinhaDeOrigem];
            STGR_7Numeros.Cells[03, vi_Linhas] := STGR_Base10.Cells[03,viLinhaDeOrigem];
            STGR_7Numeros.Cells[04, vi_Linhas] := STGR_Base10.Cells[04,viLinhaDeOrigem];
            STGR_7Numeros.Cells[05, vi_Linhas] := STGR_Base10.Cells[07,viLinhaDeOrigem];
            STGR_7Numeros.Cells[06, vi_Linhas] := STGR_Base10.Cells[08,viLinhaDeOrigem];
            STGR_7Numeros.Cells[07, vi_Linhas] := STGR_Base10.Cells[09,viLinhaDeOrigem];
            vi_Linhas := vi_Linhas + 1;

            STGR_7Numeros.Cells[01, vi_Linhas] := STGR_Base10.Cells[01,viLinhaDeOrigem];
            STGR_7Numeros.Cells[02, vi_Linhas] := STGR_Base10.Cells[02,viLinhaDeOrigem];
            STGR_7Numeros.Cells[03, vi_Linhas] := STGR_Base10.Cells[03,viLinhaDeOrigem];
            STGR_7Numeros.Cells[04, vi_Linhas] := STGR_Base10.Cells[04,viLinhaDeOrigem];
            STGR_7Numeros.Cells[05, vi_Linhas] := STGR_Base10.Cells[07,viLinhaDeOrigem];
            STGR_7Numeros.Cells[06, vi_Linhas] := STGR_Base10.Cells[08,viLinhaDeOrigem];
            STGR_7Numeros.Cells[07, vi_Linhas] := STGR_Base10.Cells[10,viLinhaDeOrigem];
            vi_Linhas := vi_Linhas + 1;

            STGR_7Numeros.Cells[01, vi_Linhas] := STGR_Base10.Cells[01,viLinhaDeOrigem];
            STGR_7Numeros.Cells[02, vi_Linhas] := STGR_Base10.Cells[02,viLinhaDeOrigem];
            STGR_7Numeros.Cells[03, vi_Linhas] := STGR_Base10.Cells[03,viLinhaDeOrigem];
            STGR_7Numeros.Cells[04, vi_Linhas] := STGR_Base10.Cells[04,viLinhaDeOrigem];
            STGR_7Numeros.Cells[05, vi_Linhas] := STGR_Base10.Cells[07,viLinhaDeOrigem];
            STGR_7Numeros.Cells[06, vi_Linhas] := STGR_Base10.Cells[09,viLinhaDeOrigem];
            STGR_7Numeros.Cells[07, vi_Linhas] := STGR_Base10.Cells[10,viLinhaDeOrigem];
            vi_Linhas := vi_Linhas + 1;

            STGR_7Numeros.Cells[01, vi_Linhas] := STGR_Base10.Cells[01,viLinhaDeOrigem];
            STGR_7Numeros.Cells[02, vi_Linhas] := STGR_Base10.Cells[02,viLinhaDeOrigem];
            STGR_7Numeros.Cells[03, vi_Linhas] := STGR_Base10.Cells[03,viLinhaDeOrigem];
            STGR_7Numeros.Cells[04, vi_Linhas] := STGR_Base10.Cells[04,viLinhaDeOrigem];
            STGR_7Numeros.Cells[05, vi_Linhas] := STGR_Base10.Cells[08,viLinhaDeOrigem];
            STGR_7Numeros.Cells[06, vi_Linhas] := STGR_Base10.Cells[09,viLinhaDeOrigem];
            STGR_7Numeros.Cells[07, vi_Linhas] := STGR_Base10.Cells[10,viLinhaDeOrigem];
            vi_Linhas := vi_Linhas + 1;

        STGR_7Numeros.Cells[01, vi_Linhas] := STGR_Base10.Cells[01,viLinhaDeOrigem];
        STGR_7Numeros.Cells[02, vi_Linhas] := STGR_Base10.Cells[02,viLinhaDeOrigem];
        STGR_7Numeros.Cells[03, vi_Linhas] := STGR_Base10.Cells[03,viLinhaDeOrigem];
        STGR_7Numeros.Cells[04, vi_Linhas] := STGR_Base10.Cells[07,viLinhaDeOrigem];
        STGR_7Numeros.Cells[05, vi_Linhas] := STGR_Base10.Cells[08,viLinhaDeOrigem];
        STGR_7Numeros.Cells[06, vi_Linhas] := STGR_Base10.Cells[09,viLinhaDeOrigem];
        STGR_7Numeros.Cells[07, vi_Linhas] := STGR_Base10.Cells[10,viLinhaDeOrigem];
        vi_Linhas := vi_Linhas + 1;

        STGR_7Numeros.Cells[01, vi_Linhas] := STGR_Base10.Cells[01,viLinhaDeOrigem];
        STGR_7Numeros.Cells[02, vi_Linhas] := STGR_Base10.Cells[02,viLinhaDeOrigem];
        STGR_7Numeros.Cells[03, vi_Linhas] := STGR_Base10.Cells[04,viLinhaDeOrigem];
        STGR_7Numeros.Cells[04, vi_Linhas] := STGR_Base10.Cells[07,viLinhaDeOrigem];
        STGR_7Numeros.Cells[05, vi_Linhas] := STGR_Base10.Cells[08,viLinhaDeOrigem];
        STGR_7Numeros.Cells[06, vi_Linhas] := STGR_Base10.Cells[09,viLinhaDeOrigem];
        STGR_7Numeros.Cells[07, vi_Linhas] := STGR_Base10.Cells[10,viLinhaDeOrigem];
        vi_Linhas := vi_Linhas + 1;

        STGR_7Numeros.Cells[01, vi_Linhas] := STGR_Base10.Cells[01,viLinhaDeOrigem];
        STGR_7Numeros.Cells[02, vi_Linhas] := STGR_Base10.Cells[03,viLinhaDeOrigem];
        STGR_7Numeros.Cells[03, vi_Linhas] := STGR_Base10.Cells[04,viLinhaDeOrigem];
        STGR_7Numeros.Cells[04, vi_Linhas] := STGR_Base10.Cells[07,viLinhaDeOrigem];
        STGR_7Numeros.Cells[05, vi_Linhas] := STGR_Base10.Cells[08,viLinhaDeOrigem];
        STGR_7Numeros.Cells[06, vi_Linhas] := STGR_Base10.Cells[09,viLinhaDeOrigem];
        STGR_7Numeros.Cells[07, vi_Linhas] := STGR_Base10.Cells[10,viLinhaDeOrigem];
        vi_Linhas := vi_Linhas + 1;

        STGR_7Numeros.Cells[01, vi_Linhas] := STGR_Base10.Cells[02,viLinhaDeOrigem];
        STGR_7Numeros.Cells[02, vi_Linhas] := STGR_Base10.Cells[03,viLinhaDeOrigem];
        STGR_7Numeros.Cells[03, vi_Linhas] := STGR_Base10.Cells[04,viLinhaDeOrigem];
        STGR_7Numeros.Cells[04, vi_Linhas] := STGR_Base10.Cells[07,viLinhaDeOrigem];
        STGR_7Numeros.Cells[05, vi_Linhas] := STGR_Base10.Cells[08,viLinhaDeOrigem];
        STGR_7Numeros.Cells[06, vi_Linhas] := STGR_Base10.Cells[09,viLinhaDeOrigem];
        STGR_7Numeros.Cells[07, vi_Linhas] := STGR_Base10.Cells[10,viLinhaDeOrigem];
        STGR_7Numeros.RowCount := vi_Linhas+1;
end;


procedure T_F_Gerador_09_NumFix1Ns.Montar15Numeros(viLinhaDeOrigem: Integer);
     FUNCTION NumerosFixosNos15 (viLinhas1 : integer; viPosicao: integer) : BOOLEAN;
     VAR
          vi_ContaSel1, vi_Primeiro, vi_NumeroCelula  : INTEGER;
          vb_Retorno : boolean  ;
     begin
          case viPosicao of
              1: vi_Primeiro := strTOint(ED_Fixos01.Text);
              2: vi_Primeiro := strTOint(ED_Fixos02.Text);
              3: vi_Primeiro := strTOint(ED_Fixos03.Text);
          end; // Case
          IF (vi_Primeiro >=1) and (vi_Primeiro<=25)  THEN
          BEGIN
               vb_Retorno := False;
               FOR vi_ContaSel1 := 2 TO 16 DO
               BEGIN
                    vi_NumeroCelula:=  STRtoINT(STGR_Etapa07_15.Cells[vi_ContaSel1,viLinhas1]);
                    IF (vi_NumeroCelula=vi_Primeiro) THEN
                    begin
                         vb_Retorno := True;
                    end;
               END; // FOR vi_ContaSel1
               Result :=  vb_Retorno;
          END ELSE
          BEGIN
               Result := True;
          END;// IF
     end; // function
     

     FUNCTION NumerosFixosExcDos15 (viLinhas1 : integer; viPosicao: integer) : BOOLEAN;
     VAR
          vi_ContaSel1, vi_Primeiro, vi_NumeroCelula  : INTEGER;
          vb_Retorno : boolean  ;
     begin
          case viPosicao of
              1: vi_Primeiro := strTOint(ED_Fixos01Exc.Text);
              2: vi_Primeiro := strTOint(ED_Fixos02Exc.Text);
              3: vi_Primeiro := strTOint(ED_Fixos03Exc.Text);
          end; // Case
          IF (vi_Primeiro >=1) and (vi_Primeiro<=25)  THEN
          BEGIN
               vb_Retorno := True;
               FOR vi_ContaSel1 := 2 TO 16 DO
               BEGIN
                    vi_NumeroCelula:=  STRtoINT(STGR_Etapa07_15.Cells[vi_ContaSel1,viLinhas1]);
                    IF (vi_NumeroCelula=vi_Primeiro) THEN
                    begin
                         vb_Retorno := False;
                    end;
               END; // FOR vi_ContaSel1
               Result :=  vb_Retorno;
          END ELSE
          BEGIN
               Result := True;
          END;// IF
     end; // function

var
    viCombinacoes, viCombinacoes07: integer;
    viLinhas : integer;
begin
    viLinhas:= STGR_Etapa07_15.RowCount;
    for viCombinacoes := 1 to (STGR_Etapa01_06.RowCount-1) do
    begin
        if (StrToBool(STGR_Etapa01_06.Cells[1,viCombinacoes])) then
        begin
            Montar07Numeros(viLinhaDeOrigem);
            for viCombinacoes07 :=1 to 8 do
            begin
                STGR_Etapa07_15.Cells[00,viLinhas] := IntToStr(viLInhas);
                STGR_Etapa07_15.Cells[01,viLinhas] := '+'+IntToStr(viLinhaDeOrigem);
                STGR_Etapa07_15.Cells[02,viLinhas] := STGR_Etapa01_06.Cells[2,viCombinacoes];
                STGR_Etapa07_15.Cells[03,viLinhas] := STGR_Etapa01_06.Cells[3,viCombinacoes];
                STGR_Etapa07_15.Cells[04,viLinhas] := STGR_Etapa01_06.Cells[4,viCombinacoes];
                STGR_Etapa07_15.Cells[05,viLinhas] := STGR_Etapa01_06.Cells[5,viCombinacoes];
                STGR_Etapa07_15.Cells[06,viLinhas] := STGR_Etapa01_06.Cells[6,viCombinacoes];
                STGR_Etapa07_15.Cells[07,viLinhas] := STGR_Etapa01_06.Cells[7,viCombinacoes];
                STGR_Etapa07_15.Cells[08,viLinhas] := STGR_Base10.Cells[05,viLinhaDeOrigem];
                STGR_Etapa07_15.Cells[09,viLinhas] := STGR_Base10.Cells[06,viLinhaDeOrigem];

                STGR_Etapa07_15.Cells[10,viLinhas] :=  STGR_7Numeros.Cells[01, viCombinacoes07];
                STGR_Etapa07_15.Cells[11,viLinhas] :=  STGR_7Numeros.Cells[02, viCombinacoes07];
                STGR_Etapa07_15.Cells[12,viLinhas] :=  STGR_7Numeros.Cells[03, viCombinacoes07];
                STGR_Etapa07_15.Cells[13,viLinhas] :=  STGR_7Numeros.Cells[04, viCombinacoes07];
                STGR_Etapa07_15.Cells[14,viLinhas] :=  STGR_7Numeros.Cells[05, viCombinacoes07];
                STGR_Etapa07_15.Cells[15,viLinhas] :=  STGR_7Numeros.Cells[06, viCombinacoes07];
                STGR_Etapa07_15.Cells[16,viLinhas] :=  STGR_7Numeros.Cells[07, viCombinacoes07];
                PR_ORDENAR_15(viLinhas);
                                STGR_Etapa07_15.Repaint;
                if NumerosFixosNos15 (viLinhas,1) and NumerosFixosNos15(viLinhas,2) and NumerosFixosNos15(viLinhas,3)then
                    if NumerosFixosExcDos15 (viLinhas,1) and NumerosFixosExcDos15(viLinhas,2) and NumerosFixosExcDos15(viLinhas,3) then
                    begin
                        try
                            if Self.Conferencia15em15(viLinhaDeOrigem, viLinhas ) and Self.Conferencia15em10(viLinhaDeOrigem, viLinhas) then
                              viLinhas := viLinhas + 1;  
                        except
                            showmessage(IntToStr(viLinhas) + ' -- '+ IntTostr(viLinhaDeOrigem));
                        end;
                    end;

            end; // for
        end; /// if
    end; // viCombinacoes
    STGR_Etapa07_15.RowCount := viLinhas;
    TRY
        STGR_Etapa07_15.FixedRows := 1;
    EXCEPT
        //
    END;
end;



PROCEDURE T_F_Gerador_09_NumFix1Ns.PR_ORDENAR_15 (viLinhas9: INTEGER);
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
        STGR_Todos_Numeros.Cells [ (STRtoINT(Trim(STGR_Etapa07_15.Cells[viContar,viLinhas9]))) ,1]:='V';
    END; // FOR viContar1
    viCntCelulas := 2;
    FOR viContar :=1 TO 25 DO
    BEGIN
        IF (STGR_Todos_Numeros.Cells[viContar,1]='V') then
        BEGIN
            STGR_Etapa07_15.Cells [viCntCelulas, viLinhas9] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[viContar,0]),2) ;
            viCntCelulas := viCntCelulas + 1;
        END; // IF (STGR_Todos_Numeros
    END; // FOR viContar
end; // PROCEDURE ORDENAR_SIMULACAO_15



PROCEDURE T_F_Gerador_09_NumFix1Ns.PR_Gravar_Dados_15 (vcNomeTabela : String);
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
         viContarStgGrid := TRUNC((STGR_Etapa07_15.RowCount-1)/1);
    FOR viAnaliseCombinatoria1:= 1 TO viContarStgGrid DO
    BEGIN
        vsCombinacoes15 :='';
        FOR viContarCelulas := 1 TO 25 DO
        BEGIN
            STGR_Todos_Numeros.Cells [viContarCelulas ,1]:='F';
        end;
        FOR viContarCelulas := 2 TO 16 DO
        BEGIN
               vsCombinacoes15 := vsCombinacoes15 + TRIM(STGR_Etapa07_15.Cells[viContarCelulas,viAnaliseCombinatoria1]) +' ';
               STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa07_15.Cells[viContarCelulas,viAnaliseCombinatoria1])) ,1]:='V';
               vsContadorDaTabela :=  STGR_Etapa07_15.Cells[1,viAnaliseCombinatoria1] ;
        END; // FOR viContarCelulas
           // -------------------------------
           // --  MONTANDO AS 10 SOBRAS   ---
           // -------------------------------
              viContarCelulas := 1;
              vsCombinacoes10 := '';
              FOR viContar :=1 TO 25 DO
              BEGIN
                  // SOBRAS
                  IF (STGR_Todos_Numeros.Cells[viContar,1]='F') then
                  BEGIN
                      vsCombinacoes10 := vsCombinacoes10 + RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[viContar,0]),2) +' ' ;
                      viContarCelulas := viContarCelulas + 1;
                  END; // IF (STGR_Todos_Numeros
              END; // FOR viContar
     // vcNomeTabela := ' GERADOR_RESULT_25_FINAL';
       vcQuery  := 'INSERT INTO ' +vcNomeTabela+ ' (DADOS, DADOS_NS, TIPO) VALUES(' ;
       vcQuery  := vcQuery     +#39+  TRIM(vsCombinacoes15)  + #39 +',' ;
       vcQuery  := vcQuery     +#39+  TRIM(vsCombinacoes10)  + #39 +',' ;
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







procedure T_F_Gerador_09_NumFix1Ns.BBT_Etapa01Click(Sender: TObject);
var
     viCombinacoesInicio, viCombinacoesFinal, viCombinacoesContador, viNQtdExe, viContarQtdPares, viContaSel1, viContar  :integer;
     viLinhas : integer;
     vsQuery: String;
begin
    if ((cb_InicioFimContador.ItemIndex) >= 3) or ((cb_InicioFimContador.ItemIndex) =0) then
        viCombinacoesContador := 1
    else
        viCombinacoesContador := 2 ;
    sleep(1000);
    Case (cb_InicioFimContador.ItemIndex) of
        0: viCombinacoesInicio := 1 ;
        1: viCombinacoesInicio := 2 ;
        2: viCombinacoesInicio := 1 ;
        3: viCombinacoesInicio := 1 ;
        4: viCombinacoesInicio := 27 ;
        5: viCombinacoesInicio := 52 ;
        6: viCombinacoesInicio := 77 ;
        7: viCombinacoesInicio := 1 ;
        8: viCombinacoesInicio := 1 ;
        9: viCombinacoesInicio := 1 ;
        10: viCombinacoesInicio := 27 ;
        11: viCombinacoesInicio := 27 ;
        12: viCombinacoesInicio := 52 ;
    End; // Case    
    PA_Gerar.Left := 6000;
    PA_Gerar.Enabled := False ;
    PA_Gerar.Repaint;

     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_09S1NS_102DEF_F')  ;
     DM1.IBQ_Combinacoes.ExecSQL;
     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('insert INTO GERADOR_RESULT_09S1NS_DEF (FLAG_FILTRAR,FLAG_GRAVAR) values (''N'',''N'');')  ;
     DM1.IBQ_Combinacoes.ExecSQL;
     DM1.IBQ_Combinacoes.SQL.Clear;
     Self.GeradosFlag('NAO');
    STGR_Etapa01_06.ColWidths [0] := 50 ;
    STGR_Etapa07_15.ColWidths [0] := 60 ;
    PGBR_Etapa_01.Position := 0 ;
    PGBR_Etapa_01.Repaint;
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
    Case (cb_InicioFimContador.ItemIndex) of
        0: viCombinacoesFinal := 102 ;
        1: viCombinacoesFinal := 102 ;
        2: viCombinacoesFinal := 102 ;
        3: viCombinacoesFinal := 26 ;
        4: viCombinacoesFinal := 51 ;
        5: viCombinacoesFinal := 76 ;
        6: viCombinacoesFinal := 102 ;
        7: viCombinacoesFinal := 51 ;
        8: viCombinacoesFinal := 26 ;
        9: viCombinacoesFinal := 26 ;
        10: viCombinacoesFinal := 76 ;
        11: viCombinacoesFinal := 51 ;
        12: viCombinacoesFinal := 102 ;
    End; // Case
    viNQtdExe :=1;
    if ((cb_InicioFimContador.ItemIndex) = 8) or ((cb_InicioFimContador.ItemIndex)=9) or((cb_InicioFimContador.ItemIndex)=11) then
            viNQtdExe :=2;
    for viContar :=1 to viNQtdExe do
    begin
        if viContar =2 then
        begin
            Case (cb_InicioFimContador.ItemIndex) of
                8: viCombinacoesInicio := 52 ;
                9: viCombinacoesInicio := 77 ;
                11: viCombinacoesInicio := 77 ;
            End; // Case
            Case (cb_InicioFimContador.ItemIndex) of
                8: viCombinacoesFinal := 76 ;
                9: viCombinacoesFinal := 102 ;
                11: viCombinacoesFinal := 102 ;
            End; // Case
        end;
        WHILE viCombinacoesInicio <= viCombinacoesFinal do
        begin
            STGR_Etapa01_07a.Cells[1,1] := STGR_Base.Cells[01,viCombinacoesInicio];
            STGR_Etapa01_07a.Cells[2,1] := STGR_Base.Cells[02,viCombinacoesInicio];
            STGR_Etapa01_07a.Cells[3,1] := STGR_Base.Cells[03,viCombinacoesInicio];
            STGR_Etapa01_07a.Cells[4,1] := STGR_Base.Cells[04,viCombinacoesInicio];
            STGR_Etapa01_07a.Cells[5,1] := STGR_Base.Cells[05,viCombinacoesInicio];
            STGR_Etapa01_07a.Cells[6,1] := STGR_Base.Cells[06,viCombinacoesInicio];
            STGR_Etapa01_07a.Cells[7,1] := STGR_Base.Cells[07,viCombinacoesInicio];
            STGR_Etapa01_07b.Cells[1,1] := STGR_Base.Cells[09,viCombinacoesInicio];
            STGR_Etapa01_07b.Cells[2,1] := STGR_Base.Cells[10,viCombinacoesInicio];
            STGR_Etapa01_07b.Cells[3,1] := STGR_Base.Cells[11,viCombinacoesInicio];
            STGR_Etapa01_07b.Cells[4,1] := STGR_Base.Cells[12,viCombinacoesInicio];
            STGR_Etapa01_07b.Cells[5,1] := STGR_Base.Cells[13,viCombinacoesInicio];
            STGR_Etapa01_07b.Cells[6,1] := STGR_Base.Cells[14,viCombinacoesInicio];
            STGR_Etapa01_07b.Cells[7,1] := STGR_Base.Cells[15,viCombinacoesInicio];
            STGR_7Duplas.Cells[2,1] := STGR_Base.Cells[01,viCombinacoesInicio];
            STGR_7Duplas.Cells[3,1] := STGR_Base.Cells[15,viCombinacoesInicio];
            STGR_7Duplas.Cells[2,2] := STGR_Base.Cells[02,viCombinacoesInicio];
            STGR_7Duplas.Cells[3,2] := STGR_Base.Cells[14,viCombinacoesInicio];
            STGR_7Duplas.Cells[2,3] := STGR_Base.Cells[03,viCombinacoesInicio];
            STGR_7Duplas.Cells[3,3] := STGR_Base.Cells[13,viCombinacoesInicio];
            STGR_7Duplas.Cells[2,4] := STGR_Base.Cells[04,viCombinacoesInicio];
            STGR_7Duplas.Cells[3,4] := STGR_Base.Cells[12,viCombinacoesInicio];
            STGR_7Duplas.Cells[2,5] := STGR_Base.Cells[05,viCombinacoesInicio];
            STGR_7Duplas.Cells[3,5] := STGR_Base.Cells[11,viCombinacoesInicio];
            STGR_7Duplas.Cells[2,6] := STGR_Base.Cells[06,viCombinacoesInicio];
            STGR_7Duplas.Cells[3,6] := STGR_Base.Cells[10,viCombinacoesInicio];
            STGR_7Duplas.Cells[2,7] := STGR_Base.Cells[07,viCombinacoesInicio];
            STGR_7Duplas.Cells[3,7] := STGR_Base.Cells[09,viCombinacoesInicio];
            Self.AnaliseComb2de7e4de7();
            Self.AnaliseComb4de7e2de7();
            Self.AnaliseComb3de7e3de7();            
            Self.ClassificarAnalise();
            Self.Montar15Numeros(viCombinacoesInicio);
                PGBR_Etapa_01.Position := Trunc(viCombinacoesInicio/((STGR_Base.RowCount -1)/1)*100);
                Self.Repaint;
            sleep(110);
            viCombinacoesInicio := viCombinacoesInicio + viCombinacoesContador;

        end; // while
    end; // For
    SELF.WindowState := wsMinimized;
    SELF.WindowState := wsNormal;
    SELF.Repaint;
    PGBR_Etapa_01.Position := 100;
    PGBR_Etapa_01.Repaint;
    viCombinacoesInicio := 1;
    try
        WHILE viCombinacoesInicio <= (TRUNC((STGR_Etapa07_15.RowCount-1)/1)) do
        BEGIN
            viContarQtdPares := 0 ;
            for  viContaSel1 := 2  to 16  do
            begin
                if (strTOint(STGR_Etapa07_15.Cells[viContaSel1, viCombinacoesInicio]) MOD 2) = 0  then
                    viContarQtdPares := viContarQtdPares +1 ;
            end; // for
            case viContarQtdPares of
              4:  STGR_Etapa07_15.Cells[18, viCombinacoesInicio] := '.11i/4p' ;
              5:  STGR_Etapa07_15.Cells[18, viCombinacoesInicio] := '.10i/5p' ;
              6:  STGR_Etapa07_15.Cells[18, viCombinacoesInicio] := '.9i/6p' ;
              7:  STGR_Etapa07_15.Cells[18, viCombinacoesInicio] := '.8i/7p' ;
              8:  STGR_Etapa07_15.Cells[18, viCombinacoesInicio] := '.7i/8p' ;
              9:  STGR_Etapa07_15.Cells[18, viCombinacoesInicio] := '.6i/9p' ;
              10:  STGR_Etapa07_15.Cells[18, viCombinacoesInicio] := '.5i/10p' ;
              else
                  STGR_Etapa07_15.Cells[18, viCombinacoesInicio] := intTOstr(viContarQtdPares)+ ' pares' ;
            end; //// case
            viCombinacoesInicio := viCombinacoesInicio + 1;
        end; // WHILE viCombinacoesInicio
    except
        showmessage('Erros Pares e ìmpares - Conferir!');
    end;

    try
        PR_Gravar_Dados_15 (' GERADOR_RESULT_09S1NS_102DEF_F ');
    except
        //
    end;
    SELF.WindowState := wsMinimized ;
    SELF.WindowState := wsNormal ;
    SELF.Repaint;


            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add('SELECT count(DISTINCT(DADOS)) as QTD FROM GERADOR_RESULT_09S1NS_102DEF_F;')  ;
            DM1.IBQ_Combinacoes.Prepare;
            DM1.IBQ_Combinacoes.Open;
    LA_rTOTAL_Comb.Caption  := INTtoSTR(STGR_Etapa07_15.RowCount-1);
    LA_rQTD_COMB.Caption  := DM1.IBQ_Combinacoes.fieldBYname('QTD').AsString;
    LA_gFIM_GERAR.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;

    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_09S1NS_DEF SET HORA_TERMINO ='''+FORMATDATETIME('h:n:s',time())+
                ''', MODO= '' Definição:'   +cb_InicioFimContador.Text+ 
                ''', QTD_DADOS= ''' +LA_rTOTAL_Comb.Caption+ ''';')  ;
    DM1.IBQ_Combinacoes.ExecSQL;

    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('SELECT count(distinct(dados)) as quantidade FROM GERADOR_RESULT_09S1NS_102DEF_F  where tipo =''.8i/7p''') ;
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;
            try
               DM1.IBQ_Combinacoes.SQL.Clear;
               vsQuery := 'UPDATE GERADOR_RESULT_09S1NS_DEF SET FIXOS_01= ''' + ED_Fixos01.Text  + #39 +
                    ', FIXOS_02= ''' + ED_Fixos02.Text   + #39 +
                    ', FIXOS_03= ''' + ED_Fixos03.Text   + #39 +
                    ', MOD6N= ''' + cb_Formacao_06Numeros1.Text   + #39 +
                    ', MODO= ''' + cb_InicioFimContador.Text   + #39 +                    
                    ', FIXOS_01Exc= ''' + ED_Fixos01Exc.Text   + #39 +
                    ', FIXOS_02Exc= ''' + ED_Fixos02Exc.Text   + #39 +                    
                    ', FIXOS_03Exc= ''' + ED_Fixos03Exc.Text
                    + ''' ;';
               DM1.IBQ_Combinacoes.SQL.Add(vsQuery);
               DM1.IBQ_Combinacoes.ExecSQL;
           except
                ShowMessage('Conferir!');
           end; //

       DM1.IBQ_Combinacoes.SQL.Clear;
       DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
       DM1.IBQ_Combinacoes.ExecSQL;
       Self.GeradosFlag('SIM');       

    LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
    
    PA_RemoveuRepetidos.Left := 1105;
end;



procedure T_F_Gerador_09_NumFix1Ns.BTN_ReajustarClick(Sender: TObject);
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
     STGR_Etapa07_15.RowCount := 1;
end;



procedure T_F_Gerador_09_NumFix1Ns.BBT_CARREGARClick(Sender: TObject);
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
        Self.GeradosFlag('SIM');
end;



procedure T_F_Gerador_09_NumFix1Ns.BBT_VoltarClick(Sender: TObject);
begin
     PA_Gerar.Enabled := false;
     PA_Gerar.Left := 4500;    ;
     PA_Gerar.Repaint;
end;



procedure T_F_Gerador_09_NumFix1Ns.BBT_BlocoNotasClick(Sender: TObject);
var
    viContar : INTEGER;
    vsCombinacoes2 : string;
begin
    GerarBlocoNotas1('GERADOR_RESULT_09S1NS_102DEF_F','GERADOR 10 Numeros Fixos 1 Nao Sorteado 5i10p','.5Ímpares e 10Pares.','.5i/10p');
    GerarBlocoNotas1('GERADOR_RESULT_09S1NS_102DEF_F','GERADOR 10 Numeros Fixos 1 Nao Sorteado 6i9p','.6Ímpares e 9Pares.','.6i/9p');
        GerarBlocoNotas1('GERADOR_RESULT_09S1NS_102DEF_F','GERADOR 10 Numeros Fixos 1 Nao Sorteado 7i8p', '.7Ímpares e 8Pares .','.8i/7p');
        GerarBlocoNotas1('GERADOR_RESULT_09S1NS_102DEF_F','GERADOR 10 Numeros Fixos 1 Nao Sorteado 8i7p',' - 8Ímpares e 7Pares .','.7i/8p') ;
        GerarBlocoNotas1('GERADOR_RESULT_09S1NS_102DEF_F','GERADOR 10 Numeros Fixos 1 Nao Sorteado 9i6p',' - 9Ímpares e 6Pares .','.9i/6p') ;
        GerarBlocoNotas1('GERADOR_RESULT_09S1NS_102DEF_F','GERADOR 10 Numeros Fixos 1 Nao Sorteado 10i5p',' - 10Ímpares e 5Pares .','.10i/5p') ;
    SHOWMESSAGE('BLOCO DE NOTAS GERADO');
end;


procedure T_F_Gerador_09_NumFix1Ns.GerarBlocoNotas1(vcNomeTabela, vcTitulo, vcSubTitulo, vcTipo: string);
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

procedure T_F_Gerador_09_NumFix1Ns.btn_CarregarClick(Sender: TObject);
begin
      Self.GeradosFlag('SIM');
     SHOWMESSAGE('OK');
     SELF.Close;
end;




procedure T_F_Gerador_09_NumFix1Ns.BBT_OKClick(Sender: TObject);
begin
    PGBR_Etapa_01.Position :=0 ;
    BBT_Etapa01.Click;
end;



procedure T_F_Gerador_09_NumFix1Ns.BBT_RemoveuRepetidosClick(
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



procedure T_F_Gerador_09_NumFix1Ns.ED_Fixos02Change(
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



procedure T_F_Gerador_09_NumFix1Ns.ED_Fixos01Change(
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



procedure T_F_Gerador_09_NumFix1Ns.ED_Fixos03Change(Sender: TObject);
begin
    try
        if (strToInt(ED_Fixos03.Text)<1) and (strToInt(ED_Fixos03.Text)>25) then
        begin
            ShowMessage('Entre com um valor entre 1 e 25');
            ED_Fixos01.SetFocus;
        end;
    except
        ShowMessage('Entre com um valor entre 1 e 25');
        ED_Fixos01.SetFocus;
    end;
end;


procedure T_F_Gerador_09_NumFix1Ns.ED_Fixos01ExcChange(Sender: TObject);
begin
    try
        if (strToInt(ED_Fixos01Exc.Text)<1) and (strToInt(ED_Fixos01Exc.Text)>25) then
        begin
            ShowMessage('Entre com um valor entre 1 e 25');
            ED_Fixos01.SetFocus;
        end;
    except
        ShowMessage('Entre com um valor entre 1 e 25');
        ED_Fixos01.SetFocus;
    end;
end;


procedure T_F_Gerador_09_NumFix1Ns.ED_Fixos02ExcChange(Sender: TObject);
begin
    try
        if (strToInt(ED_Fixos02Exc.Text)<1) and (strToInt(ED_Fixos02Exc.Text)>25) then
        begin
            ShowMessage('Entre com um valor entre 1 e 25');
            ED_Fixos01.SetFocus;
        end;
    except
        ShowMessage('Entre com um valor entre 1 e 25');
        ED_Fixos01.SetFocus;
    end;
end;


procedure T_F_Gerador_09_NumFix1Ns.ED_Fixos03ExcChange(Sender: TObject);
begin
    try
        if (strToInt(ED_Fixos03Exc.Text)<1) and (strToInt(ED_Fixos03Exc.Text)>25) then
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
