unit uGerador_ResultDiv_3jg18;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, DB, strutils,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, IdBaseComponent, IdComponent, IdIPWatch ;

type
  T_F_Gerador_ResDiv_3jg18 = class(TForm)
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
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBQ_Combinacoes: TIBQuery;
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
    LA_rTOTAL_100REPET: TLabel;
    Label50: TLabel;
    STGR_Etapa02_10: TStringGrid;
    BTN_BlocoDeNotas1: TButton;
    STGR_Etapa01_7a: TStringGrid;
    STGR_Etapa1_7b: TStringGrid;
    ED_FIXOS_03_8i7p: TEdit;
    btn_Carregar: TButton;
    STGR_Etapa1_11: TStringGrid;
    Bevel1: TBevel;
    Label3: TLabel;
    BBT_OK: TBitBtn;
    Label13: TLabel;
    CB_Classificacao17: TComboBox;
    LA_Tipo: TLabel;
    IBQ_Combin_02: TIBQuery;
    Label10: TLabel;
    CB_Classificacao16: TComboBox;
    STGR_Base07: TStringGrid;
    STGR_Etapa01_15: TStringGrid;
    STGR_Etapa01_9de11: TStringGrid;
    STGR_Etapa01_2de11: TStringGrid;
    STGR_Etapa01_2de7a: TStringGrid;
    STGR_Etapa01_5de7a: TStringGrid;
    STGR_Etapa01_4de7b: TStringGrid;
    STGR_Etapa01_3de7b: TStringGrid;
    Label4: TLabel;
    CB_Classificacao06: TComboBox;
    Label5: TLabel;
    CB_Classificacao05: TComboBox;
    Label11: TLabel;
    CB_Classificacao04a: TComboBox;
    Label12: TLabel;
    CB_Classificacao04b: TComboBox;
    Label14: TLabel;
    CB_Classificacao03: TComboBox;
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
  private
    F_MODALIDADE: STRING;
    Fvi_inicial1: INTEGER;
    Fvi_final1: INTEGER;
    { Private declarations }
    procedure Set_MODALIDADE(const Value: STRING);
    FUNCTION FN_VALIDAR_ETAPA_2_parte1(vi_linhas, vi_inicial, vi_final: Integer) : Boolean;
    FUNCTION FN_VALIDAR_ETAPA_1_parte2(vi_linhas, vi_inicial, vi_final: Integer) : Boolean;
    FUNCTION FN_VALIDAR_ETAPA_1_parte3(vi_linhas, vi_inicial, vi_final: Integer) : Boolean;
    FUNCTION FN_VALIDAR_ETAPA_1_parte4(vi_linhas, vi_inicial, vi_final: Integer) : Boolean;
    FUNCTION FN_VALIDAR_ETAPA_1_parte5(vi_linhas, vi_inicial, vi_final: Integer) : Boolean;
    FUNCTION FN_VALIDAR_ETAPA_1_parte6(vi_linhas, vi_inicial, vi_final: Integer) : Boolean;
    FUNCTION FN_VALIDAR_ETAPA_1_parte7(vi_linhas, vi_inicial, vi_final: Integer) : Boolean;
    procedure LimparGrid_Comb15();
    procedure Setvi_final1E(const Value: INTEGER);
    procedure Setvi_inicial1(const Value: INTEGER);
  public
    { Public declarations }
     PROPERTY _MODALIDADE : STRING  read F_MODALIDADE write Set_MODALIDADE;
     PROPERTY vi_inicial1 : INTEGER  read Fvi_inicial1 write Setvi_inicial1;
     PROPERTY vi_final1 : INTEGER  read Fvi_final1 write Setvi_final1E;
  end;

var
  _F_Gerador_ResDiv_3jg18: T_F_Gerador_ResDiv_3jg18;

implementation

{$R *.dfm}


procedure T_F_Gerador_ResDiv_3jg18.Set_MODALIDADE(const Value: STRING);
begin
  F_MODALIDADE := Value;
end;

procedure T_F_Gerador_ResDiv_3jg18.Setvi_final1E(const Value: INTEGER);
begin
  Fvi_final1 := Value;
end;

procedure T_F_Gerador_ResDiv_3jg18.Setvi_inicial1(const Value: INTEGER);
begin
  Fvi_inicial1 := Value;
end;



procedure T_F_Gerador_ResDiv_3jg18.FormCreate(Sender: TObject);
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
            SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIv_3jg18_DEF SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
        except
            //
        end; // try
end;



procedure T_F_Gerador_ResDiv_3jg18.FormActivate(Sender: TObject);
begin
      IF (SELF._MODALIDADE ='GERADOR') THEN
      begin
          LA_Titulo.Caption             := 'GERADOR Resultados a Partir de 3 Jogos de 18';
          CB_Classificacao17.ItemIndex := 0;
          CB_Classificacao17.Enabled := True;
      END ELSE
      BEGIN
          LA_Titulo.Caption             := 'SIMULAR a Partir de 3 Jogos de 18';
          CB_Classificacao17.Enabled := True;
          BTN_NovaSimulacao.Click;
      end;
      LA_Titulo.Repaint;
end;



