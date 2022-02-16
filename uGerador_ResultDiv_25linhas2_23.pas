unit uGerador_ResultDiv_25linhas2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, RzBmpBtn, DB, strutils,
  IBCustomDataSet, IBQuery, IBDatabase, IdBaseComponent, IdComponent, IdIPWatch ;

type
  T_F_Gerador_ResDiv_25Linhas2 = class(TForm)
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
    BBT_Recomecar: TBitBtn;
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
    BBT_Gerar_Sair: TBitBtn;
    PA_Preparar: TPanel;
    Panel1: TPanel;
    Label2: TLabel;
    BBT_Preparar1: TBitBtn;
    BBT_Gerar_Voltar: TBitBtn;
    BBT_CancelarSair: TBitBtn;
    SCBX_Gabarito: TScrollBox;
    Label7: TLabel;
    STGR_Base: TStringGrid;
    PA_Fixos: TPanel;
    Label1: TLabel;
    ED_FIXOS_01_7i8p: TEdit;
    ED_FIXOS_02_7i8p: TEdit;
    Panel6: TPanel;
    Label6: TLabel;
    ED_FIXOS_01_8i7p: TEdit;
    ED_FIXOS_02_8i7p: TEdit;
    BBT_BlocoNotas: TBitBtn;
    SCBX_dados: TScrollBox;
    LA_rTOTAL_100REPET: TLabel;
    Label50: TLabel;
    BTN_BlocoDeNotas1: TButton;
    STGR_Etapa01_09: TStringGrid;
    ED_FIXOS_03_8i7p: TEdit;
    btn_Carregar: TButton;
    STGR_Etapa1_10: TStringGrid;
    Bevel1: TBevel;
    Label3: TLabel;
    BBT_OK: TBitBtn;
    Label13: TLabel;
    STGR_Base10: TStringGrid;
    STGR_Etapa03_15: TStringGrid;
    STGR_Etapa01_19: TStringGrid;
    STGR_Bloco01: TStringGrid;
    STGR_Bloco02: TStringGrid;
    STGR_Etapa01_08: TStringGrid;
    STGR_Etapa1_11: TStringGrid;
    STGR_Etapa1_12: TStringGrid;
    STGR_Etapa01_07: TStringGrid;
    STGR_Etapa1_13: TStringGrid;
    STGR_Etapa01_06: TStringGrid;
    Label4: TLabel;
    pa_b15: TPanel;
    rb_b15_11: TRadioButton;
    rb_b15_10: TRadioButton;
    rb_b15_09: TRadioButton;
    rb_b15_08: TRadioButton;
    rb_b15_07: TRadioButton;
    Label5: TLabel;
    Label14: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    rb_b15_nda: TRadioButton;
    Label15: TLabel;
    pa_b10: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    rb_b10_08: TRadioButton;
    rb_b10_07: TRadioButton;
    rb_b10_06: TRadioButton;
    rb_b10_05: TRadioButton;
    rb_b10_04: TRadioButton;
    rb_b10_nda: TRadioButton;
    pa_b15nda: TPanel;
    trb_b15_L01: TTrackBar;
    trb_b15_L02: TTrackBar;
    trb_b15_L03: TTrackBar;
    trb_b15_L04: TTrackBar;
    trb_b15_L05: TTrackBar;
    trb_b15_L06: TTrackBar;
    trb_b15_L07: TTrackBar;
    trb_b15_L08: TTrackBar;
    trb_b15_L09: TTrackBar;
    trb_b15_L10: TTrackBar;
    la_b15_L01: TLabel;
    la_b15_L02: TLabel;
    la_b15_L03: TLabel;
    la_b15_L04: TLabel;
    la_b15_L05: TLabel;
    la_b15_L06: TLabel;
    la_b15_L07: TLabel;
    la_b15_L08: TLabel;
    la_b15_L09: TLabel;
    la_b15_L10: TLabel;
    pa_b10nda: TPanel;
    la_b10_L01: TLabel;
    la_b10_L02: TLabel;
    la_b10_L03: TLabel;
    la_b10_L04: TLabel;
    la_b10_L05: TLabel;
    la_b10_L06: TLabel;
    la_b10_L07: TLabel;
    la_b10_L08: TLabel;
    la_b10_L09: TLabel;
    la_b10_L10: TLabel;
    STGR_Etapa01_10: TStringGrid;
    STGR_Etapa1_09: TStringGrid;
    STGR_Etapa1_14: TStringGrid;
    STGR_Etapa01_05: TStringGrid;
    STGR_Etapa1_15: TStringGrid;
    STGR_Etapa01_04: TStringGrid;
    LA_Tipo19: TLabel;
    cb_tipo19: TComboBox;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    PGBR_Etapa_01_01: TProgressBar;
    Label29: TLabel;
    STGR_Etapa02_12: TStringGrid;
    Label30: TLabel;
    STGR_Etapa02_06: TStringGrid;
    Label31: TLabel;
    PGBR_Etapa_02: TProgressBar;
    PGBR_Etapa_03: TProgressBar;
    STGR_Etapa02_03: TStringGrid;
    Label32: TLabel;
    IBQ_Combin_02: TIBQuery;
    IBQ_Combinacoes: TIBQuery;
    IBTransaction1: TIBTransaction;
    IBDatabase1: TIBDatabase;
    IBDatabase2: TIBDatabase;
    IBTransaction2: TIBTransaction;
    PGBR_Etapa_04: TProgressBar;
    Label33: TLabel;
    STGR_Base25: TStringGrid;
    BBT_Etapa03: TBitBtn;
    pa_base25definicao: TPanel;
    la_b25_L01: TLabel;
    la_b25_L02: TLabel;
    la_b25_L03: TLabel;
    la_b25_L04: TLabel;
    la_b25_L05: TLabel;
    trb_b25_L01: TTrackBar;
    trb_b25_L02: TTrackBar;
    trb_b25_L03: TTrackBar;
    trb_b25_L04: TTrackBar;
    trb_b25_L05: TTrackBar;
    PA_ProvaParImpar: TPanel;
    LA_ppim1_01: TLabel;
    LA_ppim1_02: TLabel;
    LA_ppim1_03: TLabel;
    LA_ppim1_04: TLabel;
    TRB_ppim1_01: TTrackBar;
    TRB_ppim1_02: TTrackBar;
    TRB_ppim1_03: TTrackBar;
    TRB_ppim1_04: TTrackBar;
    STGR_ppi_A: TStringGrid;
    STGR_ppi_B: TStringGrid;
    STGR_ppi_C: TStringGrid;
    STGR_ppi_D: TStringGrid;
    Label8: TLabel;
    CB_ppim_LinhaAB: TComboBox;
    Label9: TLabel;
    CB_ppim_LinhaCD: TComboBox;
    Label34: TLabel;
    PGBR_Etapa_05: TProgressBar;
    Panel3: TPanel;
    LA_ppim2_01: TLabel;
    LA_ppim2_02: TLabel;
    LA_ppim2_03: TLabel;
    LA_ppim2_04: TLabel;
    TRB_ppim2_01: TTrackBar;
    TRB_ppim2_02: TTrackBar;
    TRB_ppim2_03: TTrackBar;
    TRB_ppim2_04: TTrackBar;
    Panel4: TPanel;
    RB_ParImpMod1: TRadioButton;
    RB_ParImpMod2: TRadioButton;
    RB_ParImpMod3: TRadioButton;
    RB_ParImpMod4: TRadioButton;
    Label39: TLabel;
    RadioButton1: TRadioButton;
    STGR_Etapa06_05: TStringGrid;
    STGR_Provas5_Blocos: TStringGrid;
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
    procedure BBT_Gerar_SairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BBT_BlocoNotasClick(Sender: TObject);
    procedure btn_CarregarClick(Sender: TObject);
    procedure BBT_OKClick(Sender: TObject);
    procedure BBT_RemoveuRepetidosClick(Sender: TObject);
    procedure rb_b15_09Click(Sender: TObject);
    procedure trb_b15_L01Change(Sender: TObject);
    procedure trb_b15_L02Change(Sender: TObject);
    procedure trb_b15_L03Change(Sender: TObject);
    procedure trb_b15_L04Change(Sender: TObject);
    procedure trb_b15_L05Change(Sender: TObject);
    procedure trb_b15_L06Change(Sender: TObject);
    procedure trb_b15_L07Change(Sender: TObject);
    procedure trb_b15_L08Change(Sender: TObject);
    procedure trb_b15_L09Change(Sender: TObject);
    procedure trb_b15_L10Change(Sender: TObject);
    procedure rb_b15_07Click(Sender: TObject);
    procedure rb_b15_08Click(Sender: TObject);
    procedure rb_b15_10Click(Sender: TObject);
    procedure rb_b15_11Click(Sender: TObject);
    procedure rb_b15_ndaClick(Sender: TObject);
    procedure trb_b25_L01Change(Sender: TObject);
    procedure trb_b25_L02Change(Sender: TObject);
    procedure trb_b25_L03Change(Sender: TObject);
    procedure trb_b25_L04Change(Sender: TObject);
    procedure trb_b25_L05Change(Sender: TObject);
    procedure BBT_Etapa03Click(Sender: TObject);
    procedure TRB_ppim1_01Change(Sender: TObject);
    procedure TRB_ppim1_04Change(Sender: TObject);
    procedure TRB_ppim1_03Change(Sender: TObject);
    procedure TRB_ppim1_02Change(Sender: TObject);
    procedure RB_ParImpMod1Click(Sender: TObject);
    procedure RB_ParImpMod2Click(Sender: TObject);
    procedure RB_ParImpMod3Click(Sender: TObject);
    procedure RB_ParImpMod4Click(Sender: TObject);
    procedure TRB_ppim2_01Change(Sender: TObject);
    procedure TRB_ppim2_02Change(Sender: TObject);
    procedure TRB_ppim2_03Change(Sender: TObject);
    procedure TRB_ppim2_04Change(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
  private
    F_MODALIDADE: STRING;
    Fvi_inicial1: INTEGER;
    Fvi_final1: INTEGER;
    { Private declarations }
    procedure Set_MODALIDADE(const Value: STRING);
    procedure LimparGrid_Comb15();
    Procedure LimparGrid19 ();    
    procedure Setvi_final1E(const Value: INTEGER);
    procedure Setvi_inicial1(const Value: INTEGER);
    Procedure Ordenar_Comb19 (VI_LINHAS9: INTEGER);
    Procedure AnaliseComb_09e10();
    Procedure AnaliseComb_10e09();
    Procedure AnaliseComb_11e08();
    Procedure AnaliseComb_12e07();
    Procedure AnaliseComb_13e06();
    Procedure AnaliseComb_14e05();
    Procedure AnaliseComb_15e04();
    Function QtdPares19 (vi_Linhas:integer) : boolean;
    Procedure Gerar19_09e10();       
    Procedure Gerar19_10e09();
    Procedure Gerar19_11e08();
    Procedure Gerar19_12e07();
    Procedure Gerar19_13e06();
    Procedure Gerar19_14e05();
    Procedure Gerar19_15e04();
    FUNCTION FN_VALIDAR_ETAPA_2_parte1(vi_linhas, vi_soma: Integer) : Boolean;
    FUNCTION FN_VALIDAR_ETAPA_2_parte2(vi_linhas, vi_soma: Integer) : Boolean;
    Procedure AnaliseComb_06e03();
    FUNCTION Validar_Blocos1e2 (vi_linhas01: INTEGER):boolean;
    FUNCTION Validar_LinhasFinais (vi_linhas01: INTEGER):boolean;
    FUNCTION Validar_LinhasIniciais (vi_linhas01: INTEGER):boolean;
    FUNCTION Validar_ppi_A (vi_linhas01: INTEGER):boolean;
    FUNCTION Validar_ppi_C (vi_linhas01: INTEGER):boolean;
  public
    { Public declarations }
     PROPERTY _MODALIDADE : STRING  read F_MODALIDADE write Set_MODALIDADE;
     PROPERTY vi_inicial1 : INTEGER  read Fvi_inicial1 write Setvi_inicial1;
     PROPERTY vi_final1 : INTEGER  read Fvi_final1 write Setvi_final1E;
  end;

var
  _F_Gerador_ResDiv_25Linhas2: T_F_Gerador_ResDiv_25Linhas2;
  vas_Base : array [1..16,1..10] of shortint;
  vas_Base10 : array [1..11,1..10] of shortint;

implementation

{$R *.dfm}


procedure T_F_Gerador_ResDiv_25Linhas2.Set_MODALIDADE(const Value: STRING);
begin
  F_MODALIDADE := Value;
end;

procedure T_F_Gerador_ResDiv_25Linhas2.Setvi_final1E(const Value: INTEGER);
begin
  Fvi_final1 := Value;
end;

procedure T_F_Gerador_ResDiv_25Linhas2.Setvi_inicial1(const Value: INTEGER);
begin
  Fvi_inicial1 := Value;
end;



procedure T_F_Gerador_ResDiv_25Linhas2.FormCreate(Sender: TObject);
begin
     SELF.ClientWidth  := 1475;
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
        try
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_25_Linhas2_DEF SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
        except
            //
        end; // try
end;



procedure T_F_Gerador_ResDiv_25Linhas2.FormActivate(Sender: TObject);
begin
      IF (SELF._MODALIDADE ='GERADOR') THEN
      begin
          LA_Titulo.Caption             := 'GERADOR Resultados a partit de 25 Linhas2';
       //   CB_Classificacao17.ItemIndex := 0;
       //   CB_Classificacao17.Enabled := True;
      END ELSE
      BEGIN
          LA_Titulo.Caption             := 'SIMULAR a Partir de 25 Linhas2';
       //   CB_Classificacao17.Enabled := True;
          BTN_NovaSimulacao.Click;
      end;
      LA_Titulo.Repaint;
end;



procedure T_F_Gerador_ResDiv_25Linhas2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     TRY
          BEGIN
          IBQ_Combinacoes.Close;
          IBDatabase1.Close;
          END
     EXCEPT
     //
     END; // TRY
end;


procedure T_F_Gerador_ResDiv_25Linhas2.BBT_CloseClick(Sender: TObject);
begin
     SELF.Close;
end;







procedure T_F_Gerador_ResDiv_25Linhas2.BTN_NovaSimulacaoClick(Sender: TObject);
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


procedure T_F_Gerador_ResDiv_25Linhas2.BTN_SairClick(Sender: TObject);
begin
     SELF.Close;
end;



procedure T_F_Gerador_ResDiv_25Linhas2.BBT_CancelarClick(Sender: TObject);
begin
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_25_Linhas2_DEF SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('COMMIT;')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
          SELF.Close;
end;




procedure T_F_Gerador_ResDiv_25Linhas2.LimparGrid_Comb15();
var
    vi_ContaSel1: integer;
begin
    STGR_Etapa03_15.CleanupInstance;
    //STGR_Comb15_p5.Free;
    freeANDnil(STGR_Etapa03_15);
    sleep (350);
    SCBX_dados.HorzScrollBar.Position := 7900;
    SCBX_dados.Repaint;
    STGR_Etapa03_15 := TstringGrid.Create(Self);
    STGR_Etapa03_15.Parent := SCBX_dados;
    with STGR_Etapa03_15 do
    begin
      Left := 695     ;
      Top := 8       ;
      Width := 615      ;
      Height := 265     ;
      TabStop := False     ;
      Align := alCustom    ;
      Color := 14017159    ;
      ColCount := 18          ;
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
    STGR_Etapa03_15.ColWidths [0]:= 55 ;
    STGR_Etapa03_15.ColWidths [1]:= 40 ;
    STGR_Etapa03_15.RowCount := 1;    
    STGR_Etapa03_15.Repaint;
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.LimparGrid19 ();
begin
    STGR_Etapa01_19.CleanupInstance;
    STGR_Etapa01_19.Free;
    STGR_Etapa01_19 := TStringGrid.Create(Self);
    STGR_Etapa01_19.Parent := SCBX_dados;
    with  STGR_Etapa01_19 do
    begin
        Left := 35       ;
        Top := 19        ;
        Width := 772     ;
        Height := 272    ;
        TabStop := False ;
        Anchors := [akLeft, akTop, akBottom] ;
        Color := 14017159;
        ColCount := 24   ;
        Ctl3D := False   ;
        DefaultColWidth := 27 ;
        DefaultRowHeight := 25  ;
        FixedColor := clMedGray  ;
        FixedCols := 2    ;
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
    STGR_Etapa01_19.ColWidths [0]:= 60 ;
end;


procedure T_F_Gerador_ResDiv_25Linhas2.BBT_PrepararMenuClick(Sender: TObject);
begin
     PA_Preparar.Visible := TRUE;
     PA_Preparar.Enabled := TRUE;
     PA_Preparar.Top  := 245;
     PA_Preparar.Left := 460;
     PA_Preparar.Repaint;
end;



procedure T_F_Gerador_ResDiv_25Linhas2.BBT_Gerar_VoltarClick(Sender: TObject);
begin
     PA_Preparar.Visible := false;
     PA_Preparar.Enabled := false;
     PA_Preparar.Left := 4500;
     PA_Preparar.Repaint;
end;


procedure T_F_Gerador_ResDiv_25Linhas2.BBT_Preparar1Click(Sender: TObject);
VAR
     vi_Contador1, vi_ContarCelulas, vi_Contar, vi_Soma : integer;
begin
    FOR vi_Contador1 := 1 TO 25 DO
    BEGIN
        STGR_Todos_Numeros.Cells[vi_Contador1,0] := INTtoSTR(vi_Contador1);
    END;
    FOR vi_Contador1 := 2 TO 19 DO
    BEGIN
        STGR_Base.Cells[vi_Contador1,0] := INTtoSTR(vi_Contador1-1);
    END;
    FOR vi_Contador1 := 2 TO 11 DO
    BEGIN
        STGR_Base10.Cells[vi_Contador1,0] := INTtoSTR(vi_Contador1-1);
    END;
    // 1
    vi_Contador1 := 1 ;
    STGR_Base.Cells[0,vi_Contador1] := '';
    STGR_Base.Cells[01,vi_Contador1] := '+1';
    STGR_Base.Cells[02,vi_Contador1] := '01';
    STGR_Base.Cells[03,vi_Contador1] := '02';
    STGR_Base.Cells[04,vi_Contador1] := '03';
    STGR_Base.Cells[05,vi_Contador1] := '04';
    STGR_Base.Cells[06,vi_Contador1] := '05';
    STGR_Base.Cells[07,vi_Contador1] := '06';
    STGR_Base.Cells[08,vi_Contador1] := '07';
    STGR_Base.Cells[09,vi_Contador1] := '13';
    STGR_Base.Cells[10,vi_Contador1] := '19';
    STGR_Base.Cells[11,vi_Contador1] := '20';
    STGR_Base.Cells[12,vi_Contador1] := '21';
    STGR_Base.Cells[13,vi_Contador1] := '22';
    STGR_Base.Cells[14,vi_Contador1] := '23';
    STGR_Base.Cells[15,vi_Contador1] := '24';
    STGR_Base.Cells[16,vi_Contador1] := '25';
    // 2
    vi_Contador1 := 02 ;
    STGR_Base.Cells[0,vi_Contador1] := '';
    STGR_Base.Cells[01,vi_Contador1] := '+3';
    STGR_Base.Cells[02,vi_Contador1] := '01';
    STGR_Base.Cells[03,vi_Contador1] := '02';
    STGR_Base.Cells[04,vi_Contador1] := '03';
    STGR_Base.Cells[05,vi_Contador1] := '04';
    STGR_Base.Cells[06,vi_Contador1] := '05';
    STGR_Base.Cells[07,vi_Contador1] := '08';
    STGR_Base.Cells[08,vi_Contador1] := '09';
    STGR_Base.Cells[09,vi_Contador1] := '10';
    STGR_Base.Cells[10,vi_Contador1] := '11';
    STGR_Base.Cells[11,vi_Contador1] := '12';
    STGR_Base.Cells[12,vi_Contador1] := '21';
    STGR_Base.Cells[13,vi_Contador1] := '22';
    STGR_Base.Cells[14,vi_Contador1] := '23';
    STGR_Base.Cells[15,vi_Contador1] := '24';
    STGR_Base.Cells[16,vi_Contador1] := '25';
    STGR_Base.Cells[19,vi_Contador1] := '25';
    // 3
    vi_Contador1 := 03 ;
    STGR_Base.Cells[0,vi_Contador1] := '';
    STGR_Base.Cells[01,vi_Contador1] := '+5';
    STGR_Base.Cells[02,vi_Contador1] := '01';
    STGR_Base.Cells[03,vi_Contador1] := '02';
    STGR_Base.Cells[04,vi_Contador1] := '03';
    STGR_Base.Cells[05,vi_Contador1] := '04';
    STGR_Base.Cells[06,vi_Contador1] := '05';
    STGR_Base.Cells[07,vi_Contador1] := '14';
    STGR_Base.Cells[08,vi_Contador1] := '15';
    STGR_Base.Cells[09,vi_Contador1] := '16';
    STGR_Base.Cells[10,vi_Contador1] := '17';
    STGR_Base.Cells[11,vi_Contador1] := '18';
    STGR_Base.Cells[12,vi_Contador1] := '21';
    STGR_Base.Cells[13,vi_Contador1] := '22';
    STGR_Base.Cells[14,vi_Contador1] := '23';
    STGR_Base.Cells[15,vi_Contador1] := '24';
    STGR_Base.Cells[16,vi_Contador1] := '25';
    // 4
    vi_Contador1 := 04 ;
    STGR_Base.Cells[0,vi_Contador1] := '';
    STGR_Base.Cells[01,vi_Contador1] := '+7';
    STGR_Base.Cells[02,vi_Contador1] := '01';
    STGR_Base.Cells[03,vi_Contador1] := '02';
    STGR_Base.Cells[04,vi_Contador1] := '03';
    STGR_Base.Cells[05,vi_Contador1] := '04';
    STGR_Base.Cells[06,vi_Contador1] := '05';
    STGR_Base.Cells[07,vi_Contador1] := '06';
    STGR_Base.Cells[08,vi_Contador1] := '07';
    STGR_Base.Cells[09,vi_Contador1] := '08';
    STGR_Base.Cells[10,vi_Contador1] := '09';
    STGR_Base.Cells[11,vi_Contador1] := '10';
    STGR_Base.Cells[12,vi_Contador1] := '11';
    STGR_Base.Cells[13,vi_Contador1] := '12';
    STGR_Base.Cells[14,vi_Contador1] := '13';
    STGR_Base.Cells[15,vi_Contador1] := '19';
    STGR_Base.Cells[16,vi_Contador1] := '20';
    // 5
    vi_Contador1 := 05 ;
    STGR_Base.Cells[0,vi_Contador1] := '';
    STGR_Base.Cells[01,vi_Contador1] := '+9';
    STGR_Base.Cells[02,vi_Contador1] := '01';
    STGR_Base.Cells[03,vi_Contador1] := '02';
    STGR_Base.Cells[04,vi_Contador1] := '03';
    STGR_Base.Cells[05,vi_Contador1] := '04';
    STGR_Base.Cells[06,vi_Contador1] := '05';
    STGR_Base.Cells[07,vi_Contador1] := '06';
    STGR_Base.Cells[08,vi_Contador1] := '07';
    STGR_Base.Cells[09,vi_Contador1] := '13';
    STGR_Base.Cells[10,vi_Contador1] := '14';
    STGR_Base.Cells[11,vi_Contador1] := '15';
    STGR_Base.Cells[12,vi_Contador1] := '16';
    STGR_Base.Cells[13,vi_Contador1] := '17';
    STGR_Base.Cells[14,vi_Contador1] := '18';
    STGR_Base.Cells[15,vi_Contador1] := '19';
    STGR_Base.Cells[16,vi_Contador1] := '20';
    // 6
    vi_Contador1 := 06;
    STGR_Base.Cells[0,vi_Contador1] := '';
    STGR_Base.Cells[01,vi_Contador1] := '+11';
    STGR_Base.Cells[02,vi_Contador1] := '01';
    STGR_Base.Cells[03,vi_Contador1] := '02';
    STGR_Base.Cells[04,vi_Contador1] := '03';
    STGR_Base.Cells[05,vi_Contador1] := '04';
    STGR_Base.Cells[06,vi_Contador1] := '05';
    STGR_Base.Cells[07,vi_Contador1] := '08';
    STGR_Base.Cells[08,vi_Contador1] := '09';
    STGR_Base.Cells[09,vi_Contador1] := '10';
    STGR_Base.Cells[10,vi_Contador1] := '11';
    STGR_Base.Cells[11,vi_Contador1] := '12';
    STGR_Base.Cells[12,vi_Contador1] := '14';
    STGR_Base.Cells[13,vi_Contador1] := '15';
    STGR_Base.Cells[14,vi_Contador1] := '16';
    STGR_Base.Cells[15,vi_Contador1] := '17';
    STGR_Base.Cells[16,vi_Contador1] := '18';
    // 7
    vi_Contador1 := 07;
    STGR_Base.Cells[0,vi_Contador1] := '';
    STGR_Base.Cells[01,vi_Contador1] := '+13';
    STGR_Base.Cells[02,vi_Contador1] := '06';
    STGR_Base.Cells[03,vi_Contador1] := '07';
    STGR_Base.Cells[04,vi_Contador1] := '08';
    STGR_Base.Cells[05,vi_Contador1] := '09';
    STGR_Base.Cells[06,vi_Contador1] := '10';
    STGR_Base.Cells[07,vi_Contador1] := '11';
    STGR_Base.Cells[08,vi_Contador1] := '12';
    STGR_Base.Cells[09,vi_Contador1] := '13';
    STGR_Base.Cells[10,vi_Contador1] := '19';
    STGR_Base.Cells[11,vi_Contador1] := '20';
    STGR_Base.Cells[12,vi_Contador1] := '21';
    STGR_Base.Cells[13,vi_Contador1] := '22';
    STGR_Base.Cells[14,vi_Contador1] := '23';
    STGR_Base.Cells[15,vi_Contador1] := '24';
    STGR_Base.Cells[16,vi_Contador1] := '25';
    // 8
    vi_Contador1 := 08;
    STGR_Base.Cells[0,vi_Contador1] := '';
    STGR_Base.Cells[01,vi_Contador1] := '+15';
    STGR_Base.Cells[02,vi_Contador1] := '06';
    STGR_Base.Cells[03,vi_Contador1] := '07';
    STGR_Base.Cells[04,vi_Contador1] := '13';
    STGR_Base.Cells[05,vi_Contador1] := '14';
    STGR_Base.Cells[06,vi_Contador1] := '15';
    STGR_Base.Cells[07,vi_Contador1] := '16';
    STGR_Base.Cells[08,vi_Contador1] := '17';
    STGR_Base.Cells[09,vi_Contador1] := '18';
    STGR_Base.Cells[10,vi_Contador1] := '19';
    STGR_Base.Cells[11,vi_Contador1] := '20';
    STGR_Base.Cells[12,vi_Contador1] := '21';
    STGR_Base.Cells[13,vi_Contador1] := '22';
    STGR_Base.Cells[14,vi_Contador1] := '23';
    STGR_Base.Cells[15,vi_Contador1] := '24';
    STGR_Base.Cells[16,vi_Contador1] := '25';
    // 9
    vi_Contador1 := 09;
    STGR_Base.Cells[0,vi_Contador1] := '';
    STGR_Base.Cells[01,vi_Contador1] := '+17';
    STGR_Base.Cells[02,vi_Contador1] := '08';
    STGR_Base.Cells[03,vi_Contador1] := '09';
    STGR_Base.Cells[04,vi_Contador1] := '10';
    STGR_Base.Cells[05,vi_Contador1] := '11';
    STGR_Base.Cells[06,vi_Contador1] := '12';
    STGR_Base.Cells[07,vi_Contador1] := '14';
    STGR_Base.Cells[08,vi_Contador1] := '15';
    STGR_Base.Cells[09,vi_Contador1] := '16';
    STGR_Base.Cells[10,vi_Contador1] := '17';
    STGR_Base.Cells[11,vi_Contador1] := '18';
    STGR_Base.Cells[12,vi_Contador1] := '21';
    STGR_Base.Cells[13,vi_Contador1] := '22';
    STGR_Base.Cells[14,vi_Contador1] := '23';
    STGR_Base.Cells[15,vi_Contador1] := '24';
    STGR_Base.Cells[16,vi_Contador1] := '25';
    // 10
    vi_Contador1 := 10;
    STGR_Base.Cells[0,vi_Contador1] := '';
    STGR_Base.Cells[01,vi_Contador1] := '+19';
    STGR_Base.Cells[02,vi_Contador1] := '06';
    STGR_Base.Cells[03,vi_Contador1] := '07';
    STGR_Base.Cells[04,vi_Contador1] := '08';
    STGR_Base.Cells[05,vi_Contador1] := '09';
    STGR_Base.Cells[06,vi_Contador1] := '10';
    STGR_Base.Cells[07,vi_Contador1] := '11';
    STGR_Base.Cells[08,vi_Contador1] := '12';
    STGR_Base.Cells[09,vi_Contador1] := '13';
    STGR_Base.Cells[10,vi_Contador1] := '14';
    STGR_Base.Cells[11,vi_Contador1] := '15';
    STGR_Base.Cells[12,vi_Contador1] := '16';
    STGR_Base.Cells[13,vi_Contador1] := '17';
    STGR_Base.Cells[14,vi_Contador1] := '18';
    STGR_Base.Cells[15,vi_Contador1] := '19';
    STGR_Base.Cells[16,vi_Contador1] := '20';
    for vi_Contador1 :=1 to 10 do
    begin
               FOR VI_CONTAR :=1 TO 25 DO
               BEGIN
                    STGR_Todos_Numeros.Cells[VI_CONTAR,1] :='F';
               END; // FOR VI_CONTAR
               // ----> MONTADO E VERIFICANDO TODOS OS 23 D�GITOS
               FOR VI_CONTAR :=2 TO 16 DO
               BEGIN
                    STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Base.Cells[VI_CONTAR,vi_Contador1])) ,1]:='V';
               END; // FOR vi_Contador1
               vi_ContarCelulas := 2;
               FOR VI_CONTAR :=1 TO 25 DO
               BEGIN
                    IF (STGR_Todos_Numeros.Cells[VI_CONTAR,1]='F') THEN
                    BEGIN
                         STGR_Base10.Cells [vi_ContarCelulas, vi_Contador1] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[VI_CONTAR,0]),2) ;
                         vi_ContarCelulas := vi_ContarCelulas + 1;
                    END; // IF (STGR_Todos_Numeros
               END; // FOR VI_CONTAR
               STGR_Base10.Cells [1, vi_Contador1] := INTtoSTR(vi_Contador1*2);
    end; // for vi_Contador1
    //
    // ---> Montando o Array
    //
    for vi_Contador1 := 1 to 10 do begin
        for vi_ContarCelulas := 1 to 16 do
        begin
            vas_Base [vi_ContarCelulas, vi_Contador1] :=  STRtoINT(STGR_Base.Cells[vi_ContarCelulas,vi_Contador1]) ;
        end; // for
        for vi_ContarCelulas := 1 to 10 do
        begin
            vas_Base [vi_ContarCelulas, vi_Contador1] :=  STRtoINT(STGR_Base10.Cells[vi_ContarCelulas,vi_Contador1]) ;
        end; // for
    end; // for
     STGR_Base.RowCount := 11;
     STGR_Base10.RowCount := 11;
     // --> Montando os 5 linhas que faltam
    //21
    STGR_Base25.Cells[0,01] := '21';
    STGR_Base25.Cells[01,01] := '01';
    STGR_Base25.Cells[02,01] := '02';
    STGR_Base25.Cells[03,01] := '03';
    STGR_Base25.Cells[04,01] := '04';
    STGR_Base25.Cells[05,01] := '05';
    //22
    STGR_Base25.Cells[0,02] := '22';
    STGR_Base25.Cells[01,02] := '21';
    STGR_Base25.Cells[02,02] := '22';
    STGR_Base25.Cells[03,02] := '23';
    STGR_Base25.Cells[04,02] := '24';
    STGR_Base25.Cells[05,02] := '25';
    //23
    STGR_Base25.Cells[0,03] := '23';
    STGR_Base25.Cells[01,03] := '06';
    STGR_Base25.Cells[02,03] := '07';
    STGR_Base25.Cells[03,03] := '13';
    STGR_Base25.Cells[04,03] := '19';
    STGR_Base25.Cells[05,03] := '20';
    //24
    STGR_Base25.Cells[0,04] := '24';
    STGR_Base25.Cells[01,04] := '08';
    STGR_Base25.Cells[02,04] := '09';
    STGR_Base25.Cells[03,04] := '10';
    STGR_Base25.Cells[04,04] := '11';
    STGR_Base25.Cells[05,04] := '12';
    //25
    STGR_Base25.Cells[0,05] := '25';
    STGR_Base25.Cells[01,05] := '14';
    STGR_Base25.Cells[02,05] := '15';
    STGR_Base25.Cells[03,05] := '16';
    STGR_Base25.Cells[04,05] := '17';
    STGR_Base25.Cells[05,05] := '18';
    //
    // --- > primeiro bloco
    //01
    STGR_Bloco01.Cells[0,01] := '';
    STGR_Bloco01.Cells[01,01] := '01';
    STGR_Bloco01.Cells[02,01] := '10';
    STGR_Bloco01.Cells[03,01] := '15';
    STGR_Bloco01.Cells[04,01] := '19';
    STGR_Bloco01.Cells[05,01] := '21';
    //02
    STGR_Bloco01.Cells[0,02] := '';
    STGR_Bloco01.Cells[01,02] := '02';
    STGR_Bloco01.Cells[02,02] := '09';
    STGR_Bloco01.Cells[03,02] := '14';
    STGR_Bloco01.Cells[04,02] := '20';
    STGR_Bloco01.Cells[05,02] := '22';
    //03
    STGR_Bloco01.Cells[0,03] := '';
    STGR_Bloco01.Cells[01,03] := '03';
    STGR_Bloco01.Cells[02,03] := '08';
    STGR_Bloco01.Cells[03,03] := '13';
    STGR_Bloco01.Cells[04,03] := '16';
    STGR_Bloco01.Cells[05,03] := '24';
    //04
    STGR_Bloco01.Cells[0,04] := '';
    STGR_Bloco01.Cells[01,04] := '04';
    STGR_Bloco01.Cells[02,04] := '07';
    STGR_Bloco01.Cells[03,04] := '12';
    STGR_Bloco01.Cells[04,04] := '17';
    STGR_Bloco01.Cells[05,04] := '23';
    //05
    STGR_Bloco01.Cells[0,05] := '';
    STGR_Bloco01.Cells[01,05] := '05';
    STGR_Bloco01.Cells[02,05] := '06';
    STGR_Bloco01.Cells[03,05] := '11';
    STGR_Bloco01.Cells[04,05] := '18';
    STGR_Bloco01.Cells[05,05] := '25';
    //
    // --- > segundo bloco
    //01
    STGR_Bloco02.Cells[0,01] := '';
    STGR_Bloco02.Cells[01,01] := '01';
    STGR_Bloco02.Cells[02,01] := '02';
    STGR_Bloco02.Cells[03,01] := '12';
    STGR_Bloco02.Cells[04,01] := '24';
    STGR_Bloco02.Cells[05,01] := '25';
    //02
    STGR_Bloco02.Cells[0,02] := '';
    STGR_Bloco02.Cells[01,02] := '03';
    STGR_Bloco02.Cells[02,02] := '09';
    STGR_Bloco02.Cells[03,02] := '10';
    STGR_Bloco02.Cells[04,02] := '18';
    STGR_Bloco02.Cells[05,02] := '23';
    //03
    STGR_Bloco02.Cells[0,03] := '';
    STGR_Bloco02.Cells[01,03] := '04';
    STGR_Bloco02.Cells[02,03] := '11';
    STGR_Bloco02.Cells[03,03] := '13';
    STGR_Bloco02.Cells[04,03] := '19';
    STGR_Bloco02.Cells[05,03] := '20';
    //04
    STGR_Bloco02.Cells[0,04] := '';
    STGR_Bloco02.Cells[01,04] := '05';
    STGR_Bloco02.Cells[02,04] := '08';
    STGR_Bloco02.Cells[03,04] := '14';
    STGR_Bloco02.Cells[04,04] := '17';
    STGR_Bloco02.Cells[05,04] := '21';
    //05
    STGR_Bloco02.Cells[0,05] := '';
    STGR_Bloco02.Cells[01,05] := '06';
    STGR_Bloco02.Cells[02,05] := '07';
    STGR_Bloco02.Cells[03,05] := '15';
    STGR_Bloco02.Cells[04,05] := '16';
    STGR_Bloco02.Cells[05,05] := '22';


    Rb_ParImpMod2.Checked := True;
    Rb_ParImpMod1.Checked := True;
    STGR_Provas5_Blocos.Cells[0,01] := 'B1';
    STGR_Provas5_Blocos.Cells[01,01] := '01';
    STGR_Provas5_Blocos.Cells[02,01] := '02';
    STGR_Provas5_Blocos.Cells[03,01] := '03';
    STGR_Provas5_Blocos.Cells[04,01] := '04';
    STGR_Provas5_Blocos.Cells[05,01] := '05';
    STGR_Provas5_Blocos.Cells[0,02] := 'B2';
    STGR_Provas5_Blocos.Cells[01,02] := '06';
    STGR_Provas5_Blocos.Cells[02,02] := '07';
    STGR_Provas5_Blocos.Cells[03,02] := '08';
    STGR_Provas5_Blocos.Cells[04,02] := '09';
    STGR_Provas5_Blocos.Cells[05,02] := '10';
    STGR_Provas5_Blocos.Cells[0,03] := 'B3';
    STGR_Provas5_Blocos.Cells[01,03] := '11';
    STGR_Provas5_Blocos.Cells[02,03] := '12';
    STGR_Provas5_Blocos.Cells[03,03] := '13';
    STGR_Provas5_Blocos.Cells[04,03] := '14';
    STGR_Provas5_Blocos.Cells[05,03] := '15';
    STGR_Provas5_Blocos.Cells[0,04] := 'B4';
    STGR_Provas5_Blocos.Cells[01,04] := '16';
    STGR_Provas5_Blocos.Cells[02,04] := '17';
    STGR_Provas5_Blocos.Cells[03,04] := '18';
    STGR_Provas5_Blocos.Cells[04,04] := '19';
    STGR_Provas5_Blocos.Cells[05,04] := '20';
    STGR_Provas5_Blocos.Cells[0,05] := 'B5';
    STGR_Provas5_Blocos.Cells[01,05] := '21';
    STGR_Provas5_Blocos.Cells[02,05] := '22';
    STGR_Provas5_Blocos.Cells[03,05] := '23';
    STGR_Provas5_Blocos.Cells[04,05] := '24';
    STGR_Provas5_Blocos.Cells[05,05] := '25';


     {
     SELF.IBQ_Combinacoes.Close;
     SELF.IBQ_Combinacoes.Open;
     IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_Linhas2_DEF')  ;
     SELF.IBQ_Combinacoes.ExecSQL;

     //SELF.IBQ_Combinacoes.SQL.Clear;
     //SELF.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_Linhas2_final')  ;
     //SELF.IBQ_Combinacoes.ExecSQL;

     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
     SELF.IBQ_Combinacoes.ExecSQL;
     }
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




