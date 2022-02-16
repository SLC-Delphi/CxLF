unit uGerador_ResultDiv_5cj15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, DB, strutils,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, IdBaseComponent, IdComponent, IdIPWatch ;

type
  T_F_Gerador_ResDiv_5cj15 = class(TForm)
    PA_RemoveuRepetidos: TPanel;
    Label44: TLabel;
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
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBQ_Combinacoes: TIBQuery;
    BBT_CancelarSair: TBitBtn;
    SCBX_Gabarito: TScrollBox;
    Label7: TLabel;
    STGR_Base: TStringGrid;
    STGR_Base10: TStringGrid;
    PA_Fixos: TPanel;
    Label1: TLabel;
    ED_FIXOS_01_7i8p: TEdit;
    ED_FIXOS_02_7i8p: TEdit;
    Panel6: TPanel;
    Label6: TLabel;
    ED_FIXOS_01_8i7p: TEdit;
    ED_FIXOS_02_8i7p: TEdit;
    Panel7: TPanel;
    Label8: TLabel;
    ED_FIXOS_01_6i9p: TEdit;
    ED_FIXOS_02_6i9p: TEdit;
    Panel8: TPanel;
    Label9: TLabel;
    ED_FIXOS_01_9i6p: TEdit;
    ED_FIXOS_02_9i6p: TEdit;
    BBT_BlocoNotas: TBitBtn;
    SCBX_dados: TScrollBox;
    STGR_Comb15_final: TStringGrid;
    LA_rTOTAL_100REPET: TLabel;
    Label50: TLabel;
    STGR_Etapa02_10: TStringGrid;
    BTN_BlocoDeNotas1: TButton;
    STGR_Etapa01_12de15: TStringGrid;
    STGR_Etapa1_09de10: TStringGrid;
    ED_FIXOS_03_8i7p: TEdit;
    btn_Carregar: TButton;
    STGR_Etapa1_03de15: TStringGrid;
    Bevel1: TBevel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BBT_Etapa02: TBitBtn;
    PGBR_Etapa_01_1: TProgressBar;
    PGBR_Etapa_02: TProgressBar;
    Label13: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    CB_Classificacao: TComboBox;
    LA_Tipo: TLabel;
    IBQ_Combin_02: TIBQuery;
    STGR_Etapa01_15: TStringGrid;
    Label5: TLabel;
    CB_F12de15: TComboBox;
    Label4: TLabel;
    CB_Funil_ns: TComboBox;
    STGR_Etapa1_01de10: TStringGrid;
    STGR_Etapa01_05de12: TStringGrid;
    STGR_Etapa03_05_07_12: TStringGrid;
    STGR_Etapa01_07de12: TStringGrid;
    Label10: TLabel;
    CB_Etapa1_7duplas: TComboBox;
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
    procedure BBT_RemoveuRepetidosClick(Sender: TObject);
    procedure BTN_ReajustarClick(Sender: TObject);
    procedure BBT_CARREGARClick(Sender: TObject);
    procedure BBT_Gerar_SairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BBT_BlocoNotasClick(Sender: TObject);
    procedure btn_CarregarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BBT_Etapa02Click(Sender: TObject);
  private
    F_MODALIDADE: STRING;
    Fvi_inicial1: INTEGER;
    Fvi_final1: INTEGER;
    { Private declarations }
    procedure Set_MODALIDADE(const Value: STRING);
    FUNCTION FN_VALIDAR_ETAPA_1_parte1(vi_linhas, vi_inicial, vi_final, vi_soma, vi_Sobrainicial, vi_Sobrafinal, vi_sobra09de10: Integer) : Boolean;
    FUNCTION FN_VALIDAR_ETAPA_1_parte2(vi_linhabase, vi_linha1, vi_linha2: Integer) : Boolean;
    FUNCTION FN_VALIDAR_ETAPA_2_parte1(vi_inicial, vi_final, vi_linhas1: Integer) :Boolean;
    FUNCTION FN_VALIDAR_ETAPA_2_parte2(vi_inicial, vi_final: Integer) :Boolean;
    procedure LimparGrid_Comb15();
    procedure Setvi_final1E(const Value: INTEGER);
    procedure Setvi_inicial1(const Value: INTEGER);
    function validador (vi_x, vi_y, vi_z : integer) : boolean;
  public
    { Public declarations }
     PROPERTY _MODALIDADE : STRING  read F_MODALIDADE write Set_MODALIDADE;
     PROPERTY vi_inicial1 : INTEGER  read Fvi_inicial1 write Setvi_inicial1;
     PROPERTY vi_final1 : INTEGER  read Fvi_final1 write Setvi_final1E;
  end;

var
  _F_Gerador_ResDiv_5cj15: T_F_Gerador_ResDiv_5cj15;

implementation

{$R *.dfm}


procedure T_F_Gerador_ResDiv_5cj15.Set_MODALIDADE(const Value: STRING);
begin
  F_MODALIDADE := Value;
end;

procedure T_F_Gerador_ResDiv_5cj15.Setvi_final1E(const Value: INTEGER);
begin
  Fvi_final1 := Value;
end;

procedure T_F_Gerador_ResDiv_5cj15.Setvi_inicial1(const Value: INTEGER);
begin
  Fvi_inicial1 := Value;
end;



procedure T_F_Gerador_ResDiv_5cj15.FormCreate(Sender: TObject);
begin
     SELF.ClientWidth  := 1475;
     SELF.ClientHeight := 660;
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
            SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIv_5cj15_DEF SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
        except
            //
        end; // try
end;



procedure T_F_Gerador_ResDiv_5cj15.FormActivate(Sender: TObject);
begin
      IF (SELF._MODALIDADE ='GERADOR') THEN
      begin
          LA_Titulo.Caption             := 'GERADOR Resultados Diversos a Partir de 9 Conjuntos de 15';
          CB_Classificacao.ItemIndex := 0;
          CB_Classificacao.Enabled := True;
      END ELSE
      BEGIN
          LA_Titulo.Caption             := 'SIMULAR a Partir de 9 Conjuntos de 15';
          CB_Classificacao.Enabled := True;
          BTN_NovaSimulacao.Click;
      end;
      LA_Titulo.Repaint;
end;



procedure T_F_Gerador_ResDiv_5cj15.FormClose(Sender: TObject;
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


procedure T_F_Gerador_ResDiv_5cj15.BBT_CloseClick(Sender: TObject);
begin
     SELF.Close;
end;








procedure T_F_Gerador_ResDiv_5cj15.BTN_NovaSimulacaoClick(Sender: TObject);
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


procedure T_F_Gerador_ResDiv_5cj15.BTN_SairClick(Sender: TObject);
begin
     SELF.Close;
end;



procedure T_F_Gerador_ResDiv_5cj15.BBT_CancelarClick(Sender: TObject);
begin
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIv_5cj15_DEF SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('COMMIT;')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
          SELF.Close;
end;



FUNCTION T_F_Gerador_ResDiv_5cj15.FN_VALIDAR_ETAPA_1_parte1(vi_linhas, vi_inicial, vi_final, vi_soma, vi_Sobrainicial, vi_Sobrafinal, vi_sobra09de10: Integer) : Boolean;
VAR
     vi_Comb07i_1, vi_Comb07i_2, vi_Comb07i_3, vi_Comb07i_4, vi_Comb07i_5, vi_Comb07i_6, vi_CombSobra: iNTEGER;
     vi_Contar, vi_ContaSel1, vi_SomaTotal, vi_SomaTotalSobra : INTEGER;
     vi_6Numeros : array [1..6] of Shortint;
BEGIN
	for  vi_Comb07i_1 := 2 to 03 do
	begin
		for  vi_Comb07i_2 := vi_Comb07i_1 +1  to 04 do
		begin
			for  vi_Comb07i_3 := vi_Comb07i_2+ 1  to 05 do
			begin
				for  vi_Comb07i_4 := vi_Comb07i_3 +1  to 06 do
				begin
					for  vi_Comb07i_5 := vi_Comb07i_4 +1  to 07 do
					begin
						for  vi_Comb07i_6 := vi_Comb07i_5 +1  to 08 do
						begin
							vi_6Numeros [01] := STRtoINT(STGR_Etapa01_07de12.Cells[vi_Comb07i_1,vi_linhas]);
							vi_6Numeros [02] := STRtoINT(STGR_Etapa01_07de12.Cells[vi_Comb07i_2,vi_linhas]);
							vi_6Numeros [03] := STRtoINT(STGR_Etapa01_07de12.Cells[vi_Comb07i_3,vi_linhas]);
							vi_6Numeros [04] := STRtoINT(STGR_Etapa01_07de12.Cells[vi_Comb07i_4,vi_linhas]);
							vi_6Numeros [05] := STRtoINT(STGR_Etapa01_07de12.Cells[vi_Comb07i_5,vi_linhas]);
							vi_6Numeros [06] := STRtoINT(STGR_Etapa01_07de12.Cells[vi_Comb07i_6,vi_linhas]);
                                // --> Capturando os números que sobraram
                                FOR vi_Contar :=1 TO 25 DO
                                BEGIN
                                    STGR_Todos_Numeros.Cells[vi_Contar,1] :='F';
                                    STGR_Todos_Numeros.Cells[vi_Contar,2] :='F';
                                END; // FOR vi_Contar
                                FOR vi_Contar :=2 TO 8 DO
                                BEGIN
                                    STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa01_07de12.Cells[vi_Contar,vi_linhas])) ,1]:='V';
                                END; // FOR vi_Contar1
                                FOR vi_Contar :=1 TO 6 DO
                                BEGIN
                                    STGR_Todos_Numeros.Cells [ vi_6Numeros [vi_Contar]  ,2]:='V';
                                END; // FOR vi_Contar1
                                vi_ContaSel1 := 1;
                                FOR vi_Contar :=1 TO 25 DO
                                BEGIN
                                    IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and  (STGR_Todos_Numeros.Cells[vi_Contar,2]='F')  THEN
                                    BEGIN
                                        vi_CombSobra :=  strTOint(RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2)) ;
                                        vi_ContaSel1 := vi_ContaSel1 + 1;
                                    END; // IF (STGR_Todos_Numeros
                                END; // FOR vi_Contar
							vi_SomaTotal := vi_soma + (vi_6Numeros [01] + vi_6Numeros [02] + vi_6Numeros [03] + vi_6Numeros [04] + vi_6Numeros [05]+ vi_6Numeros [06]);
                            vi_SomaTotalSobra := vi_sobra09de10 + vi_CombSobra;
							if ((vi_SomaTotal >= vi_inicial ) and  (vi_SomaTotal <= vi_final ))  and ((vi_SomaTotalSobra >= vi_Sobrainicial ) and  (vi_SomaTotalSobra <= vi_Sobrafinal ))then
						   	//if ((vi_SomaTotal >= vi_inicial ) and  (vi_SomaTotal <= vi_final )) then
							begin
								Result := True;
								exit;
							end;
						end; // for
					end; // for
				end; // for
			end; // for
		end; // for
	end; // for
	result := false;
END;



FUNCTION T_F_Gerador_ResDiv_5cj15.FN_VALIDAR_ETAPA_1_parte2(vi_linhabase, vi_linha1, vi_linha2: Integer) : Boolean;
VAR
     vi_14Numeros : array [1..14] of array [1..1] of smallint;
     vi_Resultado : array [1..3] of smallint;
     vb_devolve : boolean;
     vi_sobra, vi_contar, vi_contaSel : smallint;
