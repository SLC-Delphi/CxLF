unit uGerador_ResultDiv_SmFx6_235;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, DB, strutils,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, IdBaseComponent, IdComponent, IdIPWatch ;

type
  T_F_Gerador_ResDiv_SmFx6 = class(TForm)
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
    STGR_Comb15: TStringGrid;
    STGR_Todos_Numeros: TStringGrid;
    PA_ExecutarFiltro: TPanel;
    BBT_PrepararMenu: TBitBtn;
    BBT_GerarMenu: TBitBtn;
    PANEL_Titulo_Simulacao: TPanel;
    LA_Gerar_Comb: TLabel;
    LA_Total_Comb: TLabel;
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
    STGR_Etapa01_13de15: TStringGrid;
    STGR_Etapa1_08de10: TStringGrid;
    ED_FIXOS_03_8i7p: TEdit;
    btn_Carregar: TButton;
    STGR_Etapa1_02de15: TStringGrid;
    Bevel1: TBevel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BBT_Etapa02: TBitBtn;
    BBT_Etapa03: TBitBtn;
    PGBR_Etapa_02: TProgressBar;
    PGBR_Etapa_03: TProgressBar;
    PGBR_Etapa_04: TProgressBar;
    Label13: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    CB_Classificacao: TComboBox;
    LA_Tipo: TLabel;
    IBQ_Combin_02: TIBQuery;
    STGR_Etapa01_02de10: TStringGrid;
    STGR_Filtro33de5: TStringGrid;
    STGR_Etapa02_15: TStringGrid;
    Label5: TLabel;
    CB_Funil_05de15: TComboBox;
    Label4: TLabel;
    CB_Funil_05de10: TComboBox;
    STGR_fxcol01: TStringGrid;
    STGR_fxcol02: TStringGrid;
    STGR_fxcol03: TStringGrid;
    STGR_fxcol04: TStringGrid;
    Label10: TLabel;
    CB_Etapa3_01: TComboBox;
    CB_Etapa3_02: TComboBox;
    Label11: TLabel;
    BBT_Etapa04: TBitBtn;
    Label12: TLabel;
    CB_ConjuntoJogos: TComboBox;
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
    procedure BBT_Etapa03Click(Sender: TObject);
    procedure BBT_Etapa04Click(Sender: TObject);
  private
    F_MODALIDADE: STRING;
    { Private declarations }
    procedure Set_MODALIDADE(const Value: STRING);
    FUNCTION FN_VALIDAR_ETAPA_2(vi_Linha: Integer) :Boolean;
    FUNCTION FN_VALIDAR_ETAPA_2_parte2(vi_Linha: Integer) :Boolean;
    FUNCTION FN_VALIDAR_ETAPA_3_parte1(vi_Linha: Integer):Boolean;
    FUNCTION FN_VALIDAR_ETAPA_3_parte2(vi_Linha: Integer):Boolean;
    FUNCTION FN_VALIDAR_ETAPA_4_parte1(vi_Linha: Integer):Boolean;
  public
    { Public declarations }
     PROPERTY _MODALIDADE : STRING  read F_MODALIDADE write Set_MODALIDADE;
  end;

var
  _F_Gerador_ResDiv_SmFx6: T_F_Gerador_ResDiv_SmFx6;

implementation

{$R *.dfm}


procedure T_F_Gerador_ResDiv_SmFx6.Set_MODALIDADE(const Value: STRING);
begin
  F_MODALIDADE := Value;
end;





procedure T_F_Gerador_ResDiv_SmFx6.FormCreate(Sender: TObject);
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
            SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIV_SmFx6_DEF SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
        except
            //
        end; // try
end;



procedure T_F_Gerador_ResDiv_SmFx6.FormActivate(Sender: TObject);
begin
      IF (SELF._MODALIDADE ='GERADOR') THEN
      begin
          LA_Titulo.Caption             := 'GERADOR Resultados Diversos a Partir das Somas Fixas 6-  cj235/cj162 modelo 2 ';
          CB_Classificacao.ItemIndex := 0;
          CB_Classificacao.Enabled := True;
      END ELSE
      BEGIN
          LA_Titulo.Caption             := 'SIMULAR modelo 8 - Resultados Diversos a Partir das Somas Fixas 6-  cj235/cj162 modelo 2 ';
          CB_Classificacao.Enabled := True;
          BTN_NovaSimulacao.Click;
      end;
      LA_Titulo.Repaint;
end;



procedure T_F_Gerador_ResDiv_SmFx6.FormClose(Sender: TObject;
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


procedure T_F_Gerador_ResDiv_SmFx6.BBT_CloseClick(Sender: TObject);
begin
     SELF.Close;
end;








procedure T_F_Gerador_ResDiv_SmFx6.BTN_NovaSimulacaoClick(Sender: TObject);
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


procedure T_F_Gerador_ResDiv_SmFx6.BTN_SairClick(Sender: TObject);
begin
     SELF.Close;
end;



procedure T_F_Gerador_ResDiv_SmFx6.BBT_CancelarClick(Sender: TObject);
begin
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIV_SmFx6_DEF SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('COMMIT;')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
          SELF.Close;
end;



FUNCTION T_F_Gerador_ResDiv_SmFx6.FN_VALIDAR_ETAPA_2(vi_Linha: Integer):Boolean;
VAR
//     vi_Comb05i_1, vi_Comb05i_2, vi_Comb05i_3, vi_Comb05i_4, vi_Comb05i_5: iNTEGER;
     vi_Contar, vi_ContaSel1, vi_Linhas33Combinacoes : INTEGER;
//     vi_5Numeros : array [1..5] of Shortint;
BEGIN
    {
    for  vi_Comb05i_1 := 2 to 11 do
    begin
        for  vi_Comb05i_2 := vi_Comb05i_1 +1  to 12 do
        begin
            for  vi_Comb05i_3 := vi_Comb05i_2+ 1  to 13 do
            begin
                for  vi_Comb05i_4 := vi_Comb05i_3 +1  to 14 do
                begin
                    for  vi_Comb05i_5 := vi_Comb05i_4 +1  to 15 do
                    begin
                        vi_5Numeros [01] := STRtoINT(STGR_Etapa02_15.Cells[vi_Comb05i_1,vi_Linha]);
                        vi_5Numeros [02] := STRtoINT(STGR_Etapa02_15.Cells[vi_Comb05i_2,vi_Linha]);
                        vi_5Numeros [03] := STRtoINT(STGR_Etapa02_15.Cells[vi_Comb05i_3,vi_Linha]);
                        vi_5Numeros [04] := STRtoINT(STGR_Etapa02_15.Cells[vi_Comb05i_4,vi_Linha]);
                        vi_5Numeros [05] := STRtoINT(STGR_Etapa02_15.Cells[vi_Comb05i_5,vi_Linha]);
                        for vi_Linhas33Combinacoes := 1 to 33 do
                        begin
                            // --> Capturando os números que sobraram
                            FOR vi_Contar :=1 TO 25 DO
                            BEGIN
                                STGR_Todos_Numeros.Cells[vi_Contar,1] :='F';
                                STGR_Todos_Numeros.Cells[vi_Contar,2] :='F';
                            END; // FOR vi_Contar
                            FOR vi_Contar :=1 TO 5 DO
                            BEGIN
                                STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Filtro33de5.Cells[vi_Contar,vi_Linhas33Combinacoes])) ,1]:='V';
                                STGR_Todos_Numeros.Cells [ vi_5Numeros[vi_Contar] ,2]:='V';
                            END; // FOR vi_Contar1
                            vi_ContaSel1 := 0 ;
                            FOR vi_Contar :=1 TO 25 DO
                            BEGIN
                                IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,2]='V')  THEN
                                BEGIN
                                    vi_ContaSel1 := vi_ContaSel1 + 1;
                                END; // IF (STGR_Todos_Numeros
                            END; // FOR vi_Contar
                            if (vi_ContaSel1 = 5) and (CB_Funil_05de15.ItemIndex = 1) then
                            begin
                                Result := True ;
                                STGR_Etapa02_15.Cells[17,vi_Linha] := '[' + intTOstr(vi_Linhas33Combinacoes) + ']'  ;
                                Exit;
                            end;
                            if (vi_ContaSel1 = 4) and (CB_Funil_05de15.ItemIndex = 0) then
                            begin
                                result := True ;
                                STGR_Etapa02_15.Cells[17,vi_Linha] := '[' + intTOstr(vi_Linhas33Combinacoes) + ']'  ;
                                Exit;
                            end;
                            if (vi_ContaSel1 >= 4) AND (CB_Funil_05de15.ItemIndex = 2) then
                            begin
                                Result := True ;
                                STGR_Etapa02_15.Cells[17,vi_Linha] := '[' + intTOstr(vi_Linhas33Combinacoes) + ']'  ;
                                Exit;
                            end; /// if

                        end; // for vi_Linhas33Combinacoes
                    end; // for
                end; // for
            end; // for
        end; // for
    end; // for
   Result := False ;
    }
    // 854
    // 574

    for vi_Linhas33Combinacoes := 1 to 33 do
    begin
        // --> Capturando os números que sobraram
        FOR vi_Contar :=1 TO 25 DO
        BEGIN
            STGR_Todos_Numeros.Cells[vi_Contar,1] :='F';
            STGR_Todos_Numeros.Cells[vi_Contar,2] :='F';
        END; // FOR vi_Contar
        FOR vi_Contar :=1 TO 5 DO
        BEGIN
            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Filtro33de5.Cells[vi_Contar,vi_Linhas33Combinacoes])) ,1]:='V';
        END; // FOR vi_Contar1
        FOR vi_Contar :=2 TO 16 DO
        BEGIN
            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa02_15.Cells[vi_Contar,vi_Linha])) ,2]:='V';
        END; // FOR vi_Contar1
        vi_ContaSel1 := 0 ;
        FOR vi_Contar :=1 TO 25 DO
        BEGIN
            IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,2]='V')  THEN
            BEGIN
                vi_ContaSel1 := vi_ContaSel1 + 1;
            END; // IF (STGR_Todos_Numeros
        END; // FOR vi_Contar
        if (CB_Funil_05de15.ItemIndex = 2)  then
        begin
            if ((vi_ContaSel1 = 4) or (vi_ContaSel1 = 5)) then
            begin
                Result := True ;
                STGR_Etapa02_15.Cells[17,vi_Linha] := '[' + intTOstr(vi_Linhas33Combinacoes) + ']'  ;
                Exit;
            end;
        end; /// if
        if (vi_ContaSel1 = 5) and (CB_Funil_05de15.ItemIndex = 1) then
        begin
            Result := True ;
            STGR_Etapa02_15.Cells[17,vi_Linha] := '[' + intTOstr(vi_Linhas33Combinacoes) + ']'  ;
            Exit;
        end;
        if (vi_ContaSel1 = 4) and (CB_Funil_05de15.ItemIndex = 0) then
        begin
            result := True ;
            STGR_Etapa02_15.Cells[17,vi_Linha] := '[' + intTOstr(vi_Linhas33Combinacoes) + ']'  ;
            Exit;
        end;
    end; // for vi_Linhas33Combinacoes
    Result := False ;
END;



FUNCTION T_F_Gerador_ResDiv_SmFx6.FN_VALIDAR_ETAPA_2_parte2(vi_Linha: Integer):Boolean;
VAR
//     vi_Comb05i_1, vi_Comb05i_2, vi_Comb05i_3, vi_Comb05i_4, vi_Comb05i_5: iNTEGER;
     vi_Contar, vi_ContaSel1, vi_Linhas33Combinacoes : INTEGER;
     vi_nCb :  Shortint;