procedure T_F_Gerador_ResDiv_25Linhas2.BBT_GerarMenuClick(Sender: TObject);
begin
    if not((trb_b25_L01.Position + trb_b25_L02.Position + trb_b25_L03.Position + trb_b25_L04.Position + trb_b25_L05.Position) = 15) then
    begin
        SHOWMESSAGE('O total de quantidades das Linhas 21, 22, 23, 24 e 25' + #13+#13+'tem de ser igual a 15. Favor acertar');
        trb_b25_L01.SetFocus;
        Exit;
    end; /// if
     PA_Gerar.Visible := TRUE;
     PA_Gerar.Enabled := TRUE;
     PA_Gerar.Top  := 225;
     PA_Gerar.Left := 150;;//660;
     PA_Gerar.Repaint;
    LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;     
end;



Function T_F_Gerador_ResDiv_25Linhas2.QtdPares19 (vi_Linhas:integer) : boolean;
var
     vi_Comb19_01, vi_ContaSel1 : integer;
begin
    vi_ContaSel1 := 0;
    for vi_Comb19_01:=2 to 20 do
    begin
        IF (STRtoINT(STGR_Etapa01_19.Cells[vi_Comb19_01,vi_Linhas]) MOD 2)=0 THEN
        BEGIN
             vi_ContaSel1:= vi_ContaSel1 +1;
        END;// IF
    END; // FOR
    if vi_ContaSel1 = 10 then
    begin
        result := True;
        exit;
    end;
    result := False;
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.Ordenar_Comb19 (VI_LINHAS9: INTEGER);
var
    vi_Contar, vi_CntCelulas: INTEGER;
begin
      // ************************
    // **  Ordena os dados   **
     // ************************
    FOR vi_Contar :=1 TO 25 DO
    BEGIN
        STGR_Todos_Numeros.Cells[vi_Contar,1] :='F';
    END; // FOR vi_Contar
    // ----> MONTADO E VERIFICANDO TODOS OS D�GITOS
    FOR vi_Contar :=2 TO 21 DO
    BEGIN
        STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa01_19.Cells[vi_Contar,VI_LINHAS9])) ,1]:='V';
    END; // FOR vi_Contar1
    vi_CntCelulas := 2;
    FOR vi_Contar :=1 TO 25 DO
    BEGIN
        IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') THEN
        BEGIN
            STGR_Etapa01_19.Cells[vi_CntCelulas, VI_LINHAS9] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) ;
            vi_CntCelulas := vi_CntCelulas + 1;
        END; // IF (STGR_Todos_Numeros
    END; // FOR vi_Contar
end; // PROCEDURE PR_Ordenar_Simulacao_15_8i7p


Procedure T_F_Gerador_ResDiv_25Linhas2.AnaliseComb_09e10();
var
     vi_Combinacoes1, vi_Linhas01, vi_Base10Comb : integer;
     vi_Comb15_01, vi_Comb15_02, vi_Comb15_03, vi_Comb15_04, vi_Comb15_05, vi_Comb15_06, vi_Comb15_07, vi_Comb15_08, vi_Comb15_09 : integer;
     vi_Comb10_01, vi_Comb10_02, vi_Comb10_03, vi_Comb10_04, vi_Comb10_05, vi_Comb10_06, vi_Comb10_07, vi_Comb10_08, vi_Comb10_09, vi_Comb10_10 : integer;
begin
    PGBR_Etapa_01.Position :=0 ;
    PGBR_Etapa_01.Repaint;
    LA_Gerar_Comb.Caption := '#:                   ';
    LA_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINA��ES   ||||
    // ||||=============================||||
    // =====================================
    PGBR_Etapa_01.Position := 0;
    PGBR_Etapa_01.Repaint;

    STGR_Etapa01_10.RowCount := vi_Linhas01;
    STGR_Etapa1_09.RowCount := vi_Linhas01;
    STGR_Etapa01_10.Repaint;
    STGR_Etapa1_09.Repaint;
    SCBX_dados.HorzScrollBar.Position := 0;
    SCBX_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    vi_Combinacoes1 := 1;
    vi_Linhas01 := 1  ;
    try
        for vi_Base10Comb := 1 TO (STGR_Base.RowCount-1) DO
        BEGIN
            for vi_Comb15_01 := 2 TO 08 DO
            BEGIN
                for vi_Comb15_02 := vi_Comb15_01 + 1 TO 09 DO
                BEGIN
                    for vi_Comb15_03 := vi_Comb15_02 + 1 TO 10-0 DO  //-6
                    BEGIN
                        for vi_Comb15_04 := vi_Comb15_03 + 1 TO 11-0 DO
                        BEGIN
                            for vi_Comb15_05 := vi_Comb15_04 + 1 TO 12-0 DO
                            BEGIN
                                for vi_Comb15_06 := vi_Comb15_05 + 1 TO 13-0 DO
                                BEGIN
                                    for vi_Comb15_07 := vi_Comb15_06 + 1 TO 14-0 do
                                    BEGIN
                                        for vi_Comb15_08 := vi_Comb15_07 + 1 TO 15-0 DO
                                            BEGIN
                                            for vi_Comb15_09 := vi_Comb15_08 + 1 TO 16-0 DO
                                            BEGIN
                                                STGR_Etapa1_09.Cells[00,vi_Linhas01] := INTtoSTR( vi_Linhas01 ) ;
                                                STGR_Etapa1_09.Cells[01,vi_Linhas01] := '+' + INTtoSTR( vi_Base10Comb ) + '' ;
                                                STGR_Etapa1_09.Cells[02,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_01,vi_Base10Comb] ;
                                                STGR_Etapa1_09.Cells[03,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_02,vi_Base10Comb] ;
                                                STGR_Etapa1_09.Cells[04,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_03,vi_Base10Comb] ;
                                                STGR_Etapa1_09.Cells[05,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_04,vi_Base10Comb] ;
                                                STGR_Etapa1_09.Cells[06,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_05,vi_Base10Comb] ;
                                                STGR_Etapa1_09.Cells[07,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_06,vi_Base10Comb] ;
                                                STGR_Etapa1_09.Cells[08,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_07,vi_Base10Comb] ;
                                                STGR_Etapa1_09.Cells[09,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_08,vi_Base10Comb] ;
                                                STGR_Etapa1_09.Cells[10,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_09,vi_Base10Comb] ;                                                
                                                vi_Linhas01 := vi_Linhas01 + 1;
                                            END; //  for vi_Comb15_09
                                        END; //  for vi_Comb15_08
                                    END; //  for vi_Comb15_07
                                END; //  for vi_Comb15_06
                            END; //  for vi_Comb15_05
                        STGR_Etapa1_09.RowCount := vi_Linhas01;
                        STGR_Etapa1_09.Repaint;
                sleep(1);
                        END; //  for vi_Comb15_04
                    END; //  for vi_Comb15_03
                END; //  for vi_Comb15_02
            END; //  for vi_Comb15_01
        END; //  for vi_Base10Comb            
    vi_Linhas01 := 1  ;
    sleep(55);
        for vi_Base10Comb := 1 TO (STGR_Base10.RowCount-1) DO
        BEGIN
            for vi_Comb10_01 := 2 TO 02 DO
            BEGIN
                for vi_Comb10_02 := vi_Comb10_01 + 1 TO 03 DO
                BEGIN
                    for vi_Comb10_03 := vi_Comb10_02 + 1 TO 04 DO
                    BEGIN
                        for vi_Comb10_04 := vi_Comb10_03 + 1 TO 05 DO
                        BEGIN
                            for vi_Comb10_05 := vi_Comb10_04 + 1 TO 06 DO
                            BEGIN
                                for vi_Comb10_06 := vi_Comb10_05 + 1 TO 07 DO
                                BEGIN
                                    for vi_Comb10_07 := vi_Comb10_06 + 1 TO 08 DO
                                    BEGIN
                                        for vi_Comb10_08 := vi_Comb10_07 + 1 TO 09 DO
                                            BEGIN
                                            for vi_Comb10_09 := vi_Comb10_08 + 1 TO 10 DO
                                            BEGIN
                                                for vi_Comb10_10 := vi_Comb10_09 + 1 TO 11 DO
                                                BEGIN															
                                                    STGR_Etapa01_10.Cells[00,vi_Linhas01] := INTtoSTR( vi_Linhas01 ) ;
                                                    STGR_Etapa01_10.Cells[01,vi_Linhas01] := '+' + INTtoSTR( vi_Base10Comb ) + '' ;
                                                    STGR_Etapa01_10.Cells[02,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_01,vi_Base10Comb] ;
                                                    STGR_Etapa01_10.Cells[03,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_02,vi_Base10Comb] ;
                                                    STGR_Etapa01_10.Cells[04,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_03,vi_Base10Comb] ;
                                                    STGR_Etapa01_10.Cells[05,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_04,vi_Base10Comb] ;
                                                    STGR_Etapa01_10.Cells[06,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_05,vi_Base10Comb] ;
                                                    STGR_Etapa01_10.Cells[07,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_06,vi_Base10Comb] ;
                                                    STGR_Etapa01_10.Cells[08,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_07,vi_Base10Comb] ;
                                                    STGR_Etapa01_10.Cells[09,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_08,vi_Base10Comb] ;
                                                    STGR_Etapa01_10.Cells[10,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_09,vi_Base10Comb] ;
                                                    STGR_Etapa01_10.Cells[11,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_10,vi_Base10Comb] ;
                                                    vi_Linhas01 := vi_Linhas01 + 1;                                                    
                                                END; //  for vi_Comb10_10
                                            END; //  for vi_Comb10_09
                                        END; //  for vi_Comb10_08
                                    END; //  for vi_Comb10_07
                                END; //  for vi_Comb10_06
                            END; //  for vi_Comb10_05
                            STGR_Etapa01_10.RowCount := vi_Linhas01;
                            STGR_Etapa01_10.Repaint;
                sleep(1);
                        END; //  for vi_Comb10_04
                    END; //  for vi_Comb10_03
                END; //  for vi_Comb10_02
            END; //  for vi_Comb10_01
        END; //  for vi_Base10Comb
    sleep(55);        

    finally
        STGR_Etapa01_10.RowCount := vi_Linhas01;
        STGR_Etapa01_10.Repaint;
        STGR_Etapa03_15.RowCount := vi_Linhas01;
        STGR_Etapa03_15.Repaint;
    end;
    STGR_Etapa03_15.RowCount := vi_Linhas01;
    STGR_Etapa03_15.Repaint;
            STGR_Etapa03_15.Repaint;
    PGBR_Etapa_01.Position := 15;
    PGBR_Etapa_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // procedure




Procedure T_F_Gerador_ResDiv_25Linhas2.AnaliseComb_10e09();
var
     vi_Combinacoes1, vi_Linhas01, vi_Base10Comb : integer;
     vi_Comb15_01, vi_Comb15_02, vi_Comb15_03, vi_Comb15_04, vi_Comb15_05, vi_Comb15_06, vi_Comb15_07, vi_Comb15_08, vi_Comb15_09, vi_Comb15_10 : integer;
     vi_Comb10_01, vi_Comb10_02, vi_Comb10_03, vi_Comb10_04, vi_Comb10_05, vi_Comb10_06, vi_Comb10_07, vi_Comb10_08, vi_Comb10_09 : integer;
begin
    PGBR_Etapa_01.Position :=15 ;
    PGBR_Etapa_01.Repaint;
    LA_Gerar_Comb.Caption := '#:                   ';
    LA_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINA��ES   ||||
    // ||||=============================||||
    // =====================================

    STGR_Etapa01_09.RowCount := vi_Linhas01;
    STGR_Etapa1_10.RowCount := vi_Linhas01;
    STGR_Etapa01_09.Repaint;
    STGR_Etapa1_10.Repaint;
    SCBX_dados.HorzScrollBar.Position := 1075;
    SCBX_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    vi_Combinacoes1 := 1;  ;
    vi_Linhas01 := 1  ;
    try
        for vi_Base10Comb := 1 TO (STGR_Base10.RowCount-1) DO
        BEGIN
            for vi_Comb15_01 := 2 TO 07 DO
            BEGIN
                for vi_Comb15_02 := vi_Comb15_01 + 1 TO 08 DO
                BEGIN
                    for vi_Comb15_03 := vi_Comb15_02 + 1 TO 09 DO
                    BEGIN
                        for vi_Comb15_04 := vi_Comb15_03 + 1 TO 10-0 DO  //-5
                        BEGIN
                            for vi_Comb15_05 := vi_Comb15_04 + 1 TO 11-0 DO
                            BEGIN
                                for vi_Comb15_06 := vi_Comb15_05 + 1 TO 12-0 DO
                                BEGIN
                                    for vi_Comb15_07 := vi_Comb15_06 + 1 TO 13-0 DO
                                    BEGIN
                                        for vi_Comb15_08 := vi_Comb15_07 + 1 TO 14-0 DO
                                            BEGIN
                                            for vi_Comb15_09 := vi_Comb15_08 + 1 TO 15-0 DO
                                            BEGIN
                                                for vi_Comb15_10 := vi_Comb15_09 + 1 TO 16-0 DO
                                                BEGIN
                                                    STGR_Etapa1_10.Cells[00,vi_Linhas01] := INTtoSTR( vi_Linhas01 ) ;
                                                    STGR_Etapa1_10.Cells[01,vi_Linhas01] := '+' + INTtoSTR( vi_Base10Comb ) + '' ;
                                                    STGR_Etapa1_10.Cells[02,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_01,vi_Base10Comb] ;
                                                    STGR_Etapa1_10.Cells[03,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_02,vi_Base10Comb] ;
                                                    STGR_Etapa1_10.Cells[04,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_03,vi_Base10Comb] ;
                                                    STGR_Etapa1_10.Cells[05,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_04,vi_Base10Comb] ;
                                                    STGR_Etapa1_10.Cells[06,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_05,vi_Base10Comb] ;
                                                    STGR_Etapa1_10.Cells[07,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_06,vi_Base10Comb] ;
                                                    STGR_Etapa1_10.Cells[08,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_07,vi_Base10Comb] ;
                                                    STGR_Etapa1_10.Cells[09,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_08,vi_Base10Comb] ;
                                                    STGR_Etapa1_10.Cells[10,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_09,vi_Base10Comb] ;
                                                    STGR_Etapa1_10.Cells[11,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_10,vi_Base10Comb] ;                                                    
                                                    vi_Linhas01 := vi_Linhas01 + 1;
                                                END; //  for vi_Comb15_10
                                            END; //  for vi_Comb15_09
                                        END; //  for vi_Comb15_08
                                    END; //  for vi_Comb15_07
                                END; //  for vi_Comb15_06
                        STGR_Etapa1_10.RowCount := vi_Linhas01;
                        STGR_Etapa1_10.Repaint;
                sleep(1);
                            END; //  for vi_Comb15_05
                        END; //  for vi_Comb15_04
                    END; //  for vi_Comb15_03
                END; //  for vi_Comb15_02
            END; //  for vi_Comb15_01
        END; //  for vi_Base10Comb
    vi_Linhas01 := 1  ;
    sleep(55);
        for vi_Base10Comb := 1 TO (STGR_Base10.RowCount-1) DO
        BEGIN
            for vi_Comb10_01 := 2 TO 03 DO
            BEGIN
                for vi_Comb10_02 := vi_Comb10_01 + 1 TO 04 DO
                BEGIN
                    for vi_Comb10_03 := vi_Comb10_02 + 1 TO 05 DO
                    BEGIN
                        for vi_Comb10_04 := vi_Comb10_03 + 1 TO 06 DO
                        BEGIN
                            for vi_Comb10_05 := vi_Comb10_04 + 1 TO 07 DO
                            BEGIN
                                for vi_Comb10_06 := vi_Comb10_05 + 1 TO 08 DO
                                BEGIN
                                    for vi_Comb10_07 := vi_Comb10_06 + 1 TO 09 DO
                                    BEGIN
                                        for vi_Comb10_08 := vi_Comb10_07 + 1 TO 10 DO
                                            BEGIN
                                            for vi_Comb10_09 := vi_Comb10_08 + 1 TO 11 DO
                                            BEGIN
                                                STGR_Etapa01_09.Cells[00,vi_Linhas01] := INTtoSTR( vi_Linhas01 ) ;
                                                STGR_Etapa01_09.Cells[01,vi_Linhas01] := '+' + INTtoSTR( vi_Base10Comb ) + '' ;
                                                STGR_Etapa01_09.Cells[02,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_01,vi_Base10Comb] ;
                                                STGR_Etapa01_09.Cells[03,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_02,vi_Base10Comb] ;
                                                STGR_Etapa01_09.Cells[04,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_03,vi_Base10Comb] ;
                                                STGR_Etapa01_09.Cells[05,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_04,vi_Base10Comb] ;
                                                STGR_Etapa01_09.Cells[06,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_05,vi_Base10Comb] ;
                                                STGR_Etapa01_09.Cells[07,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_06,vi_Base10Comb] ;
                                                STGR_Etapa01_09.Cells[08,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_07,vi_Base10Comb] ;
                                                STGR_Etapa01_09.Cells[09,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_08,vi_Base10Comb] ;
                                                STGR_Etapa01_09.Cells[10,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_09,vi_Base10Comb] ;
                                                vi_Linhas01 := vi_Linhas01 + 1;
                                            END; //  for vi_Comb10_09
                                        END; //  for vi_Comb10_08
                                    END; //  for vi_Comb10_07
                                END; //  for vi_Comb10_06
                            END; //  for vi_Comb10_05
                            STGR_Etapa01_09.RowCount := vi_Linhas01;
                            STGR_Etapa01_09.Repaint;
                sleep(1);
                        END; //  for vi_Comb10_04
                    END; //  for vi_Comb10_03
                END; //  for vi_Comb10_02
            END; //  for vi_Comb10_01
        END; //  for vi_Base10Comb
     sleep(55);
    finally
        STGR_Etapa01_09.RowCount := vi_Linhas01;
        STGR_Etapa01_09.Repaint;
        STGR_Etapa03_15.RowCount := vi_Linhas01;
        STGR_Etapa03_15.Repaint;
    end;
    STGR_Etapa03_15.RowCount := vi_Linhas01;
    STGR_Etapa03_15.Repaint;
            STGR_Etapa03_15.Repaint;
    PGBR_Etapa_01.Position := 25;
    PGBR_Etapa_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // procedure




Procedure T_F_Gerador_ResDiv_25Linhas2.AnaliseComb_11e08();
var
     vi_Combinacoes1, vi_Linhas01, vi_Base10Comb : integer;
     vi_Comb15_01, vi_Comb15_02, vi_Comb15_03, vi_Comb15_04, vi_Comb15_05, vi_Comb15_06, vi_Comb15_07, vi_Comb15_08, vi_Comb15_09, vi_Comb15_10, vi_Comb15_11 : integer;
     vi_Comb10_01, vi_Comb10_02, vi_Comb10_03, vi_Comb10_04, vi_Comb10_05, vi_Comb10_06, vi_Comb10_07, vi_Comb10_08 : integer;
begin
    PGBR_Etapa_01.Position :=25 ;
    PGBR_Etapa_01.Repaint;
    LA_Gerar_Comb.Caption := '#:                   ';
    LA_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINA��ES   ||||
    // ||||=============================||||
    // =====================================
    STGR_Etapa01_08.RowCount := vi_Linhas01;
    STGR_Etapa1_11.RowCount := vi_Linhas01;
    STGR_Etapa01_08.Repaint;
    STGR_Etapa1_11.Repaint;
    SCBX_dados.HorzScrollBar.Position := 1930;
    SCBX_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    vi_Linhas01 := 1;
    vi_Combinacoes1 := 1;
    try
        for vi_Base10Comb := 1 TO (STGR_Base10.RowCount-1) DO
        BEGIN
            for vi_Comb15_01 := 2 TO 06 DO
            BEGIN
                for vi_Comb15_02 := vi_Comb15_01 + 1 TO 07 DO
                BEGIN
                    for vi_Comb15_03 := vi_Comb15_02 + 1 TO 08 DO
                    BEGIN
                        for vi_Comb15_04 := vi_Comb15_03 + 1 TO 09 DO
                        BEGIN
                            for vi_Comb15_05 := vi_Comb15_04 + 1 TO 10 DO
                            BEGIN
                                for vi_Comb15_06 := vi_Comb15_05 + 1 TO 11-0 DO  //-4
                                BEGIN
                                    for vi_Comb15_07 := vi_Comb15_06 + 1 TO 12-0 DO
                                    BEGIN
                                        for vi_Comb15_08 := vi_Comb15_07 + 1 TO 13-0 DO
                                            BEGIN
                                            for vi_Comb15_09 := vi_Comb15_08 + 1 TO 14-0 DO
                                            BEGIN
                                                for vi_Comb15_10 := vi_Comb15_09 + 1 TO 15-0 DO
                                                BEGIN
                                                    for vi_Comb15_11 := vi_Comb15_10 + 1 TO 16-0 DO
                                                    BEGIN
                                                    STGR_Etapa1_11.Cells[00,vi_Linhas01] := INTtoSTR( vi_Linhas01 ) ;
                                                    STGR_Etapa1_11.Cells[01,vi_Linhas01] := '+' + INTtoSTR( vi_Base10Comb ) + '' ;
                                                    STGR_Etapa1_11.Cells[02,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_01,vi_Base10Comb] ;
                                                    STGR_Etapa1_11.Cells[03,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_02,vi_Base10Comb] ;
                                                    STGR_Etapa1_11.Cells[04,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_03,vi_Base10Comb] ;
                                                    STGR_Etapa1_11.Cells[05,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_04,vi_Base10Comb] ;
                                                    STGR_Etapa1_11.Cells[06,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_05,vi_Base10Comb] ;
                                                    STGR_Etapa1_11.Cells[07,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_06,vi_Base10Comb] ;
                                                    STGR_Etapa1_11.Cells[08,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_07,vi_Base10Comb] ;
                                                    STGR_Etapa1_11.Cells[09,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_08,vi_Base10Comb] ;
                                                    STGR_Etapa1_11.Cells[10,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_09,vi_Base10Comb] ;
                                                    STGR_Etapa1_11.Cells[11,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_10,vi_Base10Comb] ;
                                                    STGR_Etapa1_11.Cells[12,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_11,vi_Base10Comb] ;                                                                                                        
                                                    vi_Linhas01 := vi_Linhas01 + 1;
                                                    END; //  for vi_Comb15_11
                                                END; //  for vi_Comb15_10
                                            END; //  for vi_Comb15_09
                                        END; //  for vi_Comb15_08
                                    END; //  for vi_Comb15_07
                                END; //  for vi_Comb15_06
                            STGR_Etapa1_11.RowCount := vi_Linhas01;
                            STGR_Etapa1_11.Repaint;
                sleep(1);
                            END; //  for vi_Comb15_05
                        END; //  for vi_Comb15_04
                    END; //  for vi_Comb15_03
                END; //  for vi_Comb15_02
            END; //  for vi_Comb15_01
        END; //  for vi_Base10Comb
    vi_Linhas01 := 1;
    sleep(55);
        for vi_Base10Comb := 1 TO (STGR_Base10.RowCount-1) DO
        BEGIN
            for vi_Comb10_01 := 2 TO 04 do
            BEGIN
                for vi_Comb10_02 := vi_Comb10_01 + 1 TO 05 DO
                BEGIN
                    for vi_Comb10_03 := vi_Comb10_02 + 1 TO 06 DO
                    BEGIN
                        for vi_Comb10_04 := vi_Comb10_03 + 1 TO 07 DO
                        BEGIN
                            for vi_Comb10_05 := vi_Comb10_04 + 1 TO 08 DO
                            BEGIN
                                for vi_Comb10_06 := vi_Comb10_05 + 1 TO 09 DO
                                BEGIN
                                    for vi_Comb10_07 := vi_Comb10_06 + 1 TO 10 DO
                                    BEGIN
                                        for vi_Comb10_08 := vi_Comb10_07 + 1 TO 11 DO
                                            BEGIN
                                                STGR_Etapa01_08.Cells[00,vi_Linhas01] := INTtoSTR( vi_Linhas01 ) ;
                                                STGR_Etapa01_08.Cells[01,vi_Linhas01] := '+' + INTtoSTR( vi_Base10Comb ) + '' ;
                                                STGR_Etapa01_08.Cells[02,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_01,vi_Base10Comb] ;
                                                STGR_Etapa01_08.Cells[03,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_02,vi_Base10Comb] ;
                                                STGR_Etapa01_08.Cells[04,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_03,vi_Base10Comb] ;
                                                STGR_Etapa01_08.Cells[05,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_04,vi_Base10Comb] ;
                                                STGR_Etapa01_08.Cells[06,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_05,vi_Base10Comb] ;
                                                STGR_Etapa01_08.Cells[07,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_06,vi_Base10Comb] ;
                                                STGR_Etapa01_08.Cells[08,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_07,vi_Base10Comb] ;
                                                STGR_Etapa01_08.Cells[09,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_08,vi_Base10Comb] ;
                                                vi_Linhas01 := vi_Linhas01 + 1;
                                            END; //  for vi_Comb10_08
                                        END; //  for vi_Comb10_07
                                    END; //  for vi_Comb10_06
                                    STGR_Etapa01_08.RowCount := vi_Linhas01;
                                    STGR_Etapa01_08.Repaint;
                sleep(1);
                                END; //  for vi_Comb10_05
                            END; //  for vi_Comb10_04
                        END; //  for vi_Comb10_03
                    END; //  for vi_Comb10_02
                END; //  for vi_Comb10_01
            END; //  for vi_Base10Comb
        sleep(75);

    finally
        STGR_Etapa01_08.RowCount := vi_Linhas01;
        STGR_Etapa01_08.Repaint;
        STGR_Etapa03_15.RowCount := vi_Linhas01;
        STGR_Etapa03_15.Repaint;
    end;
    STGR_Etapa03_15.RowCount := vi_Linhas01;
    STGR_Etapa03_15.Repaint;
            STGR_Etapa03_15.Repaint;
    PGBR_Etapa_01.Position := 50;
    PGBR_Etapa_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // procedure



Procedure T_F_Gerador_ResDiv_25Linhas2.AnaliseComb_12e07();
var
     vi_Combinacoes1, vi_Linhas01, vi_Base10Comb : integer;
     vi_Comb15_01, vi_Comb15_02, vi_Comb15_03, vi_Comb15_04, vi_Comb15_05, vi_Comb15_06, vi_Comb15_07, vi_Comb15_08, vi_Comb15_09, vi_Comb15_10, vi_Comb15_11, vi_Comb15_12 : integer;
     vi_Comb10_01, vi_Comb10_02, vi_Comb10_03, vi_Comb10_04, vi_Comb10_05, vi_Comb10_06, vi_Comb10_07  : integer;