BEGIN
    // --->> montando o array inicial
    vi_14Numeros[01,1] := strTOint(STGR_Base.Cells[2,vi_linhabase]);
    vi_14Numeros[02,1] := strTOint(STGR_Base.Cells[16,vi_linhabase]);

    vi_14Numeros[03,1] := strTOint(STGR_Base.Cells[3,vi_linhabase]);
    vi_14Numeros[04,1] := strTOint(STGR_Base.Cells[15,vi_linhabase]);

    vi_14Numeros[05,1] := strTOint(STGR_Base.Cells[4,vi_linhabase]);
    vi_14Numeros[06,1] := strTOint(STGR_Base.Cells[14,vi_linhabase]);

    vi_14Numeros[07,1] := strTOint(STGR_Base.Cells[5,vi_linhabase]);
    vi_14Numeros[08,1] := strTOint(STGR_Base.Cells[13,vi_linhabase]);

    vi_14Numeros[09,1] := strTOint(STGR_Base.Cells[6,vi_linhabase]);
    vi_14Numeros[10,1] := strTOint(STGR_Base.Cells[12,vi_linhabase]);

    vi_14Numeros[11,1] := strTOint(STGR_Base.Cells[7,vi_linhabase]);
    vi_14Numeros[12,1] := strTOint(STGR_Base.Cells[11,vi_linhabase]);

    vi_14Numeros[13,1] := strTOint(STGR_Base.Cells[8,vi_linhabase]);
    vi_14Numeros[14,1] := strTOint(STGR_Base.Cells[10,vi_linhabase]);

    vi_sobra := strTOint(STGR_Base.Cells[9,vi_linhabase]);

    vi_Resultado[1] := 0;
    vi_Resultado[2] := 0;
    vi_Resultado[3] := 0;
    // ---> contando a sobra
    for vi_contar := 1 to 3 do
    begin
        if (strTOint(STGR_Etapa1_03de15.Cells[vi_contar+1,vi_linha1]) = vi_sobra) then
            vi_Resultado[3] := vi_Resultado[3] + 1;
        if (strTOint(STGR_Etapa03_05_07_12.Cells[vi_contar,vi_linha2]) = vi_sobra) then
            vi_Resultado[3] := vi_Resultado[3] + 1;
    end;
    // ---> contando
    vi_contaSel := 0;
    for vi_contar := 1 to 3 do
    begin
        if (strTOint(STGR_Etapa1_03de15.Cells[vi_contar+1,vi_linha1]) = vi_14Numeros[01,1]) then
            vi_contaSel := vi_contaSel + 1;
        if (strTOint(STGR_Etapa03_05_07_12.Cells[vi_contar,vi_linha2]) = vi_14Numeros[01,1]) then
            vi_contaSel := vi_contaSel + 1;
        if (strTOint(STGR_Etapa1_03de15.Cells[vi_contar+1,vi_linha1]) = vi_14Numeros[02,1]) then
            vi_contaSel := vi_contaSel + 1;
        if (strTOint(STGR_Etapa03_05_07_12.Cells[vi_contar,vi_linha2]) = vi_14Numeros[02,1]) then
            vi_contaSel := vi_contaSel + 1;
    end;
    if (vi_contaSel = 1) then
        vi_Resultado[1] := vi_Resultado[1] + 1
    else if (vi_contaSel = 2)  then
        vi_Resultado[2] := vi_Resultado[2] + 1;
            // ---> contando
            vi_contaSel := 0;
            for vi_contar := 1 to 3 do
            begin
                if (strTOint(STGR_Etapa1_03de15.Cells[vi_contar+1,vi_linha1]) = vi_14Numeros[03,1]) then
                    vi_contaSel := vi_contaSel + 1;
                if (strTOint(STGR_Etapa03_05_07_12.Cells[vi_contar,vi_linha2]) = vi_14Numeros[03,1]) then
                    vi_contaSel := vi_contaSel + 1;
                if (strTOint(STGR_Etapa1_03de15.Cells[vi_contar+1,vi_linha1]) = vi_14Numeros[04,1]) then
                    vi_contaSel := vi_contaSel + 1;
                if (strTOint(STGR_Etapa03_05_07_12.Cells[vi_contar,vi_linha2]) = vi_14Numeros[04,1]) then
                    vi_contaSel := vi_contaSel + 1;
            end;
            if (vi_contaSel = 1) then
                vi_Resultado[1] := vi_Resultado[1] + 1
            else if (vi_contaSel = 2)  then
                vi_Resultado[2] := vi_Resultado[2] + 1;
    // ---> contando
    vi_contaSel := 0;
    for vi_contar := 1 to 3 do
    begin
        if (strTOint(STGR_Etapa1_03de15.Cells[vi_contar+1,vi_linha1]) = vi_14Numeros[05,1]) then
            vi_contaSel := vi_contaSel + 1;
        if (strTOint(STGR_Etapa03_05_07_12.Cells[vi_contar,vi_linha2]) = vi_14Numeros[05,1]) then
            vi_contaSel := vi_contaSel + 1;
        if (strTOint(STGR_Etapa1_03de15.Cells[vi_contar+1,vi_linha1]) = vi_14Numeros[06,1]) then
            vi_contaSel := vi_contaSel + 1;
        if (strTOint(STGR_Etapa03_05_07_12.Cells[vi_contar,vi_linha2]) = vi_14Numeros[06,1]) then
            vi_contaSel := vi_contaSel + 1;
    end;
    if (vi_contaSel = 1) then
        vi_Resultado[1] := vi_Resultado[1] + 1
    else if (vi_contaSel = 2)  then
        vi_Resultado[2] := vi_Resultado[2] + 1;
            // ---> contando
            vi_contaSel := 0;
            for vi_contar := 1 to 3 do
            begin
                if (strTOint(STGR_Etapa1_03de15.Cells[vi_contar+1,vi_linha1]) = vi_14Numeros[07,1]) then
                    vi_contaSel := vi_contaSel + 1;
                if (strTOint(STGR_Etapa03_05_07_12.Cells[vi_contar,vi_linha2]) = vi_14Numeros[07,1]) then
                    vi_contaSel := vi_contaSel + 1;
                if (strTOint(STGR_Etapa1_03de15.Cells[vi_contar+1,vi_linha1]) = vi_14Numeros[08,1]) then
                    vi_contaSel := vi_contaSel + 1;
                if (strTOint(STGR_Etapa03_05_07_12.Cells[vi_contar,vi_linha2]) = vi_14Numeros[08,1]) then
                    vi_contaSel := vi_contaSel + 1;
            end;
            if (vi_contaSel = 1) then
                vi_Resultado[1] := vi_Resultado[1] + 1
            else if (vi_contaSel = 2)  then
                vi_Resultado[2] := vi_Resultado[2] + 1;
    // ---> contando
    vi_contaSel := 0;
    for vi_contar := 1 to 3 do
    begin
        if (strTOint(STGR_Etapa1_03de15.Cells[vi_contar+1,vi_linha1]) = vi_14Numeros[09,1]) then
            vi_contaSel := vi_contaSel + 1;
        if (strTOint(STGR_Etapa03_05_07_12.Cells[vi_contar,vi_linha2]) = vi_14Numeros[09,1]) then
            vi_contaSel := vi_contaSel + 1;
        if (strTOint(STGR_Etapa1_03de15.Cells[vi_contar+1,vi_linha1]) = vi_14Numeros[10,1]) then
            vi_contaSel := vi_contaSel + 1;
        if (strTOint(STGR_Etapa03_05_07_12.Cells[vi_contar,vi_linha2]) = vi_14Numeros[10,1]) then
            vi_contaSel := vi_contaSel + 1;
    end;
    if (vi_contaSel = 1) then
        vi_Resultado[1] := vi_Resultado[1] + 1
    else if (vi_contaSel = 2)  then
        vi_Resultado[2] := vi_Resultado[2] + 1;
            // ---> contando
            vi_contaSel := 0;
            for vi_contar := 1 to 3 do
            begin
                if (strTOint(STGR_Etapa1_03de15.Cells[vi_contar+1,vi_linha1]) = vi_14Numeros[11,1]) then
                    vi_contaSel := vi_contaSel + 1;
                if (strTOint(STGR_Etapa03_05_07_12.Cells[vi_contar,vi_linha2]) = vi_14Numeros[11,1]) then
                    vi_contaSel := vi_contaSel + 1;
                if (strTOint(STGR_Etapa1_03de15.Cells[vi_contar+1,vi_linha1]) = vi_14Numeros[12,1]) then
                    vi_contaSel := vi_contaSel + 1;
                if (strTOint(STGR_Etapa03_05_07_12.Cells[vi_contar,vi_linha2]) = vi_14Numeros[12,1]) then
                    vi_contaSel := vi_contaSel + 1;
            end;
            if (vi_contaSel = 1) then
                vi_Resultado[1] := vi_Resultado[1] + 1
            else if (vi_contaSel = 2)  then
                vi_Resultado[2] := vi_Resultado[2] + 1;
    // ---> contando
    vi_contaSel := 0;
    for vi_contar := 1 to 3 do
    begin
        if (strTOint(STGR_Etapa1_03de15.Cells[vi_contar+1,vi_linha1]) = vi_14Numeros[13,1]) then
            vi_contaSel := vi_contaSel + 1;
        if (strTOint(STGR_Etapa03_05_07_12.Cells[vi_contar,vi_linha2]) = vi_14Numeros[13,1]) then
            vi_contaSel := vi_contaSel + 1;
        if (strTOint(STGR_Etapa1_03de15.Cells[vi_contar+1,vi_linha1]) = vi_14Numeros[14,1]) then
            vi_contaSel := vi_contaSel + 1;
        if (strTOint(STGR_Etapa03_05_07_12.Cells[vi_contar,vi_linha2]) = vi_14Numeros[14,1]) then
            vi_contaSel := vi_contaSel + 1;
    end;
    if (vi_contaSel = 1) then
        vi_Resultado[1] := vi_Resultado[1] + 1
    else if (vi_contaSel = 2)  then
        vi_Resultado[2] := vi_Resultado[2] + 1;


    if ((vi_Resultado[1] =4) and (vi_Resultado[2] = 1) and (vi_Resultado[3] = 0 )) and ((CB_Etapa1_7duplas.ItemIndex = 0) or (CB_Etapa1_7duplas.ItemIndex=3)) then
            result := True
    else
    if ((vi_Resultado[1] =2) and (vi_Resultado[2] = 2) and (vi_Resultado[3] = 0 )) and ((CB_Etapa1_7duplas.ItemIndex = 1) or (CB_Etapa1_7duplas.ItemIndex=3)) then
            result := True
    else
    if ((vi_Resultado[1] =3) and (vi_Resultado[2] = 1) and (vi_Resultado[3] = 1 )) and ((CB_Etapa1_7duplas.ItemIndex = 2) or (CB_Etapa1_7duplas.ItemIndex=3)) then
            result := True
    else
        result := False;
end;


function T_F_Gerador_ResDiv_5cj15.validador (vi_x, vi_y, vi_z : integer) : boolean;
begin
    if (vi_x =4) and (vi_y = 1) and (vi_z = 0 ) then
        result := True
    else
    if (vi_x =4) and (vi_y = 1) and (vi_z = 0 ) then
        result := True
    else
    if (vi_x =4) and (vi_y = 1) and (vi_z = 0 ) then
        result := True
    else
        result := false;