procedure T_F_Gerador_ResDiv_3jg18.FormClose(Sender: TObject;
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


procedure T_F_Gerador_ResDiv_3jg18.BBT_CloseClick(Sender: TObject);
begin
     SELF.Close;
end;







procedure T_F_Gerador_ResDiv_3jg18.BTN_NovaSimulacaoClick(Sender: TObject);
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


procedure T_F_Gerador_ResDiv_3jg18.BTN_SairClick(Sender: TObject);
begin
     SELF.Close;
end;



procedure T_F_Gerador_ResDiv_3jg18.BBT_CancelarClick(Sender: TObject);
begin
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIv_3jg18_DEF SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('COMMIT;')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
          SELF.Close;
end;



FUNCTION T_F_Gerador_ResDiv_3jg18.FN_VALIDAR_ETAPA_2_parte1(vi_linhas, vi_inicial, vi_final: Integer) : Boolean;
VAR
     vi_Comb08i_1, vi_Comb08i_2, vi_Comb08i_3, vi_Comb08i_4, vi_Comb08i_5, vi_Comb08i_6, vi_Comb08i_7, vi_Comb08i_8,  vi_CombSobra: iNTEGER;
     vi_Contar, vi_ContaSel1, vi_SomaTotal : INTEGER;
     vi_8Numeros : array [1..8] of Shortint;
BEGIN
	for  vi_Comb08i_1 := 2 to 03 do
	begin
		for  vi_Comb08i_2 := vi_Comb08i_1 +1  to 04 do
		begin
			for  vi_Comb08i_3 := vi_Comb08i_2+ 1  to 05 do
			begin
				for  vi_Comb08i_4 := vi_Comb08i_3 +1  to 06 do
				begin
					for  vi_Comb08i_5 := vi_Comb08i_4 +1  to 07 do
					begin
						for  vi_Comb08i_6 := vi_Comb08i_5 +1  to 08 do
						begin
                            for  vi_Comb08i_7 := vi_Comb08i_6 +1  to 09 do
                            begin
                                for  vi_Comb08i_8 := vi_Comb08i_7 +1  to 10 do
                                begin
                                    vi_8Numeros [01] := STRtoINT(STGR_Etapa01_9de11.Cells[vi_Comb08i_1,vi_linhas]);
                                    vi_8Numeros [02] := STRtoINT(STGR_Etapa01_9de11.Cells[vi_Comb08i_2,vi_linhas]);
                                    vi_8Numeros [03] := STRtoINT(STGR_Etapa01_9de11.Cells[vi_Comb08i_3,vi_linhas]);
                                    vi_8Numeros [04] := STRtoINT(STGR_Etapa01_9de11.Cells[vi_Comb08i_4,vi_linhas]);
                                    vi_8Numeros [05] := STRtoINT(STGR_Etapa01_9de11.Cells[vi_Comb08i_5,vi_linhas]);
                                    vi_8Numeros [06] := STRtoINT(STGR_Etapa01_9de11.Cells[vi_Comb08i_6,vi_linhas]);
                                    vi_8Numeros [07] := STRtoINT(STGR_Etapa01_9de11.Cells[vi_Comb08i_7,vi_linhas]);
                                    vi_8Numeros [08] := STRtoINT(STGR_Etapa01_9de11.Cells[vi_Comb08i_8,vi_linhas]);
                                    {
                                    if (vi_8Numeros [01] = 2) and (vi_8Numeros [02] = 3) and (vi_8Numeros [03] = 5) and (vi_8Numeros [04] = 6) and (vi_8Numeros [05] = 11) and (vi_8Numeros [06] = 12) and (vi_8Numeros [07] = 14) and (vi_8Numeros [08] = 15)
                                     and (STRtoINT(STGR_Etapa01_5de7a.Cells[2,vi_linhas]) = 19) and (STRtoINT(STGR_Etapa01_5de7a.Cells[3,vi_linhas]) = 20)  and (STRtoINT(STGR_Etapa01_5de7a.Cells[4,vi_linhas]) = 23) and (STRtoINT(STGR_Etapa01_5de7a.Cells[5,vi_linhas]) = 24)  and (STRtoINT(STGR_Etapa01_5de7a.Cells[6,vi_linhas]) = 25)
                                      and (STRtoINT(STGR_Etapa01_4de7b.Cells[2,vi_linhas]) = 08) and (STRtoINT(STGR_Etapa01_4de7b.Cells[3,vi_linhas]) = 09)  and (STRtoINT(STGR_Etapa01_4de7b.Cells[4,vi_linhas]) = 10)
                                      then
                                        showmessage('t');
                                   }

                                    vi_SomaTotal := (vi_8Numeros [01] + vi_8Numeros [02] + vi_8Numeros [03] + vi_8Numeros [04] + vi_8Numeros [05]+ vi_8Numeros [06]+ vi_8Numeros [07]+ vi_8Numeros [08]);
                                    vi_SomaTotal := vi_SomaTotal + STRtoINT(STGR_Etapa01_5de7a.Cells[2,vi_linhas]) + STRtoINT(STGR_Etapa01_5de7a.Cells[3,vi_linhas])+ STRtoINT(STGR_Etapa01_5de7a.Cells[4,vi_linhas]) + STRtoINT(STGR_Etapa01_5de7a.Cells[5,vi_linhas]) + STRtoINT(STGR_Etapa01_5de7a.Cells[6,vi_linhas]) ;
                                    vi_SomaTotal := vi_SomaTotal + STRtoINT(STGR_Etapa01_4de7b.Cells[2,vi_linhas]) + STRtoINT(STGR_Etapa01_4de7b.Cells[3,vi_linhas])+ STRtoINT(STGR_Etapa01_4de7b.Cells[4,vi_linhas]) + STRtoINT(STGR_Etapa01_4de7b.Cells[5,vi_linhas]) ;
                                    if ((vi_SomaTotal >= vi_inicial ) and  (vi_SomaTotal <= vi_final )) then
                                    begin
                                        Result := True;
                                        exit;
                                    end;
                                end; // for  vi_Comb08i_8
                            end; // for
						end; // for
					end; // for
				end; // for
			end; // for
		end; // for
	end; // for
	result := false;
END;



FUNCTION T_F_Gerador_ResDiv_3jg18.FN_VALIDAR_ETAPA_1_parte2(vi_linhas, vi_inicial, vi_final: Integer) : Boolean;
VAR
     vi_Comb08i_1, vi_Comb08i_2, vi_Comb08i_3, vi_Comb08i_4, vi_Comb08i_5, vi_Comb08i_6, vi_Comb08i_7, vi_Comb08i_8,  vi_CombSobra: iNTEGER;
     vi_Comb04i_1, vi_Comb04i_2, vi_Comb04i_3, vi_Comb04i_4: iNTEGER;
     vi_Contar, vi_ContaSel1, vi_SomaTotal : INTEGER;
     vi_8Numeros : array [1..8] of Shortint;
     vi_4Numeros : array [1..4] of Shortint;
BEGIN
	for  vi_Comb08i_1 := 2 to 03 do
	begin
		for  vi_Comb08i_2 := vi_Comb08i_1 +1  to 04 do
		begin
			for  vi_Comb08i_3 := vi_Comb08i_2+ 1  to 05 do
			begin
				for  vi_Comb08i_4 := vi_Comb08i_3 +1  to 06 do
				begin
					for  vi_Comb08i_5 := vi_Comb08i_4 +1  to 07 do
					begin
						for  vi_Comb08i_6 := vi_Comb08i_5 +1  to 08 do
						begin
                            for  vi_Comb08i_7 := vi_Comb08i_6 +1  to 09 do
                            begin
                                for  vi_Comb08i_8 := vi_Comb08i_7 +1  to 10 do
                                begin
                                        for  vi_Comb04i_1 := 2 to 03 do
                                        begin
                                            for  vi_Comb04i_2 := vi_Comb04i_1 +1  to 04 do
                                            begin
                                                for  vi_Comb04i_3 := vi_Comb04i_2+ 1  to 05 do
                                                begin
                                                    for  vi_Comb04i_4 := vi_Comb04i_3 +1  to 06 do
                                                    begin
                                                        vi_8Numeros [01] := STRtoINT(STGR_Etapa01_9de11.Cells[vi_Comb08i_1,vi_linhas]);
                                                        vi_8Numeros [02] := STRtoINT(STGR_Etapa01_9de11.Cells[vi_Comb08i_2,vi_linhas]);
                                                        vi_8Numeros [03] := STRtoINT(STGR_Etapa01_9de11.Cells[vi_Comb08i_3,vi_linhas]);
                                                        vi_8Numeros [04] := STRtoINT(STGR_Etapa01_9de11.Cells[vi_Comb08i_4,vi_linhas]);
                                                        vi_8Numeros [05] := STRtoINT(STGR_Etapa01_9de11.Cells[vi_Comb08i_5,vi_linhas]);
                                                        vi_8Numeros [06] := STRtoINT(STGR_Etapa01_9de11.Cells[vi_Comb08i_6,vi_linhas]);
                                                        vi_8Numeros [07] := STRtoINT(STGR_Etapa01_9de11.Cells[vi_Comb08i_7,vi_linhas]);
                                                        vi_8Numeros [08] := STRtoINT(STGR_Etapa01_9de11.Cells[vi_Comb08i_8,vi_linhas]);

                                                        vi_4Numeros [01] := STRtoINT(STGR_Etapa01_5de7a.Cells[vi_Comb04i_1,vi_linhas]);
                                                        vi_4Numeros [02] := STRtoINT(STGR_Etapa01_5de7a.Cells[vi_Comb04i_2,vi_linhas]);
                                                        vi_4Numeros [03] := STRtoINT(STGR_Etapa01_5de7a.Cells[vi_Comb04i_3,vi_linhas]);
                                                        vi_4Numeros [04] := STRtoINT(STGR_Etapa01_5de7a.Cells[vi_Comb04i_4,vi_linhas]);

                                                        vi_SomaTotal := (vi_8Numeros [01] + vi_8Numeros [02] + vi_8Numeros [03] + vi_8Numeros [04] + vi_8Numeros [05]+ vi_8Numeros [06]+ vi_8Numeros [07]+ vi_8Numeros [08]);
                                                        vi_SomaTotal := vi_SomaTotal + STRtoINT(STGR_Etapa01_4de7b.Cells[2,vi_linhas]) + STRtoINT(STGR_Etapa01_4de7b.Cells[3,vi_linhas])+ STRtoINT(STGR_Etapa01_4de7b.Cells[4,vi_linhas]) + STRtoINT(STGR_Etapa01_4de7b.Cells[5,vi_linhas]) ;
                                                        vi_SomaTotal := vi_SomaTotal + (vi_4Numeros [01] + vi_4Numeros [02] + vi_4Numeros [03] + vi_4Numeros [04]) ;
                                                        if ((vi_SomaTotal >= vi_inicial ) and  (vi_SomaTotal <= vi_final )) then
                                                        begin
                                                            Result := True;
                                                            exit;
                                                        end;
                                                    end; // for vi_Comb04i_4
                                                end; // for
                                            end; // for
                                        end; // for
                                end; // for  vi_Comb08i_8
                            end; // for
						end; // for
					end; // for
				end; // for
			end; // for
		end; // for
	end; // for
	result := false;
END;




FUNCTION T_F_Gerador_ResDiv_3jg18.FN_VALIDAR_ETAPA_1_parte3(vi_linhas, vi_inicial, vi_final: Integer) : Boolean;
VAR
     vi_Comb02Item5_1, vi_Comb02Item5_2, vi_CombSobra: iNTEGER;
     vi_Comb02Item6_1, vi_Comb02Item6_2: iNTEGER;
     vi_Contar, vi_ContaSel1, vi_SomaTotal : INTEGER;
     vi_2NumerosItem5 : array [1..2] of Shortint;
     vi_2NumerosItem6 : array [1..2] of Shortint;
BEGIN
	for  vi_Comb02Item5_1 := 2 to 05 do
	begin
		for  vi_Comb02Item5_2 := vi_Comb02Item5_1 +1  to 06 do
		begin
				for  vi_Comb02Item6_1 := 2 to 03 do
				begin
					for  vi_Comb02Item6_2 := vi_Comb02Item6_1 +1  to 04 do
					begin

								vi_2NumerosItem5 [01] := STRtoINT(STGR_Etapa01_5de7a.Cells[vi_Comb02Item5_1,vi_linhas]);
								vi_2NumerosItem5 [02] := STRtoINT(STGR_Etapa01_5de7a.Cells[vi_Comb02Item5_2,vi_linhas]);

								vi_2NumerosItem6 [01] := STRtoINT(STGR_Etapa01_3de7b.Cells[vi_Comb02Item6_1,vi_linhas]);
								vi_2NumerosItem6 [02] := STRtoINT(STGR_Etapa01_3de7b.Cells[vi_Comb02Item6_2,vi_linhas]);

								vi_SomaTotal := STRtoINT(STGR_Etapa01_2de11.Cells[2,vi_linhas]) + STRtoINT(STGR_Etapa01_2de11.Cells[3,vi_linhas]) ;
								vi_SomaTotal := vi_SomaTotal + (vi_2NumerosItem5 [01] + vi_2NumerosItem5 [02] );
								vi_SomaTotal := vi_SomaTotal + (vi_2NumerosItem6 [01] + vi_2NumerosItem6 [02] ) ;
								if ((vi_SomaTotal >= vi_inicial ) and  (vi_SomaTotal <= vi_final )) then
								begin
									Result := True;
									exit;
								end;

					end; // for vi_Comb02Item6_2
				end; // for vi_Comb02Item6_1
		end; // for vi_Comb02Item5_2
	end; // for vi_Comb02Item5_1
	result := false;
END;
                                    {
                                    if (vi_8Numeros [01] = 2) and (vi_8Numeros [02] = 3) and (vi_8Numeros [03] = 5) and (vi_8Numeros [04] = 6) and (vi_8Numeros [05] = 11) and (vi_8Numeros [06] = 12) and (vi_8Numeros [07] = 14) and (vi_8Numeros [08] = 15)
                                     and (STRtoINT(STGR_Etapa01_5de7a.Cells[2,vi_linhas]) = 19) and (STRtoINT(STGR_Etapa01_5de7a.Cells[3,vi_linhas]) = 20)  and (STRtoINT(STGR_Etapa01_5de7a.Cells[4,vi_linhas]) = 23) and (STRtoINT(STGR_Etapa01_5de7a.Cells[5,vi_linhas]) = 24)  and (STRtoINT(STGR_Etapa01_5de7a.Cells[6,vi_linhas]) = 25)
                                      and (STRtoINT(STGR_Etapa01_4de7b.Cells[2,vi_linhas]) = 08) and (STRtoINT(STGR_Etapa01_4de7b.Cells[3,vi_linhas]) = 09)  and (STRtoINT(STGR_Etapa01_4de7b.Cells[4,vi_linhas]) = 10)
                                      then
                                        showmessage('t');
                                   }


FUNCTION T_F_Gerador_ResDiv_3jg18.FN_VALIDAR_ETAPA_1_parte4(vi_linhas, vi_inicial, vi_final: Integer) : Boolean;
VAR
     vi_Comb02Item5_1, vi_CombSobra: iNTEGER;
     vi_Comb02Item6_1, vi_Comb02Item6_2: iNTEGER;
     vi_Contar, vi_ContaSel1, vi_SomaTotal : INTEGER;
     vi_2NumerosItem5 : array [1..2] of Shortint;
     vi_2NumerosItem6 : array [1..2] of Shortint;
BEGIN
	for  vi_Comb02Item5_1 := 2 to 06 do
	begin
				for  vi_Comb02Item6_1 := 2 to 03 do
				begin
					for  vi_Comb02Item6_2 := vi_Comb02Item6_1 +1  to 04 do
					begin

								vi_2NumerosItem5 [01] := STRtoINT(STGR_Etapa01_5de7a.Cells[vi_Comb02Item5_1,vi_linhas]);

								vi_2NumerosItem6 [01] := STRtoINT(STGR_Etapa01_3de7b.Cells[vi_Comb02Item6_1,vi_linhas]);
								vi_2NumerosItem6 [02] := STRtoINT(STGR_Etapa01_3de7b.Cells[vi_Comb02Item6_2,vi_linhas]);                                

								vi_SomaTotal := STRtoINT(STGR_Etapa01_2de11.Cells[2,vi_linhas]) + STRtoINT(STGR_Etapa01_2de11.Cells[3,vi_linhas]) ;
								vi_SomaTotal := vi_SomaTotal + (vi_2NumerosItem5 [01] );
								vi_SomaTotal := vi_SomaTotal + (vi_2NumerosItem6 [01] + vi_2NumerosItem6 [02] ) ;
								if ((vi_SomaTotal >= vi_inicial ) and  (vi_SomaTotal <= vi_final )) then
								begin
									Result := True;
									exit;
								end;

					end; // for vi_Comb02Item6_2
				end; // for vi_Comb02Item6_1
	end; // for vi_Comb02Item5_1
	result := false;
END;


FUNCTION T_F_Gerador_ResDiv_3jg18.FN_VALIDAR_ETAPA_1_parte5(vi_linhas, vi_inicial, vi_final: Integer) : Boolean;
VAR
     vi_Comb02Item5_1, vi_CombSobra: iNTEGER;
     vi_Comb02Item3_1: iNTEGER;
     vi_Contar, vi_ContaSel1, vi_SomaTotal : INTEGER;
     vi_2NumerosItem5 : array [1..2] of Shortint;
     vi_2NumerosItem3 : array [1..2] of Shortint;
BEGIN
	for  vi_Comb02Item5_1 := 2 to 06 do
	begin
        for  vi_Comb02Item3_1 := 2 to 05 do
        begin
                vi_2NumerosItem5 [01] := STRtoINT(STGR_Etapa01_5de7a.Cells[vi_Comb02Item5_1,vi_linhas]);

                vi_2NumerosItem3 [01] := STRtoINT(STGR_Etapa01_4de7b.Cells[vi_Comb02Item3_1,vi_linhas]);

                vi_SomaTotal := STRtoINT(STGR_Etapa01_2de11.Cells[2,vi_linhas]) + STRtoINT(STGR_Etapa01_2de11.Cells[3,vi_linhas]) ;
                vi_SomaTotal := vi_SomaTotal + (vi_2NumerosItem5 [01] );
                vi_SomaTotal := vi_SomaTotal + (vi_2NumerosItem3 [01] ) ;
                if ((vi_SomaTotal >= vi_inicial ) and  (vi_SomaTotal <= vi_final )) then
                begin
                    Result := True;
                    exit;
                end;
        end; // for vi_Comb02Item3_1
	end; // for vi_Comb02Item5_1
	result := false;
END;



FUNCTION T_F_Gerador_ResDiv_3jg18.FN_VALIDAR_ETAPA_1_parte6(vi_linhas, vi_inicial, vi_final: Integer) : Boolean;
VAR
     vi_Comb02Item4_1, vi_CombSobra: iNTEGER;
     vi_Comb02Item3_1: iNTEGER;
     vi_Contar, vi_ContaSel1, vi_SomaTotal : INTEGER;
     vi_2NumerosItem4 : array [1..2] of Shortint;
     vi_2NumerosItem3 : array [1..2] of Shortint;
BEGIN
	for  vi_Comb02Item4_1 := 2 to 03 do
	begin
        for  vi_Comb02Item3_1 := 2 to 05 do
        begin
                vi_2NumerosItem4 [01] := STRtoINT(STGR_Etapa01_2de11.Cells[vi_Comb02Item4_1,vi_linhas]);

                vi_2NumerosItem3 [01] := STRtoINT(STGR_Etapa01_4de7b.Cells[vi_Comb02Item3_1,vi_linhas]);

                vi_SomaTotal := (vi_2NumerosItem4 [01] );
                vi_SomaTotal := vi_SomaTotal +STRtoINT(STGR_Etapa01_2de7a.Cells[2,vi_linhas]) + STRtoINT(STGR_Etapa01_2de7a.Cells[3,vi_linhas]) ;
                vi_SomaTotal := vi_SomaTotal + (vi_2NumerosItem3 [01] ) ;
                if ((vi_SomaTotal >= vi_inicial ) and  (vi_SomaTotal <= vi_final )) then
                begin
                    Result := True;
                    exit;
                end;
        end; // for vi_Comb02Item3_1
	end; // for vi_Comb02Item4_1
	result := false;
END;


FUNCTION T_F_Gerador_ResDiv_3jg18.FN_VALIDAR_ETAPA_1_parte7(vi_linhas, vi_inicial, vi_final: Integer) : Boolean;
VAR
     vi_Comb02Item5_1, vi_CombSobra: iNTEGER;
     vi_Comb02Item6_1:  iNTEGER;
     vi_Comb02Item4_1:  iNTEGER;
     vi_Contar, vi_ContaSel1, vi_SomaTotal : INTEGER;
     vi_2NumerosItem5 : array [1..2] of Shortint;
     vi_2NumerosItem6 : array [1..2] of Shortint;
BEGIN
	for  vi_Comb02Item5_1 := 2 to 06 do
	begin
				for  vi_Comb02Item6_1 := 2 to 04 do
				begin
					for  vi_Comb02Item4_1 := 2 to 03 do
					begin				
								vi_2NumerosItem5 [01] := STRtoINT(STGR_Etapa01_5de7a.Cells[vi_Comb02Item5_1,vi_linhas]);

								vi_2NumerosItem6 [01] := STRtoINT(STGR_Etapa01_3de7b.Cells[vi_Comb02Item6_1,vi_linhas]);

								vi_SomaTotal := STRtoINT(STGR_Etapa01_2de11.Cells[vi_Comb02Item4_1,vi_linhas]);
								vi_SomaTotal := vi_SomaTotal + (vi_2NumerosItem5 [01] );
								vi_SomaTotal := vi_SomaTotal + (vi_2NumerosItem6 [01] ) ;
								if ((vi_SomaTotal >= vi_inicial ) and  (vi_SomaTotal <= vi_final )) then
								begin
									Result := True;
									exit;
								end;
					end; // for vi_Comb02Item4_1								
				end; // for vi_Comb02Item6_1
	end; // for vi_Comb02Item5_1
	result := false;
END;

procedure T_F_Gerador_ResDiv_3jg18.LimparGrid_Comb15();
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




procedure T_F_Gerador_ResDiv_3jg18.BBT_PrepararMenuClick(Sender: TObject);
begin
     PA_Preparar.Visible := TRUE;
     PA_Preparar.Enabled := TRUE;
     PA_Preparar.Top  := 245;
     PA_Preparar.Left := 460;
     PA_Preparar.Repaint;
end;



procedure T_F_Gerador_ResDiv_3jg18.BBT_Gerar_VoltarClick(Sender: TObject);
begin
     PA_Preparar.Visible := false;
     PA_Preparar.Enabled := false;
     PA_Preparar.Left := 4500;
     PA_Preparar.Repaint;
end;


procedure T_F_Gerador_ResDiv_3jg18.BBT_Preparar1Click(Sender: TObject);
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
    FOR vi_Contador1 := 2 TO 08 DO
    BEGIN
        STGR_Base07.Cells[vi_Contador1,0] := INTtoSTR(vi_Contador1-1);
    END;
    // 1
    vi_Contador1 := 1 ;
    STGR_Base.Cells[0,vi_Contador1] := '+1';
    STGR_Base.Cells[01,vi_Contador1] := '';
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
    STGR_Base.Cells[15,vi_Contador1] := '14';
    STGR_Base.Cells[16,vi_Contador1] := '15';
    STGR_Base.Cells[17,vi_Contador1] := '16';
    STGR_Base.Cells[18,vi_Contador1] := '17';
    STGR_Base.Cells[19,vi_Contador1] := '18';
    // 2
    vi_Contador1 := 2 ;
    STGR_Base.Cells[0,vi_Contador1] := '+2';
    STGR_Base.Cells[01,vi_Contador1] := '';
    STGR_Base.Cells[02,vi_Contador1] := '01';
    STGR_Base.Cells[03,vi_Contador1] := '02';
    STGR_Base.Cells[04,vi_Contador1] := '03';
    STGR_Base.Cells[05,vi_Contador1] := '04';
    STGR_Base.Cells[06,vi_Contador1] := '05';
    STGR_Base.Cells[07,vi_Contador1] := '06';
    STGR_Base.Cells[08,vi_Contador1] := '07';
    STGR_Base.Cells[09,vi_Contador1] := '11';
    STGR_Base.Cells[10,vi_Contador1] := '12';
    STGR_Base.Cells[11,vi_Contador1] := '14';
    STGR_Base.Cells[12,vi_Contador1] := '15';
    STGR_Base.Cells[13,vi_Contador1] := '19';
    STGR_Base.Cells[14,vi_Contador1] := '20';
    STGR_Base.Cells[15,vi_Contador1] := '21';
    STGR_Base.Cells[16,vi_Contador1] := '22';
    STGR_Base.Cells[17,vi_Contador1] := '23';
    STGR_Base.Cells[18,vi_Contador1] := '24';
    STGR_Base.Cells[19,vi_Contador1] := '25';
    // 3
    vi_Contador1 := 3 ;
    STGR_Base.Cells[0,vi_Contador1] := '+3';
    STGR_Base.Cells[01,vi_Contador1] := '';
    STGR_Base.Cells[02,vi_Contador1] := '08';
    STGR_Base.Cells[03,vi_Contador1] := '09';
    STGR_Base.Cells[04,vi_Contador1] := '10';
    STGR_Base.Cells[05,vi_Contador1] := '11';
    STGR_Base.Cells[06,vi_Contador1] := '12';
    STGR_Base.Cells[07,vi_Contador1] := '13';
    STGR_Base.Cells[08,vi_Contador1] := '14';
    STGR_Base.Cells[09,vi_Contador1] := '15';
    STGR_Base.Cells[10,vi_Contador1] := '16';
    STGR_Base.Cells[11,vi_Contador1] := '17';
    STGR_Base.Cells[12,vi_Contador1] := '18';
    STGR_Base.Cells[13,vi_Contador1] := '19';
    STGR_Base.Cells[14,vi_Contador1] := '20';
    STGR_Base.Cells[15,vi_Contador1] := '21';
    STGR_Base.Cells[16,vi_Contador1] := '22';
    STGR_Base.Cells[17,vi_Contador1] := '23';
    STGR_Base.Cells[18,vi_Contador1] := '24';
    STGR_Base.Cells[19,vi_Contador1] := '25';

    for vi_Contador1 :=1 to 3 do
    begin
               FOR VI_CONTAR :=1 TO 25 DO
               BEGIN
                    STGR_Todos_Numeros.Cells[VI_CONTAR,1] :='F';
               END; // FOR VI_CONTAR
               // ----> MONTADO E VERIFICANDO TODOS OS 23 DÍGITOS
               FOR VI_CONTAR :=2 TO 19 DO
               BEGIN
                    STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Base.Cells[VI_CONTAR,vi_Contador1])) ,1]:='V';
               END; // FOR vi_Contador1
               vi_ContarCelulas := 2;
               FOR VI_CONTAR :=1 TO 25 DO
               BEGIN
                    IF (STGR_Todos_Numeros.Cells[VI_CONTAR,1]='F') THEN
                    BEGIN
                         STGR_Base07.Cells [vi_ContarCelulas, vi_Contador1] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[VI_CONTAR,0]),2) ;
                         vi_ContarCelulas := vi_ContarCelulas + 1;
                    END; // IF (STGR_Todos_Numeros
               END; // FOR VI_CONTAR
    end; // for vi_Contador1

     STGR_Base.RowCount := 10;
     STGR_Base07.RowCount := 10;
     // --> Montando os 33  cjuntos de 5 para filtrar



     SELF.IBQ_Combinacoes.Close;
     SELF.IBQ_Combinacoes.Open;
     IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_DIv_3jg18_DEF')  ;
     SELF.IBQ_Combinacoes.ExecSQL;

     //SELF.IBQ_Combinacoes.SQL.Clear;
     //SELF.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_DIV_3jg18_final')  ;
     //SELF.IBQ_Combinacoes.ExecSQL;
     
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