begin
    PGBR_Etapa_01.Position :=50 ;
    PGBR_Etapa_01.Repaint;
    LA_Gerar_Comb.Caption := '#:                   ';
    LA_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINA��ES   ||||
    // ||||=============================||||
    // =====================================
    STGR_Etapa01_07.RowCount := vi_Linhas01;
    STGR_Etapa1_12.RowCount := vi_Linhas01;
    STGR_Etapa01_07.Repaint;
    STGR_Etapa1_12.Repaint;
    SCBX_dados.HorzScrollBar.Position := 2920;
    SCBX_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    vi_Linhas01 := 1;
    vi_Combinacoes1 := 1;
    try
        for vi_Base10Comb := 1 TO (STGR_Base10.RowCount-1) DO
        BEGIN
            for vi_Comb15_01 := 2 TO 05 DO
            BEGIN
                for vi_Comb15_02 := vi_Comb15_01 + 1 TO 06 DO
                BEGIN
                    for vi_Comb15_03 := vi_Comb15_02 + 1 TO 07 DO
                    BEGIN
                        for vi_Comb15_04 := vi_Comb15_03 + 1 TO 08 DO
                        BEGIN
                            for vi_Comb15_05 := vi_Comb15_04 + 1 TO 09 DO
                            BEGIN
                                for vi_Comb15_06 := vi_Comb15_05 + 1 TO 10 DO
                                BEGIN
                                    for vi_Comb15_07 := vi_Comb15_06 + 1 TO 11-0 DO  //-3
                                    BEGIN
                                        for vi_Comb15_08 := vi_Comb15_07 + 1 TO 12-0 DO
                                            BEGIN
                                            for vi_Comb15_09 := vi_Comb15_08 + 1 TO 13-0 DO
                                            BEGIN
                                                for vi_Comb15_10 := vi_Comb15_09 + 1 TO 14-0 DO
                                                BEGIN
                                                    for vi_Comb15_11 := vi_Comb15_10 + 1 TO 15-0 DO
                                                    BEGIN
                                                        for vi_Comb15_12 := vi_Comb15_11 + 1 TO 16-0 DO
                                                        BEGIN
                                                            STGR_Etapa1_12.Cells[00,vi_Linhas01] := INTtoSTR( vi_Linhas01 ) ;
                                                            STGR_Etapa1_12.Cells[01,vi_Linhas01] := '+' + INTtoSTR( vi_Base10Comb ) + '' ;
                                                            STGR_Etapa1_12.Cells[02,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_01,vi_Base10Comb] ;
                                                            STGR_Etapa1_12.Cells[03,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_02,vi_Base10Comb] ;
                                                            STGR_Etapa1_12.Cells[04,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_03,vi_Base10Comb] ;
                                                            STGR_Etapa1_12.Cells[05,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_04,vi_Base10Comb] ;
                                                            STGR_Etapa1_12.Cells[06,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_05,vi_Base10Comb] ;
                                                            STGR_Etapa1_12.Cells[07,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_06,vi_Base10Comb] ;
                                                            STGR_Etapa1_12.Cells[08,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_07,vi_Base10Comb] ;
                                                            STGR_Etapa1_12.Cells[09,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_08,vi_Base10Comb] ;
                                                            STGR_Etapa1_12.Cells[10,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_09,vi_Base10Comb] ;
                                                            STGR_Etapa1_12.Cells[11,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_10,vi_Base10Comb] ;
                                                            STGR_Etapa1_12.Cells[12,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_11,vi_Base10Comb] ;
                                                            STGR_Etapa1_12.Cells[13,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_12,vi_Base10Comb] ;
                                                            vi_Linhas01 := vi_Linhas01 + 1;
                                                        END; //  for vi_Comb15_12
                                                    END; //  for vi_Comb15_11
                                                END; //  for vi_Comb15_10
                                            END; //  for vi_Comb15_09
                                        END; //  for vi_Comb15_08
                                    END; //  for vi_Comb15_07
                            STGR_Etapa1_12.RowCount := vi_Linhas01;
                            STGR_Etapa1_12.Repaint;
                sleep(1);
                                END; //  for vi_Comb15_06
                            END; //  for vi_Comb15_05
                        END; //  for vi_Comb15_04
                    END; //  for vi_Comb15_03
                END; //  for vi_Comb15_02
            END; //  for vi_Comb15_01
        END; //  for vi_Base10Comb
    vi_Linhas01 := 1;
    sleep(75);
        for vi_Base10Comb := 1 TO (STGR_Base10.RowCount-1) DO
        BEGIN
            for vi_Comb10_01 := 2 TO 05 DO
            BEGIN
                for vi_Comb10_02 := vi_Comb10_01 + 1 TO 06 DO
                BEGIN
                    for vi_Comb10_03 := vi_Comb10_02 + 1 TO 07 DO
                    BEGIN
                        for vi_Comb10_04 := vi_Comb10_03 + 1 TO 08 DO
                        BEGIN
                            for vi_Comb10_05 := vi_Comb10_04 + 1 TO 09 DO
                            BEGIN
                                for vi_Comb10_06 := vi_Comb10_05 + 1 TO 10 DO
                                BEGIN
                                    for vi_Comb10_07 := vi_Comb10_06 + 1 TO 11 DO
                                    BEGIN
                                        STGR_Etapa01_07.Cells[00,vi_Linhas01] := INTtoSTR( vi_Linhas01 ) ;
                                        STGR_Etapa01_07.Cells[01,vi_Linhas01] := '+' + INTtoSTR( vi_Base10Comb ) + '' ;
                                        STGR_Etapa01_07.Cells[02,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_01,vi_Base10Comb] ;
                                        STGR_Etapa01_07.Cells[03,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_02,vi_Base10Comb] ;
                                        STGR_Etapa01_07.Cells[04,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_03,vi_Base10Comb] ;
                                        STGR_Etapa01_07.Cells[05,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_04,vi_Base10Comb] ;
                                        STGR_Etapa01_07.Cells[06,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_05,vi_Base10Comb] ;
                                        STGR_Etapa01_07.Cells[07,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_06,vi_Base10Comb] ;
                                        STGR_Etapa01_07.Cells[08,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_07,vi_Base10Comb] ;
                                        vi_Linhas01 := vi_Linhas01 + 1;
                                    END; //  for vi_Comb10_07
                                END; //  for vi_Comb10_06
                            END; //  for vi_Comb10_05
                            STGR_Etapa01_07.RowCount := vi_Linhas01;
                            STGR_Etapa01_07.Repaint;
                sleep(1);
                        END; //  for vi_Comb10_04
                    END; //  for vi_Comb10_03
                END; //  for vi_Comb10_02
            END; //  for vi_Comb10_01
        END; //  for vi_Base10Comb
      sleep(75);
    finally
        STGR_Etapa01_07.RowCount := vi_Linhas01;
        STGR_Etapa01_07.Repaint;
        STGR_Etapa03_15.RowCount := vi_Linhas01;
        STGR_Etapa03_15.Repaint;
    end;
    STGR_Etapa03_15.RowCount := vi_Linhas01;
    STGR_Etapa03_15.Repaint;
            STGR_Etapa03_15.Repaint;
    PGBR_Etapa_01.Position := 66;
    PGBR_Etapa_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // procedure




Procedure T_F_Gerador_ResDiv_25Linhas2.Gerar19_09e10();
var
     vi_Linhas01, vi_SomaTotal : integer;
     vi_Comb19_01, vi_Comb19_02 : integer;
     vi_nlinha15, vi_nlinha10: smallint;