end;


FUNCTION T_F_Gerador_ResDiv_5cj15.FN_VALIDAR_ETAPA_2_parte1(vi_inicial, vi_final, vi_linhas1: Integer) : Boolean;
VAR
     vi_Comb012i_1, vi_Comb012i_2, vi_Comb012i_3, vi_Comb012i_4, vi_Comb012i_5, vi_Comb012i_6, vi_Comb012i_7, vi_Comb012i_8, vi_Comb012i_9, vi_Comb012i_A, vi_Comb012i_B, vi_Comb012i_C: iNTEGER;
     vi_Contar, vi_ContaSel1, vi_SomaTotal : INTEGER;
     vi_12Numeros : array [1..12] of Shortint;
BEGIN
	for  vi_Comb012i_1 := 2 to 05 do
	begin
		for  vi_Comb012i_2 := vi_Comb012i_1 +1  to 06 do
		begin
			for  vi_Comb012i_3 := vi_Comb012i_2+ 1  to 07 do
			begin
				for  vi_Comb012i_4 := vi_Comb012i_3 +1  to 08 do
				begin
					for  vi_Comb012i_5 := vi_Comb012i_4 +1  to 09 do
					begin
						for  vi_Comb012i_6 := vi_Comb012i_5 +1  to 10 do
						begin
							for  vi_Comb012i_7 := vi_Comb012i_6 +1  to 11 do
							begin
                                for  vi_Comb012i_8 := vi_Comb012i_7+1 to 12 do
                                begin
                                    for  vi_Comb012i_9 := vi_Comb012i_8 +1  to 13 do
                                    begin
                                        for  vi_Comb012i_A := vi_Comb012i_9+ 1  to 14 do
                                        begin
                                            for  vi_Comb012i_B := vi_Comb012i_a +1  to 15 do
                                            begin
                                                for  vi_Comb012i_C := vi_Comb012i_B +1  to 16 do
                                                begin
                                                        vi_12Numeros [01] := STRtoINT(STGR_Etapa01_15.Cells[vi_Comb012i_1,vi_linhas1]);
                                                        vi_12Numeros [02] := STRtoINT(STGR_Etapa01_15.Cells[vi_Comb012i_2,vi_linhas1]);
                                                        vi_12Numeros [03] := STRtoINT(STGR_Etapa01_15.Cells[vi_Comb012i_3,vi_linhas1]);
                                                        vi_12Numeros [04] := STRtoINT(STGR_Etapa01_15.Cells[vi_Comb012i_4,vi_linhas1]);
                                                        vi_12Numeros [05] := STRtoINT(STGR_Etapa01_15.Cells[vi_Comb012i_5,vi_linhas1]);
                                                        vi_12Numeros [06] := STRtoINT(STGR_Etapa01_15.Cells[vi_Comb012i_6,vi_linhas1]);
                                                        vi_12Numeros [07] := STRtoINT(STGR_Etapa01_15.Cells[vi_Comb012i_7,vi_linhas1]);
                                                        vi_12Numeros [08] := STRtoINT(STGR_Etapa01_15.Cells[vi_Comb012i_8,vi_linhas1]);
                                                        vi_12Numeros [09] := STRtoINT(STGR_Etapa01_15.Cells[vi_Comb012i_9,vi_linhas1]);
                                                        vi_12Numeros [10] := STRtoINT(STGR_Etapa01_15.Cells[vi_Comb012i_A,vi_linhas1]);
                                                        vi_12Numeros [11] := STRtoINT(STGR_Etapa01_15.Cells[vi_Comb012i_B,vi_linhas1]);
                                                        vi_12Numeros [12] := STRtoINT(STGR_Etapa01_15.Cells[vi_Comb012i_C,vi_linhas1]);
                                                        vi_SomaTotal := (vi_12Numeros [01] + vi_12Numeros [02] + vi_12Numeros [03] + vi_12Numeros [04] + vi_12Numeros [05]+ vi_12Numeros [06] + vi_12Numeros [07] + vi_12Numeros [08] + vi_12Numeros [09] + vi_12Numeros [10] + vi_12Numeros [11] + vi_12Numeros [12]);
                                                        if (vi_SomaTotal >= vi_inicial ) and  (vi_SomaTotal <= vi_final )  then
                                                        begin
                                                            Result := True;
                                                            exit;
                                                        end;
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
    result := false;
END;



FUNCTION T_F_Gerador_ResDiv_5cj15.FN_VALIDAR_ETAPA_2_parte2(vi_inicial, vi_final: Integer) : Boolean;
VAR
     vi_Comb07i_1, vi_Comb07i_2, vi_Comb07i_3, vi_Comb07i_4, vi_Comb07i_5, vi_Comb07i_6, vi_Comb07i_7, vi_Comb07i_8: iNTEGER;
     vi_Contar, vi_ContaSel1, vi_SomaTotal : INTEGER;
     vi_7Numeros : array [1..7] of Shortint;
     vi_8Numeros : array [1..8] of Shortint;
BEGIN
    if CB_Funil_ns.ItemIndex <=1 then
    begin
        for  vi_Comb07i_1 := 1 to 04 do
        begin
            for  vi_Comb07i_2 := vi_Comb07i_1 +1  to 05 do
            begin
                for  vi_Comb07i_3 := vi_Comb07i_2+ 1  to 06 do
                begin
                    for  vi_Comb07i_4 := vi_Comb07i_3 +1  to 07 do
                    begin
                        for  vi_Comb07i_5 := vi_Comb07i_4 +1  to 08 do
                        begin
                            for  vi_Comb07i_6 := vi_Comb07i_5 +1  to 09 do
                            begin
                                for  vi_Comb07i_7 := vi_Comb07i_6 +1  to 10 do
                                begin
                                    vi_7Numeros [01] := STRtoINT(STGR_Comb10.Cells[vi_Comb07i_1,1]);
                                    vi_7Numeros [02] := STRtoINT(STGR_Comb10.Cells[vi_Comb07i_2,1]);
                                    vi_7Numeros [03] := STRtoINT(STGR_Comb10.Cells[vi_Comb07i_3,1]);
                                    vi_7Numeros [04] := STRtoINT(STGR_Comb10.Cells[vi_Comb07i_4,1]);
                                    vi_7Numeros [05] := STRtoINT(STGR_Comb10.Cells[vi_Comb07i_5,1]);
                                    vi_7Numeros [06] := STRtoINT(STGR_Comb10.Cells[vi_Comb07i_6,1]);
                                    vi_7Numeros [07] := STRtoINT(STGR_Comb10.Cells[vi_Comb07i_7,1]);
                                    vi_SomaTotal := (vi_7Numeros [01] + vi_7Numeros [02] + vi_7Numeros [03] + vi_7Numeros [04] + vi_7Numeros [05]+ vi_7Numeros [06] + vi_7Numeros [07]);
                                    if (vi_SomaTotal >= vi_inicial ) and  (vi_SomaTotal <= vi_final )  then
                                    begin
                                        Result := True;
                                        exit;
                                    end;
                                end; // for
                            end; // for
                        end; // for
                    end; // for
                end; // for
            end; // for
        end; // for
    end else
    begin
        for  vi_Comb07i_1 := 1 to 03 do
        begin
            for  vi_Comb07i_2 := vi_Comb07i_1 +1  to 04 do
            begin
                for  vi_Comb07i_3 := vi_Comb07i_2+ 1  to 05 do
                begin
                    for  vi_Comb07i_4 := vi_Comb07i_3 +1  to 06 do
                    begin
                        for  vi_Comb07i_5 := vi_Comb07i_4 +1  to 07 do
                        begin
                            for  vi_Comb07i_6 := vi_Comb07i_5 +1  to 08 do
                            begin
                                for  vi_Comb07i_7 := vi_Comb07i_6 +1  to 09 do
                                begin
                                    for  vi_Comb07i_8 := vi_Comb07i_7 +1  to 10 do
                                    begin
                                        vi_8Numeros [01] := STRtoINT(STGR_Comb10.Cells[vi_Comb07i_1,1]);
                                        vi_8Numeros [02] := STRtoINT(STGR_Comb10.Cells[vi_Comb07i_2,1]);
                                        vi_8Numeros [03] := STRtoINT(STGR_Comb10.Cells[vi_Comb07i_3,1]);
                                        vi_8Numeros [04] := STRtoINT(STGR_Comb10.Cells[vi_Comb07i_4,1]);
                                        vi_8Numeros [05] := STRtoINT(STGR_Comb10.Cells[vi_Comb07i_5,1]);
                                        vi_8Numeros [06] := STRtoINT(STGR_Comb10.Cells[vi_Comb07i_6,1]);
                                        vi_8Numeros [07] := STRtoINT(STGR_Comb10.Cells[vi_Comb07i_7,1]);
                                        vi_8Numeros [08] := STRtoINT(STGR_Comb10.Cells[vi_Comb07i_8,1]);
                                        vi_SomaTotal := (vi_8Numeros [01] + vi_8Numeros [02] + vi_8Numeros [03] + vi_8Numeros [04] + vi_8Numeros [05]+ vi_8Numeros [06] + vi_8Numeros [07] + vi_8Numeros [08]);
                                        if (vi_SomaTotal >= vi_inicial ) and  (vi_SomaTotal <= vi_final )  then
                                        begin
                                            Result := True;
                                            exit;
                                        end;
                                    end; // for
                                end; // for
                            end; // for
                        end; // for
                    end; // for
                end; // for
            end; // for
        end; // for
    end; /// if
    result := false;
END;





procedure T_F_Gerador_ResDiv_5cj15.LimparGrid_Comb15();
var
    vi_ContaSel1: integer;
begin
    STGR_Etapa01_15.CleanupInstance;
    //STGR_Comb15_p5.Free;
    freeANDnil(STGR_Etapa01_15);
    sleep (1000);
    SCBX_dados.HorzScrollBar.Position := 1616;
    SCBX_dados.Repaint;
    STGR_Etapa01_15 := TstringGrid.Create(Self);
    with STGR_Etapa01_15 do
    begin
      Left := 491     ;
      Top := 24       ;
      Width := 712      ;
      Height := 306     ;
      TabStop := False     ;
      Align := alCustom    ;
      Color := 14017159    ;
      ColCount := 23          ;
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
    STGR_Etapa01_15.Parent := SCBX_dados;
    STGR_Etapa01_15.ColWidths [0]:= 55 ;
    STGR_Etapa01_15.ColWidths [1]:= 45 ;
    STGR_Etapa01_15.ColWidths [20]:= 45 ;
    STGR_Etapa01_15.Repaint;
    FOR vi_ContaSel1 := 2 TO 16 DO
    BEGIN
        STGR_Etapa01_15.Cells [vi_ContaSel1,0] := '-'+INTtoSTR(vi_ContaSel1-1)+'-';
        STGR_Etapa01_15.Cells [vi_ContaSel1,1] := '00';
    END;
end;




procedure T_F_Gerador_ResDiv_5cj15.BBT_PrepararMenuClick(Sender: TObject);
begin
     PA_Preparar.Visible := TRUE;
     PA_Preparar.Enabled := TRUE;
     PA_Preparar.Top  := 245;
     PA_Preparar.Left := 460;
     PA_Preparar.Repaint;