procedure T_F_Gerador_ResDiv_3jg18.BBT_GerarMenuClick(Sender: TObject);
begin
     PA_Gerar.Visible := TRUE;
     PA_Gerar.Enabled := TRUE;
     PA_Gerar.Top  := 205;
     PA_Gerar.Left := 460;
     PA_Gerar.Repaint;
end;







procedure T_F_Gerador_ResDiv_3jg18.BBT_Etapa01Click(Sender: TObject);

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
          vc_Nome_Tabela := ' GERADOR_RESULT_DIV_3jg18_final';
           vc_QUERY  := 'INSERT INTO ' +vc_Nome_Tabela+ ' (DADOS, DADOS_NS, TIPO) VALUES('
                 +#39+  TRIM(vc_Combinacoes15)  + #39 +','
                 +#39+  TRIM(vc_Combinacoes10)  + #39 +','
                 +#39+  TRIM(STGR_Etapa01_15.Cells[18,VI_AN_Comb1])
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



    FUNCTION FN_Ordenar_Comb15 (VI_LINHAS9: INTEGER):integer;
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
        FN_Ordenar_Comb15 := (vi_CntCelulas-2);
    end; // PROCEDURE PR_Ordenar_Simulacao_15_8i7p


var
     vc_Som06Inicio, vc_Som06Fim: string;
     vi_Combinacoes1, vi_Contar_Comb1, vi_Contar, vi_ContarQtdPares :integer;
     vi_Total_Comb1,  vi_ContaSel1,  vi_ContaSel2,  vi_ContaSel3,  vi_ContaSel4,  vi_ContaSel5,  vi_ContaSel6: integer;
     vi_Comb02i_1a, vi_Comb02i_2a: INTEGER;
     vi_Comb02i_1b, vi_Comb02i_2b: INTEGER;
     vi_Comb02i_1c, vi_Comb02i_2c: INTEGER;
     vi_Comb03i_1, vi_Comb03i_2, vi_Comb03i_3: INTEGER;
     vi_Linhas01, vi_nLinhas0 : integer;
     vi_SomaTotal : INTEGER;
     vi_Soma17Inicio, vi_Soma17Fim, vi_Soma16Inicio, vi_Soma16Fim: smallint;
     vi_Soma05Inicio, vi_Soma05Fim: integer;
     vi_Soma04aInicio, vi_Soma04aFim: integer;
     vi_Soma04bInicio, vi_Soma04bFim: integer;
     vi_Soma03Inicio, vi_Soma03Fim: integer;