begin
    PGBR_Etapa_01_01.Position :=0;
    PGBR_Etapa_01_01.Repaint;
    LA_Gerar_Comb.Caption := '#:                   ';
    LA_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINA��ES   ||||
    // ||||=============================||||
    // =====================================
    STGR_Etapa01_19.Repaint;
    SCBX_dados.HorzScrollBar.Position := 6350;
    SCBX_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    vi_Linhas01 := 1;
    try
        for vi_Comb19_01 := 1 TO (STGR_Etapa1_09.RowCount-1) DO
        BEGIN
            for vi_Comb19_02 := 1 TO (STGR_Etapa01_10.RowCount-1)  DO
            BEGIN
                vi_SomaTotal :=
                 strTOint(STGR_Etapa1_09.Cells[2,vi_Comb19_01]) +                 strTOint(STGR_Etapa1_09.Cells[3,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_09.Cells[4,vi_Comb19_01]) +                 strTOint(STGR_Etapa1_09.Cells[5,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_09.Cells[6,vi_Comb19_01]) +                 strTOint(STGR_Etapa1_09.Cells[7,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_09.Cells[8,vi_Comb19_01]) +                 strTOint(STGR_Etapa1_09.Cells[9,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_09.Cells[10,vi_Comb19_01]) +                
                 strTOint(STGR_Etapa01_10.Cells[02,vi_Comb19_02]) +                 strTOint(STGR_Etapa01_10.Cells[03,vi_Comb19_02]) +
                 strTOint(STGR_Etapa01_10.Cells[04,vi_Comb19_02]) +                 strTOint(STGR_Etapa01_10.Cells[05,vi_Comb19_02]) +
                 strTOint(STGR_Etapa01_10.Cells[06,vi_Comb19_02]) +                 strTOint(STGR_Etapa01_10.Cells[07,vi_Comb19_02]) +
                 strTOint(STGR_Etapa01_10.Cells[08,vi_Comb19_02]) +                 strTOint(STGR_Etapa01_10.Cells[09,vi_Comb19_02]) +
				 strTOint(STGR_Etapa01_10.Cells[10,vi_Comb19_02]) +                 strTOint(STGR_Etapa01_10.Cells[11,vi_Comb19_02])
                ;
                vi_nlinha15 := strTOint(STGR_Etapa1_09.Cells[01,vi_Comb19_01]);
                vi_nlinha10 := strTOint(STGR_Etapa01_10.Cells[01,vi_Comb19_02]);
                if not(vi_nlinha15 = vi_nlinha10) then
                    continue;
                if vi_SomaTotal = 247 then
                begin
                    STGR_Etapa01_19.Cells[00,vi_Linhas01] := INTtoSTR( vi_Linhas01 ) ;
                    STGR_Etapa01_19.Cells[01,vi_Linhas01] := STGR_Etapa1_09.Cells[01,vi_Comb19_01] + '/' + STGR_Etapa01_10.Cells[01,vi_Comb19_02];
                    STGR_Etapa01_19.Cells[02,vi_Linhas01] := STGR_Etapa1_09.Cells[02,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[03,vi_Linhas01] := STGR_Etapa1_09.Cells[03,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[04,vi_Linhas01] := STGR_Etapa1_09.Cells[04,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[05,vi_Linhas01] := STGR_Etapa1_09.Cells[05,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[06,vi_Linhas01] := STGR_Etapa1_09.Cells[06,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[07,vi_Linhas01] := STGR_Etapa1_09.Cells[07,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[08,vi_Linhas01] := STGR_Etapa1_09.Cells[08,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[09,vi_Linhas01] := STGR_Etapa1_09.Cells[09,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[10,vi_Linhas01] := STGR_Etapa1_09.Cells[10,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[11,vi_Linhas01] := STGR_Etapa01_10.Cells[02,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[12,vi_Linhas01] := STGR_Etapa01_10.Cells[03,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[13,vi_Linhas01] := STGR_Etapa01_10.Cells[04,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[14,vi_Linhas01] := STGR_Etapa01_10.Cells[05,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[15,vi_Linhas01] := STGR_Etapa01_10.Cells[06,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[16,vi_Linhas01] := STGR_Etapa01_10.Cells[07,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[17,vi_Linhas01] := STGR_Etapa01_10.Cells[08,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[18,vi_Linhas01] := STGR_Etapa01_10.Cells[09,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[19,vi_Linhas01] := STGR_Etapa01_10.Cells[10,vi_Comb19_02] ; 
                    STGR_Etapa01_19.Cells[20,vi_Linhas01] := STGR_Etapa01_10.Cells[11,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[21,vi_Linhas01] := INTtoSTR( vi_SomaTotal ) + '' ;
                    if QtdPares19 (vi_Linhas01) then
                    begin
                        Self.Ordenar_Comb19(vi_Linhas01);                    
                        vi_Linhas01 := vi_Linhas01 + 1;
                    end;
                end; // if
            END; //  for vi_Comb15_06
            if (vi_Comb19_01 mod 180)=0 then
            begin
                STGR_Etapa01_19.RowCount := vi_Linhas01;
                STGR_Etapa01_19.Repaint;
                sleep(1);
            end;
        END; //  for vi_Comb15_05

    finally
        STGR_Etapa01_19.RowCount := vi_Linhas01;
        STGR_Etapa01_19.Repaint;
    end;
    PGBR_Etapa_01_01.Position :=15 ;
    PGBR_Etapa_01_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // procedure





Procedure T_F_Gerador_ResDiv_25Linhas2.Gerar19_10e09();
var
     vi_Linhas01, vi_SomaTotal : integer;
     vi_Comb19_01, vi_Comb19_02 : integer;
     vi_nlinha15, vi_nlinha10: smallint;
begin
    PGBR_Etapa_01_01.Position :=15 ;
    PGBR_Etapa_01_01.Repaint;
    LA_Gerar_Comb.Caption := '#:                   ';
    LA_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINA��ES   ||||
    // ||||=============================||||
    // =====================================
    STGR_Etapa01_19.Repaint;
    SCBX_dados.HorzScrollBar.Position := 6350;
    SCBX_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    vi_Linhas01 := STGR_Etapa01_19.RowCount;
    try
        for vi_Comb19_01 := 1 TO (STGR_Etapa1_10.RowCount-1) DO
        BEGIN
            for vi_Comb19_02 := 1 TO (STGR_Etapa01_09.RowCount-1)  DO
            BEGIN
                vi_SomaTotal :=
                 strTOint(STGR_Etapa1_10.Cells[2,vi_Comb19_01]) +                 strTOint(STGR_Etapa1_10.Cells[3,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_10.Cells[4,vi_Comb19_01]) +                 strTOint(STGR_Etapa1_10.Cells[5,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_10.Cells[6,vi_Comb19_01]) +                 strTOint(STGR_Etapa1_10.Cells[7,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_10.Cells[8,vi_Comb19_01]) +                 strTOint(STGR_Etapa1_10.Cells[9,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_10.Cells[10,vi_Comb19_01]) +                strTOint(STGR_Etapa1_10.Cells[11,vi_Comb19_01]) +
                 strTOint(STGR_Etapa01_09.Cells[02,vi_Comb19_02]) +                 strTOint(STGR_Etapa01_09.Cells[03,vi_Comb19_02]) +
                 strTOint(STGR_Etapa01_09.Cells[04,vi_Comb19_02]) +                 strTOint(STGR_Etapa01_09.Cells[05,vi_Comb19_02]) +
                 strTOint(STGR_Etapa01_09.Cells[06,vi_Comb19_02]) +                 strTOint(STGR_Etapa01_09.Cells[07,vi_Comb19_02]) +
                 strTOint(STGR_Etapa01_09.Cells[08,vi_Comb19_02]) +                 strTOint(STGR_Etapa01_09.Cells[09,vi_Comb19_02]) +
				 strTOint(STGR_Etapa01_09.Cells[10,vi_Comb19_02]) 
                ;
                vi_nlinha15 := strTOint(STGR_Etapa1_10.Cells[01,vi_Comb19_01]);
                vi_nlinha10 := strTOint(STGR_Etapa01_09.Cells[01,vi_Comb19_02]);
                if not(vi_nlinha15 = vi_nlinha10) then
                    continue;
                if vi_SomaTotal = 247 then
                begin
                    STGR_Etapa01_19.Cells[00,vi_Linhas01] := INTtoSTR( vi_Linhas01 ) ;
                    STGR_Etapa01_19.Cells[01,vi_Linhas01] := STGR_Etapa1_10.Cells[01,vi_Comb19_01] + '/' + STGR_Etapa01_09.Cells[01,vi_Comb19_02];
                    STGR_Etapa01_19.Cells[02,vi_Linhas01] := STGR_Etapa1_10.Cells[02,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[03,vi_Linhas01] := STGR_Etapa1_10.Cells[03,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[04,vi_Linhas01] := STGR_Etapa1_10.Cells[04,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[05,vi_Linhas01] := STGR_Etapa1_10.Cells[05,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[06,vi_Linhas01] := STGR_Etapa1_10.Cells[06,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[07,vi_Linhas01] := STGR_Etapa1_10.Cells[07,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[08,vi_Linhas01] := STGR_Etapa1_10.Cells[08,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[09,vi_Linhas01] := STGR_Etapa1_10.Cells[09,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[10,vi_Linhas01] := STGR_Etapa1_10.Cells[10,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[11,vi_Linhas01] := STGR_Etapa1_10.Cells[11,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[12,vi_Linhas01] := STGR_Etapa01_09.Cells[02,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[13,vi_Linhas01] := STGR_Etapa01_09.Cells[03,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[14,vi_Linhas01] := STGR_Etapa01_09.Cells[04,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[15,vi_Linhas01] := STGR_Etapa01_09.Cells[05,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[16,vi_Linhas01] := STGR_Etapa01_09.Cells[06,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[17,vi_Linhas01] := STGR_Etapa01_09.Cells[07,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[18,vi_Linhas01] := STGR_Etapa01_09.Cells[08,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[19,vi_Linhas01] := STGR_Etapa01_09.Cells[09,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[20,vi_Linhas01] := STGR_Etapa01_09.Cells[10,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[21,vi_Linhas01] := INTtoSTR( vi_SomaTotal ) + '' ;
                    if QtdPares19 (vi_Linhas01) then
                    begin
                        Self.Ordenar_Comb19(vi_Linhas01);
                        vi_Linhas01 := vi_Linhas01 + 1;
                    end;
                end; // if
            END; //  for vi_Comb15_06
            if (vi_Comb19_01 mod 38)=0 then
            begin
                STGR_Etapa01_19.RowCount := vi_Linhas01;
                STGR_Etapa01_19.Repaint;
                sleep(1);
            end;
        END; //  for vi_Comb15_05

    finally
        STGR_Etapa01_19.RowCount := vi_Linhas01;
        STGR_Etapa01_19.Repaint;
    end;
    PGBR_Etapa_01_01.Position :=25 ;
    PGBR_Etapa_01_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // procedure



Procedure T_F_Gerador_ResDiv_25Linhas2.Gerar19_11e08();
var
     vi_Linhas01, vi_SomaTotal : integer;
     vi_Comb19_01, vi_Comb19_02 : integer;
     vi_nlinha15, vi_nlinha10: smallint;
begin
    PGBR_Etapa_01_01.Position :=25 ;
    PGBR_Etapa_01_01.Repaint;
    LA_Gerar_Comb.Caption := '#:                   ';
    LA_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINA��ES   ||||
    // ||||=============================||||
    // =====================================
    STGR_Etapa01_19.Repaint;
    SCBX_dados.HorzScrollBar.Position := 6350;
    SCBX_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    vi_Linhas01 := STGR_Etapa01_19.RowCount;
    try
        for vi_Comb19_01 := 1 TO (STGR_Etapa1_11.RowCount-1) DO
        BEGIN
            for vi_Comb19_02 := 1 TO (STGR_Etapa01_08.RowCount-1)  DO
            BEGIN
                vi_SomaTotal :=
                 strTOint(STGR_Etapa1_11.Cells[2,vi_Comb19_01]) +                 strTOint(STGR_Etapa1_11.Cells[3,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_11.Cells[4,vi_Comb19_01]) +                 strTOint(STGR_Etapa1_11.Cells[5,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_11.Cells[6,vi_Comb19_01]) +                 strTOint(STGR_Etapa1_11.Cells[7,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_11.Cells[8,vi_Comb19_01]) +                 strTOint(STGR_Etapa1_11.Cells[9,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_11.Cells[10,vi_Comb19_01]) +                strTOint(STGR_Etapa1_11.Cells[11,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_11.Cells[12,vi_Comb19_01]) +
                 strTOint(STGR_Etapa01_08.Cells[02,vi_Comb19_02]) +                 strTOint(STGR_Etapa01_08.Cells[03,vi_Comb19_02]) +
                 strTOint(STGR_Etapa01_08.Cells[04,vi_Comb19_02]) +                 strTOint(STGR_Etapa01_08.Cells[05,vi_Comb19_02]) +
                 strTOint(STGR_Etapa01_08.Cells[06,vi_Comb19_02]) +                 strTOint(STGR_Etapa01_08.Cells[07,vi_Comb19_02]) +
                 strTOint(STGR_Etapa01_08.Cells[08,vi_Comb19_02]) +                 strTOint(STGR_Etapa01_08.Cells[09,vi_Comb19_02])
                ;
                vi_nlinha15 := strTOint(STGR_Etapa1_11.Cells[01,vi_Comb19_01]);
                vi_nlinha10 := strTOint(STGR_Etapa01_08.Cells[01,vi_Comb19_02]);
                if not(vi_nlinha15 = vi_nlinha10) then
                    continue;
                if vi_SomaTotal = 247 then
                begin
                    STGR_Etapa01_19.Cells[00,vi_Linhas01] := INTtoSTR( vi_Linhas01 ) ;
                    STGR_Etapa01_19.Cells[01,vi_Linhas01] := STGR_Etapa1_11.Cells[01,vi_Comb19_01] + '/' + STGR_Etapa01_08.Cells[01,vi_Comb19_02];
                    STGR_Etapa01_19.Cells[02,vi_Linhas01] := STGR_Etapa1_11.Cells[02,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[03,vi_Linhas01] := STGR_Etapa1_11.Cells[03,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[04,vi_Linhas01] := STGR_Etapa1_11.Cells[04,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[05,vi_Linhas01] := STGR_Etapa1_11.Cells[05,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[06,vi_Linhas01] := STGR_Etapa1_11.Cells[06,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[07,vi_Linhas01] := STGR_Etapa1_11.Cells[07,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[08,vi_Linhas01] := STGR_Etapa1_11.Cells[08,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[09,vi_Linhas01] := STGR_Etapa1_11.Cells[09,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[10,vi_Linhas01] := STGR_Etapa1_11.Cells[10,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[11,vi_Linhas01] := STGR_Etapa1_11.Cells[11,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[12,vi_Linhas01] := STGR_Etapa1_11.Cells[12,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[13,vi_Linhas01] := STGR_Etapa01_08.Cells[02,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[14,vi_Linhas01] := STGR_Etapa01_08.Cells[03,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[15,vi_Linhas01] := STGR_Etapa01_08.Cells[04,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[16,vi_Linhas01] := STGR_Etapa01_08.Cells[05,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[17,vi_Linhas01] := STGR_Etapa01_08.Cells[06,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[18,vi_Linhas01] := STGR_Etapa01_08.Cells[07,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[19,vi_Linhas01] := STGR_Etapa01_08.Cells[08,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[20,vi_Linhas01] := STGR_Etapa01_08.Cells[09,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[21,vi_Linhas01] := INTtoSTR( vi_SomaTotal ) + '' ;
                    if QtdPares19 (vi_Linhas01) then
                    begin
                        Self.Ordenar_Comb19(vi_Linhas01);
                        vi_Linhas01 := vi_Linhas01 + 1;
                    end;
                end; // if
            END; //  for vi_Comb15_06
            if (vi_Comb19_01 mod 180)=0 then
            begin
                STGR_Etapa01_19.RowCount := vi_Linhas01;
                STGR_Etapa01_19.Repaint;
                sleep(4); //6
            end;
        END; //  for vi_Comb15_05

    finally
        STGR_Etapa01_19.RowCount := vi_Linhas01;
        STGR_Etapa01_19.Repaint;
    end;
    PGBR_Etapa_01_01.Position :=50 ;
    PGBR_Etapa_01_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // procedure




Procedure T_F_Gerador_ResDiv_25Linhas2.Gerar19_12e07();
var
     vi_Linhas01, vi_SomaTotal : integer;
     vi_Comb19_01, vi_Comb19_02 : integer;
     vi_nlinha15, vi_nlinha10: smallint;
begin
    PGBR_Etapa_01_01.Position :=50 ;
    PGBR_Etapa_01_01.Repaint;
    LA_Gerar_Comb.Caption := '#:                   ';
    LA_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINA��ES   ||||
    // ||||=============================||||
    // =====================================
    STGR_Etapa01_19.Repaint;
    SCBX_dados.HorzScrollBar.Position := 6350;
    SCBX_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    vi_Linhas01 := STGR_Etapa01_19.RowCount;
    try
        for vi_Comb19_01 := 1 TO (STGR_Etapa1_12.RowCount-1) DO
        BEGIN
            for vi_Comb19_02 := 1 TO (STGR_Etapa01_07.RowCount-1)  DO
            BEGIN
                vi_SomaTotal :=
                 strTOint(STGR_Etapa1_12.Cells[2,vi_Comb19_01]) +                 strTOint(STGR_Etapa1_12.Cells[3,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_12.Cells[4,vi_Comb19_01]) +                 strTOint(STGR_Etapa1_12.Cells[5,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_12.Cells[6,vi_Comb19_01]) +                 strTOint(STGR_Etapa1_12.Cells[7,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_12.Cells[8,vi_Comb19_01]) +                 strTOint(STGR_Etapa1_12.Cells[9,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_12.Cells[10,vi_Comb19_01]) +                strTOint(STGR_Etapa1_12.Cells[11,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_12.Cells[12,vi_Comb19_01]) +				   strTOint(STGR_Etapa1_12.Cells[13,vi_Comb19_01]) +
                 strTOint(STGR_Etapa01_07.Cells[02,vi_Comb19_02]) +                 strTOint(STGR_Etapa01_07.Cells[03,vi_Comb19_02]) +
                 strTOint(STGR_Etapa01_07.Cells[04,vi_Comb19_02]) +                 strTOint(STGR_Etapa01_07.Cells[05,vi_Comb19_02]) +
                 strTOint(STGR_Etapa01_07.Cells[06,vi_Comb19_02]) +                 strTOint(STGR_Etapa01_07.Cells[07,vi_Comb19_02]) +
                 strTOint(STGR_Etapa01_07.Cells[08,vi_Comb19_02]) 
                ;
                vi_nlinha15 := strTOint(STGR_Etapa1_12.Cells[01,vi_Comb19_01]);
                vi_nlinha10 := strTOint(STGR_Etapa01_07.Cells[01,vi_Comb19_02]);
                if not(vi_nlinha15 = vi_nlinha10) then
                    continue;
                if vi_SomaTotal = 247 then
                begin
                    STGR_Etapa01_19.Cells[00,vi_Linhas01] := INTtoSTR( vi_Linhas01 ) ;
                    STGR_Etapa01_19.Cells[01,vi_Linhas01] := STGR_Etapa1_12.Cells[01,vi_Comb19_01] + '/' + STGR_Etapa01_07.Cells[01,vi_Comb19_02];
                    STGR_Etapa01_19.Cells[02,vi_Linhas01] := STGR_Etapa1_12.Cells[02,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[03,vi_Linhas01] := STGR_Etapa1_12.Cells[03,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[04,vi_Linhas01] := STGR_Etapa1_12.Cells[04,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[05,vi_Linhas01] := STGR_Etapa1_12.Cells[05,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[06,vi_Linhas01] := STGR_Etapa1_12.Cells[06,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[07,vi_Linhas01] := STGR_Etapa1_12.Cells[07,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[08,vi_Linhas01] := STGR_Etapa1_12.Cells[08,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[09,vi_Linhas01] := STGR_Etapa1_12.Cells[09,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[10,vi_Linhas01] := STGR_Etapa1_12.Cells[10,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[11,vi_Linhas01] := STGR_Etapa1_12.Cells[11,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[12,vi_Linhas01] := STGR_Etapa1_12.Cells[12,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[13,vi_Linhas01] :=  STGR_Etapa1_12.Cells[13,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[14,vi_Linhas01] :=  STGR_Etapa01_07.Cells[02,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[15,vi_Linhas01] :=  STGR_Etapa01_07.Cells[03,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[16,vi_Linhas01] :=  STGR_Etapa01_07.Cells[04,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[17,vi_Linhas01] :=  STGR_Etapa01_07.Cells[05,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[18,vi_Linhas01] :=  STGR_Etapa01_07.Cells[06,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[19,vi_Linhas01] :=  STGR_Etapa01_07.Cells[07,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[20,vi_Linhas01] :=  STGR_Etapa01_07.Cells[08,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[21,vi_Linhas01] := INTtoSTR( vi_SomaTotal ) + '' ;
                    if QtdPares19 (vi_Linhas01) then
                    begin
                        Self.Ordenar_Comb19(vi_Linhas01);                    
                        vi_Linhas01 := vi_Linhas01 + 1;
                    end;
                end; // if
            END; //  for vi_Comb15_06
            if (vi_Comb19_01 mod 180)=0 then
            begin
                STGR_Etapa01_19.RowCount := vi_Linhas01;
                STGR_Etapa01_19.Repaint;
                sleep(6); //6
            end;
        END; //  for vi_Comb15_05

    finally
        STGR_Etapa01_19.RowCount := vi_Linhas01;
        STGR_Etapa01_19.Repaint;
    end;
    PGBR_Etapa_01_01.Position :=70 ;
    PGBR_Etapa_01_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // procedure




Procedure T_F_Gerador_ResDiv_25Linhas2.Gerar19_13e06();
var
     vi_Linhas01, vi_SomaTotal : integer;
     vi_Comb19_01, vi_Comb19_02 : integer;
     vi_nlinha15, vi_nlinha10: smallint;
begin
    PGBR_Etapa_01_01.Position :=70 ;
    PGBR_Etapa_01_01.Repaint;
    LA_Gerar_Comb.Caption := '#:                   ';
    LA_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINA��ES   ||||
    // ||||=============================||||
    // =====================================
    STGR_Etapa01_19.Repaint;
    SCBX_dados.HorzScrollBar.Position := 6350;
    SCBX_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    vi_Linhas01 := STGR_Etapa01_19.RowCount;
    try
        for vi_Comb19_01 := 1 TO (STGR_Etapa1_13.RowCount-1) DO
        BEGIN
            for vi_Comb19_02 := 1 TO (STGR_Etapa01_06.RowCount-1)  DO
            BEGIN
                vi_SomaTotal :=
                 strTOint(STGR_Etapa1_13.Cells[2,vi_Comb19_01]) +                 strTOint(STGR_Etapa1_13.Cells[3,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_13.Cells[4,vi_Comb19_01]) +                 strTOint(STGR_Etapa1_13.Cells[5,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_13.Cells[6,vi_Comb19_01]) +                 strTOint(STGR_Etapa1_13.Cells[7,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_13.Cells[8,vi_Comb19_01]) +                 strTOint(STGR_Etapa1_13.Cells[9,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_13.Cells[10,vi_Comb19_01]) +                strTOint(STGR_Etapa1_13.Cells[11,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_13.Cells[12,vi_Comb19_01]) +				   strTOint(STGR_Etapa1_13.Cells[13,vi_Comb19_01]) +
				 strTOint(STGR_Etapa1_13.Cells[14,vi_Comb19_01]) +
                 strTOint(STGR_Etapa01_06.Cells[02,vi_Comb19_02]) +                 strTOint(STGR_Etapa01_06.Cells[03,vi_Comb19_02]) +
                 strTOint(STGR_Etapa01_06.Cells[04,vi_Comb19_02]) +                 strTOint(STGR_Etapa01_06.Cells[05,vi_Comb19_02]) +
                 strTOint(STGR_Etapa01_06.Cells[06,vi_Comb19_02]) +                 strTOint(STGR_Etapa01_06.Cells[07,vi_Comb19_02])
                ;
                vi_nlinha15 := strTOint(STGR_Etapa1_13.Cells[01,vi_Comb19_01]);
                vi_nlinha10 := strTOint(STGR_Etapa01_06.Cells[01,vi_Comb19_02]);
                if not(vi_nlinha15 = vi_nlinha10) then
                    continue;
                if vi_SomaTotal = 247 then
                begin
                    STGR_Etapa01_19.Cells[00,vi_Linhas01] := INTtoSTR( vi_Linhas01 ) ;
                    STGR_Etapa01_19.Cells[01,vi_Linhas01] := STGR_Etapa1_13.Cells[01,vi_Comb19_01] + '/' + STGR_Etapa01_06.Cells[01,vi_Comb19_02];
                    STGR_Etapa01_19.Cells[02,vi_Linhas01] := STGR_Etapa1_13.Cells[02,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[03,vi_Linhas01] := STGR_Etapa1_13.Cells[03,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[04,vi_Linhas01] := STGR_Etapa1_13.Cells[04,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[05,vi_Linhas01] := STGR_Etapa1_13.Cells[05,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[06,vi_Linhas01] := STGR_Etapa1_13.Cells[06,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[07,vi_Linhas01] := STGR_Etapa1_13.Cells[07,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[08,vi_Linhas01] := STGR_Etapa1_13.Cells[08,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[09,vi_Linhas01] := STGR_Etapa1_13.Cells[09,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[10,vi_Linhas01] := STGR_Etapa1_13.Cells[10,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[11,vi_Linhas01] := STGR_Etapa1_13.Cells[11,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[12,vi_Linhas01] := STGR_Etapa1_13.Cells[12,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[13,vi_Linhas01] :=  STGR_Etapa1_13.Cells[13,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[14,vi_Linhas01] :=  STGR_Etapa1_13.Cells[14,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[15,vi_Linhas01] :=  STGR_Etapa01_06.Cells[02,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[16,vi_Linhas01] :=  STGR_Etapa01_06.Cells[03,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[17,vi_Linhas01] :=  STGR_Etapa01_06.Cells[04,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[18,vi_Linhas01] :=  STGR_Etapa01_06.Cells[05,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[19,vi_Linhas01] :=  STGR_Etapa01_06.Cells[06,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[20,vi_Linhas01] :=  STGR_Etapa01_06.Cells[07,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[21,vi_Linhas01] := INTtoSTR( vi_SomaTotal ) + '' ;
                    if QtdPares19 (vi_Linhas01) then
                    begin
                        Self.Ordenar_Comb19(vi_Linhas01);                    
                        vi_Linhas01 := vi_Linhas01 + 1;
                    end;
                end; // if
            END; //  for vi_Comb15_06
            STGR_Etapa01_19.RowCount := vi_Linhas01;
            STGR_Etapa01_19.Repaint;
                sleep(23);
        END; //  for vi_Comb15_05

    finally
        STGR_Etapa01_19.RowCount := vi_Linhas01;
        STGR_Etapa01_19.Repaint;
    end;
    PGBR_Etapa_01_01.Position :=80 ;
    PGBR_Etapa_01_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // procedure



Procedure T_F_Gerador_ResDiv_25Linhas2.AnaliseComb_13e06();
var
     vi_Combinacoes1, vi_Linhas01, vi_Base10Comb : integer;
     vi_Comb15_01, vi_Comb15_02, vi_Comb15_03, vi_Comb15_04, vi_Comb15_05, vi_Comb15_06, vi_Comb15_07, vi_Comb15_08, vi_Comb15_09, vi_Comb15_10, vi_Comb15_11, vi_Comb15_12, vi_Comb15_13 : integer;
     vi_Comb10_01, vi_Comb10_02, vi_Comb10_03, vi_Comb10_04, vi_Comb10_05, vi_Comb10_06 : integer;
begin
    PGBR_Etapa_01.Position :=70 ;
    PGBR_Etapa_01.Repaint;
    LA_Gerar_Comb.Caption := '#:                   ';
    LA_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINA��ES   ||||
    // ||||=============================||||
    // =====================================
    STGR_Etapa01_06.RowCount := vi_Linhas01;
    STGR_Etapa1_13.RowCount := vi_Linhas01;
    STGR_Etapa01_06.Repaint;
    STGR_Etapa1_13.Repaint;
    SCBX_dados.HorzScrollBar.Position := 3960;
    SCBX_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    vi_Linhas01 := 1;
    vi_Combinacoes1 := 1;
    try
        for vi_Base10Comb := 1 TO (STGR_Base10.RowCount-1) DO
        BEGIN
            for vi_Comb15_01 := 2 TO 05 DO
            BEGIN
                for vi_Comb15_02 := vi_Comb15_01 + 1 TO 06 DO
                BEGIN
                    for vi_Comb15_03 := vi_Comb15_02 + 1 TO 07 DO
                    BEGIN
                        for vi_Comb15_04 := vi_Comb15_03 + 1 TO 08 DO
                        BEGIN
                            for vi_Comb15_05 := vi_Comb15_04 + 1 TO 09 DO
                            BEGIN
                                for vi_Comb15_06 := vi_Comb15_05 + 1 TO 10 DO
                                BEGIN
                                    for vi_Comb15_07 := vi_Comb15_06 + 1 TO 11-0 DO  //-2
                                    BEGIN
                                        for vi_Comb15_08 := vi_Comb15_07 + 1 TO 12-0 DO
                                            BEGIN
                                            for vi_Comb15_09 := vi_Comb15_08 + 1 TO 13-0 DO
                                            BEGIN
                                                for vi_Comb15_10 := vi_Comb15_09 + 1 TO 14-0 DO
                                                BEGIN
                                                    for vi_Comb15_11 := vi_Comb15_10 + 1 TO 14-0 DO
                                                        BEGIN
                                                        for vi_Comb15_12 := vi_Comb15_11 + 1 TO 15-0 DO
                                                        BEGIN
                                                            for vi_Comb15_13 := vi_Comb15_12 + 1 TO 16-0 DO
                                                            BEGIN
                                                                STGR_Etapa1_13.Cells[00,vi_Linhas01] := INTtoSTR( vi_Linhas01 ) ;
                                                                STGR_Etapa1_13.Cells[01,vi_Linhas01] := '+' + INTtoSTR( vi_Base10Comb ) + '' ;
                                                                STGR_Etapa1_13.Cells[02,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_01,vi_Base10Comb] ;
                                                                STGR_Etapa1_13.Cells[03,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_02,vi_Base10Comb] ;
                                                                STGR_Etapa1_13.Cells[04,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_03,vi_Base10Comb] ;
                                                                STGR_Etapa1_13.Cells[05,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_04,vi_Base10Comb] ;
                                                                STGR_Etapa1_13.Cells[06,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_05,vi_Base10Comb] ;
                                                                STGR_Etapa1_13.Cells[07,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_06,vi_Base10Comb] ;
                                                                STGR_Etapa1_13.Cells[08,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_07,vi_Base10Comb] ;
                                                                STGR_Etapa1_13.Cells[09,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_08,vi_Base10Comb] ;
                                                                STGR_Etapa1_13.Cells[10,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_09,vi_Base10Comb] ;
                                                                STGR_Etapa1_13.Cells[11,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_10,vi_Base10Comb] ;
                                                                STGR_Etapa1_13.Cells[12,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_11,vi_Base10Comb] ;
                                                                STGR_Etapa1_13.Cells[13,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_12,vi_Base10Comb] ;
                                                                STGR_Etapa1_13.Cells[14,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_13,vi_Base10Comb] ;
                                                                vi_Linhas01 := vi_Linhas01 + 1;
                                                            END; //  for vi_Comb15_13
                                                        END; //  for vi_Comb15_12
                                                    END; //  for vi_Comb15_11
                                                END; //  for vi_Comb15_10
                                            END; //  for vi_Comb15_09
                            STGR_Etapa1_13.RowCount := vi_Linhas01;
                            STGR_Etapa1_13.Repaint;
                sleep(1);
                                        END; //  for vi_Comb15_08
                                    END; //  for vi_Comb15_07
                                END; //  for vi_Comb15_06
                            END; //  for vi_Comb15_05
                        END; //  for vi_Comb15_04
                    END; //  for vi_Comb15_03
                END; //  for vi_Comb15_02
            END; //  for vi_Comb15_01
        END; //  for vi_Base10Comb
    vi_Linhas01 := 1;
    sleep(75);
        for vi_Base10Comb := 1 TO (STGR_Base10.RowCount-1) DO
        BEGIN
            for vi_Comb10_01 := 2 TO 06 DO
            BEGIN
                for vi_Comb10_02 := vi_Comb10_01 + 1 TO 07 DO
                BEGIN
                    for vi_Comb10_03 := vi_Comb10_02 + 1 TO 08 DO
                    BEGIN
                        for vi_Comb10_04 := vi_Comb10_03 + 1 TO 09 DO
                        BEGIN
                            for vi_Comb10_05 := vi_Comb10_04 + 1 TO 10 DO
                            BEGIN
                                for vi_Comb10_06 := vi_Comb10_05 + 1 TO 11 DO
                                BEGIN
                                    STGR_Etapa01_06.Cells[00,vi_Linhas01] := INTtoSTR( vi_Linhas01 ) ;
                                    STGR_Etapa01_06.Cells[01,vi_Linhas01] := '+' + INTtoSTR( vi_Base10Comb ) + '' ;
                                    STGR_Etapa01_06.Cells[02,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_01,vi_Base10Comb] ;
                                    STGR_Etapa01_06.Cells[03,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_02,vi_Base10Comb] ;
                                    STGR_Etapa01_06.Cells[04,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_03,vi_Base10Comb] ;
                                    STGR_Etapa01_06.Cells[05,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_04,vi_Base10Comb] ;
                                    STGR_Etapa01_06.Cells[06,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_05,vi_Base10Comb] ;
                                    STGR_Etapa01_06.Cells[07,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_06,vi_Base10Comb] ;
                                    vi_Linhas01 := vi_Linhas01 + 1;
                                END; //  for vi_Comb10_06
                            END; //  for vi_Comb10_05
                        END; //  for vi_Comb10_04
                        STGR_Etapa01_06.RowCount := vi_Linhas01;
                        STGR_Etapa01_06.Repaint;
                sleep(1);
                    END; //  for vi_Comb10_03
                END; //  for vi_Comb10_02
            END; //  for vi_Comb10_01
        END; //  for vi_Base10Comb
      sleep(75);  

    finally
        STGR_Etapa01_06.RowCount := vi_Linhas01;
        STGR_Etapa01_06.Repaint;    
        STGR_Etapa03_15.RowCount := vi_Linhas01;
        STGR_Etapa03_15.Repaint;
    end;
    STGR_Etapa03_15.RowCount := vi_Linhas01;
    STGR_Etapa03_15.Repaint;
            STGR_Etapa03_15.Repaint;
    PGBR_Etapa_01.Position := 80;
    PGBR_Etapa_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // procedure



Procedure T_F_Gerador_ResDiv_25Linhas2.Gerar19_14e05();
var
     vi_Linhas01, vi_SomaTotal : integer;
     vi_Comb19_01, vi_Comb19_02 : integer;
     vi_nlinha15, vi_nlinha10: smallint;
begin
    PGBR_Etapa_01_01.Position :=80   ;
    PGBR_Etapa_01_01.Repaint;
    LA_Gerar_Comb.Caption := '#:                   ';
    LA_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINA��ES   ||||
    // ||||=============================||||
    // =====================================
    STGR_Etapa01_19.Repaint;
    SCBX_dados.HorzScrollBar.Position := 6350;
    SCBX_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    vi_Linhas01 := STGR_Etapa01_19.RowCount;
    try
        for vi_Comb19_01 := 1 TO (STGR_Etapa1_14.RowCount-1) DO
        BEGIN
            for vi_Comb19_02 := 1 TO (STGR_Etapa01_05.RowCount-1)  DO
            BEGIN
                vi_SomaTotal :=
                 strTOint(STGR_Etapa1_14.Cells[2,vi_Comb19_01]) +                 strTOint(STGR_Etapa1_14.Cells[3,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_14.Cells[4,vi_Comb19_01]) +                 strTOint(STGR_Etapa1_14.Cells[5,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_14.Cells[6,vi_Comb19_01]) +                 strTOint(STGR_Etapa1_14.Cells[7,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_14.Cells[8,vi_Comb19_01]) +                 strTOint(STGR_Etapa1_14.Cells[9,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_14.Cells[10,vi_Comb19_01]) +                strTOint(STGR_Etapa1_14.Cells[11,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_14.Cells[12,vi_Comb19_01]) +				   strTOint(STGR_Etapa1_14.Cells[13,vi_Comb19_01]) +
				 strTOint(STGR_Etapa1_14.Cells[14,vi_Comb19_01]) +				   strTOint(STGR_Etapa1_14.Cells[15,vi_Comb19_01]) +
                 strTOint(STGR_Etapa01_05.Cells[02,vi_Comb19_02]) +                 strTOint(STGR_Etapa01_05.Cells[03,vi_Comb19_02]) +
                 strTOint(STGR_Etapa01_05.Cells[04,vi_Comb19_02]) +                 strTOint(STGR_Etapa01_05.Cells[05,vi_Comb19_02]) +
                 strTOint(STGR_Etapa01_05.Cells[06,vi_Comb19_02]) 
                ;
                vi_nlinha15 := strTOint(STGR_Etapa1_14.Cells[01,vi_Comb19_01]);
                vi_nlinha10 := strTOint(STGR_Etapa01_05.Cells[01,vi_Comb19_02]);
                if not(vi_nlinha15 = vi_nlinha10) then
                    continue;
                if vi_SomaTotal = 247 then
                begin
                    STGR_Etapa01_19.Cells[00,vi_Linhas01] := INTtoSTR( vi_Linhas01 ) ;
                    STGR_Etapa01_19.Cells[01,vi_Linhas01] := STGR_Etapa1_14.Cells[01,vi_Comb19_01] + '/' + STGR_Etapa01_05.Cells[01,vi_Comb19_02];
                    STGR_Etapa01_19.Cells[02,vi_Linhas01] := STGR_Etapa1_14.Cells[02,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[03,vi_Linhas01] := STGR_Etapa1_14.Cells[03,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[04,vi_Linhas01] := STGR_Etapa1_14.Cells[04,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[05,vi_Linhas01] := STGR_Etapa1_14.Cells[05,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[06,vi_Linhas01] := STGR_Etapa1_14.Cells[06,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[07,vi_Linhas01] := STGR_Etapa1_14.Cells[07,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[08,vi_Linhas01] := STGR_Etapa1_14.Cells[08,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[09,vi_Linhas01] := STGR_Etapa1_14.Cells[09,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[10,vi_Linhas01] := STGR_Etapa1_14.Cells[10,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[11,vi_Linhas01] := STGR_Etapa1_14.Cells[11,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[12,vi_Linhas01] := STGR_Etapa1_14.Cells[12,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[13,vi_Linhas01] :=  STGR_Etapa1_14.Cells[13,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[14,vi_Linhas01] :=  STGR_Etapa1_14.Cells[14,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[15,vi_Linhas01] :=  STGR_Etapa1_14.Cells[15,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[16,vi_Linhas01] :=  STGR_Etapa01_05.Cells[02,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[17,vi_Linhas01] :=  STGR_Etapa01_05.Cells[03,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[18,vi_Linhas01] :=  STGR_Etapa01_05.Cells[04,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[19,vi_Linhas01] :=  STGR_Etapa01_05.Cells[05,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[20,vi_Linhas01] :=  STGR_Etapa01_05.Cells[06,vi_Comb19_02] ; 
                    STGR_Etapa01_19.Cells[21,vi_Linhas01] := INTtoSTR( vi_SomaTotal ) + '' ;
                    if QtdPares19 (vi_Linhas01) then
                    begin
                        Self.Ordenar_Comb19(vi_Linhas01);                    
                        vi_Linhas01 := vi_Linhas01 + 1;
                    end;
                end; // if
            END; //  for vi_Comb15_06
            STGR_Etapa01_19.RowCount := vi_Linhas01;
            STGR_Etapa01_19.Repaint;
                sleep(02);
        END; //  for vi_Comb15_05

    finally
        STGR_Etapa01_19.RowCount := vi_Linhas01;
        STGR_Etapa01_19.Repaint;
    end;
    PGBR_Etapa_01_01.Position :=92   ;
    PGBR_Etapa_01_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // procedure



Procedure T_F_Gerador_ResDiv_25Linhas2.Gerar19_15e04();
var
     vi_Linhas01, vi_SomaTotal : integer;
     vi_Comb19_01, vi_Comb19_02 : integer;
     vi_nlinha15, vi_nlinha10: smallint;
begin
    PGBR_Etapa_01_01.Position :=93  ;
    PGBR_Etapa_01_01.Repaint;
    LA_Gerar_Comb.Caption := '#:                   ';
    LA_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINA��ES   ||||
    // ||||=============================||||
    // =====================================
    STGR_Etapa01_19.Repaint;
    SCBX_dados.HorzScrollBar.Position := 6350;
    SCBX_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    vi_Linhas01 := STGR_Etapa01_19.RowCount;
    try
        for vi_Comb19_01 := 1 TO (STGR_Etapa1_15.RowCount-1) DO
        BEGIN
            for vi_Comb19_02 := 1 TO (STGR_Etapa01_04.RowCount-1)  DO
            BEGIN
                vi_SomaTotal :=
                 strTOint(STGR_Etapa1_15.Cells[2,vi_Comb19_01]) +                 strTOint(STGR_Etapa1_15.Cells[3,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_15.Cells[4,vi_Comb19_01]) +                 strTOint(STGR_Etapa1_15.Cells[5,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_15.Cells[6,vi_Comb19_01]) +                 strTOint(STGR_Etapa1_15.Cells[7,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_15.Cells[8,vi_Comb19_01]) +                 strTOint(STGR_Etapa1_15.Cells[9,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_15.Cells[10,vi_Comb19_01]) +                strTOint(STGR_Etapa1_15.Cells[11,vi_Comb19_01]) +
                 strTOint(STGR_Etapa1_15.Cells[12,vi_Comb19_01]) +				   strTOint(STGR_Etapa1_15.Cells[13,vi_Comb19_01]) +
				 strTOint(STGR_Etapa1_15.Cells[14,vi_Comb19_01]) +				   strTOint(STGR_Etapa1_15.Cells[15,vi_Comb19_01]) +
				 strTOint(STGR_Etapa1_15.Cells[16,vi_Comb19_01]) +				   				 
                 strTOint(STGR_Etapa01_04.Cells[02,vi_Comb19_02]) +                 strTOint(STGR_Etapa01_04.Cells[03,vi_Comb19_02]) +
                 strTOint(STGR_Etapa01_04.Cells[04,vi_Comb19_02]) +                 strTOint(STGR_Etapa01_04.Cells[05,vi_Comb19_02]) 
                ;
                vi_nlinha15 := strTOint(STGR_Etapa1_15.Cells[01,vi_Comb19_01]);
                vi_nlinha10 := strTOint(STGR_Etapa01_04.Cells[01,vi_Comb19_02]);
                if not(vi_nlinha15 = vi_nlinha10) then
                    continue;
                if vi_SomaTotal = 247 then
                begin
                    STGR_Etapa01_19.Cells[00,vi_Linhas01] := INTtoSTR( vi_Linhas01 ) ;
                    STGR_Etapa01_19.Cells[01,vi_Linhas01] := STGR_Etapa1_15.Cells[01,vi_Comb19_01] + '/' + STGR_Etapa01_04.Cells[01,vi_Comb19_02];
                    STGR_Etapa01_19.Cells[02,vi_Linhas01] := STGR_Etapa1_15.Cells[02,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[03,vi_Linhas01] := STGR_Etapa1_15.Cells[03,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[04,vi_Linhas01] := STGR_Etapa1_15.Cells[04,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[05,vi_Linhas01] := STGR_Etapa1_15.Cells[05,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[06,vi_Linhas01] := STGR_Etapa1_15.Cells[06,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[07,vi_Linhas01] := STGR_Etapa1_15.Cells[07,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[08,vi_Linhas01] := STGR_Etapa1_15.Cells[08,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[09,vi_Linhas01] := STGR_Etapa1_15.Cells[09,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[10,vi_Linhas01] := STGR_Etapa1_15.Cells[10,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[11,vi_Linhas01] := STGR_Etapa1_15.Cells[11,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[12,vi_Linhas01] := STGR_Etapa1_15.Cells[12,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[13,vi_Linhas01] := STGR_Etapa1_15.Cells[13,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[14,vi_Linhas01] := STGR_Etapa1_15.Cells[14,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[15,vi_Linhas01] := STGR_Etapa1_15.Cells[15,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[16,vi_Linhas01] := STGR_Etapa1_15.Cells[16,vi_Comb19_01] ;
                    STGR_Etapa01_19.Cells[17,vi_Linhas01] :=  STGR_Etapa01_04.Cells[02,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[18,vi_Linhas01] :=  STGR_Etapa01_04.Cells[03,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[19,vi_Linhas01] :=  STGR_Etapa01_04.Cells[04,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[20,vi_Linhas01] :=  STGR_Etapa01_04.Cells[05,vi_Comb19_02] ;
                    STGR_Etapa01_19.Cells[21,vi_Linhas01] := INTtoSTR( vi_SomaTotal ) + '' ;
                    if QtdPares19 (vi_Linhas01) then
                    begin
                        Self.Ordenar_Comb19(vi_Linhas01);                    
                        vi_Linhas01 := vi_Linhas01 + 1;
                    end;
                end; // if
            END; //  for vi_Comb19_02
            STGR_Etapa01_19.RowCount := vi_Linhas01;
            STGR_Etapa01_19.Repaint;
                sleep(02);
        END; //  for vi_Comb19_01

    finally
        STGR_Etapa01_19.RowCount := vi_Linhas01;
        STGR_Etapa01_19.Repaint;
    end;
    PGBR_Etapa_01_01.Position :=100  ;
    PGBR_Etapa_01_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // procedure





Procedure T_F_Gerador_ResDiv_25Linhas2.AnaliseComb_14e05();
var
     vi_Combinacoes1, vi_Linhas01, vi_Base10Comb : integer;
     vi_Comb15_01, vi_Comb15_02, vi_Comb15_03, vi_Comb15_04, vi_Comb15_05, vi_Comb15_06, vi_Comb15_07, vi_Comb15_08, vi_Comb15_09, vi_Comb15_10, vi_Comb15_11, vi_Comb15_12, vi_Comb15_13, vi_Comb15_14 : integer;
     vi_Comb10_01, vi_Comb10_02, vi_Comb10_03, vi_Comb10_04, vi_Comb10_05 : integer;
begin
    PGBR_Etapa_01.Position :=80 ;
    PGBR_Etapa_01.Repaint;
    LA_Gerar_Comb.Caption := '#:                   ';
    LA_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINA��ES   ||||
    // ||||=============================||||
    // =====================================
    STGR_Etapa01_05.RowCount := vi_Linhas01;
    STGR_Etapa1_14.RowCount := vi_Linhas01;
    STGR_Etapa01_05.Repaint;
    STGR_Etapa1_14.Repaint;
    SCBX_dados.HorzScrollBar.Position := 4910; 
    SCBX_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    vi_Linhas01 := 1;
    vi_Combinacoes1 := 1;
    try
        for vi_Base10Comb := 1 TO (STGR_Base10.RowCount-1) DO
        BEGIN
            for vi_Comb15_01 := 2 TO 03 DO
            BEGIN
                for vi_Comb15_02 := vi_Comb15_01 + 1 TO 04 DO
                BEGIN
                    for vi_Comb15_03 := vi_Comb15_02 + 1 TO 05 DO
                    BEGIN
                        for vi_Comb15_04 := vi_Comb15_03 + 1 TO 06 DO
                        BEGIN
                            for vi_Comb15_05 := vi_Comb15_04 + 1 TO 07 DO
                            BEGIN
                                for vi_Comb15_06 := vi_Comb15_05 + 1 TO 08 DO
                                BEGIN
                                    for vi_Comb15_07 := vi_Comb15_06 + 1 TO 09 DO
                                    BEGIN
                                        for vi_Comb15_08 := vi_Comb15_07 + 1 TO 10-0 DO  //-1
                                            BEGIN
                                            for vi_Comb15_09 := vi_Comb15_08 + 1 TO 11-0 DO
                                            BEGIN
                                                for vi_Comb15_10 := vi_Comb15_09 + 1 TO 12-0 DO
                                                BEGIN
                                                    for vi_Comb15_11 := vi_Comb15_10 + 1 TO 13-0 DO
                                                        BEGIN
                                                        for vi_Comb15_12 := vi_Comb15_11 + 1 TO 14-0 DO
                                                        BEGIN
                                                            for vi_Comb15_13 := vi_Comb15_12 + 1 TO 15-0 DO
                                                            BEGIN
                                                                for vi_Comb15_14 := vi_Comb15_13 + 1 TO 16-0 DO
                                                                BEGIN
                                                                    STGR_Etapa1_14.Cells[00,vi_Linhas01] := INTtoSTR( vi_Linhas01 ) ;
                                                                    STGR_Etapa1_14.Cells[01,vi_Linhas01] := '+' + INTtoSTR( vi_Base10Comb ) + '' ;
                                                                    STGR_Etapa1_14.Cells[02,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_01,vi_Base10Comb] ;
                                                                    STGR_Etapa1_14.Cells[03,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_02,vi_Base10Comb] ;
                                                                    STGR_Etapa1_14.Cells[04,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_03,vi_Base10Comb] ;
                                                                    STGR_Etapa1_14.Cells[05,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_04,vi_Base10Comb] ;
                                                                    STGR_Etapa1_14.Cells[06,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_05,vi_Base10Comb] ;
                                                                    STGR_Etapa1_14.Cells[07,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_06,vi_Base10Comb] ;
                                                                    STGR_Etapa1_14.Cells[08,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_07,vi_Base10Comb] ;
                                                                    STGR_Etapa1_14.Cells[09,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_08,vi_Base10Comb] ;
                                                                    STGR_Etapa1_14.Cells[10,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_09,vi_Base10Comb] ;
                                                                    STGR_Etapa1_14.Cells[11,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_10,vi_Base10Comb] ;
                                                                    STGR_Etapa1_14.Cells[12,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_11,vi_Base10Comb] ;
                                                                    STGR_Etapa1_14.Cells[13,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_12,vi_Base10Comb] ;
                                                                    STGR_Etapa1_14.Cells[14,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_13,vi_Base10Comb] ;
                                                                    STGR_Etapa1_14.Cells[15,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_14,vi_Base10Comb] ;
                                                                    vi_Linhas01 := vi_Linhas01 + 1;
                                                                END; //  for vi_Comb15_14
                                                            END; //  for vi_Comb15_13
                                                        END; //  for vi_Comb15_12
                                                    END; //  for vi_Comb15_11
                                STGR_Etapa1_14.RowCount := vi_Linhas01;
                                STGR_Etapa1_14.Repaint;
                                                END; //  for vi_Comb15_10
                                            END; //  for vi_Comb15_09
                                        END; //  for vi_Comb15_08
                                    END; //  for vi_Comb15_07
                                END; //  for vi_Comb15_06
                            END; //  for vi_Comb15_05
                        END; //  for vi_Comb15_04
                    END; //  for vi_Comb15_03
                END; //  for vi_Comb15_02
            END; //  for vi_Comb15_01
        END; //  for vi_Base10Comb
    vi_Linhas01 := 1;
    sleep(75);
        for vi_Base10Comb := 1 TO (STGR_Base10.RowCount-1) DO
        BEGIN
            for vi_Comb10_01 := 2 TO 07 DO
            BEGIN
                for vi_Comb10_02 := vi_Comb10_01 + 1 TO 08 DO
                BEGIN
                    for vi_Comb10_03 := vi_Comb10_02 + 1 TO 09 DO
                    BEGIN
                        for vi_Comb10_04 := vi_Comb10_03 + 1 TO 10 DO
                        BEGIN
                            for vi_Comb10_05 := vi_Comb10_04 + 1 TO 11 DO
                            BEGIN
                                STGR_Etapa01_05.Cells[00,vi_Linhas01] := INTtoSTR( vi_Linhas01 ) ;
                                STGR_Etapa01_05.Cells[01,vi_Linhas01] := '+' + INTtoSTR( vi_Base10Comb ) + '' ;
                                STGR_Etapa01_05.Cells[02,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_01,vi_Base10Comb] ;
                                STGR_Etapa01_05.Cells[03,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_02,vi_Base10Comb] ;
                                STGR_Etapa01_05.Cells[04,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_03,vi_Base10Comb] ;
                                STGR_Etapa01_05.Cells[05,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_04,vi_Base10Comb] ;
                                STGR_Etapa01_05.Cells[06,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_05,vi_Base10Comb] ;
                                vi_Linhas01 := vi_Linhas01 + 1;
                            END; //  for vi_Comb10_05
                            STGR_Etapa01_05.RowCount := vi_Linhas01;
                            STGR_Etapa01_05.Repaint;
                        END; //  for vi_Comb10_04
                    END; //  for vi_Comb10_03
                END; //  for vi_Comb10_02
            END; //  for vi_Comb10_01
        END; //  for vi_Base10Comb
     sleep(75);
    finally
        STGR_Etapa01_05.RowCount := vi_Linhas01;
        STGR_Etapa01_05.Repaint;    
        STGR_Etapa03_15.RowCount := vi_Linhas01;
        STGR_Etapa03_15.Repaint;
    end;
    STGR_Etapa03_15.RowCount := vi_Linhas01;
    STGR_Etapa03_15.Repaint;
            STGR_Etapa03_15.Repaint;
    PGBR_Etapa_01.Position := 92;
    PGBR_Etapa_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // procedure




Procedure T_F_Gerador_ResDiv_25Linhas2.AnaliseComb_15e04();
var
     vi_Combinacoes1, vi_Linhas01, vi_Base10Comb : integer;
     vi_Comb15_01, vi_Comb15_02, vi_Comb15_03, vi_Comb15_04, vi_Comb15_05, vi_Comb15_06, vi_Comb15_07, vi_Comb15_08, vi_Comb15_09, vi_Comb15_10, vi_Comb15_11, vi_Comb15_12, vi_Comb15_13, vi_Comb15_14, vi_Comb15_15 : integer;
     vi_Comb10_01, vi_Comb10_02, vi_Comb10_03, vi_Comb10_04 : integer;
begin
    PGBR_Etapa_01.Position :=92 ;
    PGBR_Etapa_01.Repaint;
    LA_Gerar_Comb.Caption := '#:                   ';
    LA_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINA��ES   ||||
    // ||||=============================||||
    // =====================================
    STGR_Etapa01_04.RowCount := vi_Linhas01;
    STGR_Etapa1_15.RowCount := vi_Linhas01;
    STGR_Etapa01_04.Repaint;
    STGR_Etapa1_15.Repaint;
    SCBX_dados.HorzScrollBar.Position := 5799;
    SCBX_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    vi_Linhas01 := 1;
    vi_Combinacoes1 := 1;
    try
        for vi_Base10Comb := 1 TO (STGR_Base10.RowCount-1) DO
        BEGIN
            for vi_Comb15_01 := 2 TO 02 DO
            BEGIN
                for vi_Comb15_02 := vi_Comb15_01 + 1 TO 03 DO
                BEGIN
                    for vi_Comb15_03 := vi_Comb15_02 + 1 TO 04 DO
                    BEGIN
                        for vi_Comb15_04 := vi_Comb15_03 + 1 TO 05 DO
                        BEGIN
                            for vi_Comb15_05 := vi_Comb15_04 + 1 TO 06 DO
                            BEGIN
                                for vi_Comb15_06 := vi_Comb15_05 + 1 TO 07 DO
                                BEGIN
                                    for vi_Comb15_07 := vi_Comb15_06 + 1 TO 08 DO
                                    BEGIN
                                        for vi_Comb15_08 := vi_Comb15_07 + 1 TO 09 DO
                                            BEGIN
                                            for vi_Comb15_09 := vi_Comb15_08 + 1 TO 10 DO
                                            BEGIN
                                                for vi_Comb15_10 := vi_Comb15_09 + 1 TO 11 DO
                                                BEGIN
                                                    for vi_Comb15_11 := vi_Comb15_10 + 1 TO 12 DO
                                                        BEGIN
                                                        for vi_Comb15_12 := vi_Comb15_11 + 1 TO 13 DO
                                                        BEGIN
                                                            for vi_Comb15_13 := vi_Comb15_12 + 1 TO 14 DO
                                                            BEGIN
                                                                for vi_Comb15_14 := vi_Comb15_13 + 1 TO 15 DO
                                                                BEGIN
                                                                    for vi_Comb15_15 := vi_Comb15_14 + 1 TO 16 DO
                                                                    BEGIN
                                                                        STGR_Etapa1_15.Cells[00,vi_Linhas01] := INTtoSTR( vi_Linhas01 ) ;
                                                                        STGR_Etapa1_15.Cells[01,vi_Linhas01] := '+' + INTtoSTR( vi_Base10Comb ) + '' ;
                                                                        STGR_Etapa1_15.Cells[02,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_01,vi_Base10Comb] ;
                                                                        STGR_Etapa1_15.Cells[03,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_02,vi_Base10Comb] ;
                                                                        STGR_Etapa1_15.Cells[04,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_03,vi_Base10Comb] ;
                                                                        STGR_Etapa1_15.Cells[05,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_04,vi_Base10Comb] ;
                                                                        STGR_Etapa1_15.Cells[06,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_05,vi_Base10Comb] ;
                                                                        STGR_Etapa1_15.Cells[07,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_06,vi_Base10Comb] ;
                                                                        STGR_Etapa1_15.Cells[08,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_07,vi_Base10Comb] ;
                                                                        STGR_Etapa1_15.Cells[09,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_08,vi_Base10Comb] ;
                                                                        STGR_Etapa1_15.Cells[10,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_09,vi_Base10Comb] ;
                                                                        STGR_Etapa1_15.Cells[11,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_10,vi_Base10Comb] ;
                                                                        STGR_Etapa1_15.Cells[12,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_11,vi_Base10Comb] ;
                                                                        STGR_Etapa1_15.Cells[13,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_12,vi_Base10Comb] ;
                                                                        STGR_Etapa1_15.Cells[14,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_13,vi_Base10Comb] ;
                                                                        STGR_Etapa1_15.Cells[15,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_14,vi_Base10Comb] ;
                                                                        STGR_Etapa1_15.Cells[16,vi_Linhas01] := STGR_Base.Cells[vi_Comb15_15,vi_Base10Comb] ;
                                                                        vi_Linhas01 := vi_Linhas01 + 1;
                                                                    END; //  for vi_Comb15_15
                                                                END; //  for vi_Comb15_14
                                                            END; //  for vi_Comb15_13
                                                        END; //  for vi_Comb15_12
                                                    END; //  for vi_Comb15_11
                                                END; //  for vi_Comb15_10
                                            END; //  for vi_Comb15_09
                                    STGR_Etapa1_15.RowCount := vi_Linhas01;
                                    STGR_Etapa1_15.Repaint;
                                        END; //  for vi_Comb15_08
                                    END; //  for vi_Comb15_07
                                END; //  for vi_Comb15_06
                            END; //  for vi_Comb15_05
                        END; //  for vi_Comb15_04
                    END; //  for vi_Comb15_03
                END; //  for vi_Comb15_02
            END; //  for vi_Comb15_01
        END; //  for vi_Base10Comb

    vi_Linhas01 := 1;
    sleep(75);
        for vi_Base10Comb := 1 TO (STGR_Base10.RowCount-1) DO
        BEGIN
            for vi_Comb10_01 := 2 TO 08 DO
            BEGIN
                for vi_Comb10_02 := vi_Comb10_01 + 1 TO 09 DO
                BEGIN
                    for vi_Comb10_03 := vi_Comb10_02 + 1 TO 10 DO
                    BEGIN
                        for vi_Comb10_04 := vi_Comb10_03 + 1 TO 11 DO
                        BEGIN
                            STGR_Etapa01_04.Cells[00,vi_Linhas01] := INTtoSTR( vi_Linhas01 ) ;
                            STGR_Etapa01_04.Cells[01,vi_Linhas01] := '+' + INTtoSTR( vi_Base10Comb ) + '' ;
                            STGR_Etapa01_04.Cells[02,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_01,vi_Base10Comb] ;
                            STGR_Etapa01_04.Cells[03,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_02,vi_Base10Comb] ;
                            STGR_Etapa01_04.Cells[04,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_03,vi_Base10Comb] ;
                            STGR_Etapa01_04.Cells[05,vi_Linhas01] := STGR_Base10.Cells[vi_Comb10_04,vi_Base10Comb] ;
                            vi_Linhas01 := vi_Linhas01 + 1;
                        END; //  for vi_Comb10_04
                    END; //  for vi_Comb10_03
                END; //  for vi_Comb10_02
                STGR_Etapa01_04.RowCount := vi_Linhas01;
                STGR_Etapa01_04.Repaint;
            END; //  for vi_Comb10_01
        END; //  for vi_Base10Comb
     sleep(75);
    finally
        STGR_Etapa01_04.RowCount := vi_Linhas01;
        STGR_Etapa01_04.Repaint;    
        STGR_Etapa03_15.RowCount := vi_Linhas01;
        STGR_Etapa03_15.Repaint;
    end;
    STGR_Etapa03_15.RowCount := vi_Linhas01;
    STGR_Etapa03_15.Repaint;
            STGR_Etapa03_15.Repaint;
    PGBR_Etapa_01.Position := 100;
    PGBR_Etapa_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // procedure



FUNCTION T_F_Gerador_ResDiv_25Linhas2.FN_VALIDAR_ETAPA_2_parte1(vi_linhas, vi_soma: Integer) : Boolean;
VAR
     vi_Comb12i_1, vi_Comb12i_2, vi_Comb12i_3, vi_Comb12i_4, vi_Comb12i_5, vi_Comb12i_6, vi_Comb12i_7, vi_Comb12i_8, vi_Comb12i_9, vi_Comb12i_A, vi_Comb12i_B, vi_Comb12i_C : iNTEGER;
     vi_linhas12, vi_ContaSel1, vi_SomaTotal, vi_ContarQtdPares, vi_Contar_repeticoes : INTEGER;
     vi_12Numeros : array [1..12] of Shortint;
BEGIN
	STGR_Etapa01_19.Cells[22,vi_linhas] := 'F';
    vi_linhas12 := STGR_Etapa02_12.RowCount;
    vi_Contar_repeticoes := 0;
	for  vi_Comb12i_1 := 2 to 10 do
	begin
		for  vi_Comb12i_2 := vi_Comb12i_1 +1  to 11 do
		begin
			for  vi_Comb12i_3 := vi_Comb12i_2+ 1  to 12 do
			begin
				for  vi_Comb12i_4 := vi_Comb12i_3 +1  to 13 do
				begin
					for  vi_Comb12i_5 := vi_Comb12i_4 +1  to 14 do
					begin
						for  vi_Comb12i_6 := vi_Comb12i_5 +1  to 15 do
						begin
    						for  vi_Comb12i_7 := vi_Comb12i_6 +1  to 16 do
	    					begin
								for  vi_Comb12i_8 := vi_Comb12i_7+ 1  to 16 do
								begin
									for  vi_Comb12i_9 := vi_Comb12i_8 +1  to 17 do
									begin
										for  vi_Comb12i_A := vi_Comb12i_9 +1  to 18 do
										begin
											for  vi_Comb12i_B := vi_Comb12i_A +1  to 19 do
											begin
												for  vi_Comb12i_C := vi_Comb12i_B +1  to 20 do
												begin
													vi_12Numeros [01] := STRtoINT(STGR_Etapa01_19.Cells[vi_Comb12i_1,vi_linhas]);
													vi_12Numeros [02] := STRtoINT(STGR_Etapa01_19.Cells[vi_Comb12i_2,vi_linhas]);
													vi_12Numeros [03] := STRtoINT(STGR_Etapa01_19.Cells[vi_Comb12i_3,vi_linhas]);
													vi_12Numeros [04] := STRtoINT(STGR_Etapa01_19.Cells[vi_Comb12i_4,vi_linhas]);
													vi_12Numeros [05] := STRtoINT(STGR_Etapa01_19.Cells[vi_Comb12i_5,vi_linhas]);
													vi_12Numeros [06] := STRtoINT(STGR_Etapa01_19.Cells[vi_Comb12i_6,vi_linhas]);
													vi_12Numeros [07] := STRtoINT(STGR_Etapa01_19.Cells[vi_Comb12i_7,vi_linhas]);
													vi_12Numeros [08] := STRtoINT(STGR_Etapa01_19.Cells[vi_Comb12i_8,vi_linhas]);
													vi_12Numeros [09] := STRtoINT(STGR_Etapa01_19.Cells[vi_Comb12i_9,vi_linhas]);
													vi_12Numeros [10] := STRtoINT(STGR_Etapa01_19.Cells[vi_Comb12i_A,vi_linhas]);
													vi_12Numeros [11] := STRtoINT(STGR_Etapa01_19.Cells[vi_Comb12i_B,vi_linhas]);
													vi_12Numeros [12] := STRtoINT(STGR_Etapa01_19.Cells[vi_Comb12i_C,vi_linhas]);
													vi_SomaTotal := (vi_12Numeros [01] + vi_12Numeros [02] + vi_12Numeros [03] + vi_12Numeros [04] + vi_12Numeros [05]+ vi_12Numeros [06]+ vi_12Numeros [07] + vi_12Numeros [08] + vi_12Numeros [09] + vi_12Numeros [10]+ vi_12Numeros [11]+ vi_12Numeros [12]);
													if (vi_SomaTotal = vi_soma ) then
													begin
														vi_ContarQtdPares := 0;
														for  vi_ContaSel1 := 1  to 12  do
														begin
															if (vi_12Numeros[vi_ContaSel1] MOD 2) = 0  THEN
																vi_ContarQtdPares := vi_ContarQtdPares +1 ;
														end; // for
														if  (vi_ContarQtdPares = 6) then
														begin
															STGR_Etapa01_19.Cells[22,vi_linhas] := 'V';
                                                            // montar o grid com os 12 n�meros
                                                            STGR_Etapa02_12.Cells[00,vi_linhas12] := intTOstr(vi_linhas12);
                                                            STGR_Etapa02_12.Cells[01,vi_linhas12] := STGR_Etapa01_19.Cells[0,vi_linhas];
                                                            STGR_Etapa02_12.Cells[02,vi_linhas12] := intTOstr(vi_12Numeros [01]);
                                                            STGR_Etapa02_12.Cells[03,vi_linhas12] := intTOstr(vi_12Numeros [02]);
                                                            STGR_Etapa02_12.Cells[04,vi_linhas12] := intTOstr(vi_12Numeros [03]);
                                                            STGR_Etapa02_12.Cells[05,vi_linhas12] := intTOstr(vi_12Numeros [04]);
                                                            STGR_Etapa02_12.Cells[06,vi_linhas12] := intTOstr(vi_12Numeros [05]);
                                                            STGR_Etapa02_12.Cells[07,vi_linhas12] := intTOstr(vi_12Numeros [06]);
                                                            STGR_Etapa02_12.Cells[08,vi_linhas12] := intTOstr(vi_12Numeros [07]);
                                                            STGR_Etapa02_12.Cells[09,vi_linhas12] := intTOstr(vi_12Numeros [08]);
                                                            STGR_Etapa02_12.Cells[10,vi_linhas12] := intTOstr(vi_12Numeros [09]);
                                                            STGR_Etapa02_12.Cells[11,vi_linhas12] := intTOstr(vi_12Numeros [10]);
                                                            STGR_Etapa02_12.Cells[12,vi_linhas12] := intTOstr(vi_12Numeros [11]);
                                                            STGR_Etapa02_12.Cells[13,vi_linhas12] := intTOstr(vi_12Numeros [12]);
                                                            vi_linhas12 := vi_linhas12+1;
                                                            vi_Contar_repeticoes := vi_Contar_repeticoes + 1;
                                                           { if vi_Contar_repeticoes = 152 then
                                                            begin
                                                                STGR_Etapa02_12.RowCount:= vi_linhas12+1;
                                                                exit;
                                                            end;///if
                                                            }
															//Result := True;
															//exit;
														end; /// IF
													end; /// IF
												end; // for
											end; // for
										end; // for
                                    end; // for
                                end; // for
		    				end; // for
						end; // for
					end; // for
				end; // for
			end; // for
		end; // for
	end; // for
	//result := false;
    STGR_Etapa02_12.RowCount:= vi_linhas12;    
END;




FUNCTION T_F_Gerador_ResDiv_25Linhas2.FN_VALIDAR_ETAPA_2_parte2(vi_linhas, vi_soma: Integer) : Boolean;
VAR
     vi_Comb07i_1, vi_Comb07i_2, vi_Comb07i_3, vi_Comb07i_4, vi_Comb07i_5, vi_Comb07i_6, vi_Comb07i_7 : iNTEGER;
     vi_Contar, vi_ContaSel1, vi_SomaTotal, vi_ContarQtdPares : INTEGER;
     vi_7Numeros : array [1..7] of Shortint;
BEGIN
	STGR_Etapa01_19.Cells[23,vi_linhas] := 'F';
	for  vi_Comb07i_1 := 2 to 14 do
	begin
		for  vi_Comb07i_2 := vi_Comb07i_1 +1  to 15 do
		begin
			for  vi_Comb07i_3 := vi_Comb07i_2+ 1  to 16 do
			begin
				for  vi_Comb07i_4 := vi_Comb07i_3 +1  to 17 do
				begin
					for  vi_Comb07i_5 := vi_Comb07i_4 +1  to 18 do
					begin
						for  vi_Comb07i_6 := vi_Comb07i_5 +1  to 19 do
						begin
    						for  vi_Comb07i_7 := vi_Comb07i_6 +1  to 20 do
	    					begin
                                vi_7Numeros [01] := STRtoINT(STGR_Etapa01_19.Cells[vi_Comb07i_1,vi_linhas]);
                                vi_7Numeros [02] := STRtoINT(STGR_Etapa01_19.Cells[vi_Comb07i_2,vi_linhas]);
                                vi_7Numeros [03] := STRtoINT(STGR_Etapa01_19.Cells[vi_Comb07i_3,vi_linhas]);
                                vi_7Numeros [04] := STRtoINT(STGR_Etapa01_19.Cells[vi_Comb07i_4,vi_linhas]);
                                vi_7Numeros [05] := STRtoINT(STGR_Etapa01_19.Cells[vi_Comb07i_5,vi_linhas]);
                                vi_7Numeros [06] := STRtoINT(STGR_Etapa01_19.Cells[vi_Comb07i_6,vi_linhas]);
                                vi_7Numeros [07] := STRtoINT(STGR_Etapa01_19.Cells[vi_Comb07i_7,vi_linhas]);
                                vi_SomaTotal := (vi_7Numeros [01] + vi_7Numeros [02] + vi_7Numeros [03] + vi_7Numeros [04] + vi_7Numeros [05]+ vi_7Numeros [06]+ vi_7Numeros [07]);
                                if (vi_SomaTotal = vi_soma ) then
                                begin
                                    vi_ContarQtdPares := 0;
                                    for  vi_ContaSel1 := 1  to 7  do
                                    begin
                                        if (vi_7Numeros[vi_ContaSel1] MOD 2) = 0  THEN
                                            vi_ContarQtdPares := vi_ContarQtdPares +1 ;
                                    end; // for
                                    if  (vi_ContarQtdPares = 4) then
                                    begin
                                        STGR_Etapa01_19.Cells[23,vi_linhas] := 'V';
                                        Result := True;
                                        exit;
                                    end; /// IF
                                end; /// IF
		    				end; // for
						end; // for
					end; // for
				end; // for
			end; // for
		end; // for
	end; // for
	result := false;
END;


Procedure T_F_Gerador_ResDiv_25Linhas2.AnaliseComb_06e03();
var
     vi_SomaTotal, vi_Combinacoes1, vi_Linhas01, vi_Base10Comb : integer;
     vi_Comb06_01, vi_Comb06_02, vi_Comb06_03 : integer;
begin
    LA_Gerar_Comb.Caption := '#:                   ';
    LA_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINA��ES   ||||
    // ||||=============================||||
    // =====================================
    STGR_Etapa02_03.RowCount := vi_Linhas01;
    STGR_Etapa02_03.Repaint;
    STGR_Etapa02_06.Repaint;
    SCBX_dados.HorzScrollBar.Position := 7280;
    SCBX_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    vi_Linhas01 := 1;
    vi_Combinacoes1 := 1;
    try
    vi_Linhas01 := 1;
    sleep(5);
        for vi_Base10Comb := 1 TO (STGR_Etapa02_06.RowCount-1) DO
        BEGIN
            for vi_Comb06_01 := 2 TO 05 DO
            BEGIN
                for vi_Comb06_02 := vi_Comb06_01 + 1 TO 06 DO
                BEGIN
                    for vi_Comb06_03 := vi_Comb06_02 + 1 TO 07 DO
                    BEGIN
                        vi_SomaTotal := strTOint (STGR_Etapa02_06.Cells[vi_Comb06_01,vi_Base10Comb]) + STRtoINT (STGR_Etapa02_06.Cells[vi_Comb06_02,vi_Base10Comb]) + STRtoINT (STGR_Etapa02_06.Cells[vi_Comb06_03,vi_Base10Comb] );
                        IF (vi_SomaTotal>=28) and  (vi_SomaTotal<=29) THEN
                        BEGIN
                            STGR_Etapa02_03.Cells[00,vi_Linhas01] := INTtoSTR( vi_Linhas01 ) ;
                            STGR_Etapa02_03.Cells[01,vi_Linhas01] := '+' + INTtoSTR( vi_Base10Comb ) + '' ;
                            STGR_Etapa02_03.Cells[02,vi_Linhas01] := STGR_Etapa02_06.Cells[vi_Comb06_01,vi_Base10Comb] ;
                            STGR_Etapa02_03.Cells[03,vi_Linhas01] := STGR_Etapa02_06.Cells[vi_Comb06_02,vi_Base10Comb] ;
                            STGR_Etapa02_03.Cells[04,vi_Linhas01] := STGR_Etapa02_06.Cells[vi_Comb06_03,vi_Base10Comb] ;
                            vi_Linhas01 := vi_Linhas01 + 1;
                        END; /// IF
                    END; //  for vi_Comb10_03
                END; //  for vi_Comb10_02
            END; //  for vi_Comb06_01
        END; //  for vi_Base10Comb
		STGR_Etapa02_03.RowCount := vi_Linhas01;
		STGR_Etapa02_03.Repaint;		
    finally
        STGR_Etapa02_03.RowCount := vi_Linhas01;
        STGR_Etapa02_03.Repaint;    
    end;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // procedure



FUNCTION T_F_Gerador_ResDiv_25Linhas2.Validar_Blocos1e2 (vi_linhas01: INTEGER):boolean;
var
    vi_Contar, vi_qtdNaLinha1, vi_qtdNaLinha2, vi_qtdNaLinha3, vi_qtdNaLinha4 ,vi_qtdNaLinha5 : shortint;
    vi_qtdLinhasC1, vi_qtdLinhasC2, vi_qtdLinhasC3, vi_qtdLinhasC4 ,vi_qtdLinhasC5 : shortint;
begin
    vi_qtdNaLinha1 := 0;
    vi_qtdNaLinha2 := 0;
    vi_qtdNaLinha3 := 0;
    vi_qtdNaLinha4 := 0;
    vi_qtdNaLinha5 := 0;
    // ----> MONTADO E VERIFICANDO TODOS OS D�GITOS
    FOR vi_Contar :=2 TO 16 DO
    BEGIN
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco01.Cells[1,1]))  then
            vi_qtdNaLinha1 := vi_qtdNaLinha1 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco01.Cells[2,1]))  then
            vi_qtdNaLinha1 := vi_qtdNaLinha1 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco01.Cells[3,1]))  then
            vi_qtdNaLinha1 := vi_qtdNaLinha1 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco01.Cells[4,1]))  then
            vi_qtdNaLinha1 := vi_qtdNaLinha1 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco01.Cells[5,1]))  then
            vi_qtdNaLinha1 := vi_qtdNaLinha1 +1;

        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco01.Cells[1,2]))  then
            vi_qtdNaLinha2 := vi_qtdNaLinha2 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco01.Cells[2,2]))  then
            vi_qtdNaLinha2 := vi_qtdNaLinha2 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco01.Cells[3,2]))  then
            vi_qtdNaLinha2 := vi_qtdNaLinha2 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco01.Cells[4,2]))  then
            vi_qtdNaLinha2 := vi_qtdNaLinha2 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco01.Cells[5,2]))  then
            vi_qtdNaLinha2 := vi_qtdNaLinha2 +1;

        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco01.Cells[1,3]))  then
            vi_qtdNaLinha3 := vi_qtdNaLinha3 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco01.Cells[2,3]))  then
            vi_qtdNaLinha3 := vi_qtdNaLinha3 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco01.Cells[3,3]))  then
            vi_qtdNaLinha3 := vi_qtdNaLinha3 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco01.Cells[4,3]))  then
            vi_qtdNaLinha3 := vi_qtdNaLinha3 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco01.Cells[5,3]))  then
            vi_qtdNaLinha3 := vi_qtdNaLinha3 +1;

        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco01.Cells[1,4]))  then
            vi_qtdNaLinha4 := vi_qtdNaLinha4 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco01.Cells[2,4]))  then
            vi_qtdNaLinha4 := vi_qtdNaLinha4 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco01.Cells[3,4]))  then
            vi_qtdNaLinha4 := vi_qtdNaLinha4 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco01.Cells[4,4]))  then
            vi_qtdNaLinha4 := vi_qtdNaLinha4 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco01.Cells[5,4]))  then
            vi_qtdNaLinha4 := vi_qtdNaLinha4 +1;

        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco01.Cells[1,5]))  then
            vi_qtdNaLinha5 := vi_qtdNaLinha5 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco01.Cells[2,5]))  then
            vi_qtdNaLinha5 := vi_qtdNaLinha5 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco01.Cells[3,5]))  then
            vi_qtdNaLinha5 := vi_qtdNaLinha5 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco01.Cells[4,5]))  then
            vi_qtdNaLinha5 := vi_qtdNaLinha5 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco01.Cells[5,5]))  then
            vi_qtdNaLinha5 := vi_qtdNaLinha5 +1;
    END; // FOR vi_Contar1
    vi_qtdLinhasC1 := 0;
    vi_qtdLinhasC2 := 0;
    vi_qtdLinhasC3 := 0;
    vi_qtdLinhasC4 := 0;
    vi_qtdLinhasC5 := 0;
    //
    // verificando a quantia por linhas
    //
    if (vi_qtdNaLinha1 =1) then vi_qtdLinhasC1 := vi_qtdLinhasC1 +1;
    if (vi_qtdNaLinha2 =1) then vi_qtdLinhasC1 := vi_qtdLinhasC1 +1;
    if (vi_qtdNaLinha3 =1) then vi_qtdLinhasC1 := vi_qtdLinhasC1 +1;
    if (vi_qtdNaLinha4 =1) then vi_qtdLinhasC1 := vi_qtdLinhasC1 +1;
    if (vi_qtdNaLinha5 =1) then vi_qtdLinhasC1 := vi_qtdLinhasC1 +1;
    if (vi_qtdNaLinha1 =2) then vi_qtdLinhasC2 := vi_qtdLinhasC2 +1;
    if (vi_qtdNaLinha2 =2) then vi_qtdLinhasC2 := vi_qtdLinhasC2 +1;
    if (vi_qtdNaLinha3 =2) then vi_qtdLinhasC2 := vi_qtdLinhasC2 +1;
    if (vi_qtdNaLinha4 =2) then vi_qtdLinhasC2 := vi_qtdLinhasC2 +1;
    if (vi_qtdNaLinha5 =2) then vi_qtdLinhasC2 := vi_qtdLinhasC2 +1;

    if (vi_qtdNaLinha1 =3) then vi_qtdLinhasC3 := vi_qtdLinhasC3 +1;
    if (vi_qtdNaLinha2 =3) then vi_qtdLinhasC3 := vi_qtdLinhasC3 +1;
    if (vi_qtdNaLinha3 =3) then vi_qtdLinhasC3 := vi_qtdLinhasC3 +1;
    if (vi_qtdNaLinha4 =3) then vi_qtdLinhasC3 := vi_qtdLinhasC3 +1;
    if (vi_qtdNaLinha5 =3) then vi_qtdLinhasC3 := vi_qtdLinhasC3 +1;
    if (vi_qtdNaLinha1 =4) then vi_qtdLinhasC4 := vi_qtdLinhasC4 +1;
    if (vi_qtdNaLinha2 =4) then vi_qtdLinhasC4 := vi_qtdLinhasC4 +1;
    if (vi_qtdNaLinha3 =4) then vi_qtdLinhasC4 := vi_qtdLinhasC4 +1;
    if (vi_qtdNaLinha4 =4) then vi_qtdLinhasC4 := vi_qtdLinhasC4 +1;
    if (vi_qtdNaLinha5 =4) then vi_qtdLinhasC4 := vi_qtdLinhasC4 +1;

    if (vi_qtdNaLinha1 =5) then vi_qtdLinhasC5 := vi_qtdLinhasC4 +1;
    if (vi_qtdNaLinha2 =5) then vi_qtdLinhasC5 := vi_qtdLinhasC4 +1;
    if (vi_qtdNaLinha3 =5) then vi_qtdLinhasC5 := vi_qtdLinhasC4 +1;
    if (vi_qtdNaLinha4 =5) then vi_qtdLinhasC5 := vi_qtdLinhasC4 +1;
    if (vi_qtdNaLinha5 =5) then vi_qtdLinhasC5 := vi_qtdLinhasC4 +1;
    IF ( (vi_qtdLinhasC1 =1) AND (vi_qtdLinhasC2 =1) AND (vi_qtdLinhasC3 =1) AND (vi_qtdLinhasC4 =1) AND (vi_qtdLinhasC5 =1)
       ) OR (
    (vi_qtdLinhasC2 =2) AND (vi_qtdLinhasC3 =1) AND (vi_qtdLinhasC4 =2)
    )
    THEN
        Result := True
    else
    begin
        FOR vi_Contar :=2 TO 16 DO
        BEGIN
            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco02.Cells[1,1]))  then
                vi_qtdNaLinha1 := vi_qtdNaLinha1 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco02.Cells[2,1]))  then
                vi_qtdNaLinha1 := vi_qtdNaLinha1 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco02.Cells[3,1]))  then
                vi_qtdNaLinha1 := vi_qtdNaLinha1 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco02.Cells[4,1]))  then
                vi_qtdNaLinha1 := vi_qtdNaLinha1 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco02.Cells[5,1]))  then
                vi_qtdNaLinha1 := vi_qtdNaLinha1 +1;

            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco02.Cells[1,2]))  then
                vi_qtdNaLinha2 := vi_qtdNaLinha2 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco02.Cells[2,2]))  then
                vi_qtdNaLinha2 := vi_qtdNaLinha2 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco02.Cells[3,2]))  then
                vi_qtdNaLinha2 := vi_qtdNaLinha2 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco02.Cells[4,2]))  then
                vi_qtdNaLinha2 := vi_qtdNaLinha2 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco02.Cells[5,2]))  then
                vi_qtdNaLinha2 := vi_qtdNaLinha2 +1;

            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco02.Cells[1,3]))  then
                vi_qtdNaLinha3 := vi_qtdNaLinha3 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco02.Cells[2,3]))  then
                vi_qtdNaLinha3 := vi_qtdNaLinha3 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco02.Cells[3,3]))  then
                vi_qtdNaLinha3 := vi_qtdNaLinha3 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco02.Cells[4,3]))  then
                vi_qtdNaLinha3 := vi_qtdNaLinha3 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco02.Cells[5,3]))  then
                vi_qtdNaLinha3 := vi_qtdNaLinha3 +1;

            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco02.Cells[1,4]))  then
                vi_qtdNaLinha4 := vi_qtdNaLinha4 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco02.Cells[2,4]))  then
                vi_qtdNaLinha4 := vi_qtdNaLinha4 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco02.Cells[3,4]))  then
                vi_qtdNaLinha4 := vi_qtdNaLinha4 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco02.Cells[4,4]))  then
                vi_qtdNaLinha4 := vi_qtdNaLinha4 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco02.Cells[5,4]))  then
                vi_qtdNaLinha4 := vi_qtdNaLinha4 +1;

            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco02.Cells[1,5]))  then
                vi_qtdNaLinha5 := vi_qtdNaLinha5 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco02.Cells[2,5]))  then
                vi_qtdNaLinha5 := vi_qtdNaLinha5 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco02.Cells[3,5]))  then
                vi_qtdNaLinha5 := vi_qtdNaLinha5 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco02.Cells[4,5]))  then
                vi_qtdNaLinha5 := vi_qtdNaLinha5 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Bloco02.Cells[5,5]))  then
                vi_qtdNaLinha5 := vi_qtdNaLinha5 +1;
        END; // FOR vi_Contar1
        vi_qtdLinhasC1 := 0;
        vi_qtdLinhasC2 := 0;
        vi_qtdLinhasC3 := 0;
        vi_qtdLinhasC4 := 0;
        vi_qtdLinhasC5 := 0;
        //
        // verificando a quantia por linhas
        //
        if (vi_qtdNaLinha1 =1) then vi_qtdLinhasC1 := vi_qtdLinhasC1 +1;
        if (vi_qtdNaLinha2 =1) then vi_qtdLinhasC1 := vi_qtdLinhasC1 +1;
        if (vi_qtdNaLinha3 =1) then vi_qtdLinhasC1 := vi_qtdLinhasC1 +1;
        if (vi_qtdNaLinha4 =1) then vi_qtdLinhasC1 := vi_qtdLinhasC1 +1;
        if (vi_qtdNaLinha5 =1) then vi_qtdLinhasC1 := vi_qtdLinhasC1 +1;
        if (vi_qtdNaLinha1 =2) then vi_qtdLinhasC2 := vi_qtdLinhasC2 +1;
        if (vi_qtdNaLinha2 =2) then vi_qtdLinhasC2 := vi_qtdLinhasC2 +1;
        if (vi_qtdNaLinha3 =2) then vi_qtdLinhasC2 := vi_qtdLinhasC2 +1;
        if (vi_qtdNaLinha4 =2) then vi_qtdLinhasC2 := vi_qtdLinhasC2 +1;
        if (vi_qtdNaLinha5 =2) then vi_qtdLinhasC2 := vi_qtdLinhasC2 +1;

        if (vi_qtdNaLinha1 =3) then vi_qtdLinhasC3 := vi_qtdLinhasC3 +1;
        if (vi_qtdNaLinha2 =3) then vi_qtdLinhasC3 := vi_qtdLinhasC3 +1;
        if (vi_qtdNaLinha3 =3) then vi_qtdLinhasC3 := vi_qtdLinhasC3 +1;
        if (vi_qtdNaLinha4 =3) then vi_qtdLinhasC3 := vi_qtdLinhasC3 +1;
        if (vi_qtdNaLinha5 =3) then vi_qtdLinhasC3 := vi_qtdLinhasC3 +1;
        if (vi_qtdNaLinha1 =4) then vi_qtdLinhasC4 := vi_qtdLinhasC4 +1;
        if (vi_qtdNaLinha2 =4) then vi_qtdLinhasC4 := vi_qtdLinhasC4 +1;
        if (vi_qtdNaLinha3 =4) then vi_qtdLinhasC4 := vi_qtdLinhasC4 +1;
        if (vi_qtdNaLinha4 =4) then vi_qtdLinhasC4 := vi_qtdLinhasC4 +1;
        if (vi_qtdNaLinha5 =4) then vi_qtdLinhasC4 := vi_qtdLinhasC4 +1;

        if (vi_qtdNaLinha1 =5) then vi_qtdLinhasC5 := vi_qtdLinhasC4 +1;
        if (vi_qtdNaLinha2 =5) then vi_qtdLinhasC5 := vi_qtdLinhasC4 +1;
        if (vi_qtdNaLinha3 =5) then vi_qtdLinhasC5 := vi_qtdLinhasC4 +1;
        if (vi_qtdNaLinha4 =5) then vi_qtdLinhasC5 := vi_qtdLinhasC4 +1;
        if (vi_qtdNaLinha5 =5) then vi_qtdLinhasC5 := vi_qtdLinhasC4 +1;
        IF (
        (vi_qtdLinhasC1 =1) AND (vi_qtdLinhasC2 =1) AND (vi_qtdLinhasC3 =1) AND (vi_qtdLinhasC4 =1) AND (vi_qtdLinhasC5 =1)
        ) OR (
        (vi_qtdLinhasC2 =2) AND (vi_qtdLinhasC3 =1) AND (vi_qtdLinhasC4 =2)
        )
        THEN
            RESULT := True
        else
            Result := False;
    end; /// if ( (vi_qtdLinhasC1 =1) AND (vi_qtdLinhasC2 =1) AND (vi_qtdLinhasC3 =1) AND (vi_qtdLinhasC4 =1) AND (vi_qtdLinhasC5 =1)
end; // PROCEDURE



FUNCTION T_F_Gerador_ResDiv_25Linhas2.Validar_LinhasFinais (vi_linhas01: INTEGER):boolean;
var
    vi_Contar, vi_qtdNaLinha1, vi_qtdNaLinha2, vi_qtdNaLinha3, vi_qtdNaLinha4 ,vi_qtdNaLinha5 : shortint;
begin
    vi_qtdNaLinha1 := 0;
    vi_qtdNaLinha2 := 0;
    vi_qtdNaLinha3 := 0;
    vi_qtdNaLinha4 := 0;
    vi_qtdNaLinha5 := 0;
    // ----> MONTADO E VERIFICANDO TODOS OS D�GITOS
    FOR vi_Contar :=2 TO 16 DO
    BEGIN
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base25.Cells[1,1]))  then
            vi_qtdNaLinha1 := vi_qtdNaLinha1 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base25.Cells[2,1]))  then
            vi_qtdNaLinha1 := vi_qtdNaLinha1 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base25.Cells[3,1]))  then
            vi_qtdNaLinha1 := vi_qtdNaLinha1 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base25.Cells[4,1]))  then
            vi_qtdNaLinha1 := vi_qtdNaLinha1 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base25.Cells[5,1]))  then
            vi_qtdNaLinha1 := vi_qtdNaLinha1 +1;

        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base25.Cells[1,2]))  then
            vi_qtdNaLinha2 := vi_qtdNaLinha2 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base25.Cells[2,2]))  then
            vi_qtdNaLinha2 := vi_qtdNaLinha2 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base25.Cells[3,2]))  then
            vi_qtdNaLinha2 := vi_qtdNaLinha2 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base25.Cells[4,2]))  then
            vi_qtdNaLinha2 := vi_qtdNaLinha2 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base25.Cells[5,2]))  then
            vi_qtdNaLinha2 := vi_qtdNaLinha2 +1;

        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base25.Cells[1,3]))  then
            vi_qtdNaLinha3 := vi_qtdNaLinha3 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base25.Cells[2,3]))  then
            vi_qtdNaLinha3 := vi_qtdNaLinha3 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base25.Cells[3,3]))  then
            vi_qtdNaLinha3 := vi_qtdNaLinha3 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base25.Cells[4,3]))  then
            vi_qtdNaLinha3 := vi_qtdNaLinha3 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base25.Cells[5,3]))  then
            vi_qtdNaLinha3 := vi_qtdNaLinha3 +1;

        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base25.Cells[1,4]))  then
            vi_qtdNaLinha4 := vi_qtdNaLinha4 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base25.Cells[2,4]))  then
            vi_qtdNaLinha4 := vi_qtdNaLinha4 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base25.Cells[3,4]))  then
            vi_qtdNaLinha4 := vi_qtdNaLinha4 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base25.Cells[4,4]))  then
            vi_qtdNaLinha4 := vi_qtdNaLinha4 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base25.Cells[5,4]))  then
            vi_qtdNaLinha4 := vi_qtdNaLinha4 +1;

        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base25.Cells[1,5]))  then
            vi_qtdNaLinha5 := vi_qtdNaLinha5 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base25.Cells[2,5]))  then
            vi_qtdNaLinha5 := vi_qtdNaLinha5 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base25.Cells[3,5]))  then
            vi_qtdNaLinha5 := vi_qtdNaLinha5 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base25.Cells[4,5]))  then
            vi_qtdNaLinha5 := vi_qtdNaLinha5 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base25.Cells[5,5]))  then
            vi_qtdNaLinha5 := vi_qtdNaLinha5 +1;
    END; // FOR vi_Contar1
    IF ( (vi_qtdNaLinha1 =trb_b25_L01.Position ) AND (vi_qtdNaLinha2 = trb_b25_L02.Position) AND (vi_qtdNaLinha3 = trb_b25_L03.Position) AND (vi_qtdNaLinha4 =trb_b25_L04.Position) AND (vi_qtdNaLinha5 = trb_b25_L05.Position) )
    THEN
        Result := True
    else
        Result := False;
end;



FUNCTION T_F_Gerador_ResDiv_25Linhas2.Validar_LinhasIniciais (vi_linhas01: INTEGER):boolean;
var
    vi_ContadorDeColunas, vi_Contar, vi_qtdNaLinha01, vi_qtdNaLinha02, vi_qtdNaLinha03, vi_qtdNaLinha04 ,vi_qtdNaLinha05, vi_qtdNaLinha06, vi_qtdNaLinha07, vi_qtdNaLinha08, vi_qtdNaLinha09 ,vi_qtdNaLinha10 : shortint;
begin
    vi_qtdNaLinha01 := 0;
    vi_qtdNaLinha02 := 0;
    vi_qtdNaLinha03 := 0;
    vi_qtdNaLinha04 := 0;
    vi_qtdNaLinha05 := 0;
    vi_qtdNaLinha06 := 0;
    vi_qtdNaLinha07 := 0;
    vi_qtdNaLinha08 := 0;
    vi_qtdNaLinha09 := 0;
    vi_qtdNaLinha10 := 0;
    // ----> MONTADO E VERIFICANDO TODOS OS D�GITOS
    FOR vi_Contar :=2 TO 16 DO
    BEGIN
        fOR vi_ContadorDeColunas :=2 TO 16 DO
        BEGIN
            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base.Cells[vi_ContadorDeColunas,01]))  then
                vi_qtdNaLinha01 := vi_qtdNaLinha01 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base.Cells[vi_ContadorDeColunas,02]))  then
                vi_qtdNaLinha02 := vi_qtdNaLinha02 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base.Cells[vi_ContadorDeColunas,03]))  then
                vi_qtdNaLinha03 := vi_qtdNaLinha03 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base.Cells[vi_ContadorDeColunas,04]))  then
                vi_qtdNaLinha04 := vi_qtdNaLinha04 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base.Cells[vi_ContadorDeColunas,05]))  then
                vi_qtdNaLinha05 := vi_qtdNaLinha05 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base.Cells[vi_ContadorDeColunas,06]))  then
                vi_qtdNaLinha06 := vi_qtdNaLinha06 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base.Cells[vi_ContadorDeColunas,07]))  then
                vi_qtdNaLinha07 := vi_qtdNaLinha07 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base.Cells[vi_ContadorDeColunas,08]))  then
                vi_qtdNaLinha08 := vi_qtdNaLinha08 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base.Cells[vi_ContadorDeColunas,09]))  then
                vi_qtdNaLinha09 := vi_qtdNaLinha09 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_contar,vi_linhas01])) = (strTOint(STGR_Base.Cells[vi_ContadorDeColunas,10]))  then
                vi_qtdNaLinha10 := vi_qtdNaLinha10 +1;
        END; // FOR vi_Contar1
    END; // fOR
    IF ( (vi_qtdNaLinha01 =trb_b15_L01.Position ) AND (vi_qtdNaLinha02 = trb_b15_L02.Position) AND (vi_qtdNaLinha03 = trb_b15_L03.Position)
        AND (vi_qtdNaLinha04 =trb_b15_L04.Position) AND (vi_qtdNaLinha05 = trb_b15_L05.Position) AND (vi_qtdNaLinha06 =trb_b15_L06.Position)
        AND (vi_qtdNaLinha07 = trb_b15_L07.Position) AND (vi_qtdNaLinha08 = trb_b15_L08.Position) AND (vi_qtdNaLinha09 =trb_b15_L09.Position)
        AND (vi_qtdNaLinha10 = trb_b15_L10.Position) )
    THEN
        Result := True
    else
        Result := False;