end;



procedure T_F_Gerador_ResDiv_5cj15.BBT_Gerar_VoltarClick(Sender: TObject);
begin
     PA_Preparar.Visible := false;
     PA_Preparar.Enabled := false;
     PA_Preparar.Left := 4500;
     PA_Preparar.Repaint;
end;


procedure T_F_Gerador_ResDiv_5cj15.BBT_Preparar1Click(Sender: TObject);
VAR
     vi_Contador1, vi_ContarCelulas, vi_Contar, vi_Soma : integer;
begin
    FOR vi_Contador1 := 1 TO 25 DO
    BEGIN
        STGR_Todos_Numeros.Cells[vi_Contador1,0] := INTtoSTR(vi_Contador1);
    END;
    FOR vi_Contador1 := 2 TO 16 DO
    BEGIN
        STGR_Base.Cells[vi_Contador1,0] := INTtoSTR(vi_Contador1-1);
    END;
    FOR vi_Contador1 := 2 TO 11 DO
    BEGIN
        STGR_Base10.Cells[vi_Contador1,0] := INTtoSTR(vi_Contador1-1);
    END;
    // 1
    vi_Contador1 := 1 ;
    STGR_Base.Cells[0,vi_Contador1] := '+1';
    STGR_Base.Cells[01,vi_Contador1] := '';
    STGR_Base.Cells[02,vi_Contador1] := '01';
    STGR_Base.Cells[03,vi_Contador1] := '03';
    STGR_Base.Cells[04,vi_Contador1] := '04';
    STGR_Base.Cells[05,vi_Contador1] := '06';
    STGR_Base.Cells[06,vi_Contador1] := '08';
    STGR_Base.Cells[07,vi_Contador1] := '10';
    STGR_Base.Cells[08,vi_Contador1] := '11';
    STGR_Base.Cells[09,vi_Contador1] := '13';
    STGR_Base.Cells[10,vi_Contador1] := '14';
    STGR_Base.Cells[11,vi_Contador1] := '15';
    STGR_Base.Cells[12,vi_Contador1] := '17';
    STGR_Base.Cells[13,vi_Contador1] := '20';
    STGR_Base.Cells[14,vi_Contador1] := '21';
    STGR_Base.Cells[15,vi_Contador1] := '24';
    STGR_Base.Cells[16,vi_Contador1] := '25';
    // 2
    vi_Contador1 := 2 ;
    STGR_Base.Cells[0,vi_Contador1] := '+2';
    STGR_Base.Cells[01,vi_Contador1] := '';
    STGR_Base.Cells[02,vi_Contador1] := '01';
    STGR_Base.Cells[03,vi_Contador1] := '02';
    STGR_Base.Cells[04,vi_Contador1] := '04';
    STGR_Base.Cells[05,vi_Contador1] := '05';
    STGR_Base.Cells[06,vi_Contador1] := '08';
    STGR_Base.Cells[07,vi_Contador1] := '09';
    STGR_Base.Cells[08,vi_Contador1] := '12';
    STGR_Base.Cells[09,vi_Contador1] := '13';
    STGR_Base.Cells[10,vi_Contador1] := '15';
    STGR_Base.Cells[11,vi_Contador1] := '16';
    STGR_Base.Cells[12,vi_Contador1] := '18';
    STGR_Base.Cells[13,vi_Contador1] := '20';
    STGR_Base.Cells[14,vi_Contador1] := '21';
    STGR_Base.Cells[15,vi_Contador1] := '24';
    STGR_Base.Cells[16,vi_Contador1] := '25';
    // 3
    vi_Contador1 := 3 ;
    STGR_Base.Cells[0,vi_Contador1] := '+3';
    STGR_Base.Cells[01,vi_Contador1] := '';
    STGR_Base.Cells[02,vi_Contador1] := '01';
    STGR_Base.Cells[03,vi_Contador1] := '03';
    STGR_Base.Cells[04,vi_Contador1] := '04';
    STGR_Base.Cells[05,vi_Contador1] := '06';
    STGR_Base.Cells[06,vi_Contador1] := '07';
    STGR_Base.Cells[07,vi_Contador1] := '09';
    STGR_Base.Cells[08,vi_Contador1] := '11';
    STGR_Base.Cells[09,vi_Contador1] := '13';
    STGR_Base.Cells[10,vi_Contador1] := '15';
    STGR_Base.Cells[11,vi_Contador1] := '16';
    STGR_Base.Cells[12,vi_Contador1] := '18';
    STGR_Base.Cells[13,vi_Contador1] := '20';
    STGR_Base.Cells[14,vi_Contador1] := '22';
    STGR_Base.Cells[15,vi_Contador1] := '24';
    STGR_Base.Cells[16,vi_Contador1] := '25';
    // 4
    vi_Contador1 := 4 ;
    STGR_Base.Cells[0,vi_Contador1] := '+4';
    STGR_Base.Cells[01,vi_Contador1] := '';
    STGR_Base.Cells[02,vi_Contador1] := '01';
    STGR_Base.Cells[03,vi_Contador1] := '02';
    STGR_Base.Cells[04,vi_Contador1] := '04';
    STGR_Base.Cells[05,vi_Contador1] := '07';
    STGR_Base.Cells[06,vi_Contador1] := '08';
    STGR_Base.Cells[07,vi_Contador1] := '10';
    STGR_Base.Cells[08,vi_Contador1] := '11';
    STGR_Base.Cells[09,vi_Contador1] := '13';
    STGR_Base.Cells[10,vi_Contador1] := '15';
    STGR_Base.Cells[11,vi_Contador1] := '16';
    STGR_Base.Cells[12,vi_Contador1] := '18';
    STGR_Base.Cells[13,vi_Contador1] := '20';
    STGR_Base.Cells[14,vi_Contador1] := '22';
    STGR_Base.Cells[15,vi_Contador1] := '23';
    STGR_Base.Cells[16,vi_Contador1] := '25';
    // 5
    vi_Contador1 := 5 ;
    STGR_Base.Cells[0,vi_Contador1] := '+5';
    STGR_Base.Cells[01,vi_Contador1] := '';
    STGR_Base.Cells[02,vi_Contador1] := '01';
    STGR_Base.Cells[03,vi_Contador1] := '02';
    STGR_Base.Cells[04,vi_Contador1] := '05';
    STGR_Base.Cells[05,vi_Contador1] := '06';
    STGR_Base.Cells[06,vi_Contador1] := '09';
    STGR_Base.Cells[07,vi_Contador1] := '10';
    STGR_Base.Cells[08,vi_Contador1] := '12';
    STGR_Base.Cells[09,vi_Contador1] := '13';
    STGR_Base.Cells[10,vi_Contador1] := '15';
    STGR_Base.Cells[11,vi_Contador1] := '16';
    STGR_Base.Cells[12,vi_Contador1] := '18';
    STGR_Base.Cells[13,vi_Contador1] := '20';
    STGR_Base.Cells[14,vi_Contador1] := '21';
    STGR_Base.Cells[15,vi_Contador1] := '23';
    STGR_Base.Cells[16,vi_Contador1] := '25'; 
    // 6
    vi_Contador1 := 6;
    STGR_Base.Cells[0,vi_Contador1] := '+6';
    STGR_Base.Cells[01,vi_Contador1] := '';
    STGR_Base.Cells[02,vi_Contador1] := '01';
    STGR_Base.Cells[03,vi_Contador1] := '03';
    STGR_Base.Cells[04,vi_Contador1] := '04';
    STGR_Base.Cells[05,vi_Contador1] := '05';
    STGR_Base.Cells[06,vi_Contador1] := '08';
    STGR_Base.Cells[07,vi_Contador1] := '10';
    STGR_Base.Cells[08,vi_Contador1] := '12';
    STGR_Base.Cells[09,vi_Contador1] := '13';
    STGR_Base.Cells[10,vi_Contador1] := '15';
    STGR_Base.Cells[11,vi_Contador1] := '16';
    STGR_Base.Cells[12,vi_Contador1] := '19';
    STGR_Base.Cells[13,vi_Contador1] := '20';
    STGR_Base.Cells[14,vi_Contador1] := '22';
    STGR_Base.Cells[15,vi_Contador1] := '24';
    STGR_Base.Cells[16,vi_Contador1] := '25';
    // 7
    vi_Contador1 := 7;
    STGR_Base.Cells[0,vi_Contador1] := '+7';
    STGR_Base.Cells[01,vi_Contador1] := '';
    STGR_Base.Cells[02,vi_Contador1] := '01';
    STGR_Base.Cells[03,vi_Contador1] := '03';
    STGR_Base.Cells[04,vi_Contador1] := '05';
    STGR_Base.Cells[05,vi_Contador1] := '06';
    STGR_Base.Cells[06,vi_Contador1] := '09';
    STGR_Base.Cells[07,vi_Contador1] := '10';
    STGR_Base.Cells[08,vi_Contador1] := '12';
    STGR_Base.Cells[09,vi_Contador1] := '14';
    STGR_Base.Cells[10,vi_Contador1] := '15';
    STGR_Base.Cells[11,vi_Contador1] := '16';
    STGR_Base.Cells[12,vi_Contador1] := '17';
    STGR_Base.Cells[13,vi_Contador1] := '20';
    STGR_Base.Cells[14,vi_Contador1] := '21';
    STGR_Base.Cells[15,vi_Contador1] := '24';
    STGR_Base.Cells[16,vi_Contador1] := '25';
    // 8
    vi_Contador1 := 8;
    STGR_Base.Cells[0,vi_Contador1] := '+8';
    STGR_Base.Cells[01,vi_Contador1] := '';
    STGR_Base.Cells[02,vi_Contador1] := '01';
    STGR_Base.Cells[03,vi_Contador1] := '02';
    STGR_Base.Cells[04,vi_Contador1] := '04';
    STGR_Base.Cells[05,vi_Contador1] := '06';
    STGR_Base.Cells[06,vi_Contador1] := '08';
    STGR_Base.Cells[07,vi_Contador1] := '10';
    STGR_Base.Cells[08,vi_Contador1] := '12';
    STGR_Base.Cells[09,vi_Contador1] := '13';
    STGR_Base.Cells[10,vi_Contador1] := '15';
    STGR_Base.Cells[11,vi_Contador1] := '16';
    STGR_Base.Cells[12,vi_Contador1] := '18';
    STGR_Base.Cells[13,vi_Contador1] := '20';
    STGR_Base.Cells[14,vi_Contador1] := '21';
    STGR_Base.Cells[15,vi_Contador1] := '24';
    STGR_Base.Cells[16,vi_Contador1] := '25';
    // 9
    vi_Contador1 := 9;
    STGR_Base.Cells[0,vi_Contador1] := '+9';
    STGR_Base.Cells[01,vi_Contador1] := '';
    STGR_Base.Cells[02,vi_Contador1] := '01';
    STGR_Base.Cells[03,vi_Contador1] := '03';
    STGR_Base.Cells[04,vi_Contador1] := '04';
    STGR_Base.Cells[05,vi_Contador1] := '06';
    STGR_Base.Cells[06,vi_Contador1] := '08';
    STGR_Base.Cells[07,vi_Contador1] := '10';
    STGR_Base.Cells[08,vi_Contador1] := '11';
    STGR_Base.Cells[09,vi_Contador1] := '13';
    STGR_Base.Cells[10,vi_Contador1] := '15';
    STGR_Base.Cells[11,vi_Contador1] := '16';
    STGR_Base.Cells[12,vi_Contador1] := '18';
    STGR_Base.Cells[13,vi_Contador1] := '20';
    STGR_Base.Cells[14,vi_Contador1] := '21';
    STGR_Base.Cells[15,vi_Contador1] := '24';
    STGR_Base.Cells[16,vi_Contador1] := '25';
    for vi_Contador1 :=1 to 9do
    begin
               FOR VI_CONTAR :=1 TO 25 DO
               BEGIN
                    STGR_Todos_Numeros.Cells[VI_CONTAR,1] :='F';
               END; // FOR VI_CONTAR
               // ----> MONTADO E VERIFICANDO TODOS OS 23 DÍGITOS
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
    end; // for vi_Contador1

     STGR_Base.RowCount := 10;
     STGR_Base10.RowCount := 10;
     // --> Montando os 33  cjuntos de 5 para filtrar



     SELF.IBQ_Combinacoes.Close;
     SELF.IBQ_Combinacoes.Open;
     IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_DIv_5cj15_DEF')  ;
     SELF.IBQ_Combinacoes.ExecSQL;

     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_DIV_5CJ15_E1')  ;
     SELF.IBQ_Combinacoes.ExecSQL;

     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
     SELF.IBQ_Combinacoes.ExecSQL;

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