begin
     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_DIv_3jg18_FINAL')  ;
     SELF.IBQ_Combinacoes.ExecSQL;

     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('SELECT * FROM GERADOR_RESULT_DIv_3jg18_DEF; ')  ;
     SELF.IBQ_Combinacoes.Prepare;
     SELF.IBQ_Combinacoes.Open;

     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('insert INTO GERADOR_RESULT_DIv_3jg18_DEF (FLAG_FILTRAR,FLAG_GRAVAR) values (''N'',''N'');')  ;
     SELF.IBQ_Combinacoes.ExecSQL;
     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
     SELF.IBQ_Combinacoes.ExecSQL;

    LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
    STGR_Etapa01_7a.ColWidths [0]:= 50 ;
    STGR_Etapa1_11.ColWidths [0]:= 50 ;
    STGR_Etapa1_7b.ColWidths [0]:= 50 ;
    STGR_Etapa01_9de11.ColWidths [0]:= 55 ;
    STGR_Etapa01_15.ColWidths [0]:= 55 ;
    STGR_Etapa01_2de11.ColWidths [0]:= 55 ;
    STGR_Etapa01_2de11.ColWidths [0]:= 55 ;
    STGR_Etapa01_2de7a.ColWidths [0]:= 55 ;
    STGR_Etapa01_5de7a.ColWidths [0]:= 55 ;
    STGR_Etapa01_4de7b.ColWidths [0]:= 55 ;
    STGR_Etapa01_3de7b.ColWidths [0]:= 55 ;

    STGR_Etapa01_7a.ColWidths [1]:= 33 ;
    STGR_Etapa1_11.ColWidths [1]:= 33 ;
    STGR_Etapa1_7b.ColWidths [1]:= 33 ;
    STGR_Etapa01_15.ColWidths [1]:= 33 ;
    STGR_Etapa01_15.ColWidths [18]:= 33 ;
    STGR_Etapa01_2de11.ColWidths [1]:= 33 ;
    STGR_Etapa01_2de7a.ColWidths [1]:= 33 ;
    STGR_Etapa01_5de7a.ColWidths [1]:= 33 ;
    STGR_Etapa01_4de7b.ColWidths [1]:= 33 ;
    STGR_Etapa01_3de7b.ColWidths [1]:= 33 ;


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

    //PR_GRAVAR_DADOS ('INICIO',vi_Linhas_01_01, 1, TRUNC(STGR_Base.RowCount-1));
    PGBR_Etapa_01.Position := 0;
    PGBR_Etapa_01.Repaint;
    vi_Combinacoes1 := 1;  ;
    vi_Linhas01 := 1  ;
    vi_nLinhas0 := 1 ;
        vi_Soma17Inicio := 221;
        vi_Soma17Fim := 221;
        vi_Soma16Inicio := 208;
        vi_Soma16Fim := 208;
        vc_Som06Inicio := '78';
        vc_Som06Fim := '78';
        vi_Soma05Inicio := 65;
        vi_Soma05Fim := 65;
        vi_Soma04aInicio := 52;
        vi_Soma04aFim := 52;
        vi_Soma04bInicio := 52;
        vi_Soma04bFim := 52;
        vi_Soma03Inicio := 39;
        vi_Soma03Fim := 39;
    // ---> soma 17
    if (CB_Classificacao17.ItemIndex = 0) then
    BEGIN
        vi_Soma17Inicio := 221 ;
        vi_Soma17Fim := 221 ;
    end else
    if (CB_Classificacao17.ItemIndex = 1) then
    BEGIN
        vi_Soma17Inicio := 220 ;
        vi_Soma17Fim := 222 ;
    end else
    if (CB_Classificacao17.ItemIndex = 2) then
    BEGIN
        vi_Soma17Inicio := 219 ;
        vi_Soma17Fim := 223 ;
    end else
    if (CB_Classificacao17.ItemIndex = 3) then
    BEGIN
        vi_Soma17Inicio := 218 ;
        vi_Soma17Fim := 224 ;
    end else
    if (CB_Classificacao17.ItemIndex = 4) then
    BEGIN
        vi_Soma17Inicio := 216 ;
        vi_Soma17Fim := 226 ;
    end ; /// if


    // ---> soma 16
    if (CB_Classificacao16.ItemIndex = 0) then
    BEGIN
        vi_Soma16Inicio := 208 ;
        vi_Soma16Fim := 208 ;
    end else
    if (CB_Classificacao16.ItemIndex = 1) then
    BEGIN
        vi_Soma16Inicio := 207 ;
        vi_Soma16Fim := 209 ;
    end else
    if (CB_Classificacao16.ItemIndex = 2) then
    BEGIN
        vi_Soma16Inicio := 206 ;
        vi_Soma16Fim := 210 ;
    end else
    if (CB_Classificacao16.ItemIndex = 3) then
    BEGIN
        vi_Soma16Inicio := 205 ;
        vi_Soma16Fim := 211 ;
    end else
    if (CB_Classificacao16.ItemIndex = 4) then
    BEGIN
        vi_Soma16Inicio := 203 ;
        vi_Soma16Fim := 213 ;
    end ; /// if


    // ---> soma 06
    if (CB_Classificacao06.ItemIndex = 0) then
    BEGIN
        vc_Som06Inicio := '78' ;
        vc_Som06Fim := '78' ;
    end else
    if (CB_Classificacao06.ItemIndex = 1) then
    BEGIN
        vc_Som06Inicio := '77' ;
        vc_Som06Fim := '79' ;
    end else
    if (CB_Classificacao06.ItemIndex = 2) then
    BEGIN
        vc_Som06Inicio := '76' ;
        vc_Som06Fim := '80' ;
    end else
    if (CB_Classificacao06.ItemIndex = 3) then
    BEGIN
        vc_Som06Inicio := '75' ;
        vc_Som06Fim := '81' ;
    end else
    if (CB_Classificacao06.ItemIndex = 4) then
    BEGIN
        vc_Som06Inicio := '73' ;
        vc_Som06Fim := '83' ;
    end ; /// if

    // ---> soma 05
    if (CB_Classificacao05.ItemIndex = 0) then
    BEGIN
        vi_Soma05Inicio := 65 ;
        vi_Soma05Fim := 65 ;
    end else
    if (CB_Classificacao05.ItemIndex = 1) then
    BEGIN
        vi_Soma05Inicio := 64 ;
        vi_Soma05Fim := 66 ;
    end else
    if (CB_Classificacao05.ItemIndex = 2) then
    BEGIN
        vi_Soma05Inicio := 63 ;
        vi_Soma05Fim := 67 ;
    end else
    if (CB_Classificacao05.ItemIndex = 3) then
    BEGIN
        vi_Soma05Inicio := 62 ;
        vi_Soma05Fim := 68 ;
    end else
    if (CB_Classificacao05.ItemIndex = 4) then
    BEGIN
        vi_Soma05Inicio := 60 ;
        vi_Soma05Fim := 70 ;
    end ; /// if

    // ---> soma 04a
    if (CB_Classificacao04a.ItemIndex = 0) then
    BEGIN
        vi_Soma04aInicio := 52 ;
        vi_Soma04aFim := 52 ;
    end else
    if (CB_Classificacao04a.ItemIndex = 1) then
    BEGIN
        vi_Soma04aInicio := 51 ;
        vi_Soma04aFim := 53 ;
    end else
    if (CB_Classificacao04a.ItemIndex = 2) then
    BEGIN
        vi_Soma04aInicio := 50 ;
        vi_Soma04aFim := 54 ;
    end else
    if (CB_Classificacao04a.ItemIndex = 3) then
    BEGIN
        vi_Soma04aInicio := 49 ;
        vi_Soma04aFim := 55 ;
    end else
    if (CB_Classificacao04a.ItemIndex = 4) then
    BEGIN
        vi_Soma04aInicio := 47 ;
        vi_Soma04aFim := 57 ;
    end ; /// if

    // ---> soma 04b
    if (CB_Classificacao04b.ItemIndex = 0) then
    BEGIN
        vi_Soma04bInicio := 52 ;
        vi_Soma04bFim := 52 ;
    end else
    if (CB_Classificacao04b.ItemIndex = 1) then
    BEGIN
        vi_Soma04bInicio := 51 ;
        vi_Soma04bFim := 53 ;
    end else
    if (CB_Classificacao04b.ItemIndex = 2) then
    BEGIN
        vi_Soma04bInicio := 50 ;
        vi_Soma04bFim := 54 ;
    end else
    if (CB_Classificacao04b.ItemIndex = 3) then
    BEGIN
        vi_Soma04bInicio := 49 ;
        vi_Soma04bFim := 55 ;
    end else
    if (CB_Classificacao04b.ItemIndex = 4) then
    BEGIN
        vi_Soma04bInicio := 47 ;
        vi_Soma04bFim := 57 ;
    end ; /// if

    // ---> soma 03
    if (CB_Classificacao03.ItemIndex = 0) then
    BEGIN
        vi_Soma03Inicio := 39 ;
        vi_Soma03Fim := 39 ;
    end else
    if (CB_Classificacao03.ItemIndex = 1) then
    BEGIN
        vi_Soma03Inicio := 38 ;
        vi_Soma03Fim := 40 ;
    end else
    if (CB_Classificacao03.ItemIndex = 2) then
    BEGIN
        vi_Soma03Inicio := 37 ;
        vi_Soma03Fim := 41 ;
    end else
    if (CB_Classificacao03.ItemIndex = 3) then
    BEGIN
        vi_Soma03Inicio := 36 ;
        vi_Soma03Fim := 42 ;
    end else
    if (CB_Classificacao03.ItemIndex = 4) then
    BEGIN
        vi_Soma03Inicio := 34 ;
        vi_Soma03Fim := 44 ;
    end ; /// if

    for  vi_Comb02i_1a := 1 to 2 do
    begin
        for  vi_Comb02i_2a := vi_Comb02i_1a +1  to 3 do
        begin
                for  vi_Comb02i_1b := 1 to 3 do
                begin
                    for  vi_Comb02i_2b := 1  to 3 do
                    begin
                            for  vi_Comb02i_1c := 1 to 3 do
                            begin
                                for  vi_Comb02i_2c := 1  to 3 do
                                begin
                                    // --> Capturando os números que coincidentes dos sorteados
                                    FOR vi_Contar :=1 TO 25 DO
                                    BEGIN
                                        STGR_Todos_Numeros.Cells[vi_Contar,1] :='F';
                                        STGR_Todos_Numeros.Cells[vi_Contar,2] :='F';
                                    END; // FOR vi_Contar
                                    FOR vi_Contar :=2 TO 19 DO
                                    BEGIN
                                        STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Base.Cells[vi_Contar,vi_Comb02i_1a])) ,1]:='V';
                                        STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Base.Cells[vi_Contar,vi_Comb02i_2a])) ,2]:='V';
                                    END; // FOR vi_Contar1
                                    vi_ContaSel1 := 1;
                                    FOR vi_Contar :=1 TO 25 DO
                                    BEGIN
                                        IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,2]='V')  THEN
                                        BEGIN
                                            STGR_Etapa1_11.Cells[vi_ContaSel1+1, vi_Linhas01] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) ;
                                            vi_ContaSel1 := vi_ContaSel1 + 1;
                                        END; // IF (STGR_Todos_Numeros
                                    END; // FOR vi_Contar


                                        // --> Capturando os números que coincidentes de  sorteado e de um não sorteado
                                        FOR vi_Contar :=1 TO 25 DO
                                        BEGIN
                                            STGR_Todos_Numeros.Cells[vi_Contar,1] :='F';
                                            STGR_Todos_Numeros.Cells[vi_Contar,2] :='F';
                                        END; // FOR vi_Contar
                                        FOR vi_Contar :=2 TO 19 DO
                                        BEGIN
                                            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Base.Cells[vi_Contar,vi_Comb02i_1b])) ,1]:='V';
                                        END; // FOR vi_Contar1
                                        FOR vi_Contar :=2 TO 8 DO
                                        BEGIN
                                            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Base07.Cells[vi_Contar,vi_Comb02i_2b])) ,2]:='V';
                                        END; // FOR vi_Contar1
                                        vi_ContaSel2 := 1;
                                        FOR vi_Contar :=1 TO 25 DO
                                        BEGIN
                                            IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,2]='V')  THEN
                                            BEGIN
                                                STGR_Etapa01_7a.Cells[vi_ContaSel2+1, vi_Linhas01] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) ;
                                                vi_ContaSel2 := vi_ContaSel2 + 1;
                                            END; // IF (STGR_Todos_Numeros
                                        END; // FOR vi_Contar


                                            STGR_Etapa1_11.Cells[0, vi_Linhas01] := intTOstr (vi_Linhas01);
                                            STGR_Etapa1_11.Cells[1, vi_Linhas01] := intTOstr(vi_Comb02i_1a);
                                            STGR_Etapa01_7a.Cells[0, vi_Linhas01] := intTOstr(vi_Linhas01);
                                            STGR_Etapa01_7a.Cells[1, vi_Linhas01] := intTOstr(vi_Comb02i_1b);

                                    // --> Capturando os números que coincidentes de  um não sorteado e um sorteado
                                    FOR vi_Contar :=1 TO 25 DO
                                    BEGIN
                                        STGR_Todos_Numeros.Cells[vi_Contar,1] :='F';
                                        STGR_Todos_Numeros.Cells[vi_Contar,2] :='F';
                                    END; // FOR vi_Contar
                                    FOR vi_Contar :=2 TO 8 DO
                                    BEGIN
                                        STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Base07.Cells[vi_Contar,vi_Comb02i_1c])) ,1]:='V';
                                    END; // FOR vi_Contar1
                                    FOR vi_Contar :=2 TO 19 DO
                                    BEGIN
                                        STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Base.Cells[vi_Contar,vi_Comb02i_2c])) ,2]:='V';
                                    END; // FOR vi_Contar1
                                    vi_ContaSel3 := 1;
                                    FOR vi_Contar :=1 TO 25 DO
                                    BEGIN
                                        IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,2]='V')  THEN
                                        BEGIN
                                            STGR_Etapa1_7b.Cells[vi_ContaSel3+1, vi_Linhas01] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) ;
                                            vi_ContaSel3 := vi_ContaSel3 + 1;
                                        END; // IF (STGR_Todos_Numeros
                                    END; // FOR vi_Contar
                                    STGR_Etapa1_11.Cells[0, vi_Linhas01] := intTOstr (vi_Linhas01);
                                    STGR_Etapa1_11.Cells[1, vi_Linhas01] := intTOstr(vi_Comb02i_1a)+'/'+intTOstr(vi_Comb02i_2a);
                                    STGR_Etapa01_7a.Cells[0, vi_Linhas01] := intTOstr(vi_Linhas01);
                                    STGR_Etapa01_7a.Cells[1, vi_Linhas01] := intTOstr(vi_Comb02i_1b)+'/'+intTOstr(vi_Comb02i_2b);
                                    STGR_Etapa1_7b.Cells[0, vi_Linhas01] := intTOstr(vi_Linhas01);
                                    STGR_Etapa1_7b.Cells[1, vi_Linhas01] := intTOstr(vi_Comb02i_1c)+'/'+intTOstr(vi_Comb02i_2c);
                                    if (vi_Contasel2>1) and (vi_Contasel3>1) then
                                    begin
                                        vi_ContaSel1 := 0;
                                        // ---> remoção de repetidos - fase 1

                                        for vi_Combinacoes1 := 2 to 8 do
                                        begin
                                            if (STGR_Etapa01_7a.Cells[vi_Combinacoes1, vi_Linhas01] <> STGR_Etapa01_7a.Cells[vi_Combinacoes1, vi_Linhas01-1])
                                             or (STGR_Etapa1_7b.Cells[vi_Combinacoes1, vi_Linhas01] <> STGR_Etapa1_7b.Cells[vi_Combinacoes1, vi_Linhas01-1])
                                            then
                                                vi_ContaSel1 := vi_ContaSel1 +1 ;
                                        end; // for
                                        vi_ContaSel2 := 0;
                                        for vi_Combinacoes1 := 2 to 8 do
                                        begin
                                            if vi_linhas01 >=6 then
                                            begin
                                                if (STGR_Etapa01_7a.Cells[vi_Combinacoes1, vi_Linhas01] <> STGR_Etapa01_7a.Cells[vi_Combinacoes1, vi_Linhas01-6])
                                                 or (STGR_Etapa1_7b.Cells[vi_Combinacoes1, vi_Linhas01] <> STGR_Etapa1_7b.Cells[vi_Combinacoes1, vi_Linhas01-6])
                                                then
                                                    vi_ContaSel2 := vi_ContaSel2 +1 ;
                                            end else
                                            begin
                                                vi_ContaSel2 := 2;
                                            end;
                                        end; // for
                                        vi_ContaSel3 := 0;
                                        for vi_Combinacoes1 := 2 to 8 do
                                        begin
                                            if vi_linhas01 >=5 then
                                            begin
                                                if (STGR_Etapa01_7a.Cells[vi_Combinacoes1, vi_Linhas01] <> STGR_Etapa01_7a.Cells[vi_Combinacoes1, vi_Linhas01-5])
                                                 or (STGR_Etapa1_7b.Cells[vi_Combinacoes1, vi_Linhas01] <> STGR_Etapa1_7b.Cells[vi_Combinacoes1, vi_Linhas01-5])
                                                then
                                                    vi_ContaSel3 := vi_ContaSel3 +1 ;
                                            end else
                                            begin
                                                vi_ContaSel3 := 2;
                                            end;
                                        end; // for
                                        vi_ContaSel4 := 0;
                                        for vi_Combinacoes1 := 2 to 8 do
                                        begin
                                            if vi_linhas01 >=4 then
                                            begin
                                                if (STGR_Etapa01_7a.Cells[vi_Combinacoes1, vi_Linhas01] <> STGR_Etapa01_7a.Cells[vi_Combinacoes1, vi_Linhas01-4])
                                                 or (STGR_Etapa1_7b.Cells[vi_Combinacoes1, vi_Linhas01] <> STGR_Etapa1_7b.Cells[vi_Combinacoes1, vi_Linhas01-4])
                                                then
                                                    vi_ContaSel4 := vi_ContaSel4 +1 ;
                                            end else
                                            begin
                                                vi_ContaSel4 := 2;
                                            end;
                                        end; // for
                                        vi_ContaSel5 := 0;
                                        for vi_Combinacoes1 := 2 to 8 do
                                        begin
                                            if vi_linhas01 >=6 then
                                            begin
                                                if (STGR_Etapa01_7a.Cells[vi_Combinacoes1, vi_Linhas01] <> STGR_Etapa01_7a.Cells[vi_Combinacoes1, vi_Linhas01-3])
                                                 or (STGR_Etapa1_7b.Cells[vi_Combinacoes1, vi_Linhas01] <> STGR_Etapa1_7b.Cells[vi_Combinacoes1, vi_Linhas01-3])
                                                then
                                                    vi_ContaSel5 := vi_ContaSel5 +1 ;
                                            end else
                                            begin
                                                vi_ContaSel5 := 2;
                                            end;
                                        end; // for
                                        vi_ContaSel6 := 0;
                                        for vi_Combinacoes1 := 2 to 8 do
                                        begin
                                            if vi_linhas01 >=4 then
                                            begin
                                                if (STGR_Etapa01_7a.Cells[vi_Combinacoes1, vi_Linhas01] <> STGR_Etapa01_7a.Cells[vi_Combinacoes1, vi_Linhas01-2])
                                                 or (STGR_Etapa1_7b.Cells[vi_Combinacoes1, vi_Linhas01] <> STGR_Etapa1_7b.Cells[vi_Combinacoes1, vi_Linhas01-2])
                                                then
                                                    vi_ContaSel6 := vi_ContaSel6 +1 ;
                                            end else
                                            begin
                                                vi_ContaSel6 := 2;
                                            end;
                                        end; // for

                                            if (vi_Contasel1 >1) and (vi_Contasel2 >1) and (vi_Contasel3 >1) and (vi_Contasel4 >1) and (vi_Contasel5 >1)  and (vi_Contasel6 >1) then
                                                vi_Linhas01 := vi_Linhas01 +1;
                                    end; /// if
                                 end; //for vi_Comb02i_2c
                             end; //for vi_Comb02i_1c
                     end; //for vi_Comb02i_2b
                 end; //for vi_Comb02i_1b
         end; //for vi_Comb02i_2a
     end; //for vi_Comb02i_1a
    STGR_Etapa1_7b.RowCount := vi_Linhas01;
    STGR_Etapa01_7a.RowCount := vi_Linhas01;
    STGR_Etapa1_11.RowCount := vi_Linhas01;
    STGR_Etapa1_7b.Repaint;
    STGR_Etapa01_7a.Repaint;
    STGR_Etapa1_11.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    vi_Linhas01 := 1;
    vi_Combinacoes1 := 1;
    try

        WHILE vi_Combinacoes1 <= (TRUNC((STGR_Etapa1_11.RowCount-1)/1)) do
        BEGIN
            for  vi_Comb02i_1a := 2 to 11 do
            begin
                for  vi_Comb02i_2a := vi_Comb02i_1a +1  to 12 do
                begin
                        for  vi_Comb02i_1b := 2 to 7 do
                        begin
                            for  vi_Comb02i_2b := vi_Comb02i_1b +1  to 8 do
                            begin

                                    for  vi_Comb03i_1 := 2 to 6 do
                                    begin
                                        for  vi_Comb03i_2 := vi_Comb03i_1 +1  to 7 do
                                        begin
                                            for  vi_Comb03i_3 := vi_Comb03i_2 +1  to 8 do
                                            begin

                                                STGR_Etapa01_2de11.Cells[00,vi_Linhas01] := INTtoSTR( vi_Linhas01 ) ;
                                                STGR_Etapa01_2de11.Cells[01,vi_Linhas01] := INTtoSTR( vi_Combinacoes1 ) ;
                                                STGR_Etapa01_2de11.Cells[02,vi_Linhas01] := STGR_Etapa1_11.Cells[vi_Comb02i_1a,vi_Combinacoes1] ;
                                                STGR_Etapa01_2de11.Cells[03,vi_Linhas01] := STGR_Etapa1_11.Cells[vi_Comb02i_2a,vi_Combinacoes1] ;
                                                 // --> Capturando os números que sobraram
                                                FOR vi_Contar :=1 TO 25 DO
                                                BEGIN
                                                    STGR_Todos_Numeros.Cells[vi_Contar,1] :='F';
                                                    STGR_Todos_Numeros.Cells[vi_Contar,2] :='F';
                                                END; // FOR vi_Contar
                                                FOR vi_Contar :=2 TO 12 DO
                                                BEGIN
                                                    STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa1_11.Cells[vi_Contar,vi_Combinacoes1])) ,1]:='V';
                                                END; // FOR vi_Contar1
                                                FOR vi_Contar :=2 TO 3 DO
                                                BEGIN
                                                    STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa01_2de11.Cells[vi_Contar,vi_Linhas01])) ,2]:='V';
                                                END; // FOR vi_Contar1
                                                vi_ContaSel1 := 2;
                                                FOR vi_Contar :=1 TO 25 DO
                                                BEGIN
                                                    IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,2]='F')  THEN
                                                    BEGIN
                                                        STGR_Etapa01_9de11.Cells[vi_ContaSel1, vi_Linhas01] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) ;
                                                        vi_ContaSel1 := vi_ContaSel1 + 1;
                                                    END; // IF (STGR_Todos_Numeros
                                                END; // FOR vi_Contar
                                                STGR_Etapa01_9de11.Cells[00,vi_Linhas01] := INTtoSTR( vi_Linhas01 ) ;
                                                STGR_Etapa01_9de11.Cells[01,vi_Linhas01] := INTtoSTR( vi_Combinacoes1 ) ;


                                                STGR_Etapa01_2de7a.Cells[00,vi_Linhas01] := INTtoSTR( vi_Linhas01 ) ;
                                                STGR_Etapa01_2de7a.Cells[01,vi_Linhas01] := INTtoSTR( vi_Combinacoes1 ) ;
                                                STGR_Etapa01_2de7a.Cells[02,vi_Linhas01] := STGR_Etapa01_7a.Cells[vi_Comb02i_1b,vi_Combinacoes1] ;
                                                STGR_Etapa01_2de7a.Cells[03,vi_Linhas01] := STGR_Etapa01_7a.Cells[vi_Comb02i_2b,vi_Combinacoes1] ;
                                                 // --> Capturando os números que sobraram
                                                FOR vi_Contar :=1 TO 25 DO
                                                BEGIN
                                                    STGR_Todos_Numeros.Cells[vi_Contar,1] :='F';
                                                    STGR_Todos_Numeros.Cells[vi_Contar,2] :='F';
                                                END; // FOR vi_Contar
                                                FOR vi_Contar :=2 TO 8 DO
                                                BEGIN
                                                    STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa01_7a.Cells[vi_Contar,vi_Combinacoes1])) ,1]:='V';
                                                END; // FOR vi_Contar1
                                                FOR vi_Contar :=2 TO 3 DO
                                                BEGIN
                                                    STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa01_2de7a.Cells[vi_Contar,vi_Linhas01])) ,2]:='V';
                                                END; // FOR vi_Contar1
                                                vi_ContaSel1 := 2;
                                                FOR vi_Contar :=1 TO 25 DO
                                                BEGIN
                                                    IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,2]='F')  THEN
                                                    BEGIN
                                                        STGR_Etapa01_5de7a.Cells[vi_ContaSel1, vi_Linhas01] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) ;
                                                        vi_ContaSel1 := vi_ContaSel1 + 1;
                                                    END; // IF (STGR_Todos_Numeros
                                                END; // FOR vi_Contar
                                                STGR_Etapa01_5de7a.Cells[00,vi_Linhas01] := INTtoSTR( vi_Linhas01 ) ;
                                                STGR_Etapa01_5de7a.Cells[01,vi_Linhas01] := INTtoSTR( vi_Combinacoes1 ) ;


                                                STGR_Etapa01_3de7b.Cells[00,vi_Linhas01] := INTtoSTR( vi_Linhas01 ) ;
                                                STGR_Etapa01_3de7b.Cells[01,vi_Linhas01] := INTtoSTR( vi_Combinacoes1 ) ;
                                                STGR_Etapa01_3de7b.Cells[02,vi_Linhas01] := STGR_Etapa1_7b.Cells[vi_Comb03i_1,vi_Combinacoes1] ;
                                                STGR_Etapa01_3de7b.Cells[03,vi_Linhas01] := STGR_Etapa1_7b.Cells[vi_Comb03i_2,vi_Combinacoes1] ;
                                                STGR_Etapa01_3de7b.Cells[04,vi_Linhas01] := STGR_Etapa1_7b.Cells[vi_Comb03i_3,vi_Combinacoes1] ;										
                                                 // --> Capturando os números que sobraram
                                                FOR vi_Contar :=1 TO 25 DO
                                                BEGIN
                                                    STGR_Todos_Numeros.Cells[vi_Contar,1] :='F';
                                                    STGR_Todos_Numeros.Cells[vi_Contar,2] :='F';
                                                END; // FOR vi_Contar
                                                FOR vi_Contar :=2 TO 8 DO
                                                BEGIN
                                                    STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa1_7b.Cells[vi_Contar,vi_Combinacoes1])) ,1]:='V';
                                                END; // FOR vi_Contar1
                                                FOR vi_Contar :=2 TO 4 DO
                                                BEGIN
                                                    STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa01_3de7b.Cells[vi_Contar,vi_Linhas01])) ,2]:='V';
                                                END; // FOR vi_Contar1
                                                vi_ContaSel1 := 2;
                                                FOR vi_Contar :=1 TO 25 DO
                                                BEGIN
                                                    IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,2]='F')  THEN
                                                    BEGIN
                                                        STGR_Etapa01_4de7b.Cells[vi_ContaSel1, vi_Linhas01] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) ;
                                                        vi_ContaSel1 := vi_ContaSel1 + 1;
                                                    END; // IF (STGR_Todos_Numeros
                                                END; // FOR vi_Contar
                                                STGR_Etapa01_4de7b.Cells[00,vi_Linhas01] := INTtoSTR( vi_Linhas01 ) ;
                                                STGR_Etapa01_4de7b.Cells[01,vi_Linhas01] := INTtoSTR( vi_Combinacoes1 ) ;

                                                if (FN_VALIDAR_ETAPA_2_parte1 (vi_Linhas01, vi_Soma17Inicio, vi_Soma17Fim))  and (FN_VALIDAR_ETAPA_1_parte2 (vi_Linhas01, vi_Soma16Inicio, vi_Soma16Fim))
                                                  and (FN_VALIDAR_ETAPA_1_parte3 (vi_Linhas01, STRtoINT(vc_Som06Inicio), STRtoINT(vc_Som06Fim) ))
                                                  and (FN_VALIDAR_ETAPA_1_parte4 (vi_Linhas01, vi_Soma05Inicio, vi_Soma05Fim))
                                                  and (FN_VALIDAR_ETAPA_1_parte5 (vi_Linhas01, vi_Soma04aInicio, vi_Soma04aFim))
                                                  and (FN_VALIDAR_ETAPA_1_parte6 (vi_Linhas01, vi_Soma04bInicio, vi_Soma04bFim))
                                                  and (FN_VALIDAR_ETAPA_1_parte7 (vi_Linhas01, vi_Soma03Inicio, vi_Soma03Fim))                                                                                                                                                            
                                                then
                                                begin
                                                    STGR_Etapa01_15.Cells[00,vi_linhas01] := INTtoSTR( vi_Linhas01 ) ;
                                                    STGR_Etapa01_15.Cells[01,vi_linhas01] := INTtoSTR( vi_Combinacoes1 ) ;
                                                    STGR_Etapa01_15.Cells[02,vi_linhas01] := STGR_Etapa01_9de11.Cells[02,vi_linhas01] ;
                                                    STGR_Etapa01_15.Cells[03,vi_linhas01] := STGR_Etapa01_9de11.Cells[03,vi_linhas01] ;
                                                    STGR_Etapa01_15.Cells[04,vi_linhas01] := STGR_Etapa01_9de11.Cells[04,vi_linhas01] ;
                                                    STGR_Etapa01_15.Cells[05,vi_linhas01] := STGR_Etapa01_9de11.Cells[05,vi_linhas01] ;
                                                    STGR_Etapa01_15.Cells[06,vi_linhas01] := STGR_Etapa01_9de11.Cells[06,vi_linhas01] ;
                                                    STGR_Etapa01_15.Cells[07,vi_linhas01] := STGR_Etapa01_9de11.Cells[07,vi_linhas01] ;
                                                    STGR_Etapa01_15.Cells[08,vi_linhas01] := STGR_Etapa01_9de11.Cells[08,vi_linhas01] ;
                                                    STGR_Etapa01_15.Cells[09,vi_linhas01] := STGR_Etapa01_9de11.Cells[09,vi_linhas01] ;
                                                    STGR_Etapa01_15.Cells[10,vi_linhas01] := STGR_Etapa01_9de11.Cells[10,vi_linhas01] ;
                                                    STGR_Etapa01_15.Cells[11,vi_linhas01] := STGR_Etapa01_2de7a.Cells[02,vi_linhas01] ;
                                                    STGR_Etapa01_15.Cells[12,vi_linhas01] := STGR_Etapa01_2de7a.Cells[03,vi_linhas01] ;
                                                    STGR_Etapa01_15.Cells[13,vi_linhas01] := STGR_Etapa01_4de7b.Cells[02,vi_linhas01] ;
                                                    STGR_Etapa01_15.Cells[14,vi_linhas01] := STGR_Etapa01_4de7b.Cells[03,vi_linhas01] ;
                                                    STGR_Etapa01_15.Cells[15,vi_linhas01] := STGR_Etapa01_4de7b.Cells[04,vi_linhas01] ;
                                                    STGR_Etapa01_15.Cells[16,vi_linhas01] := STGR_Etapa01_4de7b.Cells[05,vi_linhas01] ;
                                                    STGR_Etapa01_15.Cells[17,vi_linhas01] := '-' ;
                                                    if (FN_Ordenar_Comb15 (vi_Linhas01) =15) and (NumerosFixos1(vi_linhas01)) and (NumerosFixos2(vi_linhas01)) and (NumerosFixos3(vi_linhas01)) then
                                                    begin
                                                        vi_ContarQtdPares := 0 ;
                                                        for  vi_ContaSel1 := 2  to 16  do
                                                        begin
                                                            if (strTOint(STGR_Etapa01_15.Cells[vi_ContaSel1, vi_Linhas01]) MOD 2) = 0  THEN
                                                                vi_ContarQtdPares := vi_ContarQtdPares +1 ;
                                                        end; // for
                                                        case vi_ContarQtdPares of
                                                          4:  STGR_Etapa01_15.Cells[18, vi_Linhas01] := '11i/4p' ;
                                                          5:  STGR_Etapa01_15.Cells[18, vi_Linhas01] := '10i/5p' ;
                                                          6:  STGR_Etapa01_15.Cells[18, vi_Linhas01] := '.9i/6p' ;
                                                          7:  STGR_Etapa01_15.Cells[18, vi_Linhas01] := '.8i/7p' ;
                                                          8:  STGR_Etapa01_15.Cells[18, vi_Linhas01] := '.7i/8p' ;
                                                          9:  STGR_Etapa01_15.Cells[18, vi_Linhas01] := '.6i/9p' ;
                                                          10:  STGR_Etapa01_15.Cells[18, vi_Linhas01] := '.5i/10p' ;
                                                          else
                                                              STGR_Etapa01_15.Cells[18, vi_Linhas01] := intTOstr(vi_ContarQtdPares)+ ' pares' ;
                                                        end; //// case
                                                        vi_Linhas01 := vi_Linhas01 +1;
                                                    end; /// if (FN_Ordenar_Comb15 (vi_Linhas01) =15) then
                                                end; // if bem grande

                                            end; // for vi_Comb03i_3
                                        end; // for vi_Comb03i_2
                                    end; // for vi_Comb03i_1
                            end; // for vi_Comb02i_2b
                        end; // for vi_Comb02i_1b
                end; // for vi_Comb02i_2a
            end; // for vi_Comb02i_1a
 vi_Combinacoes1 := vi_Combinacoes1 +1;  // +1
            STGR_Etapa01_15.RowCount := vi_Linhas01;
            STGR_Etapa01_15.Repaint;
            PGBR_Etapa_01.Position := TRUNC (vi_Combinacoes1/((STGR_Etapa1_11.RowCount-1)/1)*100);
            PGBR_Etapa_01.Repaint;
            SELF.WindowState := wsMinimized;
            SELF.WindowState :=  wsNormal;
            SELF.Repaint;
            vi_Contar_Comb1 := vi_Contar_Comb1 + 2;            
            sleep(6);
        end; // while
    finally
        STGR_Etapa01_9de11.RowCount := vi_Linhas01;
        STGR_Etapa01_2de11.RowCount := vi_Linhas01;
        STGR_Etapa01_9de11.Repaint;
        STGR_Etapa01_2de11.Repaint;
        STGR_Etapa01_5de7a.RowCount := vi_Linhas01;
        STGR_Etapa01_2de7a.RowCount := vi_Linhas01;
        STGR_Etapa01_5de7a.Repaint;
        STGR_Etapa01_2de7a.Repaint;
        STGR_Etapa01_4de7b.RowCount := vi_Linhas01;
        STGR_Etapa01_3de7b.RowCount := vi_Linhas01;
        STGR_Etapa01_4de7b.Repaint;
        STGR_Etapa01_3de7b.Repaint;
        STGR_Etapa01_15.RowCount := vi_Linhas01;
        STGR_Etapa01_15.Repaint;
    end;
    STGR_Etapa01_15.RowCount := vi_Linhas01;
    STGR_Etapa01_15.Repaint;
            STGR_Etapa01_15.Repaint;
            STGR_Etapa01_2de11.Repaint;
    PGBR_Etapa_01.Position := 100;
    PGBR_Etapa_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
    PR_Gravar_Dados_etapa1 ();
    SELF.IBQ_Combin_02.SQL.Clear;
    SELF.IBQ_Combin_02.SQL.Add('COMMIT')  ;
    SELF.IBQ_Combin_02.ExecSQL;

    SELF.IBQ_Combinacoes.SQL.Clear;
    SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIv_3jg18_DEF SET HORA_TERMINO ='''+FORMATDATETIME('h:n:s',time())+''', QTD_DADOS= ''' +INTtoSTR(vi_Contar_Comb1)+ ''';')  ;
    SELF.IBQ_Combinacoes.ExecSQL;
    SELF.IBQ_Combinacoes.SQL.Clear;
    SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
    SELF.IBQ_Combinacoes.ExecSQL;


    LA_rTOTAL_Comb.Caption  := INTtoSTR(STGR_Etapa1_11.RowCount-1);
    LA_rQTD_COMB.Caption  := INTtoSTR(STGR_Etapa01_15.RowCount-1);
    LA_gFIM_GERAR.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;    
    IBQ_Combinacoes.SQL.Clear;
    IBQ_Combinacoes.SQL.Add('SELECT count(distinct(dados)) as quantidade FROM GERADOR_RESULT_DIV_3jg18_final') ;
    IBQ_Combinacoes.Prepare;
    IBQ_Combinacoes.Open;

    LA_rTOTAL_100REPET.Caption := IBQ_Combinacoes.fieldByName('quantidade').AsString;
    IBQ_Combinacoes.SQL.Clear;
    IBQ_Combinacoes.SQL.Add('SELECT count(distinct(dados)) as quantidade FROM GERADOR_RESULT_DIV_3jg18_final  where tipo =''.8i/7p''') ;
    IBQ_Combinacoes.Prepare;
    IBQ_Combinacoes.Open;
    LA_rTOTAL_100REPET.Caption := LA_rTOTAL_100REPET.Caption+ '  /  '+ IBQ_Combinacoes.fieldByName('quantidade').AsString;

        SELF.IBQ_CombINACOES.SQL.Clear;
        SELF.IBQ_CombINACOES.SQL.Add('UPDATE GERADOR_RESULT_DIv_3jg18_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
        SELF.IBQ_CombINACOES.ExecSQL;
        SELF.IBQ_CombINACOES.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIv_3jg18_DEF SET SOMA_17= ''Soma dos 17 números: ' +CB_Classificacao17.Text+ ''', SOMA_16= '' Soma dos 16 números:' +CB_Classificacao16.Text+ ''', SOMA_06= '' Soma dos 06 números:' +CB_Classificacao06.Text+ ''', SOMA_05= '' Soma dos 06 números:' +CB_Classificacao05.Text+ ''', SOMA_04a= '' Soma dos 04a números:'+CB_Classificacao04a.Text+ ''', SOMA_04b= '' Soma dos 04b números:' +CB_Classificacao04b.Text+ ''', SOMA_03= '' Soma dos 03 números:' +CB_Classificacao03.Text+  ''' ;') ;
           SELF.IBQ_Combinacoes.ExecSQL;
        SELF.IBQ_CombINACOES.ExecSQL;
       SELF.IBQ_CombINACOES.SQL.Clear;
       SELF.IBQ_CombINACOES.SQL.Add('COMMIT')  ;
       SELF.IBQ_CombINACOES.ExecSQL;
    LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
    PA_RemoveuRepetidos.Left := 1100;
end;






procedure T_F_Gerador_ResDiv_3jg18.BTN_ReajustarClick(Sender: TObject);
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



procedure T_F_Gerador_ResDiv_3jg18.BBT_CARREGARClick(Sender: TObject);
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
            SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIv_3jg18_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
end;



procedure T_F_Gerador_ResDiv_3jg18.BBT_Gerar_SairClick(Sender: TObject);
begin
     PA_Gerar.Enabled := false;
     PA_Gerar.Left := 4500;    ;
     PA_Gerar.Repaint;
end;



procedure T_F_Gerador_ResDiv_3jg18.BBT_BlocoNotasClick(Sender: TObject);
var
    vi_Contar, vc_qtd_pares : INTEGER;
    vc_Nome_Tabela, vc_Combinacoes2, vcTitulo : string;
begin
     for vc_qtd_pares := 8 to 8 do
     begin
                vc_Nome_Tabela := 'GERADOR_RESULT_DIv_3jg18_FINAL';
          MEM_Combinacoes_Todas.Clear;
          SELF.IBQ_Combinacoes.Close;
          SELF.IBQ_Combinacoes.SQL.Clear;
          SELF.IBQ_Combinacoes.SQL.Add('SELECT COUNT(distinct(DADOS)) AS SOMADADOS FROM ' +vc_Nome_Tabela+ ';')  ;
          SELF.IBQ_Combinacoes.Prepare;
          SELF.IBQ_Combinacoes.Open;
          vi_Contar := SELF.IBQ_Combinacoes.FIELDBYNAME('SOMADADOS').AsInteger;
          vcTitulo := 'GERADOR Resultados 3 Jogos de 18';
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
    winExec('Notepad.exe C:\CXLOTOFACIL\GERADOR_RESULT_DIv_3jg18_FINAL.TXT', sw_shownormal);
   SHOWMESSAGE('BLOCO DE NOTAS GERADO');
end;



procedure T_F_Gerador_ResDiv_3jg18.btn_CarregarClick(Sender: TObject);
begin
     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIv_3jg18_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
     SELF.IBQ_Combinacoes.ExecSQL;
     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
     SELF.IBQ_Combinacoes.ExecSQL;
     SHOWMESSAGE('OK');
     SELF.Close;
end;







procedure T_F_Gerador_ResDiv_3jg18.BBT_OKClick(Sender: TObject);
begin
    PGBR_Etapa_01.Position :=0 ;
    BBT_Etapa01.Click;
end;






procedure T_F_Gerador_ResDiv_3jg18.BBT_RemoveuRepetidosClick(
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
     PA_Inicial.Left := 1060;
     PA_Inicial.Top := 5;
end;



end.