end;





FUNCTION T_F_Gerador_ResDiv_25Linhas2.Validar_ppi_A (vi_linhas01: INTEGER):boolean;
var
    vi_ContadorDeColunas, vi_qtdNaLinha01, vi_qtdNaLinha02: shortint;
begin
    vi_qtdNaLinha01 := 0;
    // ----> MONTADO E VERIFICANDO TODOS OS D�GITOS
        fOR vi_ContadorDeColunas :=2 TO 16 DO
        BEGIN
            if (strTOint(STGR_Etapa03_15.Cells[vi_ContadorDeColunas,vi_linhas01])) = (strTOint(STGR_ppi_A.Cells[1,0]))  then
                vi_qtdNaLinha01 := vi_qtdNaLinha01 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_ContadorDeColunas,vi_linhas01])) = (strTOint(STGR_ppi_A.Cells[2,0]))  then
                vi_qtdNaLinha01 := vi_qtdNaLinha01 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_ContadorDeColunas,vi_linhas01])) = (strTOint(STGR_ppi_A.Cells[3,0]))  then
                vi_qtdNaLinha01 := vi_qtdNaLinha01 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_ContadorDeColunas,vi_linhas01])) = (strTOint(STGR_ppi_A.Cells[4,0]))  then
                vi_qtdNaLinha01 := vi_qtdNaLinha01 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_ContadorDeColunas,vi_linhas01])) = (strTOint(STGR_ppi_A.Cells[5,0]))  then
                vi_qtdNaLinha01 := vi_qtdNaLinha01 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_ContadorDeColunas,vi_linhas01])) = (strTOint(STGR_ppi_A.Cells[6,0]))  then
                vi_qtdNaLinha01 := vi_qtdNaLinha01 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_ContadorDeColunas,vi_linhas01])) = (strTOint(STGR_ppi_A.Cells[7,0]))  then
                vi_qtdNaLinha01 := vi_qtdNaLinha01 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_ContadorDeColunas,vi_linhas01])) = (strTOint(STGR_ppi_A.Cells[8,0]))  then
                vi_qtdNaLinha01 := vi_qtdNaLinha01 +1;
        END; // FOR vi_Contar1
    IF (vi_qtdNaLinha01 >=TRB_ppim1_01.Position ) and (vi_qtdNaLinha01 <=TRB_ppim2_01.Position )
    THEN
    begin
        vi_qtdNaLinha02 := 0;
        // ----> MONTADO E VERIFICANDO TODOS OS D�GITOS
        fOR vi_ContadorDeColunas :=2 TO 16 DO
        BEGIN
            if (strTOint(STGR_Etapa03_15.Cells[vi_ContadorDeColunas,vi_linhas01])) = (strTOint(STGR_ppi_B.Cells[1,0]))  then
                vi_qtdNaLinha02 := vi_qtdNaLinha02 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_ContadorDeColunas,vi_linhas01])) = (strTOint(STGR_ppi_B.Cells[2,0]))  then
                vi_qtdNaLinha02 := vi_qtdNaLinha02 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_ContadorDeColunas,vi_linhas01])) = (strTOint(STGR_ppi_B.Cells[3,0]))  then
                vi_qtdNaLinha02 := vi_qtdNaLinha02 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_ContadorDeColunas,vi_linhas01])) = (strTOint(STGR_ppi_B.Cells[4,0]))  then
                vi_qtdNaLinha02 := vi_qtdNaLinha02 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_ContadorDeColunas,vi_linhas01])) = (strTOint(STGR_ppi_B.Cells[5,0]))  then
                vi_qtdNaLinha02 := vi_qtdNaLinha02 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_ContadorDeColunas,vi_linhas01])) = (strTOint(STGR_ppi_B.Cells[6,0]))  then
                vi_qtdNaLinha02 := vi_qtdNaLinha02 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_ContadorDeColunas,vi_linhas01])) = (strTOint(STGR_ppi_B.Cells[7,0]))  then
                vi_qtdNaLinha02 := vi_qtdNaLinha02 +1;
        END; // FOR vi_Contar1
        IF (vi_qtdNaLinha02 >=TRB_ppim1_02.Position ) and (vi_qtdNaLinha02 <=TRB_ppim2_02.Position )
        THEN
        begin
            if CB_ppim_LinhaAB.ItemIndex = 0 then
            begin
                if (vi_qtdNaLinha01 + vi_qtdNaLinha02) = 9 then
                    Result := True
                else
                    Result := False;
            end else
            begin
                if ((vi_qtdNaLinha01 + vi_qtdNaLinha02) >= 8) and ((vi_qtdNaLinha01 + vi_qtdNaLinha02) <= 10) then
                    Result := True
                else
                    Result := False;
            end;

        end
        else
            Result := False;
    end
    else
        Result := False;