BEGIN
    for vi_Linhas33Combinacoes := 1 to 33 do
    begin
        // --> Capturando os números que sobraram
        FOR vi_Contar :=1 TO 25 DO
        BEGIN
            STGR_Todos_Numeros.Cells[vi_Contar,1] :='F';
            STGR_Todos_Numeros.Cells[vi_Contar,2] :='F';
        END; // FOR vi_Contar
        FOR vi_Contar :=1 TO 5 DO
        BEGIN
            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Filtro33de5.Cells[vi_Contar,vi_Linhas33Combinacoes])) ,1]:='V';
        END; // FOR vi_Contar1
        FOR vi_Contar :=1 TO 10 DO
        BEGIN
            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa02_10.Cells[vi_Contar,1])) ,2]:='V';
        END; // FOR vi_Contar1
        vi_ContaSel1 := 0 ;
        FOR vi_Contar :=1 TO 25 DO
        BEGIN
            IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,2]='V')  THEN
            BEGIN
                vi_ContaSel1 := vi_ContaSel1 + 1;
            END; // IF (STGR_Todos_Numeros
        END; // FOR vi_Contar
        vi_nCb := CB_Funil_05de10.ItemIndex;
        IF  vi_nCb =0 THEN
        begin
            if (vi_ContaSel1 = 3)  THEN
            begin
                Result := True ;
                STGR_Etapa02_15.Cells[18,vi_Linha] := '[' + intTOstr(vi_Linhas33Combinacoes) + ']'  ;
                Exit;
            end;
        end else
        IF  vi_nCb =1 THEN
        begin
            if (vi_ContaSel1 = 4)  THEN
            begin
                Result := True ;
                STGR_Etapa02_15.Cells[18,vi_Linha] := '[' + intTOstr(vi_Linhas33Combinacoes) + ']'  ;
                Exit;
            end;
        end else
        IF  vi_nCb =2 THEN
        begin
            if (vi_ContaSel1 = 5)  THEN
            begin
                Result := True ;
                STGR_Etapa02_15.Cells[18,vi_Linha] := '[' + intTOstr(vi_Linhas33Combinacoes) + ']'  ;
                Exit;
            end;
        end else
        IF  vi_nCb =3 THEN
        begin
            if (vi_ContaSel1 = 3) or (vi_ContaSel1 = 4)  THEN
            begin
                Result := True ;
                STGR_Etapa02_15.Cells[18,vi_Linha] := '[' + intTOstr(vi_Linhas33Combinacoes) + ']'  ;
                Exit;
            end;
        end else
        IF  vi_nCb =4 THEN
        begin
            if (vi_ContaSel1 >= 4)  THEN
            begin
                Result := True ;
                STGR_Etapa02_15.Cells[18,vi_Linha] := '[' + intTOstr(vi_Linhas33Combinacoes) + ']'  ;
                Exit;
            end;
        end else
        IF  vi_nCb =5 THEN
        begin
            if (vi_ContaSel1 >= 3)  THEN
            begin
                Result := True ;
                STGR_Etapa02_15.Cells[18,vi_Linha] := '[' + intTOstr(vi_Linhas33Combinacoes) + ']'  ;
                Exit;
            end;            
        end;
    end; // for vi_Linhas33Combinacoes
    Result := False ;
END;



FUNCTION T_F_Gerador_ResDiv_SmFx6.FN_VALIDAR_ETAPA_3_parte1(vi_Linha: Integer):Boolean;
VAR
     vi_Comb12i_1, vi_Comb12i_2, vi_Comb12i_3, vi_Comb12i_4, vi_Comb12i_5: iNTEGER;
     vi_Comb12i_6, vi_Comb12i_7, vi_Comb12i_8, vi_Comb12i_9, vi_Comb12i_a: iNTEGER;
     vi_Comb12i_b, vi_Comb12i_c : iNTEGER;
     vi_Contar, vi_somatodos12, vi_SomaInicial, vi_SomaFinal : INTEGER;
     vi_ContaSel1, vi_ContaSel2, vi_ContaSel3, vi_ContaSel4 : Shortint;
     vi_QtdConta1, vi_QtdConta2, vi_QtdConta4, vi_QtdConta5 : Shortint;
     vi_12Numeros : array [1..12] of Shortint;
BEGIN
    if (CB_Etapa3_01.ItemIndex) = 0 then vi_SomaInicial := 156;
    if (CB_Etapa3_01.ItemIndex) = 1 then vi_SomaInicial := 155;
    if (CB_Etapa3_01.ItemIndex) = 2 then vi_SomaInicial := 156;
    if (CB_Etapa3_01.ItemIndex) = 3 then vi_SomaInicial := 155;

    if (CB_Etapa3_01.ItemIndex) = 0 then vi_SomaFinal := 156;
    if (CB_Etapa3_01.ItemIndex) = 1 then vi_SomaFinal := 156;
    if (CB_Etapa3_01.ItemIndex) = 2 then vi_SomaFinal := 157;
    if (CB_Etapa3_01.ItemIndex) = 3 then
         vi_SomaFinal := 157;
    for  vi_Comb12i_1 := 2 to 05 do
    begin
        for  vi_Comb12i_2 := vi_Comb12i_1 +1  to 06 do
        begin
            for  vi_Comb12i_3 := vi_Comb12i_2+ 1  to 07 do
            begin
                for  vi_Comb12i_4 := vi_Comb12i_3 +1  to 08 do
                begin
                    for  vi_Comb12i_5 := vi_Comb12i_4 +1  to 09 do
                    begin
                        for  vi_Comb12i_6 := vi_Comb12i_5 +1 to 10 do
                        begin
                            for  vi_Comb12i_7 := vi_Comb12i_6 +1  to 11 do
                            begin
                                for  vi_Comb12i_8 := vi_Comb12i_7+ 1  to 12 do
                                begin
                                    for  vi_Comb12i_9 := vi_Comb12i_8 +1  to 13 do
                                    begin
                                        for  vi_Comb12i_a := vi_Comb12i_9 +1  to 14 do
                                        begin
                                            for  vi_Comb12i_b := vi_Comb12i_a +1  to 15 do
                                            begin
                                                for  vi_Comb12i_c := vi_Comb12i_b +1  to 16 do
                                                begin
                                                    vi_12Numeros [01] := STRtoINT(STGR_Etapa02_15.Cells[vi_Comb12i_1,vi_Linha]);
                                                    vi_12Numeros [02] := STRtoINT(STGR_Etapa02_15.Cells[vi_Comb12i_2,vi_Linha]);
                                                    vi_12Numeros [03] := STRtoINT(STGR_Etapa02_15.Cells[vi_Comb12i_3,vi_Linha]);
                                                    vi_12Numeros [04] := STRtoINT(STGR_Etapa02_15.Cells[vi_Comb12i_4,vi_Linha]);
                                                    vi_12Numeros [05] := STRtoINT(STGR_Etapa02_15.Cells[vi_Comb12i_5,vi_Linha]);
                                                    vi_12Numeros [06] := STRtoINT(STGR_Etapa02_15.Cells[vi_Comb12i_6,vi_Linha]);
                                                    vi_12Numeros [07] := STRtoINT(STGR_Etapa02_15.Cells[vi_Comb12i_7,vi_Linha]);
                                                    vi_12Numeros [08] := STRtoINT(STGR_Etapa02_15.Cells[vi_Comb12i_8,vi_Linha]);
                                                    vi_12Numeros [09] := STRtoINT(STGR_Etapa02_15.Cells[vi_Comb12i_9,vi_Linha]);
                                                    vi_12Numeros [10] := STRtoINT(STGR_Etapa02_15.Cells[vi_Comb12i_a,vi_Linha]);
                                                    vi_12Numeros [11] := STRtoINT(STGR_Etapa02_15.Cells[vi_Comb12i_b,vi_Linha]);
                                                    vi_12Numeros [12] := STRtoINT(STGR_Etapa02_15.Cells[vi_Comb12i_c,vi_Linha]);
                                                    vi_somatodos12 := vi_12Numeros [01]  +  vi_12Numeros [02]  +  vi_12Numeros [03]   +  vi_12Numeros [04]  +
                                                                      vi_12Numeros [05]  +  vi_12Numeros [06]  +  vi_12Numeros [07]   +  vi_12Numeros [08]  +
                                                                      vi_12Numeros [09]  +  vi_12Numeros [10]  +  vi_12Numeros [11]   +  vi_12Numeros [12]  ;
                                                    IF  (vi_somatodos12 >=vi_SomaInicial) and (vi_somatodos12<=vi_SomaFinal) then
                                                    begin
                                                        // --> Capturando os números
                                                        FOR vi_Contar :=1 TO 25 DO
                                                        BEGIN
                                                            STGR_Todos_Numeros.Cells[vi_Contar,1] :='F';
                                                            STGR_Todos_Numeros.Cells[vi_Contar,2] :='F';
                                                            STGR_Todos_Numeros.Cells[vi_Contar,3] :='F';
                                                            STGR_Todos_Numeros.Cells[vi_Contar,4] :='F';
                                                            STGR_Todos_Numeros.Cells[vi_Contar,5] :='F';
                                                        END; // FOR vi_Contar
                                                        FOR vi_Contar :=1 TO 12 DO
                                                        BEGIN
                                                            STGR_Todos_Numeros.Cells [ vi_12Numeros[vi_Contar] ,1]:='V';
                                                        END; // FOR vi_Contar1
                                                        FOR vi_Contar :=1 TO 6 DO
                                                        BEGIN
                                                            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_fxcol01.Cells[0,vi_Contar])) ,2]:='V';
                                                            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_fxcol03.Cells[0,vi_Contar])) ,4]:='V';
                                                            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_fxcol04.Cells[0,vi_Contar])) ,5]:='V';
                                                        end;
                                                        FOR vi_Contar :=1 TO 7 do
                                                        BEGIN
                                                            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_fxcol02.Cells[0,vi_Contar])) ,3]:='V';
                                                        end;
                                                        // primeira coluna
                                                        vi_ContaSel1 := 0 ;
                                                        FOR vi_Contar :=1 TO 25 DO
                                                        BEGIN
                                                            IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,2]='V')  THEN
                                                            BEGIN
                                                                vi_ContaSel1 := vi_ContaSel1 + 1;
                                                            END; // IF (STGR_Todos_Numeros
                                                        END; // FOR vi_Contar
                                                        // segunda coluna
                                                        vi_ContaSel2 := 0 ;
                                                        FOR vi_Contar :=1 TO 25 DO
                                                        BEGIN
                                                            IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,3]='V')  THEN
                                                            BEGIN
                                                                vi_ContaSel2 := vi_ContaSel2 + 1;
                                                            END; // IF (STGR_Todos_Numeros
                                                        END; // FOR vi_Contar
                                                        // terceira coluna
                                                        vi_ContaSel3 := 0 ;
                                                        FOR vi_Contar :=1 TO 25 DO
                                                        BEGIN
                                                            IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,4]='V')  THEN
                                                            BEGIN
                                                                vi_ContaSel3 := vi_ContaSel3 + 1;
                                                            END; // IF (STGR_Todos_Numeros
                                                        END; // FOR vi_Contar
                                                        // quarta coluna
                                                        vi_ContaSel4 := 0 ;
                                                        FOR vi_Contar :=1 TO 25 DO
                                                        BEGIN
                                                            IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,5]='V')  THEN
                                                            BEGIN
                                                                vi_ContaSel4 := vi_ContaSel4 + 1;
                                                            END; // IF (STGR_Todos_Numeros
                                                        END; // FOR vi_Contar
                                                         vi_QtdConta1 := 0 ;
                                                         vi_QtdConta2 := 0 ;
                                                         vi_QtdConta4 := 0 ;
                                                         vi_QtdConta5 := 0 ;
                                                         if vi_ContaSel1 =1 then vi_QtdConta1 := vi_QtdConta1 +1;
                                                         if vi_ContaSel2 =1 then vi_QtdConta1 := vi_QtdConta1 +1;
                                                         if vi_ContaSel3 =1 then vi_QtdConta1 := vi_QtdConta1 +1;
                                                         if vi_ContaSel4 =1 then vi_QtdConta1 := vi_QtdConta1 +1;

                                                         if vi_ContaSel1 =2 then vi_QtdConta2 := vi_QtdConta2 +1;
                                                         if vi_ContaSel2 =2 then vi_QtdConta2 := vi_QtdConta2 +1;
                                                         if vi_ContaSel3 =2 then vi_QtdConta2 := vi_QtdConta2 +1;
                                                         if vi_ContaSel4 =2 then vi_QtdConta2 := vi_QtdConta2 +1;

                                                         if vi_ContaSel1 =4 then vi_QtdConta4 := vi_QtdConta4 +1;
                                                         if vi_ContaSel2 =4 then vi_QtdConta4 := vi_QtdConta4 +1;
                                                         if vi_ContaSel3 =4 then vi_QtdConta4 := vi_QtdConta4 +1;
                                                         if vi_ContaSel4 =4 then vi_QtdConta4 := vi_QtdConta4 +1;

                                                         if vi_ContaSel1 =5 then vi_QtdConta5 := vi_QtdConta5 +1;
                                                         if vi_ContaSel2 =5 then vi_QtdConta5 := vi_QtdConta5 +1;
                                                         if vi_ContaSel3 =5 then vi_QtdConta5 := vi_QtdConta5 +1;
                                                         if vi_ContaSel4 =5 then vi_QtdConta5 := vi_QtdConta5 +1;

                                                        if (vi_QtdConta1 = 1) and (vi_QtdConta2= 1) and (vi_QtdConta4 = 1) and (vi_QtdConta5 = 1) then
                                                        begin
                                                            Result := True ;
                                                            Exit;
                                                        end;
                                                    end; /// if
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
   Result := False ;