procedure T_F_Gerador_ResDiv_5cj15.BBT_GerarMenuClick(Sender: TObject);
begin
     PA_Gerar.Visible := TRUE;
     PA_Gerar.Enabled := TRUE;
     PA_Gerar.Top  := 205;
     PA_Gerar.Left := 460;
     PA_Gerar.Repaint;
end;







procedure T_F_Gerador_ResDiv_5cj15.BBT_Etapa01Click(Sender: TObject);

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
                    vi_NumeroCelula:=  STRtoINT(STGR_Etapa01_15.Cells[vi_ContaSel1,vi_Linhas1]);
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
                    vi_NumeroCelula:=  STRtoINT(STGR_Etapa01_15.Cells[vi_ContaSel1,vi_Linhas1]);
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
                    vi_NumeroCelula:=  STRtoINT(STGR_Etapa01_15.Cells[vi_ContaSel1,vi_Linhas1]);
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
        vc_Combinacoes10, vc_Combinacoes15, vc_Contador_da_Tabela : STRING;
    BEGIN
        //VI_TOTALGERADO := STGR_Comb10.RowCount-1;
          // ************************
          // **   BANCO DE DADOS   **
          // ************************
          SELF.Repaint;
          // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
          vi_ContarStgGrid := TRUNC((STGR_Etapa01_15.RowCount-1)/1);
       FOR VI_AN_Comb1:= 1 TO vi_ContarStgGrid DO
       BEGIN
//           if not (STGR_Etapa01_15.Cells[22,VI_AN_Comb1] = 'V')  then
//                continue;
           vc_Combinacoes15 :='';
           FOR vi_ContarCelulas := 1 TO 25 DO
           BEGIN
                STGR_Todos_Numeros.Cells [vi_ContarCelulas ,1]:='F';
           end;
           FOR vi_ContarCelulas := 2 TO 16 DO
           BEGIN
               vc_Combinacoes15 := vc_Combinacoes15 + TRIM(STGR_Etapa01_15.Cells[vi_ContarCelulas,VI_AN_Comb1]) +' ';
               STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa01_15.Cells[vi_ContarCelulas,VI_AN_Comb1])) ,1]:='V';
               vc_Contador_da_Tabela :=  STGR_Etapa01_15.Cells[1,VI_AN_Comb1] ;
           END; // FOR vi_ContarCelulas
               // -------------------------------
               // --  MONTANDO AS 10 SOBRAS   ---
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
          vc_Nome_Tabela := ' GERADOR_RESULT_DIV_5CJ15_E1';
           vc_QUERY  := 'INSERT INTO ' +vc_Nome_Tabela+ ' (DADOS, DADOS_NS, TIPO) VALUES('
                 +#39+  TRIM(vc_Combinacoes15)  + #39 +','
                 +#39+  TRIM(vc_Combinacoes10)  + #39 +','
                 +#39+  TRIM(STGR_Etapa01_15.Cells[23,VI_AN_Comb1])
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



    PROCEDURE PR_Ordenar_Comb15 (VI_LINHAS9: INTEGER);
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
        // ----> MONTADO E VERIFICANDO TODOS OS DÍGITOS
        FOR vi_Contar :=2 TO 16 DO
        BEGIN
            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa01_15.Cells[vi_Contar,VI_LINHAS9])) ,1]:='V';
        END; // FOR vi_Contar1
        vi_CntCelulas := 2;
        FOR vi_Contar :=1 TO 25 DO
        BEGIN
            IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') THEN
            BEGIN
                STGR_Etapa01_15.Cells[vi_CntCelulas, VI_LINHAS9] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) ;
                vi_CntCelulas := vi_CntCelulas + 1;
            END; // IF (STGR_Todos_Numeros
        END; // FOR vi_Contar
    end; // PROCEDURE PR_Ordenar_Simulacao_15_8i7p


var
     vi_Combinacoes1, vi_Contar_Comb1, vi_Contar: integer;
     vi_Total_Comb1,  vi_ContaSel1: integer;
     vi_Comb03i_1, vi_Comb03i_2, vi_Comb03i_3: INTEGER;
     vi_Comb09i_1: iNTEGER;
     vi_Comb05_1, vi_Comb05_2, vi_Comb05_3: INTEGER;
     vi_Linhas2, vi_Linhas08, vi_nLinhas0 : integer;
     vi_Soma1Etapa1, vi_Soma1Inicio, vi_Soma1Fim, vi_soma03_05_07_12: integer;
     vi_Comb07i_1, vi_Comb07i_2, vi_Comb07i_3, vi_Comb07i_4, vi_Comb07i_5, vi_Comb07i_6, vi_Comb07i_7: iNTEGER;
     vi_SomaTotal : INTEGER;
     vi_7Numeros : array [1..7] of Shortint;