End;




FUNCTION T_F_Gerador_ResDiv_25Linhas2.Validar_ppi_C (vi_linhas01: INTEGER):boolean;
var
    vi_ContadorDeColunas, vi_qtdNaLinha01, vi_qtdNaLinha02: shortint;
begin
    vi_qtdNaLinha01 := 0;
    // ----> MONTADO E VERIFICANDO TODOS OS D�GITOS
    fOR vi_ContadorDeColunas :=2 TO 16 DO
    BEGIN
        if (strTOint(STGR_Etapa03_15.Cells[vi_ContadorDeColunas,vi_linhas01])) = (strTOint(STGR_ppi_C.Cells[1,0]))  then
            vi_qtdNaLinha01 := vi_qtdNaLinha01 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_ContadorDeColunas,vi_linhas01])) = (strTOint(STGR_ppi_C.Cells[2,0]))  then
            vi_qtdNaLinha01 := vi_qtdNaLinha01 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_ContadorDeColunas,vi_linhas01])) = (strTOint(STGR_ppi_C.Cells[3,0]))  then
            vi_qtdNaLinha01 := vi_qtdNaLinha01 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_ContadorDeColunas,vi_linhas01])) = (strTOint(STGR_ppi_C.Cells[4,0]))  then
            vi_qtdNaLinha01 := vi_qtdNaLinha01 +1;
        if (strTOint(STGR_Etapa03_15.Cells[vi_ContadorDeColunas,vi_linhas01])) = (strTOint(STGR_ppi_C.Cells[5,0]))  then
            vi_qtdNaLinha01 := vi_qtdNaLinha01 +1;
    END; // FOR vi_Contar1
    IF (vi_qtdNaLinha01 >=TRB_ppim1_03.Position)  and (vi_qtdNaLinha01 <=TRB_ppim2_03.Position)
    THEN
    begin
        vi_qtdNaLinha02 := 0;
        // ----> MONTADO E VERIFICANDO TODOS OS D�GITOS
        fOR vi_ContadorDeColunas :=2 TO 16 DO
        BEGIN
            if (strTOint(STGR_Etapa03_15.Cells[vi_ContadorDeColunas,vi_linhas01])) = (strTOint(STGR_ppi_D.Cells[1,0]))  then
                vi_qtdNaLinha02 := vi_qtdNaLinha02 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_ContadorDeColunas,vi_linhas01])) = (strTOint(STGR_ppi_D.Cells[2,0]))  then
                vi_qtdNaLinha02 := vi_qtdNaLinha02 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_ContadorDeColunas,vi_linhas01])) = (strTOint(STGR_ppi_D.Cells[3,0]))  then
                vi_qtdNaLinha02 := vi_qtdNaLinha02 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_ContadorDeColunas,vi_linhas01])) = (strTOint(STGR_ppi_D.Cells[4,0]))  then
                vi_qtdNaLinha02 := vi_qtdNaLinha02 +1;
            if (strTOint(STGR_Etapa03_15.Cells[vi_ContadorDeColunas,vi_linhas01])) = (strTOint(STGR_ppi_D.Cells[5,0]))  then
                vi_qtdNaLinha02 := vi_qtdNaLinha02 +1;
        END; // FOR vi_Contar1
        IF (vi_qtdNaLinha02 >=TRB_ppim1_04.Position)  and (vi_qtdNaLinha02 <=TRB_ppim2_04.Position)
        THEN
        begin
            if CB_ppim_LinhaCD.ItemIndex = 0 then
            begin
                if (vi_qtdNaLinha01 + vi_qtdNaLinha02) = 6 then
                    Result := True
                else
                    Result := False;
            end else
            begin
                if ((vi_qtdNaLinha01 + vi_qtdNaLinha02) >= 5) and ((vi_qtdNaLinha01 + vi_qtdNaLinha02) <= 7) then
                    Result := True
                else
                    Result := False;
            end;

        end
        else
            Result := False;
    end
    else
        Result := False;
End;





procedure T_F_Gerador_ResDiv_25Linhas2.BBT_Etapa01Click(Sender: TObject);

    PROCEDURE PR_ORDENAR_15 (VI_LINHAS9: INTEGER);
    var
        VI_CONTAR, VI_CNTCELULAS: INTEGER;
    begin
          // ************************
      	// **  Ordena os dados   **
	     // ************************
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            STGR_Todos_Numeros.Cells[VI_CONTAR,1] :='F';
        END; // FOR VI_CONTAR
        // ----> MONTADO E VERIFICANDO TODOS OS 15 D�GITOS
        FOR VI_CONTAR :=2 TO 16 DO
        BEGIN
            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa03_15.Cells[VI_CONTAR,VI_LINHAS9])) ,1]:='V';
        END; // FOR VI_CONTAR1
        VI_CNTCELULAS := 2;
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            IF (STGR_Todos_Numeros.Cells[VI_CONTAR,1]='V') THEN
            BEGIN
                STGR_Etapa03_15.Cells [VI_CNTCELULAS, VI_LINHAS9] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[VI_CONTAR,0]),2) ;
                VI_CNTCELULAS := VI_CNTCELULAS + 1;
            END; // IF (STGR_Todos_Numeros
        END; // FOR VI_CONTAR
    end; // PROCEDURE ORDENAR_SIMULACAO_15


   Procedure LimparGrid03 ();
    begin
        STGR_Etapa02_03.CleanupInstance;
        STGR_Etapa02_03.Free;
        STGR_Etapa02_03 := TStringGrid.Create(Self);
        STGR_Etapa02_03.Parent := SCBX_dados;
        with  STGR_Etapa02_03 do
        begin
          Left := 1062  ;
          Top := 19    ;
          Width := 239  ;
          Height := 302   ;
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
        STGR_Etapa02_03.ColWidths[0] := 60 ;
        STGR_Etapa02_03.ColWidths[1] := 50 ;
        STGR_Etapa02_03.RowCount :=1;
    end;

     FUNCTION NumerosFixos1 (vi_Linhas1 : integer) : BOOLEAN;
     VAR
          vi_ContaSel1, vi_Primeiro, vi_NumeroCelula  : INTEGER;
          vb_Retorno : boolean  ;
     begin
          vi_Primeiro := strTOint(ED_FIXOS_01_8i7p.Text);
          IF (vi_Primeiro >0) and (vi_Primeiro<=25)  THEN
          BEGIN
               vb_Retorno := False;
               FOR vi_ContaSel1 := 2 TO 16 DO
               BEGIN
                    vi_NumeroCelula:=  STRtoINT(STGR_Etapa03_15.Cells[vi_ContaSel1,vi_Linhas1]);
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

     FUNCTION NumerosFixos2 (vi_Linhas1 : Integer) : boolean;
     VAR
          vi_ContaSel1, vi_Segundo, vi_NumeroCelula  : INTEGER;
          vb_Retorno : boolean  ;
     begin
          vi_Segundo := strTOint(ED_FIXOS_02_8i7p.Text);
          IF (vi_Segundo >0) and (vi_Segundo<=25)  THEN
          BEGIN
               vb_Retorno := False;
               FOR vi_ContaSel1 := 2 TO 16 DO
               BEGIN
                    vi_NumeroCelula:=  STRtoINT(STGR_Etapa03_15.Cells[vi_ContaSel1,vi_Linhas1]);
                    IF (vi_NumeroCelula=vi_Segundo) THEN
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

     FUNCTION NumerosFixos3 (vi_Linhas1 : Integer) : boolean;
     VAR
          vi_ContaSel1, vi_Segundo, vi_NumeroCelula  : INTEGER;
          vb_Retorno : boolean  ;
     begin
          vi_Segundo := strTOint(ED_FIXOS_03_8i7p.Text);
          IF (vi_Segundo >0) and (vi_Segundo<=25)  THEN
          BEGIN
               vb_Retorno := False;
               FOR vi_ContaSel1 := 2 TO 16 DO
               BEGIN
                    vi_NumeroCelula:=  STRtoINT(STGR_Etapa03_15.Cells[vi_ContaSel1,vi_Linhas1]);
                    IF (vi_NumeroCelula=vi_Segundo) THEN
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

 PROCEDURE PR_Gravar_Dados_etapa1 ();
    VAR
        VI_AN_Comb1, vi_ContarCelulas, vi_Contar, vi_ContarStgGrid : INTEGER;
        vc_QUERY, vc_Nome_Tabela : STRING;
        vc_Combinacoes19 : STRING;
    BEGIN
        //VI_TOTALGERADO := STGR_Comb10.RowCount-1;
          // ************************
          // **   BANCO DE DADOS   **
          // ************************
          SELF.Repaint;
          // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
          vi_ContarStgGrid := TRUNC((STGR_Etapa01_19.RowCount-1)/1);
       FOR VI_AN_Comb1:= 1 TO vi_ContarStgGrid DO
       BEGIN
           vc_Combinacoes19 :='';
           FOR vi_ContarCelulas := 2 TO 20 DO
           BEGIN
               vc_Combinacoes19 := vc_Combinacoes19 + TRIM(STGR_Etapa01_19.Cells[vi_ContarCelulas,VI_AN_Comb1]) +' ';
               STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa01_19.Cells[vi_ContarCelulas,VI_AN_Comb1])) ,1]:='V';
           END; // FOR vi_ContarCelulas
          vc_Nome_Tabela := ' GERADOR_RESULT_25_Linhas2_d19E1';
           vc_QUERY  := 'INSERT INTO ' +vc_Nome_Tabela+ ' (DADOS, SOMA_19, N) VALUES('
                 +#39+  TRIM(vc_Combinacoes19)  + #39 +','
                 +#39+  TRIM(STGR_Etapa01_19.Cells[21,VI_AN_Comb1])  + #39 +','
                 +#39+  TRIM(STGR_Etapa01_19.Cells[0,VI_AN_Comb1])                 
                 +#39+ ');';
           SELF.IBQ_Combin_02.SQL.Clear;
           SELF.IBQ_Combin_02.SQL.Add(vc_QUERY)  ;
           SELF.IBQ_Combin_02.ExecSQL;
       END; // FOR VI_AN_Comb1
    SELF.IBQ_Combin_02.SQL.Clear;
    SELF.IBQ_Combin_02.SQL.Add('COMMIT')  ;
    SELF.IBQ_Combin_02.ExecSQL;
    SLEEP(14);
    SELF.IBQ_Combin_02.SQL.Clear;
    END; // PROCEDURE GRAVAR_DADOS

    

 PROCEDURE PR_Gravar_Dados_etapa2 ();
    VAR
        VI_AN_Comb1, vi_ContarCelulas, vi_Contar, vi_ContarStgGrid : INTEGER;
        vc_QUERY, vc_Nome_Tabela : STRING;
        vc_Combinacoes19, vc_Combinacoes06 : STRING;
    BEGIN
        //VI_TOTALGERADO := STGR_Comb10.RowCount-1;
          // ************************
          // **   BANCO DE DADOS   **
          // ************************
          SELF.Repaint;
          // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
          vi_ContarStgGrid := TRUNC((STGR_Etapa01_19.RowCount-1)/1);
       FOR VI_AN_Comb1:= 1 TO vi_ContarStgGrid DO
       BEGIN
            FOR vi_ContarCelulas := 1 TO 25 DO
            BEGIN
               STGR_Todos_Numeros.Cells [vi_ContarCelulas ,1]:='F';
            end;
           vc_Combinacoes19 :='';
           FOR vi_ContarCelulas := 2 TO 20 DO
           BEGIN
               vc_Combinacoes19 := vc_Combinacoes19 + TRIM(STGR_Etapa01_19.Cells[vi_ContarCelulas,VI_AN_Comb1]) +' ';
               STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa01_19.Cells[vi_ContarCelulas,VI_AN_Comb1])) ,1]:='V';
           END; // FOR vi_ContarCelulas
               // -------------------------------
               // --  MONTANDO AS 06 SOBRAS   ---
               // -------------------------------
                  vi_ContarCelulas := 1;
                  vc_Combinacoes06 := '';
                  FOR vi_Contar :=1 TO 25 DO
                  BEGIN
                      // SOBRAS
                      IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='F') THEN
                      BEGIN
                          vc_Combinacoes06 := vc_Combinacoes06 + RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) +' ' ;
                          vi_ContarCelulas := vi_ContarCelulas + 1;
                      END; // IF (STGR_Todos_Numeros
                  END; // FOR vi_Contar
          vc_Nome_Tabela := ' GERADOR_RESULT_25_Linhas2_d19e2';
           vc_QUERY  := 'INSERT INTO ' +vc_Nome_Tabela+ ' (DADOS, DADOS_SOBRA, SOMA_19, PROVA_12, PROVA_07, N) VALUES('
                 +#39+  TRIM(vc_Combinacoes19)  + #39 +','
                 +#39+  TRIM(vc_Combinacoes06)  + #39 +','
                 +#39+  TRIM(STGR_Etapa01_19.Cells[21,VI_AN_Comb1])  + #39 +','
                 +#39+  TRIM(STGR_Etapa01_19.Cells[22,VI_AN_Comb1])  + #39 +','
                 +#39+  TRIM(STGR_Etapa01_19.Cells[23,VI_AN_Comb1])  + #39 +','
                 +#39+  TRIM(STGR_Etapa01_19.Cells[0,VI_AN_Comb1])
                 +#39+ ');';
           SELF.IBQ_Combinacoes.SQL.Clear;
           SELF.IBQ_Combinacoes.SQL.Add(vc_QUERY)  ;
           SELF.IBQ_Combinacoes.ExecSQL;
       END; // FOR VI_AN_Comb1
    SELF.IBQ_Combinacoes.SQL.Clear;
    SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
    SELF.IBQ_Combinacoes.ExecSQL;
    SLEEP(14);
    SELF.IBQ_Combinacoes.SQL.Clear;
    END; // PROCEDURE GRAVAR_DADOS



 PROCEDURE PR_Gravar_Dados_Dados12 ();
    VAR
        VI_AN_Comb1, vi_ContarCelulas, vi_Contar, vi_ContarStgGrid : INTEGER;
        vc_QUERY, vc_Nome_Tabela : STRING;
        vc_Combinacoes19, vc_Combinacoes12, vc_Combinacoes07 : STRING;
    BEGIN
        //VI_TOTALGERADO := STGR_Comb10.RowCount-1;
          // ************************
          // **   BANCO DE DADOS   **
          // ************************
          SELF.Repaint;
          // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
          vi_ContarStgGrid := TRUNC((STGR_Etapa02_12.RowCount-1)/1);
       FOR VI_AN_Comb1:= 1 TO vi_ContarStgGrid DO
       BEGIN
            FOR vi_ContarCelulas := 1 TO 25 DO
            BEGIN
               STGR_Todos_Numeros.Cells [vi_ContarCelulas ,1]:='F';
               STGR_Todos_Numeros.Cells [vi_ContarCelulas ,2]:='F';
            end;
           vc_Combinacoes12 := '';
           vc_Combinacoes19 := '';
           FOR vi_ContarCelulas := 2 TO 20 DO
           BEGIN
               vc_Combinacoes19 := vc_Combinacoes19 + TRIM(STGR_Etapa01_19.Cells[vi_ContarCelulas,STRtoINT(STGR_Etapa02_12.Cells[01,VI_AN_Comb1])]) +' ';
               STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa01_19.Cells[vi_ContarCelulas,STRtoINT(STGR_Etapa02_12.Cells[01,VI_AN_Comb1]) ])) ,1]:='V';
           END; // FOR vi_ContarCelulas
           FOR vi_ContarCelulas := 2 TO 13 DO
           BEGIN
               vc_Combinacoes12 := vc_Combinacoes12 + RIGHTSTR ('0'+TRIM(STGR_Etapa02_12.Cells[vi_ContarCelulas,VI_AN_Comb1]),2) +' ';
               STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa02_12.Cells[vi_ContarCelulas,VI_AN_Comb1])) ,2]:='V';
           END; // FOR vi_ContarCelulas
               // -------------------------------
               // --  MONTANDO AS 07 SOBRAS   ---
               // -------------------------------
                  vi_ContarCelulas := 1;
                  vc_Combinacoes07 := '';
                  FOR vi_Contar :=1 TO 25 DO
                  BEGIN
                      // SOBRAS
                      IF ( (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,2]='F') ) THEN
                      BEGIN
                          vc_Combinacoes07 := vc_Combinacoes07 + RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) +' ' ;
                          vi_ContarCelulas := vi_ContarCelulas + 1;
                      END; // IF (STGR_Todos_Numeros
                  END; // FOR vi_Contar
          vc_Nome_Tabela := ' GERADOR_RESULT_25_LINHAS2_D12';
           vc_QUERY  := 'INSERT INTO ' +vc_Nome_Tabela+ ' (DADOS_12, DADOS_07, QTD, N) VALUES('
                 +#39+  TRIM(vc_Combinacoes12)  + #39 +','
                 +#39+  TRIM(vc_Combinacoes07)  + #39 +','
                 +#39+  TRIM(STGR_Etapa02_12.Cells[0,VI_AN_Comb1])   + #39 +','
                 +#39+  TRIM(STGR_Etapa02_12.Cells[1,VI_AN_Comb1])
                 +#39+ ');';
           SELF.IBQ_Combin_02.SQL.Clear;
           SELF.IBQ_Combin_02.SQL.Add(vc_QUERY)  ;
           SELF.IBQ_Combin_02.ExecSQL;
       END; // FOR VI_AN_Comb1
    SELF.IBQ_Combin_02.SQL.Clear;
    SELF.IBQ_Combin_02.SQL.Add('COMMIT')  ;
    SELF.IBQ_Combin_02.ExecSQL;
    SLEEP(4);
    SELF.IBQ_Combin_02.SQL.Clear;
    END; // PROCEDURE GRAVAR_DADOS


 PROCEDURE PR_Gravar_Dados3 ();
    VAR
        VI_AN_Comb1, vi_ContarCelulas, vi_Contar, vi_ContarStgGrid : INTEGER;
        vc_QUERY, vc_Nome_Tabela : STRING;
        vc_Combinacoes03so, vc_Combinacoes03ns : STRING;
    BEGIN
        //VI_TOTALGERADO := STGR_Comb10.RowCount-1;
          // ************************
          // **   BANCO DE DADOS   **
          // ************************
          SELF.Repaint;
          // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
          vi_ContarStgGrid := TRUNC((STGR_Etapa02_03.RowCount-1)/1);
       FOR VI_AN_Comb1:= 1 TO vi_ContarStgGrid DO
       BEGIN
            FOR vi_ContarCelulas := 1 TO 25 DO
            BEGIN
               STGR_Todos_Numeros.Cells [vi_ContarCelulas ,1]:='F';
               STGR_Todos_Numeros.Cells [vi_ContarCelulas ,2]:='F';
            end;
           vc_Combinacoes03so :='';
           FOR vi_ContarCelulas := 2 TO 4 DO
           BEGIN
               vc_Combinacoes03so := vc_Combinacoes03so + TRIM(STGR_Etapa02_03.Cells[vi_ContarCelulas,VI_AN_Comb1]) +' ';
               STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa02_03.Cells[vi_ContarCelulas,VI_AN_Comb1])) ,1]:='V';
           END; // FOR vi_ContarCelulas
           FOR vi_ContarCelulas := 2 TO 7 DO
           BEGIN
               STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa02_06.Cells[vi_ContarCelulas,STRtoINT(STGR_Etapa02_03.Cells[01,VI_AN_Comb1])])) ,2]:='V';
           END; // FOR vi_ContarCelulas
               // -------------------------------
               // --  MONTANDO AS 06 SOBRAS   ---
               // -------------------------------
                  vi_ContarCelulas := 1;
                  vc_Combinacoes03ns := '';
                  FOR vi_Contar :=1 TO 25 DO
                  BEGIN
                      // SOBRAS
                      IF ( (STGR_Todos_Numeros.Cells[vi_Contar,1]='F') and (STGR_Todos_Numeros.Cells[vi_Contar,2]='V') ) THEN
                      BEGIN
                          vc_Combinacoes03ns := vc_Combinacoes03ns + RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) +' ' ;
                          vi_ContarCelulas := vi_ContarCelulas + 1;
                      END; // IF (STGR_Todos_Numeros
                  END; // FOR vi_Contar
          vc_Nome_Tabela := ' GERADOR_RESULT_25_LINHAS2_D3A';
           vc_QUERY  := 'INSERT INTO ' +vc_Nome_Tabela+ ' (DADOS_03s, DADOS_03ns, N) VALUES('
                 +#39+  TRIM(vc_Combinacoes03so)  + #39 +','
                 +#39+  TRIM(vc_Combinacoes03ns)  + #39 +','
                 +#39+  TRIM(STGR_Etapa02_03.Cells[1,VI_AN_Comb1])
                 +#39+ ');';
           SELF.IBQ_Combin_02.SQL.Clear;
           SELF.IBQ_Combin_02.SQL.Add(vc_QUERY)  ;
           SELF.IBQ_Combin_02.ExecSQL;
       END; // FOR VI_AN_Comb1
    SELF.IBQ_Combin_02.SQL.Clear;
    SELF.IBQ_Combin_02.SQL.Add('COMMIT')  ;
    SELF.IBQ_Combin_02.ExecSQL;
    SLEEP(14);
    SELF.IBQ_Combin_02.SQL.Clear;
    END; // PROCEDURE GRAVAR_DADOS


    FUNCTION Ordenar_Comb15 (VI_LINHAS9: INTEGER):integer;
    var
        vi_Contar, vi_CntCelulas: INTEGER;
    begin
          // ************************
      	// **  Ordena os dados   **
	     // ************************
        FOR vi_Contar :=1 TO 25 DO
        BEGIN
            STGR_Todos_Numeros.Cells[vi_Contar,1] :='F';
        END; // FOR vi_Contar
        // ----> MONTADO E VERIFICANDO TODOS OS D�GITOS
        FOR vi_Contar :=2 TO 21 DO
        BEGIN
            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa03_15.Cells[vi_Contar,VI_LINHAS9])) ,1]:='V';
        END; // FOR vi_Contar1
        vi_CntCelulas := 2;
        FOR vi_Contar :=1 TO 25 DO
        BEGIN
            IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') THEN
            BEGIN
                STGR_Etapa03_15.Cells[vi_CntCelulas, VI_LINHAS9] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) ;
                vi_CntCelulas := vi_CntCelulas + 1;
            END; // IF (STGR_Todos_Numeros
        END; // FOR vi_Contar
        Ordenar_Comb15 := (vi_CntCelulas-2);
    end; // PROCEDURE PR_Ordenar_Simulacao_15_8i7p



 PROCEDURE PR_Gravar_Dados_etapa3a ();
    VAR
        VI_AN_Comb1, vi_ContarCelulas, vi_Contar, vi_ContarStgGrid : INTEGER;
        vc_QUERY, vc_Nome_Tabela : STRING;
        vc_Combinacoes15, vc_Combinacoes10 : STRING;
    BEGIN
        //VI_TOTALGERADO := STGR_Comb10.RowCount-1;
          // ************************
          // **   BANCO DE DADOS   **
          // ************************
          SELF.Repaint;
          // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
          vi_ContarStgGrid := TRUNC((STGR_Etapa03_15.RowCount-1)/1);
       FOR VI_AN_Comb1:= 1 TO vi_ContarStgGrid DO
       BEGIN
            FOR vi_ContarCelulas := 1 TO 25 DO
            BEGIN
               STGR_Todos_Numeros.Cells [vi_ContarCelulas ,1]:='F';
            end;       
           vc_Combinacoes15 :='';
           FOR vi_ContarCelulas := 2 TO 16 DO
           BEGIN
               vc_Combinacoes15 := vc_Combinacoes15 + TRIM(STGR_Etapa03_15.Cells[vi_ContarCelulas,VI_AN_Comb1]) +' ';
               STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa03_15.Cells[vi_ContarCelulas,VI_AN_Comb1])) ,1]:='V';
           END; // FOR vi_ContarCelulas
               // -------------------------------
               // --  MONTANDO AS 06 SOBRAS   ---
               // -------------------------------
                  vi_ContarCelulas := 1;
                  vc_Combinacoes10 := '';
                  FOR vi_Contar :=1 TO 25 DO
                  BEGIN
                      // SOBRAS
                      IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='F') THEN
                      BEGIN
                          vc_Combinacoes10 := vc_Combinacoes10 + RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) +' ' ;
                          vi_ContarCelulas := vi_ContarCelulas + 1;
                      END; // IF (STGR_Todos_Numeros
                  END; // FOR vi_Contar
          vc_Nome_Tabela := ' GERADOR_RESULT_25_LINHAS2_D15A';
           vc_QUERY  := 'INSERT INTO ' +vc_Nome_Tabela+ ' (DADOS, DADOS_ns, N) VALUES('
                 +#39+  TRIM(vc_Combinacoes15)  + #39 +','
                 +#39+  TRIM(vc_Combinacoes10)  + #39 +','
                 +#39+  TRIM(STGR_Etapa03_15.Cells[1,VI_AN_Comb1])
                 +#39+ ');';
           SELF.IBQ_Combin_02.SQL.Clear;
           SELF.IBQ_Combin_02.SQL.Add(vc_QUERY)  ;
           SELF.IBQ_Combin_02.ExecSQL;
       END; // FOR VI_AN_Comb1
   // IF SELF.IBQ_Combin_02.Transaction.Active=False then
   //     SELF.IBQ_Combin_02.Transaction.StartTransaction ;
    SELF.IBQ_Combin_02.SQL.Clear;
    SELF.IBQ_Combin_02.SQL.Add('COMMIT')  ;
    SELF.IBQ_Combin_02.ExecSQL;
    SLEEP(14);
    SELF.IBQ_Combin_02.SQL.Clear;
    END; // PROCEDURE GRAVAR_DADOS


var
     vi_Combinacoes1, vi_Combinacoes2, vi_Contar_Comb1, vi_QtdDados :integer;
     vi_Linhas01 : integer;
     vi_SomaTotal : INTEGER;
begin
    sleep(1000);
    PA_Gerar.Left := 6000;
    PA_Gerar.Repaint;
   {
    self.IBDatabase1.ForceClose;
    self.IBDatabase1.Open;
    self.IBDatabase1.Connected := False;
    self.IBDatabase1.Connected := True;
    IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
    SELF.IBQ_Combinacoes.Close;
    SELF.IBQ_Combinacoes.SQL.Clear;
    SELF.IBQ_Combinacoes.SQL.Add('SELECT count(DISTINCT(DADOS)) as QTD FROM GERADOR_RESULT_25_LINHAS2_D15A;')  ;
    SELF.IBQ_Combinacoes.Prepare;
    SELF.IBQ_Combinacoes.Open;
    }
 //   SHOWMESSAGE(self.IBQ_Combinacoes.fieldBYname('QTD').AsString);
{     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_Linhas2_FINAL')  ;
     SELF.IBQ_Combinacoes.ExecSQL;
 }
     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('SELECT * FROM GERADOR_RESULT_25_Linhas2_DEF; ')  ;
     SELF.IBQ_Combinacoes.Prepare;
     SELF.IBQ_Combinacoes.Open;

     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_Linhas2_d19E1')  ;
     SELF.IBQ_Combinacoes.ExecSQL;
     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_Linhas2_d19E2')  ;
     SELF.IBQ_Combinacoes.ExecSQL;

     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_LINHAS2_D12')  ;
     SELF.IBQ_Combinacoes.ExecSQL;

     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_LINHAS2_D3A')  ;
     SELF.IBQ_Combinacoes.ExecSQL;

     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_LINHAS2_D15A')  ;
     SELF.IBQ_Combinacoes.ExecSQL;

     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('insert INTO GERADOR_RESULT_25_Linhas2_DEF (FLAG_FILTRAR,FLAG_GRAVAR) values (''N'',''N'');')  ;
     SELF.IBQ_Combinacoes.ExecSQL;
     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
     SELF.IBQ_Combinacoes.ExecSQL;

LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
    STGR_Etapa01_08.ColWidths [0]:= 60 ;
    STGR_Etapa1_09.ColWidths [0]:= 60 ;
    STGR_Etapa01_09.ColWidths [0]:= 60 ;
    STGR_Etapa1_10.ColWidths [0]:= 60 ;
    STGR_Etapa01_08.ColWidths [0]:= 60 ;
    STGR_Etapa1_11.ColWidths [0]:= 60 ;
    STGR_Etapa01_07.ColWidths [0]:= 60 ;
    STGR_Etapa1_12.ColWidths [0]:= 60 ;
    STGR_Etapa01_06.ColWidths [0]:= 60 ;
    STGR_Etapa1_13.ColWidths [0]:= 60 ;
    STGR_Etapa01_05.ColWidths [0]:= 60 ;
    STGR_Etapa1_14.ColWidths [0]:= 60 ;
    STGR_Etapa01_04.ColWidths [0]:= 60 ;
    STGR_Etapa1_15.ColWidths [0]:= 60 ;
    STGR_Etapa01_19.ColWidths [0]:= 60 ;
    STGR_Etapa02_12.ColWidths [0]:= 60 ;
    STGR_Etapa03_15.ColWidths [0]:= 60 ;
    STGR_Etapa02_06.ColWidths [0]:= 60 ;
    STGR_Etapa02_03.ColWidths [0]:= 60 ;

    STGR_Etapa01_08.ColWidths [1]:= 36 ;
    STGR_Etapa1_09.ColWidths [1]:= 36 ;
    STGR_Etapa01_09.ColWidths [1]:= 36 ;
    STGR_Etapa1_10.ColWidths [1]:= 36 ;
    STGR_Etapa01_08.ColWidths [1]:= 36 ;
    STGR_Etapa1_11.ColWidths [1]:= 36 ;
    STGR_Etapa01_07.ColWidths [1]:= 36 ;
    STGR_Etapa1_12.ColWidths [1]:= 36 ;
    STGR_Etapa01_06.ColWidths [1]:= 36 ;
    STGR_Etapa1_13.ColWidths [1]:= 36 ;
    STGR_Etapa01_19.ColWidths [1]:= 45 ;
    STGR_Etapa02_12.ColWidths [1]:= 45 ;
    STGR_Etapa03_15.ColWidths [1]:= 36 ;