END;



FUNCTION T_F_Gerador_ResDiv_SmFx6.FN_VALIDAR_ETAPA_3_parte2(vi_Linha: Integer):Boolean;
VAR
     vi_Comb07i_1, vi_Comb07i_2, vi_Comb07i_3, vi_Comb07i_4, vi_Comb07i_5: iNTEGER;
     vi_Comb07i_6, vi_Comb07i_7 : iNTEGER;
     vi_Contar, vi_somatodos07, vi_SomaInicial, vi_SomaFinal : INTEGER;
     vi_ContaSel1, vi_ContaSel2, vi_ContaSel3, vi_ContaSel4 : Shortint;
     vi_QtdConta1, vi_QtdConta2 : Shortint;
     vi_07Numeros : array [1..07] of Shortint;
BEGIN
    if (CB_Etapa3_02.ItemIndex) = 0 then vi_SomaInicial := 91;
    if (CB_Etapa3_02.ItemIndex) = 1 then vi_SomaInicial := 90;
    if (CB_Etapa3_02.ItemIndex) = 2 then vi_SomaInicial := 91;
    if (CB_Etapa3_02.ItemIndex) = 3 then vi_SomaInicial := 90;

    if (CB_Etapa3_02.ItemIndex) = 0 then vi_SomaFinal := 91;
    if (CB_Etapa3_02.ItemIndex) = 1 then vi_SomaFinal := 91;
    if (CB_Etapa3_02.ItemIndex) = 2 then vi_SomaFinal := 92;
    if (CB_Etapa3_02.ItemIndex) = 3 then
                                    vi_SomaFinal := 92;
        // captura OS 10 NUMEROS
        FOR vi_Contar :=1 TO 25 DO
        BEGIN
            STGR_Todos_Numeros.Cells[vi_Contar,0] :=INTtoSTR(vi_Contar);
            STGR_Todos_Numeros.Cells[vi_Contar,1] :='F';
        END; // FOR vi_Contar
        FOR vi_Contar :=2 TO 16 DO
        BEGIN
            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa02_15.Cells[vi_Contar,vi_Linha])) ,1]:='V';
        END; // FOR vi_Contar1
        vi_ContaSel1 := 1;
        FOR vi_Contar :=1 TO 25 DO
        BEGIN
            // SOBRAS
            IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='F') THEN
            BEGIN
                STGR_Etapa02_10.Cells[vi_ContaSel1, 1] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) ;
                vi_ContaSel1 := vi_ContaSel1 + 1;
            END; // IF (STRGR_TODOS_NUMEROS
        END; // FOR vi_Contar
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
                        for  vi_Comb07i_6 := vi_Comb07i_5 +1 to 09 do
                        begin
                            for  vi_Comb07i_7 := vi_Comb07i_6 +1  to 10 do
                            begin
                                vi_07Numeros [01] := STRtoINT(STGR_Etapa02_10.Cells[vi_Comb07i_1,1]);
                                vi_07Numeros [02] := STRtoINT(STGR_Etapa02_10.Cells[vi_Comb07i_2,1]);
                                vi_07Numeros [03] := STRtoINT(STGR_Etapa02_10.Cells[vi_Comb07i_3,1]);
                                vi_07Numeros [04] := STRtoINT(STGR_Etapa02_10.Cells[vi_Comb07i_4,1]);
                                vi_07Numeros [05] := STRtoINT(STGR_Etapa02_10.Cells[vi_Comb07i_5,1]);
                                vi_07Numeros [06] := STRtoINT(STGR_Etapa02_10.Cells[vi_Comb07i_6,1]);
                                vi_07Numeros [07] := STRtoINT(STGR_Etapa02_10.Cells[vi_Comb07i_7,1]);
                                vi_somatodos07 := vi_07Numeros [01]  +  vi_07Numeros [02]  +  vi_07Numeros [03]   +  vi_07Numeros [04]  +
                                                  vi_07Numeros [05]  +  vi_07Numeros [06]  +  vi_07Numeros [07]   ;
                                IF  (vi_somatodos07 >=vi_SomaInicial) and (vi_somatodos07<=vi_SomaFinal) then
                                begin
                              ///    if (STRtoINT(STGR_Etapa02_15.Cells[0,vi_Linha])) = 62 then showmessage('62');                                
                                    // --> Capturando os números
                                    FOR vi_Contar :=1 TO 25 DO
                                    BEGIN
                                        STGR_Todos_Numeros.Cells[vi_Contar,1] :='F';
                                        STGR_Todos_Numeros.Cells[vi_Contar,2] :='F';
                                        STGR_Todos_Numeros.Cells[vi_Contar,3] :='F';
                                        STGR_Todos_Numeros.Cells[vi_Contar,4] :='F';
                                        STGR_Todos_Numeros.Cells[vi_Contar,5] :='F';
                                    END; // FOR vi_Contar
                                    FOR vi_Contar :=1 TO 07 DO
                                    BEGIN
                                        STGR_Todos_Numeros.Cells [ vi_07Numeros[vi_Contar] ,1]:='V';
                                    END; // FOR vi_Contar1
                                    FOR vi_Contar :=1 TO 6 DO
                                    BEGIN
                                        STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_fxcol01.Cells[0,vi_Contar])) ,2]:='V';
                                        STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_fxcol03.Cells[0,vi_Contar])) ,4]:='V';
                                        STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_fxcol04.Cells[0,vi_Contar])) ,5]:='V';
                                    end;
                                    FOR vi_Contar :=1 TO 7 do
                                    BEGIN
                                        STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_fxcol02.Cells[0,vi_Contar])) ,3]:='V';
                                    end;
                                    // primeira coluna
                                    vi_ContaSel1 := 0 ;
                                    FOR vi_Contar :=1 TO 25 DO
                                    BEGIN
                                        IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,2]='V')  THEN
                                        BEGIN
                                            vi_ContaSel1 := vi_ContaSel1 + 1;
                                        END; // IF (STGR_Todos_Numeros
                                    END; // FOR vi_Contar
                                    // segunda coluna
                                    vi_ContaSel2 := 0 ;
                                    FOR vi_Contar :=1 TO 25 DO
                                    BEGIN
                                        IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,3]='V')  THEN
                                        BEGIN
                                            vi_ContaSel2 := vi_ContaSel2 + 1;
                                        END; // IF (STGR_Todos_Numeros
                                    END; // FOR vi_Contar
                                    // terceira coluna
                                    vi_ContaSel3 := 0 ;
                                    FOR vi_Contar :=1 TO 25 DO
                                    BEGIN
                                        IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,4]='V')  THEN
                                        BEGIN
                                            vi_ContaSel3 := vi_ContaSel3 + 1;
                                        END; // IF (STGR_Todos_Numeros
                                    END; // FOR vi_Contar
                                    // quarta coluna
                                    vi_ContaSel4 := 0 ;
                                    FOR vi_Contar :=1 TO 25 DO
                                    BEGIN
                                        IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,5]='V')  THEN
                                        BEGIN
                                            vi_ContaSel4 := vi_ContaSel4 + 1;
                                        END; // IF (STGR_Todos_Numeros
                                    END; // FOR vi_Contar
                                     vi_QtdConta1 := 0 ;
                                     vi_QtdConta2 := 0 ;

                                     if vi_ContaSel1 =1 then vi_QtdConta1 := vi_QtdConta1 +1;
                                     if vi_ContaSel2 =1 then vi_QtdConta1 := vi_QtdConta1 +1;
                                     if vi_ContaSel3 =1 then vi_QtdConta1 := vi_QtdConta1 +1;
                                     if vi_ContaSel4 =1 then vi_QtdConta1 := vi_QtdConta1 +1;

                                     if vi_ContaSel1 =2 then vi_QtdConta2 := vi_QtdConta2 +1;
                                     if vi_ContaSel2 =2 then vi_QtdConta2 := vi_QtdConta2 +1;
                                     if vi_ContaSel3 =2 then vi_QtdConta2 := vi_QtdConta2 +1;
                                     if vi_ContaSel4 =2 then vi_QtdConta2 := vi_QtdConta2 +1;

                                    if (vi_QtdConta1 = 1) then
                                        if  (vi_QtdConta2= 3)  then
                                        begin
                                            Result := True ;
                                            Exit;
                                        end;
                                end; /// if
                            end; // for
                        end; // for
                    end; // for
                end; // for
            end; // for
        end; // for
    end; // for
   Result := False ;
END;


FUNCTION T_F_Gerador_ResDiv_SmFx6.FN_VALIDAR_ETAPA_4_parte1(vi_Linha: Integer):Boolean;
VAR
     vi_Comb14i_1, vi_Comb14i_2, vi_Comb14i_3, vi_Comb14i_4, vi_Comb14i_5: iNTEGER;
     vi_Comb14i_6, vi_Comb14i_7, vi_Comb14i_8, vi_Comb14i_9, vi_Comb14i_a: iNTEGER;
     vi_Comb14i_b, vi_Comb14i_c, vi_Comb14i_d, vi_Comb14i_e : iNTEGER;
     vi_Contar : INTEGER;
     vi_ContaSel1, vi_ContaSel2, vi_ContaSel3, vi_ContaSel4 : Shortint;
     vi_QtdConta2, vi_QtdConta3, vi_QtdConta4, vi_QtdConta5 : Shortint;
     vi_14Numeros : array [1..14] of Shortint;