begin
     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_DIv_5cj15_FINAL')  ;
     SELF.IBQ_Combinacoes.ExecSQL;

     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('SELECT * FROM GERADOR_RESULT_DIv_5cj15_DEF; ')  ;
     SELF.IBQ_Combinacoes.Prepare;
     SELF.IBQ_Combinacoes.Open;

     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('insert INTO GERADOR_RESULT_DIv_5cj15_DEF (FLAG_FILTRAR,FLAG_GRAVAR) values (''N'',''N'');')  ;
     SELF.IBQ_Combinacoes.ExecSQL;
     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
     SELF.IBQ_Combinacoes.ExecSQL;

    LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
    STGR_Etapa01_12de15.ColWidths [0]:= 50 ;
    STGR_Etapa1_03de15.ColWidths [0]:= 50 ;
    STGR_Etapa1_09de10.ColWidths [0]:= 50 ;
    STGR_Etapa01_07de12.ColWidths [0]:= 55 ;
    STGR_Etapa01_05de12.ColWidths [0]:= 55 ;
    STGR_Etapa1_01de10.ColWidths [0]:= 45 ;
    STGR_Etapa01_15.ColWidths [0]:= 55 ;
    STGR_Etapa03_05_07_12.ColWidths [0]:= 55 ;

    STGR_Etapa01_12de15.ColWidths [1]:= 37 ;
    STGR_Etapa1_03de15.ColWidths [1]:= 37 ;
    STGR_Etapa1_09de10.ColWidths [1]:= 37 ;
    STGR_Etapa01_15.ColWidths [1]:= 45 ;
    STGR_Etapa01_15.ColWidths [20]:= 45 ;    


    PGBR_Etapa_01.Position :=0 ;
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

    LA_rTOTAL_Comb.Caption  := INTtoSTR(STGR_Base.RowCount-1);
    //PR_GRAVAR_DADOS ('INICIO',vi_Linhas_01_01, 1, TRUNC(STGR_Base.RowCount-1));
    PGBR_Etapa_01.Position := 0;
    PGBR_Etapa_01.Repaint;
    PGBR_Etapa_01_1.Position := 0;
    PGBR_Etapa_01_1.Repaint;
    vi_Combinacoes1 := 1; //197 ;
        vi_Soma1Inicio := 246;
        vi_Soma1Fim := 248;
    vi_Linhas2 := 1  ;
    vi_Linhas08 := 1  ;
    vi_nLinhas0 := 1 ;
    if (CB_Classificacao.ItemIndex = 0) then
    BEGIN
        vi_Soma1Inicio := 247 ;
        vi_Soma1Fim := 247 ;
    END;

    WHILE vi_Combinacoes1 <= (TRUNC((STGR_Base.RowCount-1)/1)) do
    BEGIN
        for  vi_Comb03i_1 := 2{5} to 14{5} do
        begin
            for  vi_Comb03i_2 := vi_Comb03i_1 +1  to 15{8} do
            begin
                for  vi_Comb03i_3 := vi_Comb03i_2 +1  to 16{9} do
                begin
                        FOR vi_Comb09i_1 := 2 to 11 do
                        begin

                                for  vi_Comb07i_1 := 2 to 07 do
                                begin
                                    for  vi_Comb07i_2 := vi_Comb07i_1 +1  to 08 do
                                    begin
                                        for  vi_Comb07i_3 := vi_Comb07i_2+ 1  to 09 do
                                        begin
                                            for  vi_Comb07i_4 := vi_Comb07i_3 +1  to 10 do
                                            begin
                                                for  vi_Comb07i_5 := vi_Comb07i_4 +1  to 11 do
                                                begin
                                                    for  vi_Comb07i_6 := vi_Comb07i_5 +1  to 12 do
                                                    begin
                                                        for  vi_Comb07i_7 := vi_Comb07i_6 +1  to 13 do
                                                        begin
                                                             STGR_Etapa1_01de10.Cells[01,vi_Linhas08] := STGR_Base10.Cells[vi_Comb09i_1,vi_Combinacoes1] ;

                                                             // --> Capturando os números que sobraram
                                                            FOR vi_Contar :=1 TO 25 DO
                                                            BEGIN
                                                                STGR_Todos_Numeros.Cells[vi_Contar,1] :='F';
                                                                STGR_Todos_Numeros.Cells[vi_Contar,2] :='F';
                                                            END; // FOR vi_Contar
                                                            FOR vi_Contar :=2 TO 11 DO
                                                            BEGIN
                                                                STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Base10.Cells[vi_Contar,vi_Combinacoes1])) ,1]:='V';
                                                            END; // FOR vi_Contar1
                                                                STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa1_01de10.Cells[01,vi_Linhas08])) ,2]:='V';
                                                            vi_ContaSel1 := 2;
                                                            FOR vi_Contar :=1 TO 25 DO
                                                            BEGIN
                                                                IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,2]='F')  THEN
                                                                BEGIN
                                                                    STGR_Etapa1_09de10.Cells[vi_ContaSel1, vi_Linhas08] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) ;
                                                                    vi_ContaSel1 := vi_ContaSel1 + 1;
                                                                END; // IF (STGR_Todos_Numeros
                                                            END; // FOR vi_Contar

                                                            // passo1
                                                            STGR_Etapa1_03de15.Cells[00,vi_Linhas08] := INTtoSTR( vi_Linhas08 ) ;
                                                            STGR_Etapa1_03de15.Cells[01,vi_Linhas08] := INTtoSTR( vi_Combinacoes1 ) ;
                                                            STGR_Etapa1_03de15.Cells[02,vi_Linhas08] := STGR_Base.Cells[vi_Comb03i_1,vi_Combinacoes1] ;
                                                            STGR_Etapa1_03de15.Cells[03,vi_Linhas08] := STGR_Base.Cells[vi_Comb03i_2,vi_Combinacoes1] ;
                                                            STGR_Etapa1_03de15.Cells[04,vi_Linhas08] := STGR_Base.Cells[vi_Comb03i_3,vi_Combinacoes1] ;
                                                             // --> Capturando os números que sobraram
                                                            FOR vi_Contar :=1 TO 25 DO
                                                            BEGIN
                                                                STGR_Todos_Numeros.Cells[vi_Contar,1] :='F';
                                                                STGR_Todos_Numeros.Cells[vi_Contar,2] :='F';
                                                            END; // FOR vi_Contar
                                                            FOR vi_Contar :=2 TO 16 DO
                                                            BEGIN
                                                                STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Base.Cells[vi_Contar,vi_Combinacoes1])) ,1]:='V';
                                                            END; // FOR vi_Contar1
                                                            FOR vi_Contar :=2 TO 04 DO
                                                            BEGIN
                                                                STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa1_03de15.Cells[vi_Contar,vi_Linhas08])) ,2]:='V';
                                                            END; // FOR vi_Contar1
                                                            vi_ContaSel1 := 2;
                                                            FOR vi_Contar :=1 TO 25 DO
                                                            BEGIN
                                                                IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,2]='F')  THEN
                                                                BEGIN
                                                                    STGR_Etapa01_12de15.Cells[vi_ContaSel1, vi_Linhas08] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) ;
                                                                    vi_ContaSel1 := vi_ContaSel1 + 1;
                                                                END; // IF (STGR_Todos_Numeros
                                                            END; // FOR vi_Contar
                                                            STGR_Etapa1_09de10.Cells[00,vi_Linhas08] := INTtoSTR( vi_Linhas08 ) ;
                                                            STGR_Etapa1_09de10.Cells[01,vi_Linhas08] := INTtoSTR( vi_Combinacoes1 ) ;
                                                            STGR_Etapa01_12de15.Cells[00,vi_Linhas08] := INTtoSTR( vi_Linhas08 ) ;
                                                            STGR_Etapa01_12de15.Cells[01,vi_Linhas08] := INTtoSTR( vi_Combinacoes1 ) ;
                                                            STGR_Etapa1_01de10.Cells[00,vi_Linhas08] := INTtoSTR( vi_Linhas08 ) ;

                                                            vi_Soma1Etapa1 := 0;
                                                            FOR vi_Contar :=2 TO 04 DO
                                                            BEGIN
                                                                vi_Soma1Etapa1 := vi_Soma1Etapa1 + STRtoINT(STGR_Etapa1_03de15.Cells[vi_Contar,vi_Linhas08]);
                                                            END; // FOR vi_Contar1
                                                            FOR vi_Contar :=2 TO 10 DO
                                                            BEGIN
                                                                vi_Soma1Etapa1 := vi_Soma1Etapa1 + STRtoINT(STGR_Etapa1_09de10.Cells[vi_Contar,vi_Linhas08]);
                                                            END; // FOR vi_Contar1


                                                            vi_7Numeros [01] := STRtoINT(STGR_Etapa01_12de15.Cells[vi_Comb07i_1,vi_Linhas08]);
                                                            vi_7Numeros [02] := STRtoINT(STGR_Etapa01_12de15.Cells[vi_Comb07i_2,vi_Linhas08]);
                                                            vi_7Numeros [03] := STRtoINT(STGR_Etapa01_12de15.Cells[vi_Comb07i_3,vi_Linhas08]);
                                                            vi_7Numeros [04] := STRtoINT(STGR_Etapa01_12de15.Cells[vi_Comb07i_4,vi_Linhas08]);
                                                            vi_7Numeros [05] := STRtoINT(STGR_Etapa01_12de15.Cells[vi_Comb07i_5,vi_Linhas08]);
                                                            vi_7Numeros [06] := STRtoINT(STGR_Etapa01_12de15.Cells[vi_Comb07i_6,vi_Linhas08]);
                                                            vi_7Numeros [07] := STRtoINT(STGR_Etapa01_12de15.Cells[vi_Comb07i_7,vi_Linhas08]);
                                                            vi_SomaTotal := (vi_7Numeros [01] + vi_7Numeros [02] + vi_7Numeros [03] + vi_7Numeros [04] + vi_7Numeros [05]+ vi_7Numeros [06] + vi_7Numeros [07]) + vi_Soma1Etapa1;
                                                            if (vi_SomaTotal >= vi_Soma1Inicio ) and  (vi_SomaTotal <= vi_Soma1Fim )  then
                                                            begin
                                                                 // --> Capturando os números que sobraram
                                                                FOR vi_Contar :=1 TO 25 DO
                                                                BEGIN
                                                                    STGR_Todos_Numeros.Cells[vi_Contar,1] :='F';
                                                                    STGR_Todos_Numeros.Cells[vi_Contar,2] :='F';
                                                                END; // FOR vi_Contar
                                                                FOR vi_Contar :=2 TO 13 DO
                                                                BEGIN
                                                                    STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa01_12de15.Cells[vi_Contar,vi_Linhas08])) ,1]:='V';
                                                                END; // FOR vi_Contar1
                                                                FOR vi_Contar :=1 TO 07 DO
                                                                BEGIN
                                                                    STGR_Todos_Numeros.Cells [ vi_7Numeros [vi_Contar]  ,2]:='V';
                                                                END; // FOR vi_Contar1
                                                                vi_ContaSel1 := 2;
                                                                FOR vi_Contar :=1 TO 25 DO
                                                                BEGIN
                                                                    IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,2]='F')  THEN
                                                                    BEGIN
                                                                        STGR_Etapa01_05de12.Cells[vi_ContaSel1, vi_Linhas08] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) ;
                                                                        vi_ContaSel1 := vi_ContaSel1 + 1;
                                                                    END; // IF (STGR_Todos_Numeros
                                                                END; // FOR vi_Contar
                                                                STGR_Etapa01_07de12.Cells[00,vi_Linhas08] := INTtoSTR( vi_Linhas08 ) ;
                                                                STGR_Etapa01_07de12.Cells[01,vi_Linhas08] := INTtoSTR( vi_Combinacoes1 ) ;
                                                                STGR_Etapa01_07de12.Cells[02,vi_Linhas08] := STGR_Etapa01_12de15.Cells[vi_Comb07i_1,vi_Linhas08] ;
                                                                STGR_Etapa01_07de12.Cells[03,vi_Linhas08] := STGR_Etapa01_12de15.Cells[vi_Comb07i_2,vi_Linhas08] ;
                                                                STGR_Etapa01_07de12.Cells[04,vi_Linhas08] := STGR_Etapa01_12de15.Cells[vi_Comb07i_3,vi_Linhas08] ;
                                                                STGR_Etapa01_07de12.Cells[05,vi_Linhas08] := STGR_Etapa01_12de15.Cells[vi_Comb07i_4,vi_Linhas08] ;
                                                                STGR_Etapa01_07de12.Cells[06,vi_Linhas08] := STGR_Etapa01_12de15.Cells[vi_Comb07i_5,vi_Linhas08] ;
                                                                STGR_Etapa01_07de12.Cells[07,vi_Linhas08] := STGR_Etapa01_12de15.Cells[vi_Comb07i_6,vi_Linhas08] ;
                                                                STGR_Etapa01_07de12.Cells[08,vi_Linhas08] := STGR_Etapa01_12de15.Cells[vi_Comb07i_7,vi_Linhas08] ;
                                                                 STGR_Etapa01_05de12.Cells[00,vi_Linhas08] := INTtoSTR( vi_Linhas08 ) ;
                                                                 STGR_Etapa01_05de12.Cells[01,vi_Linhas08] := INTtoSTR( vi_Combinacoes1 ) ;
                                                                FOR  vi_Comb05_1 := 2 TO 4 DO
                                                                Begin
                                                                    FOR  vi_Comb05_2 := vi_Comb05_1+1 TO 5 DO
                                                                    Begin
                                                                        FOR  vi_Comb05_3 := vi_Comb05_2+1 TO 6 DO
                                                                        Begin
                                                                            STGR_Etapa03_05_07_12.Cells[00,vi_linhas2] := intTOstr(vi_linhas2);
                                                                            STGR_Etapa03_05_07_12.Cells[01,vi_linhas2] := STGR_Etapa01_05de12.Cells[vi_Comb05_1,vi_linhas08];
                                                                            STGR_Etapa03_05_07_12.Cells[02,vi_linhas2] := STGR_Etapa01_05de12.Cells[vi_Comb05_2,vi_linhas08];
                                                                            STGR_Etapa03_05_07_12.Cells[03,vi_linhas2] := STGR_Etapa01_05de12.Cells[vi_Comb05_3,vi_linhas08];
                                                                            vi_soma03_05_07_12 := strTOint(STGR_Etapa03_05_07_12.Cells[01,vi_linhas2])+ strTOint(STGR_Etapa03_05_07_12.Cells[02,vi_linhas2])+ strTOint(STGR_Etapa03_05_07_12.Cells[03,vi_linhas2]) ;
                                                                            if vi_Linhas08=50 then
                                                                                sleep (1);
                                                                            if (FN_VALIDAR_ETAPA_1_parte1(vi_Linhas08,116,118,vi_soma03_05_07_12, 24, 28, strTOint(STGR_Etapa1_01de10.Cells[01,vi_Linhas08]) ))
                                                                               and (FN_VALIDAR_ETAPA_1_parte2 (vi_Combinacoes1,vi_Linhas08, vi_linhas2) )
                                                                             then
                                                                            begin
                                                                                STGR_Etapa01_15.Cells[00,vi_linhas2] := intTOstr(vi_linhas2);
                                                                                STGR_Etapa01_15.Cells[01,vi_linhas2] := intTOstr(vi_nLinhas0);
                                                                                STGR_Etapa01_15.Cells[02,vi_linhas2] := STGR_Etapa01_05de12.Cells[vi_Comb05_1,vi_linhas08];
                                                                                STGR_Etapa01_15.Cells[03,vi_linhas2] := STGR_Etapa01_05de12.Cells[vi_Comb05_2,vi_linhas08];
                                                                                STGR_Etapa01_15.Cells[04,vi_linhas2] := STGR_Etapa01_05de12.Cells[vi_Comb05_3,vi_linhas08];
                                                                                STGR_Etapa01_15.Cells[05,vi_linhas2] := STGR_Etapa1_03de15.Cells[2,vi_linhas08];
                                                                                STGR_Etapa01_15.Cells[06,vi_linhas2] := STGR_Etapa1_03de15.Cells[3,vi_linhas08];
                                                                                STGR_Etapa01_15.Cells[07,vi_linhas2] := STGR_Etapa1_03de15.Cells[4,vi_linhas08];
                                                                                STGR_Etapa01_15.Cells[08,vi_linhas2] := STGR_Etapa1_09de10.Cells[2,vi_linhas08];
                                                                                STGR_Etapa01_15.Cells[09,vi_linhas2] := STGR_Etapa1_09de10.Cells[3,vi_linhas08];
                                                                                STGR_Etapa01_15.Cells[10,vi_linhas2] := STGR_Etapa1_09de10.Cells[4,vi_linhas08];
                                                                                STGR_Etapa01_15.Cells[11,vi_linhas2] := STGR_Etapa1_09de10.Cells[5,vi_linhas08];
                                                                                STGR_Etapa01_15.Cells[12,vi_linhas2] := STGR_Etapa1_09de10.Cells[6,vi_linhas08];
                                                                                STGR_Etapa01_15.Cells[13,vi_linhas2] := STGR_Etapa1_09de10.Cells[7,vi_linhas08];
                                                                                STGR_Etapa01_15.Cells[14,vi_linhas2] := STGR_Etapa1_09de10.Cells[8,vi_linhas08];
                                                                                STGR_Etapa01_15.Cells[15,vi_linhas2] := STGR_Etapa1_09de10.Cells[9,vi_linhas08];
                                                                                STGR_Etapa01_15.Cells[16,vi_linhas2] := STGR_Etapa1_09de10.Cells[10,vi_linhas08];
                                                                                if ((NumerosFixos1(vi_linhas2)) and (NumerosFixos2(vi_linhas2)) and (NumerosFixos3(vi_linhas2))) then
                                                                                begin
                                                                                    PR_Ordenar_Comb15 (vi_linhas2);
                                                                                    vi_Linhas2 := vi_Linhas2 +1;
                                                                                end; ///if
                                                                            end; ///if
                                                                        end; // for vi_Comb05_2
                                                                    end; // for vi_Comb05_2
                                                                end; // for vi_Comb05_1
                                                                vi_Linhas08 := vi_Linhas08 +1  ;
                                                                vi_nLinhas0 := vi_nLinhas0 +1 ;
                                                            end; ///if (vi_SomaTotal >= vi_Soma1Inicio ) and  (vi_SomaTotal <= vi_Soma1Fim )  then
                                                        end; // for vi_Comb07i_7
                                                    end; // for
                                                end; // for
                                            end; // for
                                        end; // for
                                    end; // for
                                end; // for   vi_Comb07i_1
                STGR_Etapa1_03de15.RowCount := vi_Linhas08;
                STGR_Etapa1_09de10.RowCount := vi_Linhas08;
                STGR_Etapa01_12de15.RowCount := vi_Linhas08;
                PGBR_Etapa_01_1.Position := TRUNC (vi_Comb03i_1/14*100);
                PGBR_Etapa_01_1.Repaint;
                STGR_Etapa01_15.RowCount := vi_linhas2;
                STGR_Etapa03_05_07_12.RowCount := vi_linhas2;
                STGR_Etapa01_07de12.RowCount := vi_Linhas08;
                STGR_Etapa01_05de12.RowCount := vi_Linhas08;                                
                        end; // FOR FOR vi_Comb09i_1

                end; // for
                if ((vi_Comb03i_2 mod 5) = 0) then
                begin
                    PR_Gravar_Dados_etapa1 ();
                  //  sleep(125);
                    vi_linhas2 := 1 ;
                    LimparGrid_Comb15 ();
                    vi_linhas08 := 1 ;
                end; /// if    ((vi_Comb03i_2 mod 3) = 0) then
             end; //for vi_Comb03i_2
         end; //for vi_Comb03i_1
        PGBR_Etapa_01_1.Position := 0;
        PGBR_Etapa_01_1.Repaint;
        vi_Combinacoes1 := vi_Combinacoes1 + 1;
        vi_Contar_Comb1 := vi_Contar_Comb1 + 1;

            STGR_Etapa01_15.RowCount := vi_linhas2;
            STGR_Etapa03_05_07_12.RowCount := vi_linhas2;
            STGR_Etapa1_09de10.RowCount := vi_Linhas08;
            STGR_Etapa01_12de15.RowCount := vi_Linhas08;
            STGR_Etapa1_03de15.RowCount := vi_Linhas08;
            STGR_Etapa01_07de12.RowCount := vi_Linhas08;
            PGBR_Etapa_01.Position := TRUNC (vi_Combinacoes1/((STGR_Base.RowCount-1)/1)*100);
            PGBR_Etapa_01.Repaint;
            STGR_Etapa01_15.Repaint;
            STGR_Etapa03_05_07_12.Repaint;
            STGR_Etapa1_09de10.Repaint;
            STGR_Etapa01_12de15.Repaint;
            STGR_Etapa1_03de15.Repaint;
            STGR_Etapa01_07de12.Repaint;
            SELF.WindowState := wsMinimized;
            SELF.WindowState :=  wsNormal;
            SELF.Repaint;
            sleep(90);