//    STGR_Etapa03_15.ColWidths [18]:= 36 ;
    STGR_Etapa02_06.ColWidths [1]:= 50 ;
    STGR_Etapa02_03.ColWidths [1]:= 50 ;

    PGBR_Etapa_01.Position := 0 ;
    PGBR_Etapa_01.Repaint;
    PGBR_Etapa_01_01.Position := 0 ;
    PGBR_Etapa_01_01.Repaint ;
    PGBR_Etapa_02.Position :=0 ;
    PGBR_Etapa_02.Repaint;
    PGBR_Etapa_03.Position := 0 ;
    PGBR_Etapa_03.Repaint;
    PGBR_Etapa_04.Position := 0 ;
    PGBR_Etapa_04.Repaint;
    PGBR_Etapa_05.Position := 0 ;
    PGBR_Etapa_05.Repaint;
    LA_Gerar_Comb.Caption := '#:                   ';
    LA_Gerar_Comb.Repaint;
    PA_Gerar.Enabled := false;
    PA_Gerar.Left := 4500;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINA��ES   ||||
    // ||||=============================||||
    // =====================================
      //  SCBX_dados.HorzScrollBar.Position := 1;
      //  SCBX_dados.Repaint;

    //PR_GRAVAR_DADOS ('INICIO',vi_Linhas_01_01, 1, TRUNC(STGR_Base.RowCount-1));
   

        if (cb_tipo19.ItemIndex = 2) then AnaliseComb_09e10 ();
       //corigir subtra��o
    Sleep(140);
    if (cb_tipo19.ItemIndex = 1) then AnaliseComb_10e09 ();
    Sleep(140);
    if (cb_tipo19.ItemIndex = 0) then AnaliseComb_11e08 ();
    Sleep(140);
    if (cb_tipo19.ItemIndex = 0) then AnaliseComb_12e07 ();
    Sleep(140);
    if (cb_tipo19.ItemIndex = 1) then AnaliseComb_13e06 ();
    Sleep(140);
        if (cb_tipo19.ItemIndex = 2) then AnaliseComb_14e05 ();
    Sleep(140);
        if (cb_tipo19.ItemIndex = 2) then AnaliseComb_15e04 ();
    Sleep(140);
    PGBR_Etapa_01.Position := 100;
    PGBR_Etapa_01.Repaint;
    PGBR_Etapa_01_01.Position :=0 ;
    PGBR_Etapa_01_01.Repaint;
    STGR_Etapa01_19.RowCount := 1;
      if (cb_tipo19.ItemIndex = 2) then Gerar19_09e10 ();
    Sleep(140);
    if (cb_tipo19.ItemIndex = 1) then Gerar19_10e09 ();
    Sleep(140);
    if (cb_tipo19.ItemIndex = 0) then Gerar19_11e08 ();
    Sleep(140);
    if (cb_tipo19.ItemIndex = 0) then Gerar19_12e07 ();
    Sleep(140);
    if (cb_tipo19.ItemIndex = 1) then Gerar19_13e06 ();
    Sleep(140);
    if (cb_tipo19.ItemIndex = 2) then Gerar19_14e05 ();
    Sleep(140);
    if (cb_tipo19.ItemIndex = 2) then Gerar19_15e04 ();
    Sleep(140);
    PGBR_Etapa_01_01.Position :=100 ;
    PGBR_Etapa_01_01.Repaint;
            PR_Gravar_Dados_etapa1();
    STGR_Etapa02_12.RowCount := 1;
    SCBX_dados.HorzScrollBar.Position := 6700;
    SCBX_dados.Repaint;
    //
    //  -- > Montando o Bloco de 19 sem os repetidos
    //
    SELF.IBQ_Combinacoes.SQL.Clear;
    SELF.IBQ_Combinacoes.SQL.Add('SELECT count(DISTINCT(DADOS)) as qtd FROM GERADOR_RESULT_25_Linhas2_d19E1;')  ;
    SELF.IBQ_Combinacoes.Prepare;
    SELF.IBQ_Combinacoes.Open;
    vi_QtdDados := self.IBQ_Combinacoes.fieldBYname('qtd').AsInteger;
    SELF.IBQ_Combinacoes.SQL.Clear;
    SELF.IBQ_Combinacoes.SQL.Add('SELECT DISTINCT(DADOS), soma_19 FROM GERADOR_RESULT_25_Linhas2_d19E1 ORDER BY DADOS;')  ;
    SELF.IBQ_Combinacoes.Prepare;
    SELF.IBQ_Combinacoes.Open;
    SELF.IBQ_Combinacoes.First;
    LimparGrid19() ;
    vi_Linhas01 := 1;
    for vi_Combinacoes1 := 1 TO vi_QtdDados DO
    BEGIN
        STGR_Etapa01_19.Cells[00,vi_Linhas01] := INTtoSTR( vi_Linhas01 ) ;
        //STGR_Etapa01_19.Cells[01,vi_Linhas01] := '';
        STGR_Etapa01_19.Cells[02,vi_Linhas01] := copy(self.IBQ_Combinacoes.fieldBYname('dados').AsString,01,2);
        STGR_Etapa01_19.Cells[03,vi_Linhas01] := copy(self.IBQ_Combinacoes.fieldBYname('dados').AsString,04,2);
        STGR_Etapa01_19.Cells[04,vi_Linhas01] := copy(self.IBQ_Combinacoes.fieldBYname('dados').AsString,07,2);
        STGR_Etapa01_19.Cells[05,vi_Linhas01] := copy(self.IBQ_Combinacoes.fieldBYname('dados').AsString,10,2);
        STGR_Etapa01_19.Cells[06,vi_Linhas01] := copy(self.IBQ_Combinacoes.fieldBYname('dados').AsString,13,2);
        STGR_Etapa01_19.Cells[07,vi_Linhas01] := copy(self.IBQ_Combinacoes.fieldBYname('dados').AsString,16,2);
        STGR_Etapa01_19.Cells[08,vi_Linhas01] := copy(self.IBQ_Combinacoes.fieldBYname('dados').AsString,19,2);
        STGR_Etapa01_19.Cells[09,vi_Linhas01] := copy(self.IBQ_Combinacoes.fieldBYname('dados').AsString,22,2);
        STGR_Etapa01_19.Cells[10,vi_Linhas01] := copy(self.IBQ_Combinacoes.fieldBYname('dados').AsString,25,2);
        STGR_Etapa01_19.Cells[11,vi_Linhas01] := copy(self.IBQ_Combinacoes.fieldBYname('dados').AsString,28,2);
        STGR_Etapa01_19.Cells[12,vi_Linhas01] := copy(self.IBQ_Combinacoes.fieldBYname('dados').AsString,31,2);
        STGR_Etapa01_19.Cells[13,vi_Linhas01] := copy(self.IBQ_Combinacoes.fieldBYname('dados').AsString,34,2);
        STGR_Etapa01_19.Cells[14,vi_Linhas01] := copy(self.IBQ_Combinacoes.fieldBYname('dados').AsString,37,2);
        STGR_Etapa01_19.Cells[15,vi_Linhas01] := copy(self.IBQ_Combinacoes.fieldBYname('dados').AsString,40,2);
        STGR_Etapa01_19.Cells[16,vi_Linhas01] := copy(self.IBQ_Combinacoes.fieldBYname('dados').AsString,43,2);
        STGR_Etapa01_19.Cells[17,vi_Linhas01] := copy(self.IBQ_Combinacoes.fieldBYname('dados').AsString,46,2);
        STGR_Etapa01_19.Cells[18,vi_Linhas01] := copy(self.IBQ_Combinacoes.fieldBYname('dados').AsString,49,2);
        STGR_Etapa01_19.Cells[19,vi_Linhas01] := copy(self.IBQ_Combinacoes.fieldBYname('dados').AsString,52,2);
        STGR_Etapa01_19.Cells[20,vi_Linhas01] := copy(self.IBQ_Combinacoes.fieldBYname('dados').AsString,55,2);
        STGR_Etapa01_19.Cells[21,vi_Linhas01] := self.IBQ_Combinacoes.fieldBYname('Soma_19').AsString ;
        SELF.IBQ_Combinacoes.Next;
        vi_Linhas01 := vi_Linhas01 + 1;
    end; // vi_Combinacoes1
    STGR_Etapa01_19.RowCount := vi_Linhas01;
    STGR_Etapa01_19.Repaint;
    //
    //  -- > Montando o Bloco de 12 e gravando os dados
    //
    vi_QtdDados := Trunc((STGR_Etapa01_19.RowCount-1)/36);
    for vi_Combinacoes1 := 1 TO Trunc((STGR_Etapa01_19.RowCount-1)/1) DO
    BEGIN
        FN_VALIDAR_ETAPA_2_parte1 (vi_Combinacoes1, 156) ;
        if (vi_Combinacoes1 mod vi_QtdDados ) = 0 then
        begin
            PR_Gravar_Dados_Dados12();
            PGBR_Etapa_02.Position := Trunc(vi_Combinacoes1/(STGR_Etapa01_19.RowCount-1)*100) ;
            PGBR_Etapa_02.Repaint;
            STGR_Etapa02_12.RowCount := 1;
            STGR_Etapa02_12.Repaint;
        end; /// if
    end; // vi_Combinacoes1
               PR_Gravar_Dados_Dados12();
    STGR_Etapa01_19.Repaint;
    STGR_Etapa02_12.Repaint;
    for vi_Combinacoes1 := 1 TO (STGR_Etapa01_19.RowCount-1) DO
    BEGIN
        if (FN_VALIDAR_ETAPA_2_parte2 (vi_Combinacoes1, 91)) then
            continue;
    end;
    PGBR_Etapa_02.Position := 100;
    PGBR_Etapa_02.Repaint;
    STGR_Etapa01_19.Repaint;
            PR_Gravar_Dados_etapa2();
    //
    // --> Gerando 3 em 3 a partir dos 6 que sobram dos 19
    //

    SELF.IBQ_Combinacoes.Close;
    SELF.IBQ_Combinacoes.SQL.Clear;
    SELF.IBQ_Combinacoes.SQL.Add('SELECT count(DADOS_SOBRA) as TOTALQTD FROM GERADOR_RESULT_25_LINHAS2_D19E2;')  ;
    SELF.IBQ_Combinacoes.Prepare;
    SELF.IBQ_Combinacoes.Open;
    vi_QtdDados := self.IBQ_Combinacoes.fieldBYname('TOTALQTD').AsInteger;
    SELF.IBQ_Combinacoes.SQL.Clear;
    SELF.IBQ_Combinacoes.SQL.Add('SELECT DADOS_SOBRA, N FROM GERADOR_RESULT_25_LINHAS2_D19E2 ORDER BY N;')  ;
    SELF.IBQ_Combinacoes.Prepare;
    SELF.IBQ_Combinacoes.Open;
    SELF.IBQ_Combinacoes.First;
    vi_Linhas01 := 1;
    for vi_Combinacoes2 := 1 TO vi_QtdDados DO
    BEGIN
        STGR_Etapa02_06.Cells[00,vi_Linhas01] := INTtoSTR( vi_Linhas01 ) ;
        STGR_Etapa02_06.Cells[01,vi_Linhas01] := copy(self.IBQ_Combinacoes.fieldBYname('N').AsString,01,2);
        STGR_Etapa02_06.Cells[02,vi_Linhas01] := copy(self.IBQ_Combinacoes.fieldBYname('DADOS_SOBRA').AsString,01,2);
        STGR_Etapa02_06.Cells[03,vi_Linhas01] := copy(self.IBQ_Combinacoes.fieldBYname('DADOS_SOBRA').AsString,04,2);
        STGR_Etapa02_06.Cells[04,vi_Linhas01] := copy(self.IBQ_Combinacoes.fieldBYname('DADOS_SOBRA').AsString,07,2);
        STGR_Etapa02_06.Cells[05,vi_Linhas01] := copy(self.IBQ_Combinacoes.fieldBYname('DADOS_SOBRA').AsString,10,2);
        STGR_Etapa02_06.Cells[06,vi_Linhas01] := copy(self.IBQ_Combinacoes.fieldBYname('DADOS_SOBRA').AsString,13,2);
        STGR_Etapa02_06.Cells[07,vi_Linhas01] := copy(self.IBQ_Combinacoes.fieldBYname('DADOS_SOBRA').AsString,16,2);
        SELF.IBQ_Combinacoes.Next;
        vi_Linhas01 := vi_Linhas01 + 1;
    end; // vi_Combinacoes2
    STGR_Etapa02_06.RowCount := vi_linhas01 ;
    AnaliseComb_06e03 ();
    STGR_Etapa02_06. Repaint ;
    PR_Gravar_Dados3 ();
    SELF.IBQ_Combinacoes.SQL.Clear;
    SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
    SELF.IBQ_Combinacoes.ExecSQL;    
  LimparGrid19() ;
  STGR_Etapa02_12.CleanupInstance;
  STGR_Etapa02_12.Free;
  sleep(990);

    //
    //  -- > Montando o Bloco de 15 atrav�s da jun��o do Bloco de 12 (j� aprovados) e do bloco de 3 (aprovados)
    //
    SCBX_dados.HorzScrollBar.Position := 7890;
    SCBX_dados.Repaint;
    vi_Linhas01 := 1;
    SELF.IBQ_Combinacoes.Close;
    SELF.IBQ_Combinacoes.SQL.Clear;
    SELF.IBQ_Combinacoes.SQL.Add('SELECT count(A.DADOS_12 || '' '' || B.DADOS_03S) as TOTALQTD FROM GERADOR_RESULT_25_LINHAS2_D12 AS A, GERADOR_RESULT_25_LINHAS2_D3A AS B  WHERE A.N = B.N;')  ;
    SELF.IBQ_Combinacoes.Prepare;
    SELF.IBQ_Combinacoes.Open;
    vi_QtdDados := self.IBQ_Combinacoes.fieldBYname('TOTALQTD').AsInteger;
    SELF.IBQ_Combinacoes.Close;
    SELF.IBQ_Combinacoes.SQL.Clear;
    SELF.IBQ_Combinacoes.SQL.Add('SELECT (A.DADOS_12 || '' '' || B.DADOS_03S) as dados, A.DADOS_07 || '' ''|| B.DADOS_03NS, A.N FROM GERADOR_RESULT_25_LINHAS2_D12 AS A, GERADOR_RESULT_25_LINHAS2_D3A AS B  WHERE A.N = B.N;')  ;
    SELF.IBQ_Combinacoes.Prepare;
    SELF.IBQ_Combinacoes.Open;
    SELF.IBQ_Combinacoes.First;
    vi_Contar_Comb1 := 1;
    WHILE NOT(SELF.IBQ_COMBINACOES.Eof) DO
    BEGIN
        STGR_Etapa03_15.Cells[01,vi_Linhas01] := SELF.IBQ_COMBINACOES.FIELDBYNAME('N').AsString;
        STGR_Etapa03_15.Cells[02,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,1,2);
        STGR_Etapa03_15.Cells[03,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,4,2);
        STGR_Etapa03_15.Cells[04,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,7,2);
        STGR_Etapa03_15.Cells[05,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,10,2);
        STGR_Etapa03_15.Cells[06,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,13,2);
        STGR_Etapa03_15.Cells[07,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,16,2);
        STGR_Etapa03_15.Cells[08,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,19,2);
        STGR_Etapa03_15.Cells[09,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,22,2);
        STGR_Etapa03_15.Cells[10,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,25,2);
        STGR_Etapa03_15.Cells[11,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,28,2);
        STGR_Etapa03_15.Cells[12,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,31,2);
        STGR_Etapa03_15.Cells[13,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,34,2);
        STGR_Etapa03_15.Cells[14,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,37,2);
        STGR_Etapa03_15.Cells[15,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,40,2);
        STGR_Etapa03_15.Cells[16,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,43,2);
        if (SELF.IBQ_COMBINACOES.FIELDBYNAME('N').AsInteger)=45 then
            sleep(1);
        PR_ORDENAR_15 (vi_Linhas01);
        SELF.IBQ_Combinacoes.Next;
        vi_Linhas01 := vi_Linhas01 + 1;
        if (vi_Linhas01/98900)=(vi_Linhas01 DIV 98900) then
        BEGIN
           STGR_Etapa03_15.RowCount := vi_Linhas01;
           STGR_Etapa03_15.Repaint ;
           sleep(550); //290/520
           PGBR_Etapa_03.Position := (TRUNC((vi_Contar_Comb1*vi_Linhas01)  / vi_QtdDados *100) );
           PGBR_Etapa_03.Repaint;
           PR_Gravar_Dados_etapa3a ();
           vi_Linhas01 := 1;
           vi_Contar_Comb1 := vi_Contar_Comb1 +1;
           LimparGrid_Comb15 ();
           STGR_Etapa03_15.REPAINT;           
        END;
    end; // while
   STGR_Etapa03_15.RowCount := vi_Linhas01;
   STGR_Etapa03_15.Repaint ;
   PR_Gravar_Dados_etapa3a ();
   PGBR_Etapa_03.Position := 100;
   PGBR_Etapa_03.Repaint;
   STGR_Etapa03_15.REPAINT;            


   BBT_Etapa03.Click;
end;



procedure T_F_Gerador_ResDiv_25Linhas2.BBT_Etapa03Click(Sender: TObject);

 PROCEDURE PR_Gravar_Dados_etapa4a ();
    VAR
        VI_AN_Comb1, vi_ContarCelulas, vi_Contar, vi_ContarStgGrid : INTEGER;
        vc_QUERY, vc_Nome_Tabela : STRING;
        vc_Combinacoes15, vc_Combinacoes10 : STRING;
    BEGIN
        //VI_TOTALGERADO := STGR_Comb10.RowCount-1;
          // ************************
          // **   BANCO DE DADOS   **
          // ************************
          SELF.Repaint;
          // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
          vi_ContarStgGrid := TRUNC((STGR_Etapa03_15.RowCount-1)/1);
       FOR VI_AN_Comb1:= 1 TO vi_ContarStgGrid DO
       BEGIN
            FOR vi_ContarCelulas := 1 TO 25 DO
            BEGIN
               STGR_Todos_Numeros.Cells [vi_ContarCelulas ,1]:='F';
            end;       
           vc_Combinacoes15 :='';
           FOR vi_ContarCelulas := 2 TO 16 DO
           BEGIN
               vc_Combinacoes15 := vc_Combinacoes15 + TRIM(STGR_Etapa03_15.Cells[vi_ContarCelulas,VI_AN_Comb1]) +' ';
               STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa03_15.Cells[vi_ContarCelulas,VI_AN_Comb1])) ,1]:='V';
           END; // FOR vi_ContarCelulas
               // -------------------------------
               // --  MONTANDO AS 06 SOBRAS   ---
               // -------------------------------
                  vi_ContarCelulas := 1;
                  vc_Combinacoes10 := '';
                  FOR vi_Contar :=1 TO 25 DO
                  BEGIN
                      // SOBRAS
                      IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='F') THEN
                      BEGIN
                          vc_Combinacoes10 := vc_Combinacoes10 + RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) +' ' ;
                          vi_ContarCelulas := vi_ContarCelulas + 1;
                      END; // IF (STGR_Todos_Numeros
                  END; // FOR vi_Contar
          vc_Nome_Tabela := ' GERADOR_RESULT_25_LINHAS2_D15B';
           vc_QUERY  := 'INSERT INTO ' +vc_Nome_Tabela+ ' (DADOS, DADOS_ns) VALUES('
                 +#39+  TRIM(vc_Combinacoes15)  + #39 +','
                 +#39+  TRIM(vc_Combinacoes10)  + #39 
                 +#39+ ');';
           SELF.IBQ_Combin_02.SQL.Clear;
           SELF.IBQ_Combin_02.SQL.Add(vc_QUERY)  ;
           SELF.IBQ_Combin_02.ExecSQL;
       END; // FOR VI_AN_Comb1
   // IF SELF.IBQ_Combin_02.Transaction.Active=False then
   //     SELF.IBQ_Combin_02.Transaction.StartTransaction ;
    SELF.IBQ_Combin_02.SQL.Clear;
    SELF.IBQ_Combin_02.SQL.Add('COMMIT')  ;
    SELF.IBQ_Combin_02.ExecSQL;
    SLEEP(14);
    SELF.IBQ_Combin_02.SQL.Clear;
    END; // PROCEDURE GRAVAR_DADOS

var
     vi_Contar_Comb1, vi_QtdDados : integer;
     vi_Combinacoes1, vi_Combinacoes2 :integer;
     vi_Total_Comb1 : integer;
     vi_Linhas01 : integer;
     vi_SomaTotal : INTEGER;