BEGIN

    for  vi_Comb14i_1 := 2 to 03 do
    begin
        for  vi_Comb14i_2 := vi_Comb14i_1 +1  to 04 do
        begin
            for  vi_Comb14i_3 := vi_Comb14i_2+ 1  to 05 do
            begin
                for  vi_Comb14i_4 := vi_Comb14i_3 +1  to 06 do
                begin
                    for  vi_Comb14i_5 := vi_Comb14i_4 +1  to 07 do
                    begin
                        for  vi_Comb14i_6 := vi_Comb14i_5 +1 to 08 do
                        begin
                            for  vi_Comb14i_7 := vi_Comb14i_6 +1  to 09 do
                            begin
                                for  vi_Comb14i_8 := vi_Comb14i_7+ 1  to 10 do
                                begin
                                    for  vi_Comb14i_9 := vi_Comb14i_8 +1  to 11 do
                                    begin
                                        for  vi_Comb14i_a := vi_Comb14i_9 +1  to 12 do
                                        begin
                                            for  vi_Comb14i_b := vi_Comb14i_a +1  to 13 do
                                            begin
                                                for  vi_Comb14i_c := vi_Comb14i_b +1  to 14 do
                                                begin
                                                    for  vi_Comb14i_d := vi_Comb14i_c +1  to 15 do
                                                    begin
                                                        for  vi_Comb14i_e := vi_Comb14i_d +1  to 16 do
                                                        begin
                                                            vi_14Numeros [01] := STRtoINT(STGR_Etapa02_15.Cells[vi_Comb14i_1,vi_Linha]);
                                                            vi_14Numeros [02] := STRtoINT(STGR_Etapa02_15.Cells[vi_Comb14i_2,vi_Linha]);
                                                            vi_14Numeros [03] := STRtoINT(STGR_Etapa02_15.Cells[vi_Comb14i_3,vi_Linha]);
                                                            vi_14Numeros [04] := STRtoINT(STGR_Etapa02_15.Cells[vi_Comb14i_4,vi_Linha]);
                                                            vi_14Numeros [05] := STRtoINT(STGR_Etapa02_15.Cells[vi_Comb14i_5,vi_Linha]);
                                                            vi_14Numeros [06] := STRtoINT(STGR_Etapa02_15.Cells[vi_Comb14i_6,vi_Linha]);
                                                            vi_14Numeros [07] := STRtoINT(STGR_Etapa02_15.Cells[vi_Comb14i_7,vi_Linha]);
                                                            vi_14Numeros [08] := STRtoINT(STGR_Etapa02_15.Cells[vi_Comb14i_8,vi_Linha]);
                                                            vi_14Numeros [09] := STRtoINT(STGR_Etapa02_15.Cells[vi_Comb14i_9,vi_Linha]);
                                                            vi_14Numeros [10] := STRtoINT(STGR_Etapa02_15.Cells[vi_Comb14i_a,vi_Linha]);
                                                            vi_14Numeros [11] := STRtoINT(STGR_Etapa02_15.Cells[vi_Comb14i_b,vi_Linha]);
                                                            vi_14Numeros [12] := STRtoINT(STGR_Etapa02_15.Cells[vi_Comb14i_c,vi_Linha]);
                                                            vi_14Numeros [13] := STRtoINT(STGR_Etapa02_15.Cells[vi_Comb14i_d,vi_Linha]);
                                                            vi_14Numeros [14] := STRtoINT(STGR_Etapa02_15.Cells[vi_Comb14i_e,vi_Linha]);
                                                                // --> Capturando os números
                                                                FOR vi_Contar :=1 TO 25 DO
                                                                BEGIN
                                                                    STGR_Todos_Numeros.Cells[vi_Contar,1] :='F';
                                                                    STGR_Todos_Numeros.Cells[vi_Contar,2] :='F';
                                                                    STGR_Todos_Numeros.Cells[vi_Contar,3] :='F';
                                                                    STGR_Todos_Numeros.Cells[vi_Contar,4] :='F';
                                                                    STGR_Todos_Numeros.Cells[vi_Contar,5] :='F';
                                                                END; // FOR vi_Contar
                                                                FOR vi_Contar :=1 TO 14 DO
                                                                BEGIN
                                                                    STGR_Todos_Numeros.Cells [ vi_14Numeros[vi_Contar] ,1]:='V';
                                                                END; // FOR vi_Contar1
                                                                FOR vi_Contar :=1 TO 6 DO
                                                                BEGIN
                                                                    STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_fxcol01.Cells[0,vi_Contar])) ,2]:='V';
                                                                    STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_fxcol03.Cells[0,vi_Contar])) ,4]:='V';
                                                                    STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_fxcol04.Cells[0,vi_Contar])) ,5]:='V';
                                                                end;
                                                                FOR vi_Contar :=1 TO 7 do
                                                                BEGIN
                                                                    STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_fxcol02.Cells[0,vi_Contar])) ,3]:='V';
                                                                end;
                                                                // primeira coluna
                                                                vi_ContaSel1 := 0 ;
                                                                FOR vi_Contar :=1 TO 25 DO
                                                                BEGIN
                                                                    IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,2]='V')  THEN
                                                                    BEGIN
                                                                        vi_ContaSel1 := vi_ContaSel1 + 1;
                                                                    END; // IF (STGR_Todos_Numeros
                                                                END; // FOR vi_Contar
                                                                // segunda coluna
                                                                vi_ContaSel2 := 0 ;
                                                                FOR vi_Contar :=1 TO 25 DO
                                                                BEGIN
                                                                    IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,3]='V')  THEN
                                                                    BEGIN
                                                                        vi_ContaSel2 := vi_ContaSel2 + 1;
                                                                    END; // IF (STGR_Todos_Numeros
                                                                END; // FOR vi_Contar
                                                                // terceira coluna
                                                                vi_ContaSel3 := 0 ;
                                                                FOR vi_Contar :=1 TO 25 DO
                                                                BEGIN
                                                                    IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,4]='V')  THEN
                                                                    BEGIN
                                                                        vi_ContaSel3 := vi_ContaSel3 + 1;
                                                                    END; // IF (STGR_Todos_Numeros
                                                                END; // FOR vi_Contar
                                                                // quarta coluna
                                                                vi_ContaSel4 := 0 ;
                                                                FOR vi_Contar :=1 TO 25 DO
                                                                BEGIN
                                                                    IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,5]='V')  THEN
                                                                    BEGIN
                                                                        vi_ContaSel4 := vi_ContaSel4 + 1;
                                                                    END; // IF (STGR_Todos_Numeros
                                                                END; // FOR vi_Contar
                                                                 vi_QtdConta2 := 0 ;
                                                                 vi_QtdConta3 := 0 ;
                                                                 vi_QtdConta4 := 0 ;
                                                                 vi_QtdConta5 := 0 ;
                                                                 if vi_ContaSel1 =2 then vi_QtdConta2 := vi_QtdConta2 +1;
                                                                 if vi_ContaSel2 =2 then vi_QtdConta2 := vi_QtdConta2 +1;
                                                                 if vi_ContaSel3 =2 then vi_QtdConta2 := vi_QtdConta2 +1;
                                                                 if vi_ContaSel4 =2 then vi_QtdConta2 := vi_QtdConta2 +1;

                                                                 if vi_ContaSel1 =3 then vi_QtdConta3 := vi_QtdConta3 +1;
                                                                 if vi_ContaSel2 =3 then vi_QtdConta3 := vi_QtdConta3 +1;
                                                                 if vi_ContaSel3 =3 then vi_QtdConta3 := vi_QtdConta3 +1;
                                                                 if vi_ContaSel4 =3 then vi_QtdConta3 := vi_QtdConta3 +1;

                                                                 if vi_ContaSel1 =4 then vi_QtdConta4 := vi_QtdConta4 +1;
                                                                 if vi_ContaSel2 =4 then vi_QtdConta4 := vi_QtdConta4 +1;
                                                                 if vi_ContaSel3 =4 then vi_QtdConta4 := vi_QtdConta4 +1;
                                                                 if vi_ContaSel4 =4 then vi_QtdConta4 := vi_QtdConta4 +1;

                                                                 if vi_ContaSel1 =5 then vi_QtdConta5 := vi_QtdConta5 +1;
                                                                 if vi_ContaSel2 =5 then vi_QtdConta5 := vi_QtdConta5 +1;
                                                                 if vi_ContaSel3 =5 then vi_QtdConta5 := vi_QtdConta5 +1;
                                                                 if vi_ContaSel4 =5 then vi_QtdConta5 := vi_QtdConta5 +1;

                                                                if (vi_QtdConta2 = 1) and (vi_QtdConta3 = 1) and (vi_QtdConta4 = 1) and (vi_QtdConta5 = 1) then
                                                                begin
                                                                    Result := True ;
                                                                    Exit;
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
        end; // for
    end; // for
   Result := False ;
END;





procedure T_F_Gerador_ResDiv_SmFx6.BBT_PrepararMenuClick(Sender: TObject);
begin
     PA_Preparar.Visible := TRUE;
     PA_Preparar.Enabled := TRUE;
     PA_Preparar.Top  := 245;
     PA_Preparar.Left := 460;
     PA_Preparar.Repaint;
end;



procedure T_F_Gerador_ResDiv_SmFx6.BBT_Gerar_VoltarClick(Sender: TObject);
begin
     PA_Preparar.Visible := false;
     PA_Preparar.Enabled := false;
     PA_Preparar.Left := 4500;
     PA_Preparar.Repaint;
end;