// exit
    END; ///  while
    STGR_Etapa01_05de12.RowCount := vi_Linhas08;
    STGR_Etapa1_01de10.RowCount := vi_Linhas08;
    STGR_Etapa1_03de15.RowCount := vi_Linhas08;
    STGR_Etapa1_09de10.RowCount := vi_Linhas08;
    STGR_Etapa01_12de15.RowCount := vi_Linhas08;
    PGBR_Etapa_01.Position := 100;
    PGBR_Etapa_01.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
end;




procedure T_F_Gerador_ResDiv_5cj15.BBT_Etapa02Click(Sender: TObject);

 PROCEDURE PR_Gravar_Dados_etapa2 ();
    VAR
        VI_AN_Comb1, vi_ContarCelulas, vi_Contar, vi_ContarStgGrid : INTEGER;
        vc_QUERY, vc_Nome_Tabela : STRING;
        vc_Combinacoes10, vc_Combinacoes15, vc_Contador_da_Tabela : STRING;
    BEGIN
        //VI_TOTALGERADO := STGR_Comb10.RowCount-1;
          // ************************
          // **   BANCO DE DADOS   **
          // ************************
          SELF.Repaint;
          // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
          vi_ContarStgGrid := TRUNC((STGR_Etapa01_15.RowCount-1)/1);
       FOR VI_AN_Comb1:= 1 TO vi_ContarStgGrid DO
       BEGIN
           if not (STGR_Etapa01_15.Cells[19,VI_AN_Comb1] = 'V')  then
                continue;
           vc_Combinacoes15 :='';
           FOR vi_ContarCelulas := 1 TO 25 DO
           BEGIN
                STGR_Todos_Numeros.Cells [vi_ContarCelulas ,1]:='F';
           end;
           FOR vi_ContarCelulas := 2 TO 16 DO
           BEGIN
               vc_Combinacoes15 := vc_Combinacoes15 + TRIM(STGR_Etapa01_15.Cells[vi_ContarCelulas,VI_AN_Comb1]) +' ';
               STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa01_15.Cells[vi_ContarCelulas,VI_AN_Comb1])) ,1]:='V';
               vc_Contador_da_Tabela :=  STGR_Etapa01_15.Cells[1,VI_AN_Comb1] ;
           END; // FOR vi_ContarCelulas
               // -------------------------------
               // --  MONTANDO AS 10 SOBRAS   ---
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
          vc_Nome_Tabela := ' GERADOR_RESULT_DIV_5CJ15_FINAL';
           vc_QUERY  := 'INSERT INTO ' +vc_Nome_Tabela+ ' (DADOS, DADOS_NS, TIPO) VALUES('
                 +#39+  TRIM(vc_Combinacoes15)  + #39 +','
                 +#39+  TRIM(vc_Combinacoes10)  + #39 +','
                 +#39+  TRIM(STGR_Etapa01_15.Cells[20,VI_AN_Comb1])
                 +#39+ ');';
           SELF.IBQ_Combin_02.SQL.Clear;
           SELF.IBQ_Combin_02.SQL.Add(vc_QUERY)  ;
           SELF.IBQ_Combin_02.ExecSQL;
       END; // FOR VI_AN_Comb1
    SLEEP(14);
    SELF.IBQ_Combin_02.SQL.Clear;
    END; // PROCEDURE GRAVAR_DADOS


var
    vi_Combinacoes1, vi_Contar_Comb1, vi_Contar, vi_ContarCelulas, vi_ContarQtdPares, vi_ContaSel1 : integer;
    vi_inicial2, vi_final2 : smallint;
    vi_Linhas01 : integer;