begin
             SELF.IBQ_Combinacoes.SQL.Clear;
             SELF.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_LINHAS2_D15B')  ;
             SELF.IBQ_Combinacoes.ExecSQL;
             SELF.IBQ_Combinacoes.SQL.Clear;
             SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
             SELF.IBQ_Combinacoes.ExecSQL;
             PGBR_Etapa_05.Position := 0 ;
             PGBR_Etapa_05.Repaint;
             {
            if not((TRB_ppim1_01.Position + TRB_ppim1_02.Position + TRB_ppim1_03.Position + TRB_ppim1_04.Position) <= 15) then
            begin
                SHOWMESSAGE('O total de quantidades da prova dos Pares e �mpares' + #13+#13+'tem de ser igual a 15. Favor acertar');
                TRB_ppim1_01.SetFocus;
                Exit;
            end; /// if
            }
    //
    // -- Etapa 04
    //
    //
    //  -- > Montando 15 sem repetidos e com os filtos de blocos 1 e 2 e das linhas 21,22,23,24,25
    //
    LimparGrid_Comb15() ;
    self.IBDatabase1.ForceClose;
    self.IBDatabase1.Open;
    self.IBDatabase1.Connected := False;
    self.IBDatabase1.Connected := True;
    IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
    SELF.IBQ_Combinacoes.Close;
    vi_QtdDados := 1;
    SELF.IBQ_Combinacoes.SQL.Clear;
    SELF.IBQ_Combinacoes.SQL.Add('SELECT count(DISTINCT(DADOS)) as QTD FROM GERADOR_RESULT_25_LINHAS2_D15A;')  ;
    SELF.IBQ_Combinacoes.Prepare;
    SELF.IBQ_Combinacoes.Open;
    //SHOWMESSAGE(self.IBQ_Combinacoes.fieldBYname('QTD').AsString);
    vi_QtdDados := self.IBQ_Combinacoes.fieldBYname('QTD').AsInteger;
    SELF.IBQ_Combinacoes.SQL.Clear;
    SELF.IBQ_Combinacoes.SQL.Add('SELECT DISTINCT(DADOS) FROM GERADOR_RESULT_25_LINHAS2_D15A ORDER BY DADOS;')  ;
    SELF.IBQ_Combinacoes.Prepare;
    SELF.IBQ_Combinacoes.Open;
    SELF.IBQ_Combinacoes.First;
    PGBR_Etapa_04.Position := 0 ;
    PGBR_Etapa_04.Repaint;
    vi_Linhas01 := 1 ;
    vi_Contar_Comb1 := 1;
    WHILE NOT(SELF.IBQ_COMBINACOES.Eof) DO
    BEGIN
        STGR_Etapa03_15.Cells[00,vi_Linhas01] := intTOstr(vi_linhas01); //SELF.IBQ_COMBINACOES.FIELDBYNAME('N').AsString;
        STGR_Etapa03_15.Cells[02,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,1,2);
        STGR_Etapa03_15.Cells[03,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,4,2);
        STGR_Etapa03_15.Cells[04,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,7,2);
        STGR_Etapa03_15.Cells[05,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,10,2);
        STGR_Etapa03_15.Cells[06,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,13,2);
        STGR_Etapa03_15.Cells[07,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,16,2);
        STGR_Etapa03_15.Cells[08,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,19,2);
        STGR_Etapa03_15.Cells[09,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,22,2);
        STGR_Etapa03_15.Cells[10,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,25,2);
        STGR_Etapa03_15.Cells[11,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,28,2);
        STGR_Etapa03_15.Cells[12,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,31,2);
        STGR_Etapa03_15.Cells[13,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,34,2);
        STGR_Etapa03_15.Cells[14,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,37,2);
        STGR_Etapa03_15.Cells[15,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,40,2);
        STGR_Etapa03_15.Cells[16,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,43,2);
        SELF.IBQ_Combinacoes.Next;
        vi_Contar_Comb1 := vi_Contar_Comb1 +1;
       if  self.Validar_Blocos1e2(vi_Linhas01) then
            if self.Validar_LinhasFinais(vi_Linhas01) then
                if self.Validar_LinhasIniciais(vi_Linhas01) then
                    vi_Linhas01 := vi_Linhas01 + 1;
        if (vi_Linhas01/91)=(vi_Linhas01 DIV 91) then
        BEGIN
           STGR_Etapa03_15.RowCount := vi_Linhas01;
           STGR_Etapa03_15.Repaint ;
           sleep(190);
           PGBR_Etapa_04.Position := (TRUNC((vi_Contar_Comb1)  / vi_QtdDados *100) );
           PGBR_Etapa_04.Repaint;
           STGR_Etapa03_15.REPAINT;
           //PR_Gravar_Dados_etapa3a ();
           vi_Contar_Comb1 := vi_Contar_Comb1 +1;
        END;
    end; // while
    STGR_Etapa03_15.RowCount := vi_Linhas01;
    STGR_Etapa03_15.Repaint ;
    //PR_Gravar_Dados_etapa3a ();
    PGBR_Etapa_04.Position := 100;
    PGBR_Etapa_04.Repaint;
    STGR_Etapa03_15.REPAINT;
    PR_Gravar_Dados_etapa4a ();

    //
    // -- Etapa 05 - Prova dos Impares e Pares
    //
    PGBR_Etapa_05.Position := 0 ;
    PGBR_Etapa_05.Repaint;
    LimparGrid_Comb15() ;
    self.IBDatabase1.ForceClose;
    self.IBDatabase1.Open;
    self.IBDatabase1.Connected := False;
    self.IBDatabase1.Connected := True;
    IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
    SELF.IBQ_Combinacoes.Close;
    vi_QtdDados := 1;
    SELF.IBQ_Combinacoes.SQL.Clear;
    SELF.IBQ_Combinacoes.SQL.Add('SELECT count(DISTINCT(DADOS)) as QTD FROM GERADOR_RESULT_25_LINHAS2_D15B;')  ;
    SELF.IBQ_Combinacoes.Prepare;
    SELF.IBQ_Combinacoes.Open;
    //SHOWMESSAGE(self.IBQ_Combinacoes.fieldBYname('QTD').AsString);
    vi_QtdDados := self.IBQ_Combinacoes.fieldBYname('QTD').AsInteger;
    SELF.IBQ_Combinacoes.SQL.Clear;
    SELF.IBQ_Combinacoes.SQL.Add('SELECT DISTINCT(DADOS) FROM GERADOR_RESULT_25_LINHAS2_D15B ORDER BY DADOS;')  ;
    SELF.IBQ_Combinacoes.Prepare;
    SELF.IBQ_Combinacoes.Open;
    SELF.IBQ_Combinacoes.First;
    PGBR_Etapa_05.Position := 0 ;
    PGBR_Etapa_05.Repaint;
    vi_Linhas01 := 1 ;
    vi_Contar_Comb1 := 1;
    WHILE NOT(SELF.IBQ_COMBINACOES.Eof) DO
    BEGIN
        STGR_Etapa03_15.Cells[00,vi_Linhas01] := intTOstr(vi_linhas01); //SELF.IBQ_COMBINACOES.FIELDBYNAME('N').AsString;
        STGR_Etapa03_15.Cells[02,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,1,2);
        STGR_Etapa03_15.Cells[03,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,4,2);
        STGR_Etapa03_15.Cells[04,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,7,2);
        STGR_Etapa03_15.Cells[05,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,10,2);
        STGR_Etapa03_15.Cells[06,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,13,2);
        STGR_Etapa03_15.Cells[07,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,16,2);
        STGR_Etapa03_15.Cells[08,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,19,2);
        STGR_Etapa03_15.Cells[09,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,22,2);
        STGR_Etapa03_15.Cells[10,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,25,2);
        STGR_Etapa03_15.Cells[11,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,28,2);
        STGR_Etapa03_15.Cells[12,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,31,2);
        STGR_Etapa03_15.Cells[13,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,34,2);
        STGR_Etapa03_15.Cells[14,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,37,2);
        STGR_Etapa03_15.Cells[15,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,40,2);
        STGR_Etapa03_15.Cells[16,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,43,2);
        SELF.IBQ_Combinacoes.Next;
        vi_Contar_Comb1 := vi_Contar_Comb1 +1;
       if  self.Validar_ppi_A(vi_Linhas01) then
             if self.Validar_ppi_C(vi_Linhas01) then
                  vi_Linhas01 := vi_Linhas01 + 1;
        if (vi_Linhas01/20)=(vi_Linhas01 DIV 20) then
        BEGIN
           STGR_Etapa03_15.RowCount := vi_Linhas01;
           STGR_Etapa03_15.Repaint ;
           sleep(150);
           PGBR_Etapa_05.Position := (TRUNC((vi_Contar_Comb1)  / vi_QtdDados *100) );
           PGBR_Etapa_05.Repaint;
           STGR_Etapa03_15.REPAINT;
           //PR_Gravar_Dados_etapa3a ();
           vi_Contar_Comb1 := vi_Contar_Comb1 +1;
        END;
    end; // while
    STGR_Etapa03_15.RowCount := vi_Linhas01;
    STGR_Etapa03_15.Repaint ;
    //PR_Gravar_Dados_etapa3a ();
    PGBR_Etapa_05.Position := 100;
    PGBR_Etapa_05.Repaint;
    STGR_Etapa03_15.REPAINT;
{
    //
    // -- Etapa 06 - Prova dos Impares e Pares
    //
    PGBR_Etapa_05.Position := 0 ;
    PGBR_Etapa_05.Repaint;
    LimparGrid_Comb15() ;
    self.IBDatabase1.ForceClose;
    self.IBDatabase1.Open;
    self.IBDatabase1.Connected := False;
    self.IBDatabase1.Connected := True;
    IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
    SELF.IBQ_Combinacoes.Close;
    vi_QtdDados := 1;
    SELF.IBQ_Combinacoes.SQL.Clear;
    SELF.IBQ_Combinacoes.SQL.Add('SELECT count(DISTINCT(DADOS)) as QTD FROM GERADOR_RESULT_25_LINHAS2_D15B;')  ;
    SELF.IBQ_Combinacoes.Prepare;
    SELF.IBQ_Combinacoes.Open;
    //SHOWMESSAGE(self.IBQ_Combinacoes.fieldBYname('QTD').AsString);
    vi_QtdDados := self.IBQ_Combinacoes.fieldBYname('QTD').AsInteger;
    SELF.IBQ_Combinacoes.SQL.Clear;
    SELF.IBQ_Combinacoes.SQL.Add('SELECT DISTINCT(DADOS) FROM GERADOR_RESULT_25_LINHAS2_D15B ORDER BY DADOS;')  ;
    SELF.IBQ_Combinacoes.Prepare;
    SELF.IBQ_Combinacoes.Open;
    SELF.IBQ_Combinacoes.First;
    PGBR_Etapa_05.Position := 0 ;
    PGBR_Etapa_05.Repaint;
    vi_Linhas01 := 1 ;
    vi_Contar_Comb1 := 1;
    WHILE NOT(SELF.IBQ_COMBINACOES.Eof) DO
    BEGIN
        STGR_Etapa03_15.Cells[00,vi_Linhas01] := intTOstr(vi_linhas01); //SELF.IBQ_COMBINACOES.FIELDBYNAME('N').AsString;
        STGR_Etapa03_15.Cells[02,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,1,2);
        STGR_Etapa03_15.Cells[03,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,4,2);
        STGR_Etapa03_15.Cells[04,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,7,2);
        STGR_Etapa03_15.Cells[05,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,10,2);
        STGR_Etapa03_15.Cells[06,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,13,2);
        STGR_Etapa03_15.Cells[07,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,16,2);
        STGR_Etapa03_15.Cells[08,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,19,2);
        STGR_Etapa03_15.Cells[09,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,22,2);
        STGR_Etapa03_15.Cells[10,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,25,2);
        STGR_Etapa03_15.Cells[11,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,28,2);
        STGR_Etapa03_15.Cells[12,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,31,2);
        STGR_Etapa03_15.Cells[13,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,34,2);
        STGR_Etapa03_15.Cells[14,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,37,2);
        STGR_Etapa03_15.Cells[15,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,40,2);
        STGR_Etapa03_15.Cells[16,vi_Linhas01] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,43,2);
        SELF.IBQ_Combinacoes.Next;
        vi_Contar_Comb1 := vi_Contar_Comb1 +1;
       if  self.Validar_Etap6Blocos(vi_Linhas01) then
                  vi_Linhas01 := vi_Linhas01 + 1;
        if (vi_Linhas01/10)=(vi_Linhas01 DIV 10) then
        BEGIN
           STGR_Etapa03_15.RowCount := vi_Linhas01;
           STGR_Etapa03_15.Repaint ;
           sleep(150);
           PGBR_Etapa_05.Position := (TRUNC((vi_Contar_Comb1)  / vi_QtdDados *100) );
           PGBR_Etapa_05.Repaint;
           STGR_Etapa03_15.REPAINT;
           //PR_Gravar_Dados_etapa3a ();
           vi_Contar_Comb1 := vi_Contar_Comb1 +1;
        END;
    end; // while
    STGR_Etapa03_15.RowCount := vi_Linhas01;
    STGR_Etapa03_15.Repaint ;
    //PR_Gravar_Dados_etapa3a ();
    PGBR_Etapa_05.Position := 100;
    PGBR_Etapa_05.Repaint;
    STGR_Etapa03_15.REPAINT;
}
    SELF.IBQ_Combin_02.SQL.Clear;
    SELF.IBQ_Combin_02.SQL.Add('COMMIT')  ;
    SELF.IBQ_Combin_02.ExecSQL;

    SELF.IBQ_Combinacoes.SQL.Clear;
    SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_25_Linhas2_DEF SET HORA_TERMINO ='''+FORMATDATETIME('h:n:s',time())+''', QTD_DADOS= ''' +INTtoSTR(vi_Contar_Comb1)+ ''';')  ;
    SELF.IBQ_Combinacoes.ExecSQL;
    SELF.IBQ_Combinacoes.SQL.Clear;
    SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
    SELF.IBQ_Combinacoes.ExecSQL;


    LA_rTOTAL_Comb.Caption  := INTtoSTR(STGR_Etapa1_10.RowCount-1);
    LA_rQTD_COMB.Caption  := INTtoSTR(STGR_Etapa03_15.RowCount-1);
    LA_gFIM_GERAR.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;    
  {  IBQ_Combinacoes.SQL.Clear;
    IBQ_Combinacoes.SQL.Add('SELECT count(distinct(dados)) as quantidade FROM GERADOR_RESULT_25_Linhas2_final') ;
    IBQ_Combinacoes.Prepare;
    IBQ_Combinacoes.Open;

    LA_rTOTAL_100REPET.Caption := IBQ_Combinacoes.fieldByName('quantidade').AsString;
    IBQ_Combinacoes.SQL.Clear;
    IBQ_Combinacoes.SQL.Add('SELECT count(distinct(dados)) as quantidade FROM GERADOR_RESULT_25_Linhas2_final  where tipo =''.8i/7p''') ;
    IBQ_Combinacoes.Prepare;
    IBQ_Combinacoes.Open;
    LA_rTOTAL_100REPET.Caption := LA_rTOTAL_100REPET.Caption+ '  /  '+ IBQ_Combinacoes.fieldByName('quantidade').AsString;

        SELF.IBQ_CombINACOES.SQL.Clear;
        SELF.IBQ_CombINACOES.SQL.Add('UPDATE GERADOR_RESULT_25_Linhas2_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
        SELF.IBQ_CombINACOES.ExecSQL;
        SELF.IBQ_CombINACOES.SQL.Clear;
 //           SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_25_Linhas2_DEF SET SOMA_17= ''Soma dos 17 n�meros: ' +CB_Classificacao17.Text+ ''', SOMA_16= '' Soma dos 16 n�meros:' +CB_Classificacao16.Text+ ''', SOMA_06= '' Soma dos 06 n�meros:' +CB_Classificacao06.Text+ ''', SOMA_05= '' Soma dos 06 n�meros:' +CB_Classificacao05.Text+ ''', SOMA_04a= '' Soma dos 04a n�meros:'+CB_Classificacao04a.Text+ ''', SOMA_04b= '' Soma dos 04b n�meros:' +CB_Classificacao04b.Text+ ''', SOMA_03= '' Soma dos 03 n�meros:' +CB_Classificacao03.Text+  ''' ;') ;
           SELF.IBQ_Combinacoes.ExecSQL;
        SELF.IBQ_CombINACOES.ExecSQL;
       SELF.IBQ_CombINACOES.SQL.Clear;
       SELF.IBQ_CombINACOES.SQL.Add('COMMIT')  ;
       SELF.IBQ_CombINACOES.ExecSQL;
       }
    LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
    PA_RemoveuRepetidos.Left := 1155;
end;




procedure T_F_Gerador_ResDiv_25Linhas2.BTN_ReajustarClick(Sender: TObject);
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



procedure T_F_Gerador_ResDiv_25Linhas2.BBT_CARREGARClick(Sender: TObject);
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
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_25_Linhas2_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
end;



procedure T_F_Gerador_ResDiv_25Linhas2.BBT_Gerar_SairClick(Sender: TObject);
begin
     PA_Gerar.Enabled := false;
     PA_Gerar.Left := 4500;    ;
     PA_Gerar.Repaint;
end;



procedure T_F_Gerador_ResDiv_25Linhas2.BBT_BlocoNotasClick(Sender: TObject);
var
    vi_Contar, vc_qtd_pares : INTEGER;
    vc_Nome_Tabela, vc_Combinacoes2, vcTitulo : string;
begin
     for vc_qtd_pares := 8 to 8 do
     begin
                vc_Nome_Tabela := 'GERADOR_RESULT_25_LINHAS2_D15B';
          MEM_Combinacoes_Todas.Clear;
          SELF.IBQ_Combinacoes.Close;
          SELF.IBQ_Combinacoes.SQL.Clear;
          SELF.IBQ_Combinacoes.SQL.Add('SELECT COUNT(distinct(DADOS)) AS SOMADADOS FROM ' +vc_Nome_Tabela+ ';')  ;
          SELF.IBQ_Combinacoes.Prepare;
          SELF.IBQ_Combinacoes.Open;
          vi_Contar := SELF.IBQ_Combinacoes.FIELDBYNAME('SOMADADOS').AsInteger;
          vcTitulo := 'GERADOR Resultados 25 Linhas';
          MEM_Combinacoes_Todas.Lines.Add(vcTitulo) ;
          MEM_Combinacoes_Todas.Lines.Add('TOTAL: ' + INTtoSTR(vi_Contar)) ;
          MEM_Combinacoes_Todas.Lines.Add('----------------------------') ;
          SELF.IBQ_Combinacoes.SQL.Clear;
          SELF.IBQ_Combinacoes.SQL.Add('select DISTINCT (dados), dados_ns FROM ' +vc_Nome_Tabela+ ' ORDER BY DADOS;')  ;
          SELF.IBQ_Combinacoes.Prepare;
          SELF.IBQ_Combinacoes.Open;
          SELF.IBQ_Combinacoes.First;
          WHILE (NOT(SELF.IBQ_Combinacoes.Eof)) DO
          BEGIN
               vc_Combinacoes2 := '';
                vc_Combinacoes2 := trim(IBQ_Combinacoes.FIELDBYNAME('DADOS').AsString);
                    MEM_Combinacoes_Todas.Lines.Add(vc_Combinacoes2) ;
               IBQ_Combinacoes.Next;
         END; // FOR vi_Contar
         MEM_Combinacoes_Todas.Repaint;
         //MEM_Combinacoes_Todas.SelectAll;
         //MEM_Combinacoes_Todas.CopyToClipboard;
         //MEM_Combinacoes_Todas.Repaint;
         MEM_Combinacoes_Todas.Lines.SaveToFile('C:\CXLOTOFACIL\'+vc_Nome_Tabela+'.TXT');
     END; // For
    winExec('Notepad.exe C:\CXLOTOFACIL\GERADOR_RESULT_25_LINHAS2_D15B.TXT', sw_shownormal);
   SHOWMESSAGE('BLOCO DE NOTAS GERADO');
end;



procedure T_F_Gerador_ResDiv_25Linhas2.btn_CarregarClick(Sender: TObject);
begin
     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_25_Linhas2_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
     SELF.IBQ_Combinacoes.ExecSQL;
     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
     SELF.IBQ_Combinacoes.ExecSQL;
     SHOWMESSAGE('OK');
     SELF.Close;
end;







procedure T_F_Gerador_ResDiv_25Linhas2.BBT_OKClick(Sender: TObject);
begin
    PGBR_Etapa_01.Position :=0 ;
    BBT_Etapa01.Click;
end;






procedure T_F_Gerador_ResDiv_25Linhas2.BBT_RemoveuRepetidosClick(
  Sender: TObject);
begin
     PA_RemoveuRepetidos.Left := 5000;
     BBT_RECOMECAR.Enabled := false;
     BBT_PrepararMenu.Enabled := false;
     BBT_GerarMenu.Enabled := false;
     PA_Inicial.Enabled := TRUE;
     BTN_NovaSimulacao.Enabled := false;
     BTN_Reajustar.Enabled := TRUE;
//     BBT_CARREGAR.Enabled := false;
     PA_Inicial.Left := 1215;
     PA_Inicial.Top := 29;
end;



procedure T_F_Gerador_ResDiv_25Linhas2.rb_b15_09Click(Sender: TObject);
begin
    rb_b10_06.Checked := True;
    trb_b15_L01.Position := 9 ;
    trb_b15_L02.Position := 9 ;
    trb_b15_L03.Position := 9 ;
    trb_b15_L04.Position := 9 ;
    trb_b15_L05.Position := 9 ;
    trb_b15_L06.Position := 9 ;
    trb_b15_L07.Position := 9 ;
    trb_b15_L08.Position := 9 ;
    trb_b15_L09.Position := 9 ;
    trb_b15_L10.Position := 9 ;
    pa_b15nda.Enabled := False;
    pa_b15nda.Color := $008C7300;
    pa_b10nda.Color := $008C7300;
    trb_b25_L01.Position := 3 ;
    trb_b25_L02.Position := 3 ;
    trb_b25_L03.Position := 3 ;
    trb_b25_L04.Position := 3 ;
    trb_b25_L05.Position := 3 ;

end;



procedure T_F_Gerador_ResDiv_25Linhas2.trb_b15_L01Change(Sender: TObject);
begin
     IF trb_b15_L01.Position = 7 THEN
          la_b15_L01.Caption := '07';
     IF trb_b15_L01.Position = 8 THEN
          la_b15_L01.Caption := '08';
     IF trb_b15_L01.Position = 9 THEN
          la_b15_L01.Caption := '09';
     IF trb_b15_L01.Position = 10 THEN
          la_b15_L01.Caption := '10';
     IF trb_b15_L01.Position = 11 THEN
          la_b15_L01.Caption := '11';

     IF trb_b15_L01.Position = 7 THEN
          la_b10_L01.Caption := '08';
     IF trb_b15_L01.Position = 8 THEN
          la_b10_L01.Caption := '07';
     IF trb_b15_L01.Position = 9 THEN
          la_b10_L01.Caption := '06';
     IF trb_b15_L01.Position = 10 THEN
          la_b10_L01.Caption := '05';
     IF trb_b15_L01.Position = 11 THEN
          la_b10_L01.Caption := '04';
end;



procedure T_F_Gerador_ResDiv_25Linhas2.trb_b15_L02Change(Sender: TObject);
begin
     IF trb_b15_L02.Position = 7 THEN
          la_b15_L02.Caption := '07';
     IF trb_b15_L02.Position = 8 THEN
          la_b15_L02.Caption := '08';
     IF trb_b15_L02.Position = 9 THEN
          la_b15_L02.Caption := '09';
     IF trb_b15_L02.Position = 10 THEN
          la_b15_L02.Caption := '10';
     IF trb_b15_L02.Position = 11 THEN
          la_b15_L02.Caption := '11';

     IF trb_b15_L02.Position = 7 THEN
          la_b10_L02.Caption := '08';
     IF trb_b15_L02.Position = 8 THEN
          la_b10_L02.Caption := '07';
     IF trb_b15_L02.Position = 9 THEN
          la_b10_L02.Caption := '06';
     IF trb_b15_L02.Position = 10 THEN
          la_b10_L02.Caption := '05';
     IF trb_b15_L02.Position = 11 THEN
          la_b10_L02.Caption := '04';
end;


procedure T_F_Gerador_ResDiv_25Linhas2.trb_b15_L03Change(Sender: TObject);
begin
     IF trb_b15_L03.Position = 7 THEN
          la_b15_L03.Caption := '07';
     IF trb_b15_L03.Position = 8 THEN
          la_b15_L03.Caption := '08';
     IF trb_b15_L03.Position = 9 THEN
          la_b15_L03.Caption := '09';
     IF trb_b15_L03.Position = 10 THEN
          la_b15_L03.Caption := '10';
     IF trb_b15_L03.Position = 11 THEN
          la_b15_L03.Caption := '11';

     IF trb_b15_L03.Position = 7 THEN
          la_b10_L03.Caption := '08';
     IF trb_b15_L03.Position = 8 THEN
          la_b10_L03.Caption := '07';
     IF trb_b15_L03.Position = 9 THEN
          la_b10_L03.Caption := '06';
     IF trb_b15_L03.Position = 10 THEN
          la_b10_L03.Caption := '05';
     IF trb_b15_L03.Position = 11 THEN
          la_b10_L03.Caption := '04';
end;

procedure T_F_Gerador_ResDiv_25Linhas2.trb_b15_L04Change(Sender: TObject);
begin
     IF trb_b15_L04.Position = 7 THEN
          la_b15_L04.Caption := '07';
     IF trb_b15_L04.Position = 8 THEN
          la_b15_L04.Caption := '08';
     IF trb_b15_L04.Position = 9 THEN
          la_b15_L04.Caption := '09';
     IF trb_b15_L04.Position = 10 THEN
          la_b15_L04.Caption := '10';
     IF trb_b15_L04.Position = 11 THEN
          la_b15_L04.Caption := '11';

     IF trb_b15_L04.Position = 7 THEN
          la_b10_L04.Caption := '08';
     IF trb_b15_L04.Position = 8 THEN
          la_b10_L04.Caption := '07';
     IF trb_b15_L04.Position = 9 THEN
          la_b10_L04.Caption := '06';
     IF trb_b15_L04.Position = 10 THEN
          la_b10_L04.Caption := '05';
     IF trb_b15_L04.Position = 11 THEN
          la_b10_L04.Caption := '04';
end;


procedure T_F_Gerador_ResDiv_25Linhas2.trb_b15_L05Change(Sender: TObject);
begin
     IF trb_b15_L05.Position = 7 THEN
          la_b15_L05.Caption := '07';
     IF trb_b15_L05.Position = 8 THEN
          la_b15_L05.Caption := '08';
     IF trb_b15_L05.Position = 9 THEN
          la_b15_L05.Caption := '09';
     IF trb_b15_L05.Position = 10 THEN
          la_b15_L05.Caption := '10';
     IF trb_b15_L05.Position = 11 THEN
          la_b15_L05.Caption := '11';

     IF trb_b15_L05.Position = 7 THEN
          la_b10_L05.Caption := '08';
     IF trb_b15_L05.Position = 8 THEN
          la_b10_L05.Caption := '07';
     IF trb_b15_L05.Position = 9 THEN
          la_b10_L05.Caption := '06';
     IF trb_b15_L05.Position = 10 THEN
          la_b10_L05.Caption := '05';
     IF trb_b15_L05.Position = 11 THEN
          la_b10_L05.Caption := '04';
end;



procedure T_F_Gerador_ResDiv_25Linhas2.trb_b15_L06Change(Sender: TObject);
begin
     IF trb_b15_L06.Position = 7 THEN
          la_b15_L06.Caption := '07';
     IF trb_b15_L06.Position = 8 THEN
          la_b15_L06.Caption := '08';
     IF trb_b15_L06.Position = 9 THEN
          la_b15_L06.Caption := '09';
     IF trb_b15_L06.Position = 10 THEN
          la_b15_L06.Caption := '10';
     IF trb_b15_L06.Position = 11 THEN
          la_b15_L06.Caption := '11';

     IF trb_b15_L06.Position = 7 THEN
          la_b10_L06.Caption := '08';
     IF trb_b15_L06.Position = 8 THEN
          la_b10_L06.Caption := '07';
     IF trb_b15_L06.Position = 9 THEN
          la_b10_L06.Caption := '06';
     IF trb_b15_L06.Position = 10 THEN
          la_b10_L06.Caption := '05';
     IF trb_b15_L06.Position = 11 THEN
          la_b10_L06.Caption := '04';
end;


procedure T_F_Gerador_ResDiv_25Linhas2.trb_b15_L07Change(Sender: TObject);
begin
     IF trb_b15_L07.Position = 7 THEN
          la_b15_L07.Caption := '07';
     IF trb_b15_L07.Position = 8 THEN
          la_b15_L07.Caption := '08';
     IF trb_b15_L07.Position = 9 THEN
          la_b15_L07.Caption := '09';
     IF trb_b15_L07.Position = 10 THEN
          la_b15_L07.Caption := '10';
     IF trb_b15_L07.Position = 11 THEN
          la_b15_L07.Caption := '11';

     IF trb_b15_L07.Position = 7 THEN
          la_b10_L07.Caption := '08';
     IF trb_b15_L07.Position = 8 THEN
          la_b10_L07.Caption := '07';
     IF trb_b15_L07.Position = 9 THEN
          la_b10_L07.Caption := '06';
     IF trb_b15_L07.Position = 10 THEN
          la_b10_L07.Caption := '05';
     IF trb_b15_L07.Position = 11 THEN
          la_b10_L07.Caption := '04';
end;

procedure T_F_Gerador_ResDiv_25Linhas2.trb_b15_L08Change(Sender: TObject);
begin
     IF trb_b15_L08.Position = 7 THEN
          la_b15_L08.Caption := '07';
     IF trb_b15_L08.Position = 8 THEN
          la_b15_L08.Caption := '08';
     IF trb_b15_L08.Position = 9 THEN
          la_b15_L08.Caption := '09';
     IF trb_b15_L08.Position = 10 THEN
          la_b15_L08.Caption := '10';
     IF trb_b15_L08.Position = 11 THEN
          la_b15_L08.Caption := '11';

     IF trb_b15_L08.Position = 7 THEN
          la_b10_L08.Caption := '08';
     IF trb_b15_L08.Position = 8 THEN
          la_b10_L08.Caption := '07';
     IF trb_b15_L08.Position = 9 THEN
          la_b10_L08.Caption := '06';
     IF trb_b15_L08.Position = 10 THEN
          la_b10_L08.Caption := '05';
     IF trb_b15_L08.Position = 11 THEN
          la_b10_L08.Caption := '04';
end;



procedure T_F_Gerador_ResDiv_25Linhas2.trb_b15_L09Change(Sender: TObject);
begin
     IF trb_b15_L09.Position = 7 THEN
          la_b15_L09.Caption := '07';
     IF trb_b15_L09.Position = 8 THEN
          la_b15_L09.Caption := '08';
     IF trb_b15_L09.Position = 9 THEN
          la_b15_L09.Caption := '09';
     IF trb_b15_L09.Position = 10 THEN
          la_b15_L09.Caption := '10';
     IF trb_b15_L09.Position = 11 THEN
          la_b15_L09.Caption := '11';

     IF trb_b15_L09.Position = 7 THEN
          la_b10_L09.Caption := '08';
     IF trb_b15_L09.Position = 8 THEN
          la_b10_L09.Caption := '07';
     IF trb_b15_L09.Position = 9 THEN
          la_b10_L09.Caption := '06';
     IF trb_b15_L09.Position = 10 THEN
          la_b10_L09.Caption := '05';
     IF trb_b15_L09.Position = 11 THEN
          la_b10_L09.Caption := '04';
end;

procedure T_F_Gerador_ResDiv_25Linhas2.trb_b15_L10Change(Sender: TObject);
begin
     IF trb_b15_L10.Position = 7 THEN
          la_b15_L10.Caption := '07';
     IF trb_b15_L10.Position = 8 THEN
          la_b15_L10.Caption := '08';
     IF trb_b15_L10.Position = 9 THEN
          la_b15_L10.Caption := '09';
     IF trb_b15_L10.Position = 10 THEN
          la_b15_L10.Caption := '10';
     IF trb_b15_L10.Position = 11 THEN
          la_b15_L10.Caption := '11';

     IF trb_b15_L10.Position = 7 THEN
          la_b10_L10.Caption := '08';
     IF trb_b15_L10.Position = 8 THEN
          la_b10_L10.Caption := '07';
     IF trb_b15_L10.Position = 9 THEN
          la_b10_L10.Caption := '06';
     IF trb_b15_L10.Position = 10 THEN
          la_b10_L10.Caption := '05';
     IF trb_b15_L10.Position = 11 THEN
          la_b10_L10.Caption := '04';
end;


 

procedure T_F_Gerador_ResDiv_25Linhas2.rb_b15_07Click(Sender: TObject);
begin
    rb_b10_08.Checked := True;
    trb_b15_L01.Position := 7 ;
    trb_b15_L02.Position := 7 ;
    trb_b15_L03.Position := 7 ;
    trb_b15_L04.Position := 7 ;
    trb_b15_L05.Position := 7 ;
    trb_b15_L06.Position := 7 ;
    trb_b15_L07.Position := 7 ;
    trb_b15_L08.Position := 7 ;
    trb_b15_L09.Position := 7 ;
    trb_b15_L10.Position := 7 ;
    pa_b15nda.Enabled := False;
    pa_b15nda.Color := $008C7300;
    pa_b10nda.Color := $008C7300;
end;


procedure T_F_Gerador_ResDiv_25Linhas2.rb_b15_08Click(Sender: TObject);
begin
    rb_b10_07.Checked := True;
    trb_b15_L01.Position := 8 ;
    trb_b15_L02.Position := 8 ;
    trb_b15_L03.Position := 8 ;
    trb_b15_L04.Position := 8 ;
    trb_b15_L05.Position := 8 ;
    trb_b15_L06.Position := 8 ;
    trb_b15_L07.Position := 8 ;
    trb_b15_L08.Position := 8 ;
    trb_b15_L09.Position := 8 ;
    trb_b15_L10.Position := 8 ;
    pa_b15nda.Enabled := False;
    pa_b15nda.Color := $008C7300;
    pa_b10nda.Color := $008C7300;
end;


procedure T_F_Gerador_ResDiv_25Linhas2.rb_b15_10Click(Sender: TObject);
begin
    rb_b10_05.Checked := True;
    trb_b15_L01.Position := 10 ;
    trb_b15_L02.Position := 10 ;
    trb_b15_L03.Position := 10 ;
    trb_b15_L04.Position := 10 ;
    trb_b15_L05.Position := 10 ;
    trb_b15_L06.Position := 10 ;
    trb_b15_L07.Position := 10 ;
    trb_b15_L08.Position := 10 ;
    trb_b15_L09.Position := 10 ;
    trb_b15_L10.Position := 10 ;
    pa_b15nda.Enabled := False;
    pa_b15nda.Color := $008C7300;
    pa_b10nda.Color := $008C7300;
end;


procedure T_F_Gerador_ResDiv_25Linhas2.rb_b15_11Click(Sender: TObject);
begin
    rb_b10_04.Checked := True;
    trb_b15_L01.Position := 11 ;
    trb_b15_L02.Position := 11 ;
    trb_b15_L03.Position := 11 ;
    trb_b15_L04.Position := 11 ;
    trb_b15_L05.Position := 11 ;
    trb_b15_L06.Position := 11 ;
    trb_b15_L07.Position := 11 ;
    trb_b15_L08.Position := 11 ;
    trb_b15_L09.Position := 11 ;
    trb_b15_L10.Position := 11 ;
    pa_b15nda.Enabled := False;
    pa_b15nda.Color := $008C7300;
    pa_b10nda.Color := $008C7300;
end;


procedure T_F_Gerador_ResDiv_25Linhas2.rb_b15_ndaClick(Sender: TObject);
begin
    pa_b15nda.Enabled := True;
    pa_b15nda.Color := $00DDE291;
    pa_b10nda.Color := $00DDE291;
    trb_b15_L01.Repaint;
    trb_b15_L02.Repaint;
    trb_b15_L03.Repaint;
    trb_b15_L04.Repaint;
end;


procedure T_F_Gerador_ResDiv_25Linhas2.trb_b25_L01Change(Sender: TObject);
begin
     IF trb_b25_L01.Position = 3 THEN
          la_b25_L01.Caption := '03';
     IF trb_b25_L01.Position = 4 THEN
          la_b25_L01.Caption := '04';
     IF trb_b25_L01.Position = 2 THEN
          la_b25_L01.Caption := '02';
end;


procedure T_F_Gerador_ResDiv_25Linhas2.trb_b25_L02Change(Sender: TObject);
begin
     IF trb_b25_L02.Position = 3 THEN
          la_b25_L02.Caption := '03';
     IF trb_b25_L02.Position = 4 THEN
          la_b25_L02.Caption := '04';
     IF trb_b25_L02.Position = 2 THEN
          la_b25_L02.Caption := '02';
end;


procedure T_F_Gerador_ResDiv_25Linhas2.trb_b25_L03Change(Sender: TObject);
begin
     IF trb_b25_L03.Position = 3 THEN
          la_b25_L03.Caption := '03';
     IF trb_b25_L03.Position = 4 THEN
          la_b25_L03.Caption := '04';
     IF trb_b25_L03.Position = 2 THEN
          la_b25_L03.Caption := '02';
end;


procedure T_F_Gerador_ResDiv_25Linhas2.trb_b25_L04Change(Sender: TObject);
begin
     IF trb_b25_L04.Position = 3 THEN
          la_b25_L04.Caption := '03';
     IF trb_b25_L04.Position = 4 THEN
          la_b25_L04.Caption := '04';
     IF trb_b25_L04.Position = 2 THEN
          la_b25_L04.Caption := '02';
end;


procedure T_F_Gerador_ResDiv_25Linhas2.trb_b25_L05Change(Sender: TObject);
begin
     IF trb_b25_L05.Position = 3 THEN
          la_b25_L05.Caption := '03';
     IF trb_b25_L05.Position = 4 THEN
          la_b25_L05.Caption := '04';
     IF trb_b25_L05.Position = 2 THEN
          la_b25_L05.Caption := '02';
end;




procedure T_F_Gerador_ResDiv_25Linhas2.TRB_ppim1_01Change(Sender: TObject);
begin
     IF TRB_ppim1_01.Position = 4 THEN
          LA_ppim1_01.Caption := '04';
     IF TRB_ppim1_01.Position = 5 THEN
          LA_ppim1_01.Caption := '05';
     IF TRB_ppim1_01.Position = 6 THEN
          LA_ppim1_01.Caption := '06';
     IF TRB_ppim2_01.Position < TRB_ppim1_01.Position THEN
     begin
          TRB_ppim2_01.Position := TRB_ppim1_01.Position;
          LA_ppim2_01.Caption := LA_ppim1_01.Caption;
     end;
end;

procedure T_F_Gerador_ResDiv_25Linhas2.TRB_ppim1_02Change(Sender: TObject);
begin
     IF TRB_ppim1_02.Position = 3 THEN
          LA_ppim1_02.Caption := '03';
     IF TRB_ppim1_02.Position = 4 THEN
          LA_ppim1_02.Caption := '04';
     IF TRB_ppim1_02.Position = 5 THEN
          LA_ppim1_02.Caption := '05';
     IF TRB_ppim2_02.Position < TRB_ppim1_02.Position THEN
     begin
          TRB_ppim2_02.Position := TRB_ppim1_02.Position;
          LA_ppim2_02.Caption := LA_ppim1_02.Caption;
     end;
end;

procedure T_F_Gerador_ResDiv_25Linhas2.TRB_ppim1_03Change(Sender: TObject);
begin
     IF TRB_ppim1_03.Position = 2 THEN
          LA_ppim1_03.Caption := '02';
     IF TRB_ppim1_03.Position = 3 THEN
          LA_ppim1_03.Caption := '03';
     IF TRB_ppim1_03.Position = 4 THEN
          LA_ppim1_03.Caption := '04';
     IF TRB_ppim2_03.Position < TRB_ppim1_03.Position THEN
     begin
          TRB_ppim2_03.Position := TRB_ppim1_03.Position;
          LA_ppim2_03.Caption := LA_ppim1_03.Caption;
     end;
end;

procedure T_F_Gerador_ResDiv_25Linhas2.TRB_ppim1_04Change(Sender: TObject);
begin
     IF TRB_ppim1_04.Position = 2 THEN
          LA_ppim1_04.Caption := '02';
     IF TRB_ppim1_04.Position = 3 THEN
          LA_ppim1_04.Caption := '03';
     IF TRB_ppim1_04.Position = 4 THEN
          LA_ppim1_04.Caption := '04';
     IF TRB_ppim2_04.Position < TRB_ppim1_04.Position THEN
     begin
          TRB_ppim2_04.Position := TRB_ppim1_04.Position;
          LA_ppim2_04.Caption := LA_ppim1_04.Caption;
     end;
end;




procedure T_F_Gerador_ResDiv_25Linhas2.TRB_ppim2_01Change(Sender: TObject);
begin
     IF TRB_ppim2_01.Position < TRB_ppim1_01.Position THEN
          TRB_ppim2_01.Position := TRB_ppim1_01.Position;
     IF TRB_ppim2_01.Position = 4 THEN
          LA_ppim2_01.Caption := '04';
     IF TRB_ppim2_01.Position = 5 THEN
          LA_ppim2_01.Caption := '05';
     IF TRB_ppim2_01.Position = 6 THEN
          LA_ppim2_01.Caption := '06';
end;

procedure T_F_Gerador_ResDiv_25Linhas2.TRB_ppim2_02Change(Sender: TObject);
begin
     IF TRB_ppim2_02.Position < TRB_ppim1_02.Position THEN
          TRB_ppim2_02.Position := TRB_ppim1_02.Position;
     IF TRB_ppim2_02.Position = 3 THEN
          LA_ppim2_02.Caption := '03';
     IF TRB_ppim2_02.Position = 4 THEN
          LA_ppim2_02.Caption := '04';
     IF TRB_ppim2_02.Position = 5 THEN
          LA_ppim2_02.Caption := '05';
end;

procedure T_F_Gerador_ResDiv_25Linhas2.TRB_ppim2_03Change(Sender: TObject);
begin
     IF TRB_ppim2_03.Position < TRB_ppim1_03.Position THEN
          TRB_ppim2_03.Position := TRB_ppim1_03.Position;
     IF TRB_ppim2_03.Position = 2 THEN
          LA_ppim2_03.Caption := '02';
     IF TRB_ppim2_03.Position = 3 THEN
          LA_ppim2_03.Caption := '03';
     IF TRB_ppim2_03.Position = 4 THEN
          LA_ppim2_03.Caption := '04';
end;

procedure T_F_Gerador_ResDiv_25Linhas2.TRB_ppim2_04Change(Sender: TObject);
begin
     IF TRB_ppim2_04.Position < TRB_ppim1_04.Position THEN
          TRB_ppim2_04.Position := TRB_ppim1_04.Position;
     IF TRB_ppim2_04.Position = 2 THEN
          LA_ppim2_04.Caption := '02';
     IF TRB_ppim2_04.Position = 3 THEN
          LA_ppim2_04.Caption := '03';
     IF TRB_ppim2_04.Position = 4 THEN
          LA_ppim2_04.Caption := '04';
end;




procedure T_F_Gerador_ResDiv_25Linhas2.RB_ParImpMod1Click(Sender: TObject);
begin
    STGR_ppi_A.Cells[0,0] := 'A';
    STGR_ppi_A.Cells[01,0] := '01';
    STGR_ppi_A.Cells[02,0] := '07';
    STGR_ppi_A.Cells[03,0] := '09';
    STGR_ppi_A.Cells[04,0] := '11';
    STGR_ppi_A.Cells[05,0] := '15';
    STGR_ppi_A.Cells[06,0] := '17';
    STGR_ppi_A.Cells[07,0] := '19';
    STGR_ppi_A.Cells[08,0] := '25';
    STGR_ppi_B.Cells[0,0] := 'B';
    STGR_ppi_B.Cells[01,0] := '02';
    STGR_ppi_B.Cells[02,0] := '04';
    STGR_ppi_B.Cells[03,0] := '06';
    STGR_ppi_B.Cells[04,0] := '14';
    STGR_ppi_B.Cells[05,0] := '20';
    STGR_ppi_B.Cells[06,0] := '22';
    STGR_ppi_B.Cells[07,0] := '24';
    STGR_ppi_C.Cells[0,0] := 'C';
    STGR_ppi_C.Cells[01,0] := '03';
    STGR_ppi_C.Cells[02,0] := '05';
    STGR_ppi_C.Cells[03,0] := '13';
    STGR_ppi_C.Cells[04,0] := '21';
    STGR_ppi_C.Cells[05,0] := '23';
    STGR_ppi_D.Cells[0,0] := 'D';
    STGR_ppi_D.Cells[01,0] := '08';
    STGR_ppi_D.Cells[02,0] := '10';
    STGR_ppi_D.Cells[03,0] := '12';
    STGR_ppi_D.Cells[04,0] := '16';
    STGR_ppi_D.Cells[05,0] := '18';
end;

procedure T_F_Gerador_ResDiv_25Linhas2.RB_ParImpMod2Click(Sender: TObject);
begin
    STGR_ppi_A.Cells[0,0] := 'A';
    STGR_ppi_A.Cells[01,0] := '03';
    STGR_ppi_A.Cells[02,0] := '07';
    STGR_ppi_A.Cells[03,0] := '09';
    STGR_ppi_A.Cells[04,0] := '11';
    STGR_ppi_A.Cells[05,0] := '15';
    STGR_ppi_A.Cells[06,0] := '17';
    STGR_ppi_A.Cells[07,0] := '19';
    STGR_ppi_A.Cells[08,0] := '23';
    STGR_ppi_B.Cells[0,0] := 'B';
    STGR_ppi_B.Cells[01,0] := '02';
    STGR_ppi_B.Cells[02,0] := '04';
    STGR_ppi_B.Cells[03,0] := '06';
    STGR_ppi_B.Cells[04,0] := '14';
    STGR_ppi_B.Cells[05,0] := '20';
    STGR_ppi_B.Cells[06,0] := '22';
    STGR_ppi_B.Cells[07,0] := '24';
    STGR_ppi_C.Cells[0,0] := 'C';
    STGR_ppi_C.Cells[01,0] := '01';
    STGR_ppi_C.Cells[02,0] := '05';
    STGR_ppi_C.Cells[03,0] := '13';
    STGR_ppi_C.Cells[04,0] := '21';
    STGR_ppi_C.Cells[05,0] := '25';
    STGR_ppi_D.Cells[0,0] := 'D';
    STGR_ppi_D.Cells[01,0] := '08';
    STGR_ppi_D.Cells[02,0] := '10';
    STGR_ppi_D.Cells[03,0] := '12';
    STGR_ppi_D.Cells[04,0] := '16';
    STGR_ppi_D.Cells[05,0] := '18';
end;

procedure T_F_Gerador_ResDiv_25Linhas2.RB_ParImpMod3Click(Sender: TObject);
begin
    STGR_ppi_A.Cells[0,0] := 'A';
    STGR_ppi_A.Cells[01,0] := '01';
    STGR_ppi_A.Cells[02,0] := '05';
    STGR_ppi_A.Cells[03,0] := '09';
    STGR_ppi_A.Cells[04,0] := '11';
    STGR_ppi_A.Cells[05,0] := '15';
    STGR_ppi_A.Cells[06,0] := '17';
    STGR_ppi_A.Cells[07,0] := '19';
    STGR_ppi_A.Cells[08,0] := '25';
    STGR_ppi_B.Cells[0,0] := 'B';
    STGR_ppi_B.Cells[01,0] := '02';
    STGR_ppi_B.Cells[02,0] := '04';
    STGR_ppi_B.Cells[03,0] := '08';
    STGR_ppi_B.Cells[04,0] := '14';
    STGR_ppi_B.Cells[05,0] := '20';
    STGR_ppi_B.Cells[06,0] := '22';
    STGR_ppi_B.Cells[07,0] := '24';
    STGR_ppi_C.Cells[0,0] := 'C';
    STGR_ppi_C.Cells[01,0] := '03';
    STGR_ppi_C.Cells[02,0] := '07';
    STGR_ppi_C.Cells[03,0] := '13';
    STGR_ppi_C.Cells[04,0] := '21';
    STGR_ppi_C.Cells[05,0] := '23';
    STGR_ppi_D.Cells[0,0] := 'D';
    STGR_ppi_D.Cells[01,0] := '06';
    STGR_ppi_D.Cells[02,0] := '10';
    STGR_ppi_D.Cells[03,0] := '12';
    STGR_ppi_D.Cells[04,0] := '16';
    STGR_ppi_D.Cells[05,0] := '18';
end;

procedure T_F_Gerador_ResDiv_25Linhas2.RB_ParImpMod4Click(Sender: TObject);
begin
    STGR_ppi_A.Cells[0,0] := 'A';
    STGR_ppi_A.Cells[01,0] := '01';
    STGR_ppi_A.Cells[02,0] := '07';
    STGR_ppi_A.Cells[03,0] := '09';
    STGR_ppi_A.Cells[04,0] := '11';
    STGR_ppi_A.Cells[05,0] := '15';
    STGR_ppi_A.Cells[06,0] := '17';
    STGR_ppi_A.Cells[07,0] := '19';
    STGR_ppi_A.Cells[08,0] := '25';
    STGR_ppi_B.Cells[0,0] := 'B';
    STGR_ppi_B.Cells[01,0] := '02';
    STGR_ppi_B.Cells[02,0] := '04';
    STGR_ppi_B.Cells[03,0] := '06';
    STGR_ppi_B.Cells[04,0] := '10';
    STGR_ppi_B.Cells[05,0] := '16';
    STGR_ppi_B.Cells[06,0] := '22';
    STGR_ppi_B.Cells[07,0] := '24';
    STGR_ppi_C.Cells[0,0] := 'C';
    STGR_ppi_C.Cells[01,0] := '03';
    STGR_ppi_C.Cells[02,0] := '05';
    STGR_ppi_C.Cells[03,0] := '13';
    STGR_ppi_C.Cells[04,0] := '21';
    STGR_ppi_C.Cells[05,0] := '23';
    STGR_ppi_D.Cells[0,0] := 'D';
    STGR_ppi_D.Cells[01,0] := '08';
    STGR_ppi_D.Cells[02,0] := '12';
    STGR_ppi_D.Cells[03,0] := '14';
    STGR_ppi_D.Cells[04,0] := '18';
    STGR_ppi_D.Cells[05,0] := '20';
end;




procedure T_F_Gerador_ResDiv_25Linhas2.RadioButton1Click(Sender: TObject);
begin
    STGR_ppi_A.Cells[0,0] := 'A';
    STGR_ppi_A.Cells[01,0] := '03';
    STGR_ppi_A.Cells[02,0] := '07';
    STGR_ppi_A.Cells[03,0] := '09';
    STGR_ppi_A.Cells[04,0] := '13';
    STGR_ppi_A.Cells[05,0] := '15';
    STGR_ppi_A.Cells[06,0] := '17';
    STGR_ppi_A.Cells[07,0] := '21';
    STGR_ppi_A.Cells[08,0] := '25';
    STGR_ppi_B.Cells[0,0] := 'B';
    STGR_ppi_B.Cells[01,0] := '02';
    STGR_ppi_B.Cells[02,0] := '04';
    STGR_ppi_B.Cells[03,0] := '06';
    STGR_ppi_B.Cells[04,0] := '10';
    STGR_ppi_B.Cells[05,0] := '14';
    STGR_ppi_B.Cells[06,0] := '22';
    STGR_ppi_B.Cells[07,0] := '24';
    STGR_ppi_C.Cells[0,0] := 'C';
    STGR_ppi_C.Cells[01,0] := '01';
    STGR_ppi_C.Cells[02,0] := '05';
    STGR_ppi_C.Cells[03,0] := '15';
    STGR_ppi_C.Cells[04,0] := '19';
    STGR_ppi_C.Cells[05,0] := '23';
    STGR_ppi_D.Cells[0,0] := 'D';
    STGR_ppi_D.Cells[01,0] := '08';
    STGR_ppi_D.Cells[02,0] := '12';
    STGR_ppi_D.Cells[03,0] := '16';
    STGR_ppi_D.Cells[04,0] := '18';
    STGR_ppi_D.Cells[05,0] := '20';
end;

end.