procedure T_F_Gerador_ResDiv_SmFx6.BBT_Preparar1Click(Sender: TObject);
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
     IBQ_Combinacoes.SQL.Clear;
     IF CB_ConjuntoJogos.ItemIndex = 0 then
         IBQ_Combinacoes.SQL.Add('SELECT * FROM RESULTADO_GERADOS_235comb ORDER BY n')
     else
         IBQ_Combinacoes.SQL.Add('SELECT * FROM RESULTADO_GERADOS_162comb');
     IBQ_Combinacoes.Prepare;
     IBQ_Combinacoes.Open;
     IBQ_Combinacoes.First;
     vi_Contador1 := 1  ;
     WHILE NOT(IBQ_Combinacoes.Eof) DO
     BEGIN
          STGR_Base.Cells[0,vi_Contador1] := INTtoSTR(vi_Contador1);
          STGR_Base.Cells[01,vi_Contador1] := '';
          STGR_Base.Cells[02,vi_Contador1] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,1,2);
          STGR_Base.Cells[03,vi_Contador1] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,4,2);
          STGR_Base.Cells[04,vi_Contador1] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,7,2);
          STGR_Base.Cells[05,vi_Contador1] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,10,2);
          STGR_Base.Cells[06,vi_Contador1] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,13,2);
          STGR_Base.Cells[07,vi_Contador1] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,16,2);
          STGR_Base.Cells[08,vi_Contador1] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,19,2);
          STGR_Base.Cells[09,vi_Contador1] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,22,2);
          STGR_Base.Cells[10,vi_Contador1] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,25,2);
          STGR_Base.Cells[11,vi_Contador1] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,28,2);
          STGR_Base.Cells[12,vi_Contador1] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,31,2);
          STGR_Base.Cells[13,vi_Contador1] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,34,2);
          STGR_Base.Cells[14,vi_Contador1] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,37,2);
          STGR_Base.Cells[15,vi_Contador1] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,40,2);
          STGR_Base.Cells[16,vi_Contador1] := COPY(IBQ_Combinacoes.FIELDbyNAME('DADOS').AsString,43,2);
          STGR_Base10.Cells[0,vi_Contador1] := INTtoSTR(vi_Contador1);
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

          //-->
          vi_Contador1 := vi_Contador1 +1;
          IBQ_Combinacoes.Next;
     END; // WHILE NOT
     STGR_Base.RowCount := vi_Contador1 ;
     STGR_Base10.RowCount := vi_Contador1 ;
     // --> Montando os 33  cjuntos de 5 para filtrar
    STGR_Filtro33de5.Cells[0,01] := '+1' ;   STGR_Filtro33de5.Cells[1,01] := '01' ;   STGR_Filtro33de5.Cells[2,01] := '04' ;   STGR_Filtro33de5.Cells[3,01] := '07' ;
       STGR_Filtro33de5.Cells[4,01] := '10' ;   STGR_Filtro33de5.Cells[5,01] := '13' ;
    STGR_Filtro33de5.Cells[0,02] := '+2' ;   STGR_Filtro33de5.Cells[1,02] := '01' ;   STGR_Filtro33de5.Cells[2,02] := '04' ;   STGR_Filtro33de5.Cells[3,02] := '08' ;
       STGR_Filtro33de5.Cells[4,02] := '12' ;   STGR_Filtro33de5.Cells[5,02] := '15' ;
    STGR_Filtro33de5.Cells[0,03] := '+3' ;   STGR_Filtro33de5.Cells[1,03] := '01' ;   STGR_Filtro33de5.Cells[2,03] := '04' ;   STGR_Filtro33de5.Cells[3,03] := '09' ;
       STGR_Filtro33de5.Cells[4,03] := '11' ;   STGR_Filtro33de5.Cells[5,03] := '14' ;
    STGR_Filtro33de5.Cells[0,04] := '+4' ;   STGR_Filtro33de5.Cells[1,04] := '01' ;   STGR_Filtro33de5.Cells[2,04] := '05' ;   STGR_Filtro33de5.Cells[3,04] := '07' ;
       STGR_Filtro33de5.Cells[4,04] := '11' ;   STGR_Filtro33de5.Cells[5,04] := '15' ;
    STGR_Filtro33de5.Cells[0,05] := '+5' ;   STGR_Filtro33de5.Cells[1,05] := '01' ;   STGR_Filtro33de5.Cells[2,05] := '05' ;   STGR_Filtro33de5.Cells[3,05] := '08' ;
       STGR_Filtro33de5.Cells[4,05] := '12' ;   STGR_Filtro33de5.Cells[5,05] := '13' ;
    STGR_Filtro33de5.Cells[0,06] := '+6' ;   STGR_Filtro33de5.Cells[1,06] := '01' ;   STGR_Filtro33de5.Cells[2,06] := '05' ;   STGR_Filtro33de5.Cells[3,06] := '09' ;
       STGR_Filtro33de5.Cells[4,06] := '10' ;   STGR_Filtro33de5.Cells[5,06] := '15' ;
    STGR_Filtro33de5.Cells[0,07] := '+7' ;   STGR_Filtro33de5.Cells[1,07] := '01' ;   STGR_Filtro33de5.Cells[2,07] := '05' ;   STGR_Filtro33de5.Cells[3,07] := '09' ;
       STGR_Filtro33de5.Cells[4,07] := '12' ;   STGR_Filtro33de5.Cells[5,07] := '14' ;
    STGR_Filtro33de5.Cells[0,08] := '+8' ;   STGR_Filtro33de5.Cells[1,08] := '01' ;   STGR_Filtro33de5.Cells[2,08] := '06' ;   STGR_Filtro33de5.Cells[3,08] := '07' ;
       STGR_Filtro33de5.Cells[4,08] := '12' ;   STGR_Filtro33de5.Cells[5,08] := '14' ;
    STGR_Filtro33de5.Cells[0,09] := '+9' ;   STGR_Filtro33de5.Cells[1,09] := '01' ;   STGR_Filtro33de5.Cells[2,09] := '06' ;   STGR_Filtro33de5.Cells[3,09] := '08' ;
       STGR_Filtro33de5.Cells[4,09] := '10' ;   STGR_Filtro33de5.Cells[5,09] := '14' ;
    STGR_Filtro33de5.Cells[0,10] := '+10' ;   STGR_Filtro33de5.Cells[1,10] := '01' ;   STGR_Filtro33de5.Cells[2,10] := '06' ;   STGR_Filtro33de5.Cells[3,10] := '08' ;
       STGR_Filtro33de5.Cells[4,10] := '11' ;   STGR_Filtro33de5.Cells[5,10] := '15' ;
    STGR_Filtro33de5.Cells[0,11] := '+11' ;   STGR_Filtro33de5.Cells[1,11] := '01' ;   STGR_Filtro33de5.Cells[2,11] := '06' ;   STGR_Filtro33de5.Cells[3,11] := '09' ;
       STGR_Filtro33de5.Cells[4,11] := '11' ;   STGR_Filtro33de5.Cells[5,11] := '13' ;

    STGR_Filtro33de5.Cells[0,12] := '+12' ;   STGR_Filtro33de5.Cells[1,12] := '02' ;   STGR_Filtro33de5.Cells[2,12] := '04' ;   STGR_Filtro33de5.Cells[3,12] := '07' ;
       STGR_Filtro33de5.Cells[4,12] := '12' ;   STGR_Filtro33de5.Cells[5,12] := '14' ;
    STGR_Filtro33de5.Cells[0,13] := '+13' ;   STGR_Filtro33de5.Cells[1,13] := '02' ;   STGR_Filtro33de5.Cells[2,13] := '04' ;   STGR_Filtro33de5.Cells[3,13] := '08' ;
       STGR_Filtro33de5.Cells[4,13] := '10' ;   STGR_Filtro33de5.Cells[5,13] := '15' ;
    STGR_Filtro33de5.Cells[0,14] := '+14' ;   STGR_Filtro33de5.Cells[1,14] := '02' ;   STGR_Filtro33de5.Cells[2,14] := '04' ;   STGR_Filtro33de5.Cells[3,14] := '09' ;
       STGR_Filtro33de5.Cells[4,14] := '11' ;   STGR_Filtro33de5.Cells[5,14] := '15' ;
    STGR_Filtro33de5.Cells[0,15] := '+15' ;   STGR_Filtro33de5.Cells[1,15] := '02' ;   STGR_Filtro33de5.Cells[2,15] := '04' ;   STGR_Filtro33de5.Cells[3,15] := '09' ;
       STGR_Filtro33de5.Cells[4,15] := '12' ;   STGR_Filtro33de5.Cells[5,15] := '13' ;
    STGR_Filtro33de5.Cells[0,16] := '+16' ;   STGR_Filtro33de5.Cells[1,16] := '02' ;   STGR_Filtro33de5.Cells[2,16] := '05' ;   STGR_Filtro33de5.Cells[3,16] := '07' ;
       STGR_Filtro33de5.Cells[4,16] := '12' ;   STGR_Filtro33de5.Cells[5,16] := '15' ;
    STGR_Filtro33de5.Cells[0,17] := '+17' ;   STGR_Filtro33de5.Cells[1,17] := '02' ;   STGR_Filtro33de5.Cells[2,17] := '05' ;   STGR_Filtro33de5.Cells[3,17] := '08' ;
       STGR_Filtro33de5.Cells[4,17] := '11' ;   STGR_Filtro33de5.Cells[5,17] := '14' ;
    STGR_Filtro33de5.Cells[0,18] := '+18' ;   STGR_Filtro33de5.Cells[1,18] := '02' ;   STGR_Filtro33de5.Cells[2,18] := '05' ;   STGR_Filtro33de5.Cells[3,18] := '09' ;
       STGR_Filtro33de5.Cells[4,18] := '10' ;   STGR_Filtro33de5.Cells[5,18] := '13' ;
    STGR_Filtro33de5.Cells[0,19] := '+19' ;   STGR_Filtro33de5.Cells[1,19] := '02' ;   STGR_Filtro33de5.Cells[2,19] := '06' ;   STGR_Filtro33de5.Cells[3,19] := '07' ;
       STGR_Filtro33de5.Cells[4,19] := '10' ;   STGR_Filtro33de5.Cells[5,19] := '15' ;
    STGR_Filtro33de5.Cells[0,20] := '+20' ;   STGR_Filtro33de5.Cells[1,20] := '02' ;   STGR_Filtro33de5.Cells[2,20] := '06' ;   STGR_Filtro33de5.Cells[3,20] := '07' ;
       STGR_Filtro33de5.Cells[4,20] := '11' ;   STGR_Filtro33de5.Cells[5,20] := '13' ;
    STGR_Filtro33de5.Cells[0,21] := '+21' ;   STGR_Filtro33de5.Cells[1,21] := '02' ;   STGR_Filtro33de5.Cells[2,21] := '06' ;   STGR_Filtro33de5.Cells[3,21] := '08' ;
       STGR_Filtro33de5.Cells[4,21] := '12' ;   STGR_Filtro33de5.Cells[5,21] := '13' ;
    STGR_Filtro33de5.Cells[0,22] := '+22' ;   STGR_Filtro33de5.Cells[1,22] := '02' ;   STGR_Filtro33de5.Cells[2,22] := '06' ;   STGR_Filtro33de5.Cells[3,22] := '09' ;
       STGR_Filtro33de5.Cells[4,22] := '10' ;   STGR_Filtro33de5.Cells[5,22] := '14' ;

    STGR_Filtro33de5.Cells[0,23] := '+23' ;   STGR_Filtro33de5.Cells[1,23] := '03' ;   STGR_Filtro33de5.Cells[2,23] := '04' ;   STGR_Filtro33de5.Cells[3,23] := '07' ;
       STGR_Filtro33de5.Cells[4,23] := '11' ;   STGR_Filtro33de5.Cells[5,23] := '15' ;
    STGR_Filtro33de5.Cells[0,24] := '+24' ;   STGR_Filtro33de5.Cells[1,24] := '03' ;   STGR_Filtro33de5.Cells[2,24] := '04' ;   STGR_Filtro33de5.Cells[3,24] := '08' ;
       STGR_Filtro33de5.Cells[4,24] := '11' ;   STGR_Filtro33de5.Cells[5,24] := '13' ;
    STGR_Filtro33de5.Cells[0,25] := '+25' ;   STGR_Filtro33de5.Cells[1,25] := '03' ;   STGR_Filtro33de5.Cells[2,25] := '04' ;   STGR_Filtro33de5.Cells[3,25] := '08' ;
       STGR_Filtro33de5.Cells[4,25] := '12' ;   STGR_Filtro33de5.Cells[5,25] := '14' ;
    STGR_Filtro33de5.Cells[0,26] := '+26' ;   STGR_Filtro33de5.Cells[1,26] := '03' ;   STGR_Filtro33de5.Cells[2,26] := '04' ;   STGR_Filtro33de5.Cells[3,26] := '09' ;
       STGR_Filtro33de5.Cells[4,26] := '10' ;   STGR_Filtro33de5.Cells[5,26] := '14' ;
    STGR_Filtro33de5.Cells[0,27] := '+27' ;   STGR_Filtro33de5.Cells[1,27] := '03' ;   STGR_Filtro33de5.Cells[2,27] := '05' ;   STGR_Filtro33de5.Cells[3,27] := '07' ;
       STGR_Filtro33de5.Cells[4,27] := '10' ;   STGR_Filtro33de5.Cells[5,27] := '14' ;
    STGR_Filtro33de5.Cells[0,28] := '+28' ;   STGR_Filtro33de5.Cells[1,28] := '03' ;   STGR_Filtro33de5.Cells[2,28] := '05' ;   STGR_Filtro33de5.Cells[3,28] := '07' ;
       STGR_Filtro33de5.Cells[4,28] := '12' ;   STGR_Filtro33de5.Cells[5,28] := '13' ;
    STGR_Filtro33de5.Cells[0,29] := '+29' ;   STGR_Filtro33de5.Cells[1,29] := '03' ;   STGR_Filtro33de5.Cells[2,29] := '05' ;   STGR_Filtro33de5.Cells[3,29] := '08' ;
       STGR_Filtro33de5.Cells[4,29] := '10' ;   STGR_Filtro33de5.Cells[5,29] := '15' ;
    STGR_Filtro33de5.Cells[0,30] := '+30' ;   STGR_Filtro33de5.Cells[1,30] := '03' ;   STGR_Filtro33de5.Cells[2,30] := '05' ;   STGR_Filtro33de5.Cells[3,30] := '09' ;
       STGR_Filtro33de5.Cells[4,30] := '11' ;   STGR_Filtro33de5.Cells[5,30] := '13' ;
    STGR_Filtro33de5.Cells[0,31] := '+31' ;   STGR_Filtro33de5.Cells[1,31] := '03' ;   STGR_Filtro33de5.Cells[2,31] := '06' ;   STGR_Filtro33de5.Cells[3,31] := '07' ;
       STGR_Filtro33de5.Cells[4,31] := '11' ;   STGR_Filtro33de5.Cells[5,31] := '14' ;
    STGR_Filtro33de5.Cells[0,32] := '+32' ;   STGR_Filtro33de5.Cells[1,32] := '03' ;   STGR_Filtro33de5.Cells[2,32] := '06' ;   STGR_Filtro33de5.Cells[3,32] := '08' ;
       STGR_Filtro33de5.Cells[4,32] := '10' ;   STGR_Filtro33de5.Cells[5,32] := '13' ;
    STGR_Filtro33de5.Cells[0,33] := '+33' ;   STGR_Filtro33de5.Cells[1,33] := '03' ;   STGR_Filtro33de5.Cells[2,33] := '06' ;   STGR_Filtro33de5.Cells[3,33] := '09' ;
       STGR_Filtro33de5.Cells[4,33] := '12' ;   STGR_Filtro33de5.Cells[5,33] := '15' ;

    STGR_Filtro33de5.RowCount := 34;

    STGR_fxcol01.Cells[0,1] := '03' ;   STGR_fxcol02.Cells[0,1] := '01' ;   STGR_fxcol03.Cells[0,1] := '05' ;   STGR_fxcol04.Cells[0,1] := '06' ;
    STGR_fxcol01.Cells[0,2] := '04' ;   STGR_fxcol02.Cells[0,2] := '02' ;   STGR_fxcol03.Cells[0,2] := '10' ;   STGR_fxcol04.Cells[0,2] := '12' ;
    STGR_fxcol01.Cells[0,3] := '09' ;   STGR_fxcol02.Cells[0,3] := '07' ;   STGR_fxcol03.Cells[0,3] := '11' ;   STGR_fxcol04.Cells[0,3] := '18' ;
    STGR_fxcol01.Cells[0,4] := '15' ;   STGR_fxcol02.Cells[0,4] := '08' ;   STGR_fxcol03.Cells[0,4] := '16' ;   STGR_fxcol04.Cells[0,4] := '23' ;
    STGR_fxcol01.Cells[0,5] := '20' ;   STGR_fxcol02.Cells[0,5] := '13' ;   STGR_fxcol03.Cells[0,5] := '17' ;   STGR_fxcol04.Cells[0,5] := '24' ;
    STGR_fxcol01.Cells[0,6] := '21' ;   STGR_fxcol02.Cells[0,6] := '14' ;   STGR_fxcol03.Cells[0,6] := '22' ;   STGR_fxcol04.Cells[0,6] := '25' ;
                                        STGR_fxcol02.Cells[0,7] := '19' ;

     SELF.IBQ_Combinacoes.Close;
     SELF.IBQ_Combinacoes.Open;
     IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_DIV_SmFx6_DEF')  ;
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