begin
{
    try
        STGR_Etapa1_03de15.CleanupInstance;
        STGR_Etapa1_03de15.Free;
        STGR_Etapa01_12de15.CleanupInstance;
        STGR_Etapa01_12de15.Free;
    except
        //
    end;
}
    STGR_Etapa01_15.ColWidths [0]:= 37 ;
    IBQ_Combinacoes.SQL.Clear;
    IBQ_Combinacoes.SQL.Add('SELECT count(distinct(dados)) as quantidade FROM GERADOR_RESULT_DIV_5CJ15_E1 ') ;
    IBQ_Combinacoes.Prepare;
    IBQ_Combinacoes.Open;
    vi_Contar_Comb1 := IBQ_Combinacoes.fieldByName('quantidade').AsInteger;

    if (CB_Funil_ns.ItemIndex =0)  then
    begin
      vi_inicial2 := 91 ;
      vi_final2 := 91 ;
    end else
    if (CB_Funil_ns.ItemIndex =1) then
    begin
      vi_inicial2 := 90 ;
      vi_final2 := 92 ;
    end else
    if (CB_Funil_ns.ItemIndex =2) then
    begin
      vi_inicial2 := 104 ;
      vi_final2 := 104 ;
    end else
    if (CB_Funil_ns.ItemIndex =3) then
    begin
      vi_inicial2 := 103 ;
      vi_final2 := 105 ;
    end; /// if



    if (CB_F12de15.ItemIndex =0)  then
    begin
      SELF.vi_inicial1 := 156;
      vi_final1 := 156 ;
    end else
    if (CB_F12de15.ItemIndex =1) then
    begin
      vi_inicial2 := 155 ;
      vi_final2 := 157 ;
    end; /// if

    vi_Combinacoes1 := 1  ;
    vi_Linhas01 := 1;
    STGR_Etapa01_15.RowCount := vi_Linhas01 ;
    IBQ_Combinacoes.SQL.Clear;
    IBQ_Combinacoes.SQL.Add('SELECT distinct(dados) FROM GERADOR_RESULT_DIV_5CJ15_E1 ORDER BY dados') ;
    IBQ_Combinacoes.Prepare;
    IBQ_Combinacoes.Open;
    IBQ_Combinacoes.First;    
    WHILE NOT(IBQ_Combinacoes.Eof) DO
    BEGIN
          STGR_Etapa01_15.Cells[0,vi_Linhas01] := INTtoSTR(vi_Combinacoes1);
          STGR_Etapa01_15.Cells[01,vi_Linhas01] := '';
          STGR_Etapa01_15.Cells[02,vi_Linhas01] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,1,2);
          STGR_Etapa01_15.Cells[03,vi_Linhas01] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,4,2);
          STGR_Etapa01_15.Cells[04,vi_Linhas01] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,7,2);
          STGR_Etapa01_15.Cells[05,vi_Linhas01] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,10,2);
          STGR_Etapa01_15.Cells[06,vi_Linhas01] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,13,2);
          STGR_Etapa01_15.Cells[07,vi_Linhas01] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,16,2);
          STGR_Etapa01_15.Cells[08,vi_Linhas01] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,19,2);
          STGR_Etapa01_15.Cells[09,vi_Linhas01] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,22,2);
          STGR_Etapa01_15.Cells[10,vi_Linhas01] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,25,2);
          STGR_Etapa01_15.Cells[11,vi_Linhas01] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,28,2);
          STGR_Etapa01_15.Cells[12,vi_Linhas01] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,31,2);
          STGR_Etapa01_15.Cells[13,vi_Linhas01] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,34,2);
          STGR_Etapa01_15.Cells[14,vi_Linhas01] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,37,2);
          STGR_Etapa01_15.Cells[15,vi_Linhas01] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,40,2);
          STGR_Etapa01_15.Cells[16,vi_Linhas01] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,43,2);
          STGR_comb10.Cells[0,1] := INTtoSTR(vi_Linhas01);
          STGR_Etapa01_15.Cells[19,vi_Linhas01] := 'f' ;
               FOR VI_CONTAR :=1 TO 25 DO
               BEGIN
                    STGR_Todos_Numeros.Cells[VI_CONTAR,1] :='F';
               END; // FOR VI_CONTAR
               // ----> MONTADO E VERIFICANDO TODOS OS 15 DÍGITOS
               FOR VI_CONTAR :=2 TO 16 DO
               BEGIN
                    STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa01_15.Cells[VI_CONTAR,vi_Linhas01])) ,1]:='V';
               END; // FOR vi_Contador1
               vi_ContarCelulas := 1;
               FOR VI_CONTAR :=1 TO 25 DO
               BEGIN
                    IF (STGR_Todos_Numeros.Cells[VI_CONTAR,1]='F') THEN
                    BEGIN
                         STGR_comb10.Cells [vi_ContarCelulas, 1] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[VI_CONTAR,0]),2) ;
                         vi_ContarCelulas := vi_ContarCelulas + 1;
                    END; // IF (STGR_Todos_Numeros
               END; // FOR VI_CONTAR

        // validando os excluídos
        if (FN_VALIDAR_ETAPA_2_parte2(vi_inicial2, vi_final2))  and (FN_VALIDAR_ETAPA_2_parte1(SELF.vi_final1, SELF.vi_final1, vi_Linhas01)) then
        begin
               STGR_Etapa01_15.Cells[19,vi_Linhas01] := 'V'  ;

                vi_ContarQtdPares := 0 ;
                for  vi_ContaSel1 := 2  to 16  do
                begin
                    if (strTOint(STGR_Etapa01_15.Cells[vi_ContaSel1, vi_Linhas01]) MOD 2) = 0  THEN
                        vi_ContarQtdPares := vi_ContarQtdPares +1 ;
                end; // for
                case vi_ContarQtdPares of
                  4:  STGR_Etapa01_15.Cells[20, vi_Linhas01] := '11i/4p' ;
                  5:  STGR_Etapa01_15.Cells[20, vi_Linhas01] := '10i/5p' ;
                  6:  STGR_Etapa01_15.Cells[20, vi_Linhas01] := '.9i/6p' ;
                  7:  STGR_Etapa01_15.Cells[20, vi_Linhas01] := '.8i/7p' ;
                  8:  STGR_Etapa01_15.Cells[20, vi_Linhas01] := '.7i/8p' ;
                  9:  STGR_Etapa01_15.Cells[20, vi_Linhas01] := '.6i/9p' ;
                  10:  STGR_Etapa01_15.Cells[20, vi_Linhas01] := '.5i/10p' ;
                  else
                      STGR_Etapa01_15.Cells[20, vi_Linhas01] := intTOstr(vi_ContarQtdPares)+ ' pares' ;
                end; //// case
        end;


        if (vi_Combinacoes1 mod 3500) =0 then
        begin
            STGR_Etapa01_15.RowCount := vi_Linhas01 ;
            PGBR_Etapa_02.Position := TRUNC (vi_Combinacoes1/vi_Contar_Comb1*100);
            STGR_Etapa01_15.Repaint;
            SELF.WindowState := wsMinimized;
            SELF.WindowState :=  wsNormal;
            SELF.Repaint;
            PR_Gravar_Dados_etapa2 ();
            sleep(50);
            vi_Linhas01 := 1;
        end; // if
        vi_Linhas01 := vi_Linhas01 + 1;        
        vi_Combinacoes1 := vi_Combinacoes1 +1;
        IBQ_Combinacoes.Next;
    end; // while

    STGR_Etapa01_15.RowCount := vi_Linhas01 ;
    STGR_Etapa01_15.Repaint;
    LA_gFIM_GERAR.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
    // ==> ACERTANDO O PAINEL DE ENCERRAMENTO
    BBT_RECOMECAR.Enabled := false;
    BBT_PrepararMenu.Enabled := false;
    LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
    PA_RemoveuRepetidos.Left := 1000;

PR_Gravar_Dados_etapa2 ();
    SELF.IBQ_Combin_02.SQL.Clear;
    SELF.IBQ_Combin_02.SQL.Add('COMMIT')  ;
    SELF.IBQ_Combin_02.ExecSQL;

    SELF.IBQ_Combinacoes.SQL.Clear;
    SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIv_5cj15_DEF SET HORA_TERMINO ='''+FORMATDATETIME('h:n:s',time())+''', QTD_DADOS= ''' +INTtoSTR(vi_Contar_Comb1)+ ''';')  ;
    SELF.IBQ_Combinacoes.ExecSQL;
    SELF.IBQ_Combinacoes.SQL.Clear;
    SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
    SELF.IBQ_Combinacoes.ExecSQL;
    try
        SELF.IBQ_Combinacoes.SQL.Clear;
        SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIv_5cj15_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'' ;')  ;
        SELF.IBQ_Combinacoes.ExecSQL;
        SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIv_5cj15_DEF SET SOMA_19= ''Soma dos 19 números: ' +CB_Classificacao.Text+ ''', SOMA_15= ''12 dentre os 15 soma:' +CB_F12de15.Text+ ''', SOMA_10= ''' +CB_Funil_ns.Text+  ''' ;') ;
        SELF.IBQ_Combinacoes.ExecSQL;
        SELF.IBQ_Combinacoes.SQL.Clear;
        SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
        SELF.IBQ_Combinacoes.ExecSQL;
    except
        //
    end; // try
end;



procedure T_F_Gerador_ResDiv_5cj15.BBT_RemoveuRepetidosClick(Sender: TObject);
begin
     PA_RemoveuRepetidos.Left := 5000;
     BBT_RECOMECAR.Enabled := false;
     BBT_PrepararMenu.Enabled := false;
     BBT_GerarMenu.Enabled := false;
     PA_Inicial.Enabled := TRUE;
     BTN_NovaSimulacao.Enabled := false;
     BTN_Reajustar.Enabled := TRUE;
//     BBT_CARREGAR.Enabled := false;
     PA_Inicial.Left := 1060;
     PA_Inicial.Top := 5;
end;




procedure T_F_Gerador_ResDiv_5cj15.BTN_ReajustarClick(Sender: TObject);
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



procedure T_F_Gerador_ResDiv_5cj15.BBT_CARREGARClick(Sender: TObject);
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
            SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIv_5cj15_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
end;



procedure T_F_Gerador_ResDiv_5cj15.BBT_Gerar_SairClick(Sender: TObject);
begin
     PA_Gerar.Enabled := false;
     PA_Gerar.Left := 4500;    ;
     PA_Gerar.Repaint;
end;



procedure T_F_Gerador_ResDiv_5cj15.BBT_BlocoNotasClick(Sender: TObject);
var
    vi_Contar, vc_qtd_pares : INTEGER;
    vc_Nome_Tabela, vc_Combinacoes2, vcTitulo : string;
begin
     for vc_qtd_pares := 8 to 8 do
     begin
                vc_Nome_Tabela := 'GERADOR_RESULT_DIv_5cj15_FINAL';
          MEM_Combinacoes_Todas.Clear;
          SELF.IBQ_Combinacoes.Close;
          SELF.IBQ_Combinacoes.SQL.Clear;
          SELF.IBQ_Combinacoes.SQL.Add('SELECT COUNT(distinct(DADOS)) AS SOMADADOS FROM ' +vc_Nome_Tabela+ ';')  ;
          SELF.IBQ_Combinacoes.Prepare;
          SELF.IBQ_Combinacoes.Open;
          vi_Contar := SELF.IBQ_Combinacoes.FIELDBYNAME('SOMADADOS').AsInteger;
          {
          CASE vc_qtd_pares OF
               7:  vcTitulo := 'GERADOR 7Impares e 8Pares MODELO 3';
               8:  vcTitulo := 'GERADOR 8Impares e 7Pares MODELO 3';
          END; //CASE }
          vcTitulo := 'GERADOR Resultados 9 Conjuntos de 15';
          MEM_Combinacoes_Todas.Lines.Add(vcTitulo) ;
          MEM_Combinacoes_Todas.Lines.Add('TOTAL: ' + INTtoSTR(vi_Contar)) ;
          MEM_Combinacoes_Todas.Lines.Add('----------------------------') ;
          SELF.IBQ_Combinacoes.SQL.Clear;
          SELF.IBQ_Combinacoes.SQL.Add('select DISTINCT (dados), dados_ns, tipo FROM ' +vc_Nome_Tabela+ ' ORDER BY DADOS;')  ;
          SELF.IBQ_Combinacoes.Prepare;
          SELF.IBQ_Combinacoes.Open;
          SELF.IBQ_Combinacoes.First;
          WHILE (NOT(SELF.IBQ_Combinacoes.Eof)) DO
          BEGIN
               vc_Combinacoes2 := '';
                vc_Combinacoes2 := trim(IBQ_Combinacoes.FIELDBYNAME('DADOS').AsString);
                    MEM_Combinacoes_Todas.Lines.Add(vc_Combinacoes2 +'   '+IBQ_Combinacoes.FieldByName('tipo').AsString) ;
               IBQ_Combinacoes.Next;
         END; // FOR vi_Contar
         MEM_Combinacoes_Todas.Repaint;
         //MEM_Combinacoes_Todas.SelectAll;
         //MEM_Combinacoes_Todas.CopyToClipboard;
         //MEM_Combinacoes_Todas.Repaint;
         MEM_Combinacoes_Todas.Lines.SaveToFile('C:\CXLOTOFACIL\'+vc_Nome_Tabela+'.TXT');
     END; // For
    winExec('Notepad.exe C:\CXLOTOFACIL\GERADOR_RESULT_DIv_5cj15_FINAL.TXT', sw_shownormal);
   SHOWMESSAGE('BLOCO DE NOTAS GERADO');
end;



procedure T_F_Gerador_ResDiv_5cj15.btn_CarregarClick(Sender: TObject);
begin
     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIv_5cj15_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
     SELF.IBQ_Combinacoes.ExecSQL;
     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
     SELF.IBQ_Combinacoes.ExecSQL;
     SHOWMESSAGE('OK');
     SELF.Close;
end;







procedure T_F_Gerador_ResDiv_5cj15.BitBtn1Click(Sender: TObject);
begin
    PGBR_Etapa_01.Position :=0 ;
    PGBR_Etapa_01_1.Position :=0 ;
    PGBR_Etapa_02.Position :=0 ;
    BBT_Etapa01.Click;
    BBT_Etapa02.Click;
end;








end.