procedure T_F_Gerador_ResDiv_SmFx6.BBT_GerarMenuClick(Sender: TObject);
begin
     PA_Gerar.Visible := TRUE;
     PA_Gerar.Enabled := TRUE;
     PA_Gerar.Top  := 205;
     PA_Gerar.Left := 460;
     PA_Gerar.Repaint;
end;







procedure T_F_Gerador_ResDiv_SmFx6.BBT_Etapa01Click(Sender: TObject);

var
     vi_Combinacoes1, vi_Contar_Comb1, vi_Contar: integer;
     vi_Total_Comb1,  vi_ContaSel1: integer;
     vi_Comb13i_1, vi_Comb13i_2: INTEGER;
     vi_Comb02i_1, vi_Comb02i_2: INTEGER;
     vi_Comb10i_1, vi_Comb10i_2, vi_Comb10i_3, vi_Comb10i_4, vi_Comb10i_5, vi_Comb10i_6, vi_Comb10i_7, vi_Comb10i_8, vi_Comb10i_9, vi_Comb10i_A: iNTEGER;
     vi_Linhas2, vi_Linhas08 : integer;
     vi_Soma1Etapa1, vi_Soma2Etapa1: integer;
     vi_Soma1Inicio, vi_Soma1Fim: integer;
     vb_Linhas08: boolean;

     vs_NumerosPrincipais, vs_NumerosPrincipaiNs : STRING;
begin
     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_DIV_SmFx6_FINAL')  ;
     SELF.IBQ_Combinacoes.ExecSQL;

     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('SELECT * FROM GERADOR_RESULT_DIV_SmFx6_DEF; ')  ;
     SELF.IBQ_Combinacoes.Prepare;
     SELF.IBQ_Combinacoes.Open;

     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('insert INTO GERADOR_RESULT_DIV_SmFx6_DEF (FLAG_FILTRAR,FLAG_GRAVAR) values (''N'',''N'');')  ;
     SELF.IBQ_Combinacoes.ExecSQL;
     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
     SELF.IBQ_Combinacoes.ExecSQL;


    LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
    STGR_Etapa01_13de15.ColWidths [0]:= 50 ;
    STGR_Etapa1_02de15.ColWidths [0]:= 50 ;
    STGR_Etapa1_08de10.ColWidths [0]:= 50 ;
    STGR_Etapa01_02de10.ColWidths [0]:= 50 ;

    STGR_Etapa01_13de15.ColWidths [1]:= 37 ;
    STGR_Etapa1_02de15.ColWidths [1]:= 37 ;
    STGR_Etapa1_08de10.ColWidths [1]:= 37 ;
    STGR_Etapa01_02de10.ColWidths [1]:= 37 ;

    STGR_Comb15.ColWidths [0]:= 49;
    STGR_Comb15_Final.RowCount := 2;
    STGR_Comb15_Final.ColWidths [0]:= 49;
    STGR_Comb15_Final.Cells[0,0] := '{8i/7P}';

    PGBR_Etapa_01.Position :=0 ;
    PGBR_Etapa_01.Repaint;
    LA_Total_Comb.Caption := 'GERAR:               ';
    LA_Gerar_Comb.Caption := '#:                   ';
    LA_Total_Comb.Repaint;
    LA_Gerar_Comb.Repaint;
    PA_Gerar.Enabled := false;
    PA_Gerar.Left := 4500;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
        SCBX_dados.HorzScrollBar.Position := 1;
        SCBX_dados.Repaint;

    LA_rTOTAL_Comb.Caption  := INTtoSTR(STGR_Base.RowCount-1);
    //PR_GRAVAR_DADOS ('INICIO',vi_Linhas_01_01, 1, TRUNC(STGR_Base.RowCount-1));
    PGBR_Etapa_01.Position := 0;
    PGBR_Etapa_01.Repaint;
    vi_Combinacoes1 := 1; //197 ;
        vi_Soma1Inicio := 118;
        vi_Soma1Fim := 120;
    vi_Linhas2 := 1  ;
    vi_Linhas08 := 1  ;
    if (CB_Classificacao.ItemIndex = 0) then
    BEGIN
        vi_Soma1Inicio := 119 ;
        vi_Soma1Fim := 119 ;
    END;

    WHILE vi_Combinacoes1 <= (TRUNC((STGR_Base.RowCount-1)/1)) do
    BEGIN
        for  vi_Comb02i_1 := 2 to 09 do
        begin
            for  vi_Comb02i_2 := vi_Comb02i_1 +1  to 10 do
            begin
                for  vi_Comb13i_1 := 2  to 14 do
                begin
                    for  vi_Comb13i_2 := vi_Comb13i_1 +1  to 15 do
                    begin
                        // passo1
                        STGR_Etapa01_02de10.Cells[00,vi_Linhas08] := INTtoSTR( vi_Linhas08 ) ;
                        STGR_Etapa01_02de10.Cells[01,vi_Linhas08] := STGR_Base10.Cells[vi_Comb02i_1,vi_Combinacoes1] ;
                        STGR_Etapa01_02de10.Cells[02,vi_Linhas08] := STGR_Base10.Cells[vi_Comb02i_2,vi_Combinacoes1] ;
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
                        FOR vi_Contar :=1 TO 02 DO
                        BEGIN
                            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa01_02de10.Cells[vi_Contar,vi_Linhas08])) ,2]:='V';
                        END; // FOR vi_Contar1
                        vi_ContaSel1 := 2;
                        FOR vi_Contar :=1 TO 25 DO
                        BEGIN
                            IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,2]='F')  THEN
                            BEGIN
                                STGR_Etapa1_08de10.Cells[vi_ContaSel1, vi_Linhas08] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) ;
                                vi_ContaSel1 := vi_ContaSel1 + 1;
                            END; // IF (STGR_Todos_Numeros
                        END; // FOR vi_Contar

                        STGR_Etapa1_08de10.Cells[00,vi_Linhas08] := INTtoSTR( vi_Linhas08 ) ;
                        STGR_Etapa1_08de10.Cells[01,vi_Linhas08] := '+' + INTtoSTR( vi_Combinacoes1 ) + '' ;
                        STGR_Etapa1_02de15.Cells[00,vi_Linhas08] := INTtoSTR( vi_Linhas08 ) ;
                        STGR_Etapa1_02de15.Cells[01,vi_Linhas08] := '+' + INTtoSTR( vi_Combinacoes1 ) + '' ;
                        STGR_Etapa1_02de15.Cells[02,vi_Linhas08] := STGR_Base.Cells[vi_Comb13i_1,vi_Combinacoes1] ;
                        STGR_Etapa1_02de15.Cells[03,vi_Linhas08] := STGR_Base.Cells[vi_Comb13i_2,vi_Combinacoes1] ;
                       // STGR_Etapa01_13de15.Cells[01,vi_Linhas08] := '+' + INTtoSTR( vi_Combinacoes1 ) + '' ;
                       vi_Soma1Etapa1 := STRtoINT(STGR_Etapa1_02de15.Cells[02,vi_Linhas08] ) +
                                         STRtoINT(STGR_Etapa1_02de15.Cells[03,vi_Linhas08] ) +
                                         STRtoINT(STGR_Etapa1_08de10.Cells[02,vi_Linhas08]) +
                                         STRtoINT(STGR_Etapa1_08de10.Cells[03,vi_Linhas08]) +
                                         STRtoINT(STGR_Etapa1_08de10.Cells[04,vi_Linhas08]) +
                                         STRtoINT(STGR_Etapa1_08de10.Cells[05,vi_Linhas08]) +
                                         STRtoINT(STGR_Etapa1_08de10.Cells[06,vi_Linhas08]) +
                                         STRtoINT(STGR_Etapa1_08de10.Cells[07,vi_Linhas08]) +
                                         STRtoINT(STGR_Etapa1_08de10.Cells[08,vi_Linhas08]) +
                                         STRtoINT(STGR_Etapa1_08de10.Cells[09,vi_Linhas08]);
                        if  (vi_Soma1Etapa1 >= vi_Soma1Inicio ) and (vi_Soma1Etapa1 <= vi_Soma1Fim)
                        then
                        begin
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
                            FOR vi_Contar :=2 TO 03 DO
                            BEGIN
                                STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa1_02de15.Cells[vi_Contar,vi_Linhas08])) ,2]:='V';
                            END; // FOR vi_Contar1
                            vi_ContaSel1 := 2;
                            FOR vi_Contar :=1 TO 25 DO
                            BEGIN
                                IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') and (STGR_Todos_Numeros.Cells[vi_Contar,2]='F')  THEN
                                BEGIN
                                    STGR_Etapa01_13de15.Cells[vi_ContaSel1, vi_Linhas08] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) ;
                                    vi_ContaSel1 := vi_ContaSel1 + 1;
                                END; // IF (STGR_Todos_Numeros
                            END; // FOR vi_Contar
                            STGR_Etapa01_13de15.Cells[00,vi_Linhas08] := INTtoSTR( vi_Linhas08 ) ;
                            STGR_Etapa01_13de15.Cells[01,vi_Linhas08] := '' + INTtoSTR( vi_Soma1Etapa1 ) + '' ;
                            //
                            // --> montado a análise combinatória de 10 em 13

                            vb_Linhas08 := False;                            
                            FOR vi_Comb10i_1 :=2 TO 05 DO
                            BEGIN
                                for  vi_Comb10i_2 := vi_Comb10i_1 +1  to 06 do
                                begin
                                    for  vi_Comb10i_3 := vi_Comb10i_2 +1  to 07 do
                                    begin
                                        for  vi_Comb10i_4 := vi_Comb10i_3 +1  to 08 do
                                        begin
                                            for  vi_Comb10i_5 := vi_Comb10i_4 +1  to 09 do
                                            begin
                                                for  vi_Comb10i_6 := vi_Comb10i_5 +1  to 10 do
                                                begin
                                                    for  vi_Comb10i_7 := vi_Comb10i_6 +1  to 11 do
                                                    begin
                                                        for  vi_Comb10i_8 := vi_Comb10i_7 +1  to 12 do
                                                        begin
                                                            for  vi_Comb10i_9 := vi_Comb10i_8+1  to 13 do
                                                            begin
                                                                for  vi_Comb10i_A := vi_Comb10i_9 +1  to 14 do
                                                                begin
                                                                   vi_Soma2Etapa1 := STRtoINT(STGR_Etapa01_02de10.Cells[01,vi_Linhas08] ) +
                                                                                     STRtoINT(STGR_Etapa01_02de10.Cells[02,vi_Linhas08] ) +
                                                                                     STRtoINT(STGR_Etapa01_13de15.Cells[vi_Comb10i_1,vi_Linhas08] ) +
                                                                                     STRtoINT(STGR_Etapa01_13de15.Cells[vi_Comb10i_2,vi_Linhas08] ) +
                                                                                     STRtoINT(STGR_Etapa01_13de15.Cells[vi_Comb10i_3,vi_Linhas08]) +
                                                                                     STRtoINT(STGR_Etapa01_13de15.Cells[vi_Comb10i_4,vi_Linhas08]) +
                                                                                     STRtoINT(STGR_Etapa01_13de15.Cells[vi_Comb10i_5,vi_Linhas08]) +
                                                                                     STRtoINT(STGR_Etapa01_13de15.Cells[vi_Comb10i_6,vi_Linhas08]) +
                                                                                     STRtoINT(STGR_Etapa01_13de15.Cells[vi_Comb10i_7,vi_Linhas08]) +
                                                                                     STRtoINT(STGR_Etapa01_13de15.Cells[vi_Comb10i_8,vi_Linhas08]) +
                                                                                     STRtoINT(STGR_Etapa01_13de15.Cells[vi_Comb10i_9,vi_Linhas08]) +
                                                                                     STRtoINT(STGR_Etapa01_13de15.Cells[vi_Comb10i_A,vi_Linhas08]);
                                                                    if  (vi_Soma2Etapa1 >= 167 ) and (vi_Soma1Etapa1 <= 167)
                                                                    then
                                                                    begin
                                                                        vb_Linhas08 := True;
                                                                       // break;
                                                                    end; /// if
                                                                end; // for FOR vi_Comb10i_A
                                                            end; // FOR vi_Comb10i_9
                                                        end; // FOR vi_Comb10i_8
                                                    end;  // FOR vi_Comb10i_7
                                                end;   // FOR vi_Comb10i_6
                                            end;  // FOR vi_Comb10i_5
                                        end;   // FOR vi_Comb10i_4
                                    end;  // FOR vi_Comb10i_3
                                end; // FOR vi_Comb10i_2
                            END; // FOR vi_Comb10i_1
                            if vb_Linhas08 then
                            begin
                                vi_Linhas08 := vi_Linhas08 +1  ;
                                vb_Linhas08 := False;
                            end;
                        end; /// if
                    end; //for vi_Comb02i_2
                end; /// if
            end; //for vi_Comb02i_2

            STGR_Etapa1_08de10.RowCount := vi_Linhas08;
            STGR_Etapa01_02de10.RowCount := vi_Linhas08;
            STGR_Etapa01_13de15.RowCount := vi_Linhas08;
        end; //for vi_Comb02i_1
        vi_Combinacoes1 := vi_Combinacoes1 + 1;
        vi_Contar_Comb1 := vi_Contar_Comb1 + 1;
        if (vi_Combinacoes1 mod 15) =1 then
        begin
            STGR_Etapa1_08de10.RowCount := vi_Linhas08;
            STGR_Etapa01_02de10.RowCount := vi_Linhas08;
            STGR_Etapa01_13de15.RowCount := vi_Linhas08;
            STGR_Etapa1_02de15.RowCount := vi_Linhas08;
            PGBR_Etapa_01.Position := TRUNC (vi_Combinacoes1/((STGR_Base.RowCount-1)/1)*100);
            PGBR_Etapa_01.Repaint;
            STGR_Etapa1_08de10.Repaint;
            STGR_Etapa01_02de10.Repaint;
            STGR_Etapa01_13de15.Repaint;
            STGR_Etapa1_02de15.Repaint;
            SELF.WindowState := wsMinimized;
            SELF.WindowState :=  wsNormal;
            SELF.Repaint;            
        end; // if
    END; ///  while

    STGR_Comb15_Final.RowCount := vi_Linhas2;
    STGR_Comb15_Final.Repaint;
    STGR_Etapa01_13de15.Repaint;
    STGR_Etapa1_08de10.Repaint;
    PGBR_Etapa_01.Position := 100;
    PGBR_Etapa_01.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
end;


procedure T_F_Gerador_ResDiv_SmFx6.BBT_Etapa02Click(Sender: TObject);
var
     vi_Combinacoes1, vi_Contar: integer;
     vi_Total_Comb1: integer;
     vi_Linhas2, vi_Linhas08 : integer;
begin
    STGR_Etapa02_15.ColWidths [0]:= 50 ;

    STGR_Etapa02_15.ColWidths [1]:= 37 ;
    STGR_Etapa02_15.RowCount := 2;

    PA_Gerar.Enabled := false;
    PA_Gerar.Left := 4500;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
        SCBX_dados.HorzScrollBar.Position := 625;
        SCBX_dados.Repaint;

    LA_rTOTAL_Comb.Caption  := INTtoSTR(STGR_Base.RowCount-1);
    //PR_GRAVAR_DADOS ('INICIO',vi_Linhas_01_01, 1, TRUNC(STGR_Base.RowCount-1));
    PGBR_Etapa_02.Position := 0;
    PGBR_Etapa_02.Repaint;
    vi_Combinacoes1 := 1;
    vi_Linhas2 := 1  ;
    WHILE vi_Combinacoes1 <= (TRUNC((STGR_Etapa01_13de15.RowCount-1)/1)) do
    BEGIN
        // -->> montando os 15 números
        for vi_Contar := 0 to 14 do
            STGR_Etapa02_15.Cells[vi_Contar,vi_Linhas2] := STGR_Etapa01_13de15.Cells[vi_Contar,vi_Combinacoes1];
        for vi_Contar := 1 to 2 do
            STGR_Etapa02_15.Cells[vi_Contar+14,vi_Linhas2] := STGR_Etapa01_02de10.Cells[vi_Contar,vi_Combinacoes1];
        STGR_Etapa02_15.Cells[1,vi_Linhas2] := STGR_Etapa1_08de10.Cells[1,vi_Combinacoes1];
        // -->> montando os 10 números
        for vi_Contar := 2 to 9 do
            STGR_Etapa02_10.Cells[vi_Contar-1,1] := STGR_Etapa1_08de10.Cells[vi_Contar,vi_Combinacoes1];
        for vi_Contar := 2 to 3 do
            STGR_Etapa02_10.Cells[vi_Contar+7,1] := STGR_Etapa1_02de15.Cells[vi_Contar,vi_Combinacoes1];

        if (FN_VALIDAR_ETAPA_2(vi_Linhas2)) and (FN_VALIDAR_ETAPA_2_parte2(vi_Linhas2)) then
                vi_Linhas2 := vi_Linhas2 +1   ;

        vi_Combinacoes1 := vi_Combinacoes1 + 1;
        IF ((vi_Combinacoes1 mod 2000) =0 ) then
        begin
            //PR_Gravar_Dados_etapa1 ();
            //LimparGrid_Comb15_p5 ();
            PGBR_Etapa_02.Position := TRUNC (vi_Combinacoes1/((STGR_Etapa01_13de15.RowCount-1)/1)*100);
            PGBR_Etapa_02.Repaint;
            STGR_Etapa02_15.RowCount := vi_Linhas2;
            SELF.WindowState := wsMinimized;
            SELF.WindowState :=  wsNormal;
            SELF.Repaint;
            sleep (03); // 7
        end;
    end; // WHILE vi_Combinacoes1
    STGR_Etapa02_15.Cells[0,0] := 'T'+intTOstr(vi_Linhas2-1);
    PGBR_Etapa_02.Position := 100;
    PGBR_Etapa_02.Repaint;
    STGR_Etapa02_15.RowCount := vi_Linhas2;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
end;



procedure T_F_Gerador_ResDiv_SmFx6.BBT_Etapa03Click(Sender: TObject);
var
     vi_Combinacoes1, vi_Contar: integer;
     vi_Total_Comb1: integer;
     vi_Linhas2, vi_Linhas08 : integer;
begin
    STGR_Etapa02_15.ColWidths[01] := 47;
    STGR_Etapa02_15.ColWidths[21] := 37;
    STGR_Etapa02_15.ColWidths[23] := 47;    
    PA_Gerar.Enabled := false;
    PA_Gerar.Left := 4500;    
    PGBR_Etapa_03.Position := 0;
    vi_Combinacoes1 := 1 ;
    vi_Linhas2 := 1;
    WHILE vi_Combinacoes1 <= (TRUNC((STGR_Etapa02_15.RowCount-1)/1)) do
    BEGIN
        if (FN_VALIDAR_ETAPA_3_parte1(vi_Combinacoes1)) then
               STGR_Etapa02_15.Cells[19,vi_Combinacoes1] := 'V'
        ELSE
               STGR_Etapa02_15.Cells[19,vi_Combinacoes1] := 'F';

        if (FN_VALIDAR_ETAPA_3_parte2(vi_Combinacoes1)) then
               STGR_Etapa02_15.Cells[20,vi_Combinacoes1] := 'V'
        ELSE
               STGR_Etapa02_15.Cells[20,vi_Combinacoes1] := 'F';

        if (STGR_Etapa02_15.Cells[19,vi_Combinacoes1] = 'V')  and (STGR_Etapa02_15.Cells[20,vi_Combinacoes1] = 'V') then
        begin
               STGR_Etapa02_15.Cells[21,vi_Combinacoes1] := 'True';
               vi_Linhas2 := vi_Linhas2 + 1  ;
        end else
        begin
               STGR_Etapa02_15.Cells[21,vi_Combinacoes1] := 'False';
        end; /// if
        // pré-setagem como todas as linhas falsas para se modificada na próxima etapa.
        STGR_Etapa02_15.Cells[22,vi_Combinacoes1] := 'f';

        vi_Combinacoes1 := vi_Combinacoes1 + 1;
        IF ((vi_Combinacoes1 mod 1500) =0 ) then
        begin
            //PR_Gravar_Dados_etapa1 ();
            //LimparGrid_Comb15_p5 ();
            PGBR_Etapa_03.Position := TRUNC (vi_Combinacoes1/((STGR_Etapa01_13de15.RowCount-1)/1)*100);
            PGBR_Etapa_03.Repaint;
            SELF.WindowState := wsMinimized;
            SELF.WindowState :=  wsNormal;
            SELF.Repaint;
            sleep (02); // 7
        end;
    end; // WHILE vi_Combinacoes1
    STGR_Etapa02_15.Cells[0,0] := 'T'+intTOstr(vi_Linhas2-1);
    PGBR_Etapa_03.Position := 100;
    PGBR_Etapa_03.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
end;


procedure T_F_Gerador_ResDiv_SmFx6.BBT_Etapa04Click(Sender: TObject);

   PROCEDURE PR_Gravar_Dados_etapa4 ();
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
          vi_ContarStgGrid := TRUNC((STGR_Etapa02_15.RowCount-1)/1);
       FOR VI_AN_Comb1:= 1 TO vi_ContarStgGrid DO
       BEGIN
           if not (STGR_Etapa02_15.Cells[22,VI_AN_Comb1] = 'V')  then
                continue;
           vc_Combinacoes15 :='';
           FOR vi_ContarCelulas := 1 TO 25 DO
           BEGIN
                STGR_Todos_Numeros.Cells [vi_ContarCelulas ,1]:='F';
           end;
           FOR vi_ContarCelulas := 2 TO 16 DO
           BEGIN
               vc_Combinacoes15 := vc_Combinacoes15 + TRIM(STGR_Etapa02_15.Cells[vi_ContarCelulas,VI_AN_Comb1]) +' ';
               STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa02_15.Cells[vi_ContarCelulas,VI_AN_Comb1])) ,1]:='V';
               vc_Contador_da_Tabela :=  STGR_Etapa02_15.Cells[1,VI_AN_Comb1] ;
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
          vc_Nome_Tabela := ' GERADOR_RESULT_DIV_SMFX6_Final';
           vc_QUERY  := 'INSERT INTO ' +vc_Nome_Tabela+ ' (DADOS, DADOS_NS, TIPO) VALUES('
                 +#39+  TRIM(vc_Combinacoes15)  + #39 +','
                 +#39+  TRIM(vc_Combinacoes10)  + #39 +','
                 +#39+  TRIM(STGR_Etapa02_15.Cells[23,VI_AN_Comb1])
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
            STGR_Todos_Numeros.Cells [ (STRtoINT(STGR_Etapa02_15.Cells[vi_Contar,VI_LINHAS9])) ,1]:='V';
        END; // FOR vi_Contar1
        vi_CntCelulas := 2;
        FOR vi_Contar :=1 TO 25 DO
        BEGIN
            IF (STGR_Todos_Numeros.Cells[vi_Contar,1]='V') THEN
            BEGIN
                STGR_Etapa02_15.Cells[vi_CntCelulas, VI_LINHAS9] := RIGHTSTR ('0'+(STGR_Todos_Numeros.Cells[vi_Contar,0]),2) ;
                vi_CntCelulas := vi_CntCelulas + 1;
            END; // IF (STGR_Todos_Numeros
        END; // FOR vi_Contar
    end; // PROCEDURE PR_Ordenar_Simulacao_15_8i7p


var
     vi_Combinacoes1, vi_Contar, vi_ContarQtdPares, vi_ContaSel1 : integer;
     vi_Total_Comb1: integer;
     vi_Linhas2 : integer;
begin
        SCBX_dados.HorzScrollBar.Position := 715;
        SCBX_dados.Repaint;    PGBR_Etapa_04.Position := 0;
    PA_Gerar.Enabled := false;
    PA_Gerar.Left := 4500;
    vi_Combinacoes1 := 1 ;
    vi_Linhas2 := 1;
    WHILE vi_Combinacoes1 <= (TRUNC((STGR_Etapa02_15.RowCount-1)/1)) do
    BEGIN
        if (STGR_Etapa02_15.Cells[21,vi_Combinacoes1] = 'True') then
        begin
            if (FN_VALIDAR_ETAPA_4_parte1(vi_Combinacoes1))  then
                   STGR_Etapa02_15.Cells[22,vi_Combinacoes1] := 'V'
            ELSE
                   STGR_Etapa02_15.Cells[22,vi_Combinacoes1] := 'F';

            if (STGR_Etapa02_15.Cells[22,vi_Combinacoes1] = 'V')  then
            begin
                vi_ContarQtdPares := 0 ;
                for  vi_ContaSel1 := 2  to 16  do
                begin
                    if (strTOint(STGR_Etapa02_15.Cells[vi_ContaSel1, vi_Combinacoes1]) MOD 2) = 0  THEN
                        vi_ContarQtdPares := vi_ContarQtdPares +1 ;
                end; // for
                case vi_ContarQtdPares of
                  4:  STGR_Etapa02_15.Cells[23, vi_Combinacoes1] := '11i/4p' ;
                  5:  STGR_Etapa02_15.Cells[23, vi_Combinacoes1] := '10i/5p' ;
                  6:  STGR_Etapa02_15.Cells[23, vi_Combinacoes1] := '9i/6p' ;
                  7:  STGR_Etapa02_15.Cells[23, vi_Combinacoes1] := '8i/7p' ;
                  8:  STGR_Etapa02_15.Cells[23, vi_Combinacoes1] := '7i/8p' ;
                  9:  STGR_Etapa02_15.Cells[23, vi_Combinacoes1] := '6i/9p' ;
                  10:  STGR_Etapa02_15.Cells[23, vi_Combinacoes1] := '5i/10p' ;
                  else
                      STGR_Comb15_final.Cells[23, vi_Combinacoes1] := intTOstr(vi_ContarQtdPares)+ ' pares' ;
                end; //// case
                PR_Ordenar_Comb15 (vi_Combinacoes1);
                vi_Linhas2 := vi_Linhas2 + 1  ;
            end;
        end; /// if

        vi_Combinacoes1 := vi_Combinacoes1 + 1;
        IF ((vi_Combinacoes1 mod 2500) =0 ) then
        begin
            //PR_Gravar_Dados_etapa1 ();
            //LimparGrid_Comb15_p5 ();
            PGBR_Etapa_04.Position := TRUNC (vi_Combinacoes1/((STGR_Etapa01_13de15.RowCount-1)/1)*100);
            PGBR_Etapa_04.Repaint;
            SELF.WindowState := wsMinimized;
            SELF.WindowState :=  wsNormal;
            SELF.Repaint;
            sleep (03); // 7
        end;
    end; // WHILE vi_Combinacoes1
    STGR_Etapa02_15.Cells[0,0] := 'T'+intTOstr(vi_Linhas2-1);
    PGBR_Etapa_04.Position := 100;
    PGBR_Etapa_04.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    PR_Gravar_Dados_etapa4 ();
        SELF.IBQ_Combinacoes.SQL.Clear;
        SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
        SELF.IBQ_Combinacoes.ExecSQL;    

    LA_gFIM_GERAR.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
    // ==> ACERTANDO O PAINEL DE ENCERRAMENTO
    BBT_RECOMECAR.Enabled := false;
    BBT_PrepararMenu.Enabled := false;
    LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
    PA_RemoveuRepetidos.Left := 1000;

        SELF.IBQ_Combinacoes.SQL.Clear;
        SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIV_SmFx6_DEF SET HORA_TERMINO ='''+FORMATDATETIME('h:n:s',time())+''', QTD_DADOS= ''' +INTtoSTR(vi_Contar)+ ''';')  ;
        SELF.IBQ_Combinacoes.ExecSQL;
        SELF.IBQ_Combinacoes.SQL.Clear;
        SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
        SELF.IBQ_Combinacoes.ExecSQL;
        try
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIV_SmFx6_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'' ;')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
            SELF.IBQ_Combinacoes.SQL.Clear;
            IF CB_ConjuntoJogos.ItemIndex = 0 then
                SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIV_SmFx6_DEF SET CJUNTO_JOGOS= ''Cjunto de 235 combinações'' ;')
            else
                SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIV_SmFx6_DEF SET CJUNTO_JOGOS= ''Cjunto de 162 combinações'' ;')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
            SELF.IBQ_Combinacoes.SQL.Clear;
                SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIV_SmFx6_DEF SET ETAPA_01= ''' +CB_Classificacao.Text+ ''', ETAPA_02= ''' +CB_Funil_05de15.Text+ ' / ' +CB_Funil_05de10.Text+ ''', ETAPA_03= ''' + 'Soma 12 de 15='+CB_Etapa3_01.Text+ ' / Soma 07 de 10=' +CB_Etapa3_02.Text+ ''' ;') ;
            SELF.IBQ_Combinacoes.ExecSQL;
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
        except
            //
        end; // try
end;




procedure T_F_Gerador_ResDiv_SmFx6.BBT_RemoveuRepetidosClick(Sender: TObject);
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




procedure T_F_Gerador_ResDiv_SmFx6.BTN_ReajustarClick(Sender: TObject);
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



procedure T_F_Gerador_ResDiv_SmFx6.BBT_CARREGARClick(Sender: TObject);
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
     PGBR_Etapa_04.Position := 100;
     LA_Total_Comb.Visible := false;
     LA_Gerar_Comb.Visible := false;
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIV_SmFx6_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
            SELF.IBQ_Combinacoes.SQL.Clear;
            SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
            SELF.IBQ_Combinacoes.ExecSQL;
end;



procedure T_F_Gerador_ResDiv_SmFx6.BBT_Gerar_SairClick(Sender: TObject);
begin
     PA_Gerar.Enabled := false;
     PA_Gerar.Left := 4500;    ;
     PA_Gerar.Repaint;
end;



procedure T_F_Gerador_ResDiv_SmFx6.BBT_BlocoNotasClick(Sender: TObject);
var
    vi_Contar, vc_qtd_pares : INTEGER;
    vc_Nome_Tabela, vc_Combinacoes2, vcTitulo : string;
begin
     for vc_qtd_pares := 8 to 8 do
     begin
                vc_Nome_Tabela := 'GERADOR_RESULT_DIV_SmFx6_FINAL';
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
          vcTitulo := 'GERADOR Resultados Diversos a Partir das Somas Fixas 6';
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
    winExec('Notepad.exe C:\CXLOTOFACIL\GERADOR_RESULT_DIV_SmFx6_FINAL.TXT', sw_shownormal);
   SHOWMESSAGE('BLOCO DE NOTAS GERADO');
end;



procedure T_F_Gerador_ResDiv_SmFx6.btn_CarregarClick(Sender: TObject);
begin
     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_DIV_SmFx6_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
     SELF.IBQ_Combinacoes.ExecSQL;
     SELF.IBQ_Combinacoes.SQL.Clear;
     SELF.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
     SELF.IBQ_Combinacoes.ExecSQL;
     SHOWMESSAGE('OK');
     SELF.Close;
end;







procedure T_F_Gerador_ResDiv_SmFx6.BitBtn1Click(Sender: TObject);
begin
    PGBR_Etapa_01.Position :=0 ;
    PGBR_Etapa_02.Position :=0 ;
    PGBR_Etapa_03.Position :=0 ;
    PGBR_Etapa_04.Position :=0 ;
    BBT_Etapa01.Click;
    BBT_Etapa02.Click;
    BBT_Etapa03.Click;
    BBT_Etapa04.Click;
end;






end.
