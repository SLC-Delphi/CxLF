unit Simulacao01_Filtro_02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, STRUTILS,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DB, IBX.IBDatabase,
  IBX.IBCustomDataSet, IBX.IBQuery, ComCtrls;

type
  T_F_SIM_01_FILTRO_02 = class(TForm)
    PA_PAN02: TPanel;
    Label13: TLabel;
    LA_TXT1: TLabel;
    LA_TXT2: TLabel;
    LA_TXT3: TLabel;
    Bevel3: TBevel;
    BBT_M02_SIMULAR_A: TBitBtn;
    BBT_M02_SIMULAR_J: TBitBtn;
    BBT_M02_SIMULAR_F: TBitBtn;
    BBT_PAN02_GERAR: TButton;
    STGR_COMBINACOES_15M2: TStringGrid;
    BBT_M02_ENCERRAR: TButton;
    BBT_M02_SIMULAR_A_: TBitBtn;
    BBT_M02_SIMULAR_J_: TBitBtn;
    BBT_M02_SIMULAR_F_: TBitBtn;
    BitBtn1: TBitBtn;
    BBT_M02_SIMULAR_B_: TBitBtn;
    BBT_M02_SIMULAR_C_: TBitBtn;
    BBT_M02_SIMULAR_B: TBitBtn;
    BBT_M02_SIMULAR_C: TBitBtn;
    BBT_M02_SIMULAR_D: TBitBtn;
    BBT_M02_SIMULAR_E: TBitBtn;
    BBT_M02_SIMULAR_G: TBitBtn;
    BitBtn5: TBitBtn;
    BBT_M02_SIMULAR_H_: TBitBtn;
    Panel1: TPanel;
    Label53: TLabel;
    BBT_CLOSE: TImage;
    BBT_CLICK_TUDO: TButton;
    BBT_215: TBitBtn;
    BBT_214: TBitBtn;
    BBT_213: TBitBtn;
    BBT_212: TBitBtn;
    BBT_211: TBitBtn;
    BBT_210: TBitBtn;
    BBT_209: TBitBtn;
    BBT_208: TBitBtn;
    BBT_207: TBitBtn;
    BBT_206: TBitBtn;
    BBT_205: TBitBtn;
    BBT_204: TBitBtn;
    BBT_203: TBitBtn;
    BBT_202: TBitBtn;
    BBT_201: TBitBtn;
    BBT_216: TBitBtn;
    BBT_217: TBitBtn;
    BBT_218: TBitBtn;
    BBT_219: TBitBtn;
    BBT_220: TBitBtn;
    BBT_225: TBitBtn;
    BBT_224: TBitBtn;
    BBT_223: TBitBtn;
    BBT_222: TBitBtn;
    BBT_221: TBitBtn;
    STGR_COMBINACOES_15: TStringGrid;
    IBQ_COMBINACOES: TIBQuery;
    IBTransaction1: TIBTransaction;
    IBDatabase1: TIBDatabase;
    PA_LER_GRAVAR_PERCENTUAL: TPanel;
    LA_LER_GRAVAR_PERCENTUAL_TEXTO1: TLabel;
    PGBR_LER_GRAVAR_PERCENTUAL: TProgressBar;
    Panel22: TPanel;
    LA_LER_GRAVAR_PERCENTUAL_TITULO: TLabel;
    STGR_M02_SERIE1_INICIAL: TStringGrid;
    STGR_M02_SERIE2_INICIAL: TStringGrid;
    SCBX_GABARITO: TScrollBox;
    STGR_M02_SERIE1_09: TStringGrid;
    STGR_M02_SERIE2_06: TStringGrid;
    Label1: TLabel;
    STGR_M02_SERIE1_07: TStringGrid;
    STGR_M02_SERIE2_08: TStringGrid;
    Label2: TLabel;
    STGR_M02_SERIE1_11: TStringGrid;
    STGR_M02_SERIE2_04: TStringGrid;
    STGR_M02_SERIE1_08: TStringGrid;
    STGR_M02_SERIE2_07: TStringGrid;
    Label3: TLabel;
    STGR_M02_SERIE1_10: TStringGrid;
    STGR_M02_SERIE2_05: TStringGrid;
    Label4: TLabel;
    Label5: TLabel;
    BBT_PAN02_ZERAR: TBitBtn;
    BT_CARREGAR: TButton;
    procedure BBT_M02_SIMULAR_AClick(Sender: TObject);
    procedure BBT_M02_SIMULAR_DClick(Sender: TObject);
    procedure BBT_M02_SIMULAR_BClick(Sender: TObject);
    procedure BBT_M02_SIMULAR_EClick(Sender: TObject);
    procedure BBT_M02_SIMULAR_CClick(Sender: TObject);
    procedure BBT_M02_SIMULAR_FClick(Sender: TObject);
    procedure BBT_M02_SIMULAR_GClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BBT_M02_SIMULAR_JClick(Sender: TObject);
    procedure BBT_M02_SIMULAR_A_Click(Sender: TObject);
    procedure BBT_M02_SIMULAR_B_Click(Sender: TObject);
    procedure BBT_M02_SIMULAR_C_Click(Sender: TObject);
    procedure BBT_M02_SIMULAR_H_Click(Sender: TObject);
    procedure BBT_M02_SIMULAR_J_Click(Sender: TObject);
    procedure BBT_PAN02_ZERARClick(Sender: TObject);
    procedure BBT_PAN02_GERARClick(Sender: TObject);
    procedure BBT_M02_ENCERRARClick(Sender: TObject);
    procedure BBT_M02_SIMULAR_F_Click(Sender: TObject);
    procedure BBT_201Click(Sender: TObject);
    procedure BBT_202Click(Sender: TObject);
    procedure BBT_203Click(Sender: TObject);
    procedure BBT_204Click(Sender: TObject);
    procedure BBT_205Click(Sender: TObject);
    procedure BBT_206Click(Sender: TObject);
    procedure BBT_207Click(Sender: TObject);
    procedure BBT_208Click(Sender: TObject);
    procedure BBT_209Click(Sender: TObject);
    procedure BBT_210Click(Sender: TObject);
    procedure BBT_211Click(Sender: TObject);
    procedure BBT_212Click(Sender: TObject);
    procedure BBT_213Click(Sender: TObject);
    procedure BBT_214Click(Sender: TObject);
    procedure BBT_215Click(Sender: TObject);
    procedure BBT_216Click(Sender: TObject);
    procedure BBT_217Click(Sender: TObject);
    procedure BBT_218Click(Sender: TObject);
    procedure BBT_219Click(Sender: TObject);
    procedure BBT_220Click(Sender: TObject);
    procedure BBT_221Click(Sender: TObject);
    procedure BBT_222Click(Sender: TObject);
    procedure BBT_223Click(Sender: TObject);
    procedure BBT_224Click(Sender: TObject);
    procedure BBT_225Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BT_CARREGARClick(Sender: TObject);
  private
    { Private declarations }
     PROCEDURE PR_GRAVAR_RESULTADO_DOS_15_DADOS (VC_FLAG_MENSAGEM : STRING);
     PROCEDURE PR_BOTOES_MODELO2 (VI_NUMERO: INTEGER);     
  public
    { Public declarations }
  end;

var
  _F_SIM_01_FILTRO_02: T_F_SIM_01_FILTRO_02;

implementation

{$R *.dfm}

procedure T_F_SIM_01_FILTRO_02.BBT_M02_SIMULAR_AClick(Sender: TObject);
var
    VI_CONTAR1,VI_CONTAR_QUANTIDADE, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;
begin
    STGR_COMBINACOES_15M2.RowCount :=1;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15M2.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15M2.Repaint;
    BBT_M02_SIMULAR_A_.Click;
    showmessage('PROCESSAMENTO EFETUADO');
end;


procedure T_F_SIM_01_FILTRO_02.BBT_M02_SIMULAR_DClick(Sender: TObject);
var
    VI_CONTAR1,VI_CONTAR_QUANTIDADE, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;
begin
    STGR_COMBINACOES_15M2.RowCount :=1;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15M2.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15M2.Repaint;
    BBT_M02_SIMULAR_A_.Click;
    BBT_M02_SIMULAR_B_.Click;
    showmessage('PROCESSAMENTO EFETUADO');
end;


procedure T_F_SIM_01_FILTRO_02.BBT_M02_SIMULAR_BClick(Sender: TObject);
var
    VI_CONTAR1,VI_CONTAR_QUANTIDADE, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;
begin
    STGR_COMBINACOES_15M2.RowCount :=1;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15M2.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15M2.Repaint;
    BBT_M02_SIMULAR_B_.Click;
    showmessage('PROCESSAMENTO EFETUADO');
end;


procedure T_F_SIM_01_FILTRO_02.BBT_M02_SIMULAR_EClick(Sender: TObject);
var
    VI_CONTAR1,VI_CONTAR_QUANTIDADE, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;
begin
    STGR_COMBINACOES_15M2.RowCount :=1;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15M2.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15M2.Repaint;
    BBT_M02_SIMULAR_A_.Click;
    BBT_M02_SIMULAR_C_.Click;
    showmessage('PROCESSAMENTO EFETUADO');
end;


procedure T_F_SIM_01_FILTRO_02.BBT_M02_SIMULAR_CClick(Sender: TObject);
var
    VI_CONTAR1,VI_CONTAR_QUANTIDADE, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;
begin
    STGR_COMBINACOES_15M2.RowCount :=1;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15M2.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15M2.Repaint;
    BBT_M02_SIMULAR_C_.Click;
    showmessage('PROCESSAMENTO EFETUADO');
end;


procedure T_F_SIM_01_FILTRO_02.BBT_M02_SIMULAR_FClick(Sender: TObject);
var
    VI_CONTAR1,VI_CONTAR_QUANTIDADE, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;
begin
    STGR_COMBINACOES_15M2.RowCount :=1;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15M2.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15M2.Repaint;
    self.Repaint;
    BBT_M02_SIMULAR_B_.Click;
    BBT_M02_SIMULAR_C_.Click;
    showmessage('PROCESSAMENTO EFETUADO');
end;


procedure T_F_SIM_01_FILTRO_02.BBT_M02_SIMULAR_GClick(Sender: TObject);
var
    VI_CONTAR1,VI_CONTAR_QUANTIDADE, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;
begin
    STGR_COMBINACOES_15M2.RowCount :=1;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15M2.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15M2.Repaint;
    BBT_M02_SIMULAR_A_.Click;
    BBT_M02_SIMULAR_B_.Click;
    BBT_M02_SIMULAR_C_.Click;
    showmessage('PROCESSAMENTO EFETUADO');
end;


procedure T_F_SIM_01_FILTRO_02.BitBtn5Click(Sender: TObject);
var
    VI_CONTAR1,VI_CONTAR_QUANTIDADE, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;
begin
    STGR_COMBINACOES_15M2.RowCount :=1;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15M2.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15M2.Repaint;
    BBT_M02_SIMULAR_A_.Click;
    BBT_M02_SIMULAR_B_.Click;
    BBT_M02_SIMULAR_C_.Click;
    showmessage('PROCESSAMENTO EFETUADO');
end;



procedure T_F_SIM_01_FILTRO_02.BitBtn1Click(Sender: TObject);
var
    VI_CONTAR1 : INTEGER;
begin
    STGR_COMBINACOES_15M2.RowCount :=1;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15M2.Cells[VI_CONTAR1,0] := '0';
    BBT_M02_SIMULAR_A_.Click;
    BBT_M02_SIMULAR_F_.Click;
    BBT_M02_SIMULAR_J_.Click;
    showmessage('PROCESSAMENTO EFETUADO');
end;


procedure T_F_SIM_01_FILTRO_02.BBT_M02_SIMULAR_F_Click(Sender: TObject);
var
    VI_CONTAR_ORIGEM, VI_CONTAR1, VI_CONTAR2, VI_CONTAR_CELULAS_ORIGEM_A, VI_CONTAR_CELULAS_ORIGEM_B, VI_CONTAR_CELULAS_DESTINO,
    VI_CONTAR_QUANTIDADE, VI_CONTAR15, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VI_QTD1, VI_QTD2 : INTEGER;
    VC_COMBINACOES : STRING;
begin
    // ================================================
    // ||||========================================||||
    // |||| 	PRIMEIRA- ANÁLISES COMBINATÓRIAS   ||||
    // ||||========================================||||
    // ================================================
        // *********************************************
    	// ** Série 1 c/ 8 e Série 2 c/ 7 combinações **
	    // *********************************************
    LA_TXT2.Caption := '       ' +#13+ '       ' +#13+ '       ';
    LA_TXT3.Caption := '       ' +#13+ '       ' +#13+ '       ';
    LA_TXT2.Repaint;
    LA_TXT3.Repaint;
    VI_QTD1 := 0;
    VI_QTD2 := 0;
    if (STGR_COMBINACOES_15M2.RowCount)= 0 then VI_LINHAS := 0 else VI_LINHAS := STGR_COMBINACOES_15M2.RowCount;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M02_SERIE1_08.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO CÉLULA POR CÉLULA NA PRIMEIRA SÉRIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 8 DO
                BEGIN
                    IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM])
                    = STRtoINT(STGR_M02_SERIE1_08.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1]) ) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINAÇÕES SEJA VERDADEIRAS, VERIFICIAR NA PRÓXIMA SÉRIE
            IF (VI_CONTAR_QUANTIDADE = 8 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M02_SERIE2_07.RowCount-1) DO
                    BEGIN
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 7 DO
                            BEGIN
                                IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                = STRtoINT(STGR_M02_SERIE2_07.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2]) ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 7 ) THEN
                        BEGIN
                            // LA_TXT1.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR1);
                            // LA_TXT1.Repaint;
                            VI_CONTAR_QUANTIDADE := 0;
                            STGR_COMBINACOES_15M2.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                            FOR VI_CONTAR15:=1 TO 15 DO
                            BEGIN
                                STGR_COMBINACOES_15M2.Cells [VI_CONTAR15,VI_LINHAS] := STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM];
                            END ;// FOR VI_CONTAR15
                            VI_LINHAS := VI_LINHAS + 1;
                            STGR_COMBINACOES_15M2.RowCount := VI_LINHAS;
                            STGR_COMBINACOES_15M2.Repaint;
                        END; // IF (VI_CONTAR_QUANTIDADE = 6 )
                        // --> SENDO AS COMBINAÇÕES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE = 9)
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M2.Repaint;
        VI_QTD1 := VI_LINHAS;
        LA_TXT2.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' %';
        LA_TXT2.Caption := LA_TXT2.Caption +#13 + INTtoSTR (VI_CONTAR_ORIGEM) ;
        LA_TXT2.Caption := LA_TXT2.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        LA_TXT2.Repaint;
        if (VI_CONTAR_ORIGEM / 250)=(VI_CONTAR_ORIGEM DIV 250) then
        BEGIN
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              SELF.Repaint;
              SLEEP(5);
              Self.Refresh;
              Self.Repaint;
              Self.Refresh;
        END;
    END;  // FOR VI_CONTAR_ORIGEM:= 0

        // *********************************************
    	// ** Série 1 c/ 10 e Série 2 c/ 5 combinações **
	    // *********************************************
//    VI_LINHAS := 0;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M02_SERIE1_10.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO CÉLULA POR CÉLULA NA PRIMEIRA SÉRIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM])
                    = STRtoINT(STGR_M02_SERIE1_10.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1]) ) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINAÇÕES SEJA VERDADEIRAS, VERIFICIAR NA PRÓXIMA SÉRIE
            IF (VI_CONTAR_QUANTIDADE = 10 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M02_SERIE2_05.RowCount-1) DO
                    BEGIN
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 5 DO
                            BEGIN
                                IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                = STRtoINT(STGR_M02_SERIE2_05.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2]) ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 5 ) THEN
                        BEGIN
                            // LA_TXT1.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR1);
                            // LA_TXT1.Repaint;
                            VI_CONTAR_QUANTIDADE := 0;
                            STGR_COMBINACOES_15M2.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                            FOR VI_CONTAR15:=1 TO 15 DO
                            BEGIN
                                STGR_COMBINACOES_15M2.Cells [VI_CONTAR15,VI_LINHAS] := STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM];
                            END ;// FOR VI_CONTAR15
                            VI_LINHAS := VI_LINHAS + 1;
                            STGR_COMBINACOES_15M2.RowCount := VI_LINHAS;
                            STGR_COMBINACOES_15M2.Repaint;
                        END; // IF (VI_CONTAR_QUANTIDADE = 6 )
                        // --> SENDO AS COMBINAÇÕES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M2.Repaint;
        VI_QTD2 := VI_LINHAS;
        LA_TXT3.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' %';
        LA_TXT3.Caption := LA_TXT3.Caption +#13 + INTtoSTR (VI_CONTAR_ORIGEM) ;
        LA_TXT3.Caption := LA_TXT3.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        LA_TXT3.Repaint;
        if (VI_CONTAR_ORIGEM / 250)=(VI_CONTAR_ORIGEM DIV 250) then
        BEGIN
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              SELF.Repaint;
              SLEEP(5);
              Self.Refresh;
              Self.Repaint;
              Self.Refresh;
        END;
    END;  // FOR VI_CONTAR_ORIGEM:= 0

    SHOWMESSAGE('2 - C');
end;



procedure T_F_SIM_01_FILTRO_02.BBT_M02_SIMULAR_JClick(Sender: TObject);
var
    VI_CONTAR1,VI_CONTAR_QUANTIDADE, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;
begin
    STGR_COMBINACOES_15M2.RowCount :=1;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15M2.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15M2.Repaint;
    BBT_M02_SIMULAR_B_.Click;
    showmessage('PROCESSAMENTO EFETUADO');
end;



procedure T_F_SIM_01_FILTRO_02.BBT_M02_SIMULAR_A_Click(Sender: TObject);
var
    VI_CONTAR_ORIGEM, VI_CONTAR1, VI_CONTAR2, VI_CONTAR_CELULAS_ORIGEM_A, VI_CONTAR_CELULAS_ORIGEM_B, VI_CONTAR_CELULAS_DESTINO,
    VI_CONTAR_QUANTIDADE, VI_CONTAR15, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;
begin
        // *********************************************
    	// ** Série 1 c/ 9 e Série 2 c/ 6 combinações **
	    // *********************************************
    LA_TXT1.Caption := ' 9 X 6               ';
    LA_TXT2.Caption := '       ' +#13+ '       ' +#13+ '       ';
    LA_TXT3.Caption := '       ' +#13+ '       ' +#13+ '       ';
    LA_TXT1.Repaint;
    LA_TXT2.Repaint;
    LA_TXT3.Repaint;
    if (STGR_COMBINACOES_15M2.RowCount)= 1 then VI_LINHAS := 0 else VI_LINHAS := STGR_COMBINACOES_15M2.RowCount;
    FOR VI_CONTAR_ORIGEM:= 1 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M02_SERIE1_09.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO CÉLULA POR CÉLULA NA PRIMEIRA SÉRIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 9 DO
                BEGIN
                    IF (strTOint(STGR_COMBINACOES_15.Cells[VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM])
                    = strTOint(STGR_M02_SERIE1_09.Cells[VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1]) ) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINAÇÕES SEJA VERDADEIRAS, VERIFICIAR NA PRÓXIMA SÉRIE
            IF (VI_CONTAR_QUANTIDADE = 9 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M02_SERIE2_06.RowCount-1) DO
                    BEGIN
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 6 DO
                            BEGIN
                                IF (strTOint(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                = strTOint(STGR_M02_SERIE2_06.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2]) ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 6 ) THEN
                        BEGIN
                            // LA_TXT1.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR1);
                            // LA_TXT1.Repaint;
                            VI_CONTAR_QUANTIDADE := 0;
                            STGR_COMBINACOES_15M2.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                            FOR VI_CONTAR15:=1 TO 15 DO
                            BEGIN
                                STGR_COMBINACOES_15M2.Cells [VI_CONTAR15,VI_LINHAS] := STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM];
                            END ;// FOR VI_CONTAR15
                            VI_LINHAS := VI_LINHAS + 1;
                            STGR_COMBINACOES_15M2.RowCount := VI_LINHAS;
                            STGR_COMBINACOES_15M2.Repaint;
                        END; // IF (VI_CONTAR_QUANTIDADE = 6 )
                        // --> SENDO AS COMBINAÇÕES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE = 9)
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M2.Repaint;
        LA_TXT3.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' %';
        LA_TXT3.Caption := LA_TXT3.Caption +#13 + INTtoSTR (VI_CONTAR_ORIGEM) ;
        LA_TXT3.Caption := LA_TXT3.Caption +#13 + INTtoSTR (VI_LINHAS) ;
         LA_TXT1.Repaint;    
         LA_TXT2.Repaint;
         LA_TXT3.Repaint;
        if (VI_CONTAR_ORIGEM / 250)=(VI_CONTAR_ORIGEM DIV 250) then
        BEGIN
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              SELF.Repaint;
              SLEEP(5);
              Self.Refresh;
              Self.Repaint;
              Self.Refresh;
        END;
    END;  // FOR VI_CONTAR_ORIGEM:= 0
end;


procedure T_F_SIM_01_FILTRO_02.BBT_M02_SIMULAR_B_Click(Sender: TObject);
var
    VI_CONTAR_ORIGEM, VI_CONTAR1, VI_CONTAR2, VI_CONTAR_CELULAS_ORIGEM_A, VI_CONTAR_CELULAS_ORIGEM_B, VI_CONTAR_CELULAS_DESTINO,
    VI_CONTAR_QUANTIDADE, VI_CONTAR15, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VI_QTD1, VI_QTD2 : INTEGER;
    VC_COMBINACOES : STRING;
begin
    // ================================================
    // ||||========================================||||
    // |||| 	PRIMEIRA- ANÁLISES COMBINATÓRIAS   ||||
    // ||||========================================||||
    // ================================================
        // *********************************************
    	// ** Série 1 c/ 8 e Série 2 c/ 7 combinações **
	    // *********************************************
    LA_TXT1.Caption := ' 8 X 7               ';        
    LA_TXT2.Caption := '       ' +#13+ '       ' +#13+ '       ';
    LA_TXT3.Caption := '       ' +#13+ '       ' +#13+ '       ';
    LA_TXT1.Repaint;    
    LA_TXT2.Repaint;
    LA_TXT3.Repaint;
    VI_QTD1 := 0;
    VI_QTD2 := 0;
    if (STGR_COMBINACOES_15M2.RowCount)= 1 then VI_LINHAS := 0 else VI_LINHAS := STGR_COMBINACOES_15M2.RowCount;
    FOR VI_CONTAR_ORIGEM:= 1 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M02_SERIE1_08.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO CÉLULA POR CÉLULA NA PRIMEIRA SÉRIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 8 DO
                BEGIN
                    IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM])
                    = STRtoINT(STGR_M02_SERIE1_08.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1]) ) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINAÇÕES SEJA VERDADEIRAS, VERIFICIAR NA PRÓXIMA SÉRIE
            IF (VI_CONTAR_QUANTIDADE = 8 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M02_SERIE2_07.RowCount-1) DO
                    BEGIN
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 7 DO
                            BEGIN
                                IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                = STRtoINT(STGR_M02_SERIE2_07.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2]) ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 7 ) THEN
                        BEGIN
                            // LA_TXT1.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR1);
                            // LA_TXT1.Repaint;
                            VI_CONTAR_QUANTIDADE := 0;
                            STGR_COMBINACOES_15M2.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                            FOR VI_CONTAR15:=1 TO 15 DO
                            BEGIN
                                STGR_COMBINACOES_15M2.Cells [VI_CONTAR15,VI_LINHAS] := STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM];
                            END ;// FOR VI_CONTAR15
                            VI_LINHAS := VI_LINHAS + 1;
                            STGR_COMBINACOES_15M2.RowCount := VI_LINHAS;
                            STGR_COMBINACOES_15M2.Repaint;
                        END; // IF (VI_CONTAR_QUANTIDADE = 6 )
                        // --> SENDO AS COMBINAÇÕES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE = 9)
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M2.Repaint;
        VI_QTD1 := VI_LINHAS;
        LA_TXT2.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' %';
        LA_TXT2.Caption := LA_TXT2.Caption +#13 + INTtoSTR (VI_CONTAR_ORIGEM) ;
        LA_TXT2.Caption := LA_TXT2.Caption +#13 + INTtoSTR (VI_LINHAS) ;
         LA_TXT1.Repaint;    
         LA_TXT2.Repaint;
         LA_TXT3.Repaint;
        if (VI_CONTAR_ORIGEM / 250)=(VI_CONTAR_ORIGEM DIV 250) then
        BEGIN
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              SELF.Repaint;
              SLEEP(5);
              Self.Refresh;
              Self.Repaint;
              Self.Refresh;
        END;
    END;  // FOR VI_CONTAR_ORIGEM:= 0
end;



procedure T_F_SIM_01_FILTRO_02.BBT_M02_SIMULAR_C_Click(Sender: TObject);
var
    VI_CONTAR_ORIGEM, VI_CONTAR1, VI_CONTAR2, VI_CONTAR_CELULAS_ORIGEM_A, VI_CONTAR_CELULAS_ORIGEM_B, VI_CONTAR_CELULAS_DESTINO,
    VI_CONTAR_QUANTIDADE, VI_CONTAR15, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VI_QTD1, VI_QTD2 : INTEGER;
    VC_COMBINACOES : STRING;
begin
    // ================================================
    // ||||========================================||||
    // |||| 	PRIMEIRA- ANÁLISES COMBINATÓRIAS   ||||
    // ||||========================================||||
    // ================================================
    LA_TXT1.Caption := ' 10 X 5               ';    
    LA_TXT2.Caption := '       ' +#13+ '       ' +#13+ '       ';
    LA_TXT3.Caption := '       ' +#13+ '       ' +#13+ '       ';
    LA_TXT1.Repaint;    
    LA_TXT2.Repaint;
    LA_TXT3.Repaint;
    VI_QTD1 := 0;
    VI_QTD2 := 0;
    if (STGR_COMBINACOES_15M2.RowCount)= 1 then VI_LINHAS := 0 else VI_LINHAS := STGR_COMBINACOES_15M2.RowCount;
        // *********************************************
    	// ** Série 1 c/ 10 e Série 2 c/ 5 combinações **
	    // *********************************************
//    VI_LINHAS := 0;
    FOR VI_CONTAR_ORIGEM:= 1 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M02_SERIE1_10.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO CÉLULA POR CÉLULA NA PRIMEIRA SÉRIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM])
                    = STRtoINT(STGR_M02_SERIE1_10.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1]) ) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINAÇÕES SEJA VERDADEIRAS, VERIFICIAR NA PRÓXIMA SÉRIE
            IF (VI_CONTAR_QUANTIDADE = 10 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M02_SERIE2_05.RowCount-1) DO
                    BEGIN
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 5 DO
                            BEGIN
                                IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                = STRtoINT(STGR_M02_SERIE2_05.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2]) ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 5 ) THEN
                        BEGIN
                            // LA_TXT1.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR1);
                            // LA_TXT1.Repaint;
                            VI_CONTAR_QUANTIDADE := 0;
                            STGR_COMBINACOES_15M2.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                            FOR VI_CONTAR15:=1 TO 15 DO
                            BEGIN
                                STGR_COMBINACOES_15M2.Cells [VI_CONTAR15,VI_LINHAS] := STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM];
                            END ;// FOR VI_CONTAR15
                            VI_LINHAS := VI_LINHAS + 1;
                            STGR_COMBINACOES_15M2.RowCount := VI_LINHAS;
                            STGR_COMBINACOES_15M2.Repaint;
                        END; // IF (VI_CONTAR_QUANTIDADE = 6 )
                        // --> SENDO AS COMBINAÇÕES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M2.Repaint;
        VI_QTD2 := VI_LINHAS;
        LA_TXT3.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' %';
        LA_TXT3.Caption := LA_TXT3.Caption +#13 + INTtoSTR (VI_CONTAR_ORIGEM) ;
        LA_TXT3.Caption := LA_TXT3.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        LA_TXT1.Repaint;
        LA_TXT2.Repaint;
        LA_TXT3.Repaint;
        if (VI_CONTAR_ORIGEM / 250)=(VI_CONTAR_ORIGEM DIV 250) then
        BEGIN
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              SELF.Repaint;
              SLEEP(5);
              Self.Refresh;
              Self.Repaint;
              Self.Refresh;
        END;
    END;  // FOR VI_CONTAR_ORIGEM:= 0
end;



procedure T_F_SIM_01_FILTRO_02.BBT_M02_SIMULAR_H_Click(Sender: TObject);
var
    VI_CONTAR_ORIGEM, VI_CONTAR1, VI_CONTAR2, VI_CONTAR_CELULAS_ORIGEM_A, VI_CONTAR_CELULAS_ORIGEM_B, VI_CONTAR_CELULAS_DESTINO,
    VI_CONTAR_QUANTIDADE, VI_CONTAR15, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;
begin
        // *********************************************
    	// ** Série 1 c/ 8 e Série 2 c/ 7 combinações **
	    // *********************************************
    LA_TXT1.Caption := ' 7 X 8               ';
    LA_TXT2.Caption := '       ' +#13+ '       ' +#13+ '       ';
    LA_TXT3.Caption := '       ' +#13+ '       ' +#13+ '       ';
    LA_TXT1.Repaint;    
    LA_TXT2.Repaint;
    LA_TXT3.Repaint;
    if (STGR_COMBINACOES_15M2.RowCount)= 1 then VI_LINHAS := 0 else VI_LINHAS := STGR_COMBINACOES_15M2.RowCount;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M02_SERIE1_08.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO CÉLULA POR CÉLULA NA PRIMEIRA SÉRIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 8 DO
                BEGIN
                    IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM])
                    = STRtoINT(STGR_M02_SERIE1_08.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1]) ) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINAÇÕES SEJA VERDADEIRAS, VERIFICIAR NA PRÓXIMA SÉRIE
            IF (VI_CONTAR_QUANTIDADE = 8 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M02_SERIE2_07.RowCount-1) DO
                    BEGIN
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 7 DO
                            BEGIN
                                IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                = STRtoINT(STGR_M02_SERIE2_07.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2]) ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 7 ) THEN
                        BEGIN
                            // LA_TXT1.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR1);
                            // LA_TXT1.Repaint;
                            VI_CONTAR_QUANTIDADE := 0;
                            STGR_COMBINACOES_15M2.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                            FOR VI_CONTAR15:=1 TO 15 DO
                            BEGIN
                                STGR_COMBINACOES_15M2.Cells [VI_CONTAR15,VI_LINHAS] := STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM];
                            END ;// FOR VI_CONTAR15
                            VI_LINHAS := VI_LINHAS + 1;
                            STGR_COMBINACOES_15M2.RowCount := VI_LINHAS;
                            STGR_COMBINACOES_15M2.Repaint;
                        END; // IF (VI_CONTAR_QUANTIDADE = 6 )
                        // --> SENDO AS COMBINAÇÕES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE = 9)
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M2.Repaint;
        LA_TXT2.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' %';
        LA_TXT2.Caption := LA_TXT2.Caption +#13 + INTtoSTR (VI_CONTAR_ORIGEM) ;
        LA_TXT2.Caption := LA_TXT2.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        LA_TXT2.Repaint;
        if (VI_CONTAR_ORIGEM / 250)=(VI_CONTAR_ORIGEM DIV 250) then
        BEGIN
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              SELF.Repaint;
              SLEEP(5);
              Self.Refresh;
              Self.Repaint;
              Self.Refresh;
        END;
    END;  // FOR VI_CONTAR_ORIGEM:= 0
end;



procedure T_F_SIM_01_FILTRO_02.BBT_M02_SIMULAR_J_Click(Sender: TObject);
var
    VI_CONTAR_ORIGEM, VI_CONTAR1, VI_CONTAR2, VI_CONTAR_CELULAS_ORIGEM_A, VI_CONTAR_CELULAS_ORIGEM_B, VI_CONTAR_CELULAS_DESTINO,
    VI_CONTAR_QUANTIDADE, VI_CONTAR15, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VI_QTD1, VI_QTD2 : INTEGER;
    VC_COMBINACOES : STRING;
begin
    // ================================================
    // ||||========================================||||
    // |||| 	PRIMEIRA- ANÁLISES COMBINATÓRIAS   ||||
    // ||||========================================||||
    // ================================================
        // *********************************************
    	// ** Série 1 c/ 7 e Série 2 c/ 8 combinações **
	    // *********************************************
    LA_TXT2.Caption := '       ' +#13+ '       ' +#13+ '       ';
    LA_TXT3.Caption := '       ' +#13+ '       ' +#13+ '       ';
    LA_TXT2.Repaint;
    LA_TXT3.Repaint;    
    VI_QTD1 := 0;
    VI_QTD2 := 0;
    if (STGR_COMBINACOES_15M2.RowCount)= 0 then VI_LINHAS := 0 else VI_LINHAS := STGR_COMBINACOES_15M2.RowCount;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M02_SERIE1_07.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO CÉLULA POR CÉLULA NA PRIMEIRA SÉRIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 7 DO
                BEGIN
                    IF (strTOint(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM])
                    = strTOint(STGR_M02_SERIE1_07.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1]) ) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINAÇÕES SEJA VERDADEIRAS, VERIFICIAR NA PRÓXIMA SÉRIE
            IF (VI_CONTAR_QUANTIDADE = 7 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M02_SERIE2_08.RowCount-1) DO
                    BEGIN
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 8 DO
                            BEGIN
                                IF (strTOint( STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                = strTOint(STGR_M02_SERIE2_08.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2]) ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 8 ) THEN
                        BEGIN
                            // LA_TXT1.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR1);
                            // LA_TXT1.Repaint;
                            VI_CONTAR_QUANTIDADE := 0;
                            STGR_COMBINACOES_15M2.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                            FOR VI_CONTAR15:=1 TO 15 DO
                            BEGIN
                                STGR_COMBINACOES_15M2.Cells [VI_CONTAR15,VI_LINHAS] := STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM];
                            END ;// FOR VI_CONTAR15
                            VI_LINHAS := VI_LINHAS + 1;
                            STGR_COMBINACOES_15M2.RowCount := VI_LINHAS;
                            STGR_COMBINACOES_15M2.Repaint;
                        END; // IF (VI_CONTAR_QUANTIDADE = 6 )
                        // --> SENDO AS COMBINAÇÕES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE = 9)
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M2.Repaint;
        VI_QTD1 := VI_LINHAS;
        LA_TXT2.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' %';
        LA_TXT2.Caption := LA_TXT2.Caption +#13 + INTtoSTR (VI_CONTAR_ORIGEM) ;
        LA_TXT2.Caption := LA_TXT2.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        LA_TXT2.Repaint;
        if (VI_CONTAR_ORIGEM / 250)=(VI_CONTAR_ORIGEM DIV 250) then
        BEGIN
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              SELF.Repaint;
              SLEEP(5);
              Self.Refresh;
              Self.Repaint;
              Self.Refresh;
        END;
    END;  // FOR VI_CONTAR_ORIGEM:= 0

        // *********************************************
    	// ** Série 1 c/ 11 e Série 2 c/ 4 combinações **
	    // *********************************************
//    VI_LINHAS := 0;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M02_SERIE1_11.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO CÉLULA POR CÉLULA NA PRIMEIRA SÉRIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 11 DO
                BEGIN
                    IF (strTOint( STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM])
                    = strTOint(STGR_M02_SERIE1_11.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1]) ) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINAÇÕES SEJA VERDADEIRAS, VERIFICIAR NA PRÓXIMA SÉRIE
            IF (VI_CONTAR_QUANTIDADE = 11 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M02_SERIE1_11.RowCount-1) DO
                    BEGIN
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 4 DO
                            BEGIN
                                IF (strTOint( STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                = strTOint(STGR_M02_SERIE2_04.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2]) ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 4 ) THEN
                        BEGIN
                            // LA_TXT1.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR1);
                            // LA_TXT1.Repaint;
                            VI_CONTAR_QUANTIDADE := 0;
                            STGR_COMBINACOES_15M2.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                            FOR VI_CONTAR15:=1 TO 15 DO
                            BEGIN
                                STGR_COMBINACOES_15M2.Cells [VI_CONTAR15,VI_LINHAS] := STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM];
                            END ;// FOR VI_CONTAR15
                            VI_LINHAS := VI_LINHAS + 1;
                            STGR_COMBINACOES_15M2.RowCount := VI_LINHAS;
                            STGR_COMBINACOES_15M2.Repaint;
                        END; // IF (VI_CONTAR_QUANTIDADE = 6 )
                        // --> SENDO AS COMBINAÇÕES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE 
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M2.Repaint;
        VI_QTD2 := VI_LINHAS;
        LA_TXT3.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' %';
        LA_TXT3.Caption := LA_TXT3.Caption +#13 + INTtoSTR (VI_CONTAR_ORIGEM) ;
        LA_TXT3.Caption := LA_TXT3.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        LA_TXT3.Repaint;
        if (VI_CONTAR_ORIGEM / 250)=(VI_CONTAR_ORIGEM DIV 250) then
        BEGIN
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              SELF.Repaint;
              SLEEP(5);
              Self.Refresh;
              Self.Repaint;
              Self.Refresh;
        END;
    END;  // FOR VI_CONTAR_ORIGEM:= 0
    SHOWMESSAGE('2 - B');
end;




procedure T_F_SIM_01_FILTRO_02.BBT_PAN02_ZERARClick(Sender: TObject);
VAR
    VI_CONTAR : INTEGER;
begin
    BBT_201.Visible := TRUE;
    BBT_202.Visible := TRUE;
    BBT_203.Visible := TRUE;
    BBT_204.Visible := TRUE;
    BBT_205.Visible := TRUE;
    BBT_206.Visible := TRUE;
    BBT_207.Visible := TRUE;
    BBT_208.Visible := TRUE;
    BBT_209.Visible := TRUE;
    BBT_210.Visible := TRUE;
    BBT_211.Visible := TRUE;
    BBT_212.Visible := TRUE;
    BBT_213.Visible := TRUE;
    BBT_214.Visible := TRUE;
    BBT_215.Visible := TRUE;
    BBT_216.Visible := TRUE;
    BBT_217.Visible := TRUE;
    BBT_218.Visible := TRUE;
    BBT_219.Visible := TRUE;
    BBT_220.Visible := TRUE;
    BBT_221.Visible := TRUE;
    BBT_222.Visible := TRUE;
    BBT_223.Visible := TRUE;
    BBT_224.Visible := TRUE;
    BBT_225.Visible := TRUE;

    FOR VI_CONTAR := 0 TO 16 DO
    BEGIN
        STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '0';
    END;
    FOR VI_CONTAR := 0 TO 10 DO
    BEGIN
        STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR,0] := '0';
    END;
    STGR_M02_SERIE1_07.RowCount := 0;
    STGR_M02_SERIE1_08.RowCount := 0;
    STGR_M02_SERIE1_09.RowCount := 0;
    STGR_M02_SERIE1_10.RowCount := 0;
    STGR_M02_SERIE1_11.RowCount := 0;
    STGR_M02_SERIE2_08.RowCount := 0;
    STGR_M02_SERIE2_07.RowCount := 0;
    STGR_M02_SERIE2_06.RowCount := 0;
    STGR_M02_SERIE2_05.RowCount := 0;
    STGR_M02_SERIE2_04.RowCount := 0;
    FOR VI_CONTAR := 0 TO 11 DO
    BEGIN
        STGR_M02_SERIE1_07.Cells [VI_CONTAR,0] := '0';
        STGR_M02_SERIE1_08.Cells [VI_CONTAR,0] := '0';
        STGR_M02_SERIE1_09.Cells [VI_CONTAR,0] := '0';
        STGR_M02_SERIE1_10.Cells [VI_CONTAR,0] := '0';
        STGR_M02_SERIE1_11.Cells [VI_CONTAR,0] := '0';
        STGR_M02_SERIE2_08.Cells [VI_CONTAR,0] := '0';
        STGR_M02_SERIE2_07.Cells [VI_CONTAR,0] := '0';
        STGR_M02_SERIE2_06.Cells [VI_CONTAR,0] := '0';
        STGR_M02_SERIE2_05.Cells [VI_CONTAR,0] := '0';
        STGR_M02_SERIE2_04.Cells [VI_CONTAR,0] := '0';
    END;
    STGR_COMBINACOES_15M2.RowCount :=0;
    FOR VI_CONTAR := 1 TO 15 DO
        STGR_COMBINACOES_15M2.Cells[VI_CONTAR,0] := '0';
    STGR_COMBINACOES_15M2.Repaint;
end;



procedure T_F_SIM_01_FILTRO_02.BBT_PAN02_GERARClick(Sender: TObject);
VAR
    VI_CONTAR, VI_LINHAS, VI_LINHAS2  : INTEGER;
    VI_AN_COMB1, VI_AN_COMB2, VI_AN_COMB3, VI_AN_COMB4, VI_AN_COMB5, VI_AN_COMB6, VI_AN_COMB7, VI_AN_COMB8,
        VI_AN_COMB9,VI_AN_COMBa, VI_AN_COMBb : INTEGER;
        VC_QUERY : STRING;
        VC_DADOS1, VC_DADOS2, VC_DADOS3 : STRING;
BEGIN
               IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
               SELF.IBQ_COMBINACOES.SQL.Clear;
               SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_02_DEFINICAO')  ;
               SELF.IBQ_COMBINACOES.ExecSQL;
               SELF.IBQ_COMBINACOES.SQL.Clear;
               SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            VC_DADOS1 := RIGHTSTR ('0'+STGR_M02_SERIE1_INICIAL.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_M02_SERIE1_INICIAL.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_M02_SERIE1_INICIAL.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_M02_SERIE1_INICIAL.Cells[4,0],2) + ' '  + RIGHTSTR ('0'+STGR_M02_SERIE1_INICIAL.Cells[5,0],2) + ' '  + RIGHTSTR ('0'+STGR_M02_SERIE1_INICIAL.Cells[6,0],2) + ' '  + RIGHTSTR ('0'+STGR_M02_SERIE1_INICIAL.Cells[7,0],2)+ ' '  + RIGHTSTR ('0'+STGR_M02_SERIE1_INICIAL.Cells[8,0],2)+ ' '  + RIGHTSTR ('0'+STGR_M02_SERIE1_INICIAL.Cells[9,0],2)+ ' '  + RIGHTSTR ('0'+STGR_M02_SERIE1_INICIAL.Cells[10,0],2)+ ' '  + RIGHTSTR ('0'+STGR_M02_SERIE1_INICIAL.Cells[11,0],2) + ' '  + RIGHTSTR ('0'+STGR_M02_SERIE1_INICIAL.Cells[12,0],2) + ' '  + RIGHTSTR ('0'+STGR_M02_SERIE1_INICIAL.Cells[13,0],2) + ' '  + RIGHTSTR ('0'+STGR_M02_SERIE1_INICIAL.Cells[14,0],2)+' '  + RIGHTSTR ('0'+STGR_M02_SERIE1_INICIAL.Cells[15,0],2);
            VC_DADOS2 := RIGHTSTR ('0'+STGR_M02_SERIE2_INICIAL.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_M02_SERIE2_INICIAL.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_M02_SERIE2_INICIAL.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_M02_SERIE2_INICIAL.Cells[4,0],2) + ' '  + RIGHTSTR ('0'+STGR_M02_SERIE2_INICIAL.Cells[5,0],2) + ' '  + RIGHTSTR ('0'+STGR_M02_SERIE2_INICIAL.Cells[6,0],2) + ' '  + RIGHTSTR ('0'+STGR_M02_SERIE2_INICIAL.Cells[7,0],2)+ ' '  + RIGHTSTR ('0'+STGR_M02_SERIE2_INICIAL.Cells[8,0],2)+ ' '  + RIGHTSTR ('0'+STGR_M02_SERIE2_INICIAL.Cells[9,0],2)+ ' '  + RIGHTSTR ('0'+STGR_M02_SERIE2_INICIAL.Cells[10,0],2);
            VC_DADOS3 := '-';
                SELF.IBQ_COMBINACOES.SQL.Clear;
            VC_QUERY  := 'INSERT INTO FILTRO_02_DEFINICAO (SERIE1_INICIAL, SERIE2_INICIAL, MODO, CONTADOR_C1, TOTAL_CONTADOR_C1, DATA_DEFINICAO, HORA_DEFINICAO)';
            VC_QUERY  := VC_QUERY +'  VALUES('+#39+ VC_DADOS1              + #39 +',' +#39+ VC_DADOS2 + #39 +','  +#39+ VC_DADOS3 ;
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ '0'   + #39 +','+#39+ INTtoSTR(STGR_COMBINACOES_15M2.RowCount-1);
            VC_QUERY  := VC_QUERY + #39 +',' +#39+STRINGREPLACE(FORMATDATETIME('d/m/yyyy',DATE()),'/','.',[])+ #39 +','+#39+FORMATDATETIME('h:n:s',time()) +#39+');';
                SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
             SELF.IBQ_COMBINACOES.SQL.Clear;
             SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
             SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('select distinct(dados) from A_RESULTADO_15_DADOS order by dados;')  ;
     SELF.IBQ_COMBINACOES.Open;
     IBQ_COMBINACOES.First;
     VI_LINHAS2 := 1;
     WHILE NOT(IBQ_COMBINACOES.Eof) DO
     BEGIN
          // ****************************************************
          // ** RECUPERA OS 15 NÚMEROS
          STGR_COMBINACOES_15.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
          STGR_COMBINACOES_15.Cells[1 ,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,1,2);
          STGR_COMBINACOES_15.Cells[2 ,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,4,2);
          STGR_COMBINACOES_15.Cells[3 ,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,7,2);
          STGR_COMBINACOES_15.Cells[4 ,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,10,2);
          STGR_COMBINACOES_15.Cells[5 ,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,13,2);
          STGR_COMBINACOES_15.Cells[6 ,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,16,2);
          STGR_COMBINACOES_15.Cells[7 ,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,19,2);
          STGR_COMBINACOES_15.Cells[8 ,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,22,2);
          STGR_COMBINACOES_15.Cells[9 ,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,25,2);
          STGR_COMBINACOES_15.Cells[10,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,28,2);
          STGR_COMBINACOES_15.Cells[11,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,31,2);
          STGR_COMBINACOES_15.Cells[12,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,34,2);
          STGR_COMBINACOES_15.Cells[13,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,37,2);
          STGR_COMBINACOES_15.Cells[14,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,40,2);
          STGR_COMBINACOES_15.Cells[15,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,43,2);
          STGR_COMBINACOES_15.Cells[16,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,46,2);
          VI_LINHAS2 := VI_LINHAS2 + 1;
          IBQ_COMBINACOES.Next;
     END; // WHILE
     STGR_COMBINACOES_15.RowCount := VI_LINHAS2;
    // ================================================
    // ||||========================================||||
    // |||| 	PRIMEIRA- ANÁLISES COMBINATÓRIAS   ||||
    // ||||========================================||||
    // ================================================
        // ******************************
    	// ** Série 1 c/ 9 combinações **
	    // ******************************
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 7 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 8 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 9 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 10 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 11 DO
                    BEGIN
                        FOR VI_AN_COMB6 :=VI_AN_COMB5+1 TO 12 DO
                        BEGIN
                            FOR VI_AN_COMB7 :=VI_AN_COMB6+1 TO 13 DO
                            BEGIN
                                FOR VI_AN_COMB8 :=VI_AN_COMB7+1 TO 14 DO
                                BEGIN
                                    FOR VI_AN_COMB9 :=VI_AN_COMB8+1 TO 15 DO
                                    BEGIN
                                        STGR_M02_SERIE1_09.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                                        STGR_M02_SERIE1_09.Cells [1,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB1,0] ;
                                        STGR_M02_SERIE1_09.Cells [2,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB2,0] ;
                                        STGR_M02_SERIE1_09.Cells [3,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB3,0] ;
                                        STGR_M02_SERIE1_09.Cells [4,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB4,0] ;
                                        STGR_M02_SERIE1_09.Cells [5,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB5,0] ;
                                        STGR_M02_SERIE1_09.Cells [6,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB6,0] ;
                                        STGR_M02_SERIE1_09.Cells [7,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB7,0] ;
                                        STGR_M02_SERIE1_09.Cells [8,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB8,0] ;
                                        STGR_M02_SERIE1_09.Cells [9,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB9,0] ;
                                        VI_LINHAS := VI_LINHAS + 1;
                                        STGR_M02_SERIE1_09.RowCount := VI_LINHAS;
                                    END; // FOR VI_AN_COMB9
                                END; //  FOR VI_AN_COMB8
                            END; //  FOR VI_AN_COMB7
                        END;// FOR VI_AN_COMB6
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M02_SERIE1_09.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M02_SERIE1_09.Repaint;

        // ******************************
    	// ** Série 1 c/ 6 combinações **
	    // ******************************
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 5 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 6 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 7 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 8 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 9 DO
                    BEGIN
                        FOR VI_AN_COMB6 :=VI_AN_COMB5+1 TO 10 DO
                        BEGIN
                            STGR_M02_SERIE2_06.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                            STGR_M02_SERIE2_06.Cells [1,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB1,0] ;
                            STGR_M02_SERIE2_06.Cells [2,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB2,0] ;
                            STGR_M02_SERIE2_06.Cells [3,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB3,0] ;
                            STGR_M02_SERIE2_06.Cells [4,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB4,0] ;
                            STGR_M02_SERIE2_06.Cells [5,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB5,0] ;
                            STGR_M02_SERIE2_06.Cells [6,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB6,0] ;
                            VI_LINHAS := VI_LINHAS + 1;
                            STGR_M02_SERIE2_06.RowCount := VI_LINHAS;
                        END;// FOR VI_AN_COMB6
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M02_SERIE2_06.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M02_SERIE2_06.Repaint;

    // =================================================
    // ||||=========================================||||
    // |||| 	SEGUNDA  - ANÁLISES COMBINATÓRIAS   ||||
    // ||||=========================================||||
    // =================================================
        // ******************************
    	// ** Série 1 c/ 8 combinações **
	    // ******************************
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 8 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 9 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 10 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 11 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 12 DO
                    BEGIN
                        FOR VI_AN_COMB6 :=VI_AN_COMB5+1 TO 13 DO
                        BEGIN
                            FOR VI_AN_COMB7 :=VI_AN_COMB6+1 TO 14 DO
                            BEGIN
                                FOR VI_AN_COMB8 :=VI_AN_COMB7+1 TO 15 DO
                                BEGIN
                                        STGR_M02_SERIE1_08.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                                        STGR_M02_SERIE1_08.Cells [1,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB1,0] ;
                                        STGR_M02_SERIE1_08.Cells [2,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB2,0] ;
                                        STGR_M02_SERIE1_08.Cells [3,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB3,0] ;
                                        STGR_M02_SERIE1_08.Cells [4,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB4,0] ;
                                        STGR_M02_SERIE1_08.Cells [5,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB5,0] ;
                                        STGR_M02_SERIE1_08.Cells [6,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB6,0] ;
                                        STGR_M02_SERIE1_08.Cells [7,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB7,0] ;
                                        STGR_M02_SERIE1_08.Cells [8,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB8,0] ;
                                        VI_LINHAS := VI_LINHAS + 1;
                                        STGR_M02_SERIE1_08.RowCount := VI_LINHAS;
                                END; //  FOR VI_AN_COMB8
                            END; //  FOR VI_AN_COMB7
                        END;// FOR VI_AN_COMB6
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M02_SERIE1_08.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M02_SERIE1_08.Repaint;

        // ******************************
    	// ** Série 2 c/ 7 combinações **
	    // ******************************
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 4 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 5 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 6 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 7 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 8 DO
                    BEGIN
                        FOR VI_AN_COMB6 :=VI_AN_COMB5+1 TO 9 DO
                        BEGIN
                            FOR VI_AN_COMB7 :=VI_AN_COMB6+1 TO 10 DO
                            BEGIN
                                STGR_M02_SERIE2_07.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                                STGR_M02_SERIE2_07.Cells [1,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB1,0] ;
                                STGR_M02_SERIE2_07.Cells [2,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB2,0] ;
                                STGR_M02_SERIE2_07.Cells [3,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB3,0] ;
                                STGR_M02_SERIE2_07.Cells [4,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB4,0] ;
                                STGR_M02_SERIE2_07.Cells [5,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB5,0] ;
                                STGR_M02_SERIE2_07.Cells [6,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB6,0] ;
                                STGR_M02_SERIE2_07.Cells [7,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB7,0] ;
                                VI_LINHAS := VI_LINHAS + 1;
                                STGR_M02_SERIE2_07.RowCount := VI_LINHAS;
                            END; // FOR VI_AN_COMB7
                        END;// FOR VI_AN_COMB6
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M02_SERIE2_07.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M02_SERIE2_07.Repaint;

    // =================================================
    // ||||=========================================||||
    // |||| 	TERCEIRA - ANÁLISES COMBINATÓRIAS   ||||
    // ||||=========================================||||
    // =================================================
        // ******************************
    	// ** Série 1 c/ 10 combinações **
	    // ******************************
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 6 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 7 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 8 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 9 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 10 DO
                    BEGIN
                        FOR VI_AN_COMB6 :=VI_AN_COMB5+1 TO 11 DO
                        BEGIN
                            FOR VI_AN_COMB7 :=VI_AN_COMB6+1 TO 12 DO
                            BEGIN
                                FOR VI_AN_COMB8 :=VI_AN_COMB7+1 TO 13 DO
                                BEGIN
                                    FOR VI_AN_COMB9 :=VI_AN_COMB8+1 TO 14 DO
                                    BEGIN
                                        FOR VI_AN_COMBa :=VI_AN_COMB9+1 TO 15 DO
                                        BEGIN
                                            STGR_M02_SERIE1_10.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                                            STGR_M02_SERIE1_10.Cells [1,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB1,0] ;
                                            STGR_M02_SERIE1_10.Cells [2,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB2,0] ;
                                            STGR_M02_SERIE1_10.Cells [3,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB3,0] ;
                                            STGR_M02_SERIE1_10.Cells [4,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB4,0] ;
                                            STGR_M02_SERIE1_10.Cells [5,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB5,0] ;
                                            STGR_M02_SERIE1_10.Cells [6,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB6,0] ;
                                            STGR_M02_SERIE1_10.Cells [7,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB7,0] ;
                                            STGR_M02_SERIE1_10.Cells [8,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB8,0] ;
                                            STGR_M02_SERIE1_10.Cells [9,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB9,0] ;
                                            STGR_M02_SERIE1_10.Cells [10,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMBa,0] ;
                                            VI_LINHAS := VI_LINHAS + 1;
                                            STGR_M02_SERIE1_10.RowCount := VI_LINHAS;
                                        END; // FOR VI_AN_COMBa
                                    END; // FOR VI_AN_COMB9
                                END; //  FOR VI_AN_COMB8
                            END; //  FOR VI_AN_COMB7
                        END;// FOR VI_AN_COMB6
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M02_SERIE1_10.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M02_SERIE1_10.Repaint;

        // ******************************
    	// ** Série 2 c/ 5 combinações **
	    // ******************************
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 6 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 7 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 8 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 9 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 10 DO
                    BEGIN
                                STGR_M02_SERIE2_05.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                                STGR_M02_SERIE2_05.Cells [1,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB1,0] ;
                                STGR_M02_SERIE2_05.Cells [2,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB2,0] ;
                                STGR_M02_SERIE2_05.Cells [3,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB3,0] ;
                                STGR_M02_SERIE2_05.Cells [4,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB4,0] ;
                                STGR_M02_SERIE2_05.Cells [5,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB5,0] ;
                                VI_LINHAS := VI_LINHAS + 1;
                                STGR_M02_SERIE2_05.RowCount := VI_LINHAS;
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M02_SERIE2_05.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M02_SERIE2_05.Repaint;


    // =================================================
    // ||||=========================================||||
    // |||| 	QUARTA  -  ANÁLISES COMBINATÓRIAS   ||||
    // ||||=========================================||||
    // =================================================
        // ******************************
    	// ** Série 1 c/ 7 combinações **
	    // ******************************
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 7 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 9 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 10 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 11 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 12 DO
                    BEGIN
                        FOR VI_AN_COMB6 :=VI_AN_COMB5+1 TO 13 DO
                        BEGIN
                            FOR VI_AN_COMB7 :=VI_AN_COMB6+1 TO 14 DO
                            BEGIN
                                    STGR_M02_SERIE1_07.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                                    STGR_M02_SERIE1_07.Cells [1,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB1,0] ;
                                    STGR_M02_SERIE1_07.Cells [2,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB2,0] ;
                                    STGR_M02_SERIE1_07.Cells [3,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB3,0] ;
                                    STGR_M02_SERIE1_07.Cells [4,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB4,0] ;
                                    STGR_M02_SERIE1_07.Cells [5,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB5,0] ;
                                    STGR_M02_SERIE1_07.Cells [6,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB6,0] ;
                                    STGR_M02_SERIE1_07.Cells [7,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB7,0] ;
                                    STGR_M02_SERIE1_07.Cells [8,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB8,0] ;
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_M02_SERIE1_07.RowCount := VI_LINHAS;
                            END; //  FOR VI_AN_COMB7
                        END;// FOR VI_AN_COMB6
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M02_SERIE1_07.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M02_SERIE1_07.Repaint;

        // ******************************
    	// ** Série 2 c/ 8 combinações **
	    // ******************************
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 3 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 4 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 5 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 6 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 7 DO
                    BEGIN
                        FOR VI_AN_COMB6 :=VI_AN_COMB5+1 TO 8 DO
                        BEGIN
                            FOR VI_AN_COMB7 :=VI_AN_COMB6+1 TO 9 DO
                            BEGIN
                                FOR VI_AN_COMB8 :=VI_AN_COMB7+1 TO 10 DO
                                BEGIN
                                    STGR_M02_SERIE2_08.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                                    STGR_M02_SERIE2_08.Cells [1,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB1,0] ;
                                    STGR_M02_SERIE2_08.Cells [2,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB2,0] ;
                                    STGR_M02_SERIE2_08.Cells [3,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB3,0] ;
                                    STGR_M02_SERIE2_08.Cells [4,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB4,0] ;
                                    STGR_M02_SERIE2_08.Cells [5,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB5,0] ;
                                    STGR_M02_SERIE2_08.Cells [6,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB6,0] ;
                                    STGR_M02_SERIE2_08.Cells [7,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB7,0] ;
                                    STGR_M02_SERIE2_08.Cells [8,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB8,0] ;
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_M02_SERIE2_08.RowCount := VI_LINHAS;
                                END; // FOR VI_AN_COMB8
                            END; // FOR VI_AN_COMB7
                        END;// FOR VI_AN_COMB6
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M02_SERIE2_08.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
   STGR_M02_SERIE2_08.Repaint;

    // =================================================
    // ||||=========================================||||
    // |||| 	QUINTA  -  ANÁLISES COMBINATÓRIAS   ||||
    // ||||=========================================||||
    // =================================================
        // ******************************
    	// ** Série 1 c/ 11 combinações **
	    // ******************************
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 5 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 6 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 7 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 8 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 9 DO
                    BEGIN
                        FOR VI_AN_COMB6 :=VI_AN_COMB5+1 TO 10 DO
                        BEGIN
                            FOR VI_AN_COMB7 :=VI_AN_COMB6+1 TO 11 DO
                            BEGIN
                                FOR VI_AN_COMB8 :=VI_AN_COMB7+1 TO 12 DO
                                BEGIN
                                    FOR VI_AN_COMB9 :=VI_AN_COMB8+1 TO 13 DO
                                    BEGIN
                                        FOR VI_AN_COMBa :=VI_AN_COMB9+1 TO 14 DO
                                        BEGIN
                                            FOR VI_AN_COMBb :=VI_AN_COMBa+1 TO 15 DO
                                            BEGIN
                                                STGR_M02_SERIE1_11.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                                                STGR_M02_SERIE1_11.Cells [1,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB1,0] ;
                                                STGR_M02_SERIE1_11.Cells [2,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB2,0] ;
                                                STGR_M02_SERIE1_11.Cells [3,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB3,0] ;
                                                STGR_M02_SERIE1_11.Cells [4,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB4,0] ;
                                                STGR_M02_SERIE1_11.Cells [5,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB5,0] ;
                                                STGR_M02_SERIE1_11.Cells [6,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB6,0] ;
                                                STGR_M02_SERIE1_11.Cells [7,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB7,0] ;
                                                STGR_M02_SERIE1_11.Cells [8,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB8,0] ;
                                                STGR_M02_SERIE1_11.Cells [9,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB9,0] ;
                                                STGR_M02_SERIE1_11.Cells [10,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMBa,0] ;
                                                STGR_M02_SERIE1_11.Cells [11,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMBb,0] ;
                                                VI_LINHAS := VI_LINHAS + 1;
                                                STGR_M02_SERIE1_11.RowCount := VI_LINHAS;
                                            END; // FOR VI_AN_COMBb
                                        END; // FOR VI_AN_COMBa
                                    END; // FOR VI_AN_COMB9
                                END; //  FOR VI_AN_COMB8
                            END; //  FOR VI_AN_COMB7
                        END;// FOR VI_AN_COMB6
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M02_SERIE1_11.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M02_SERIE1_11.Repaint;

        // ******************************
    	// ** Série 2 c/ 4 combinações **
	    // ******************************
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 7 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 8 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 9 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 10 DO
                BEGIN
                    STGR_M02_SERIE2_04.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                    STGR_M02_SERIE2_04.Cells [1,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB1,0] ;
                    STGR_M02_SERIE2_04.Cells [2,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB2,0] ;
                    STGR_M02_SERIE2_04.Cells [3,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB3,0] ;
                    STGR_M02_SERIE2_04.Cells [4,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB4,0] ;
                    VI_LINHAS := VI_LINHAS + 1;
                    STGR_M02_SERIE2_04.RowCount := VI_LINHAS;
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M02_SERIE2_04.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M02_SERIE2_04.Repaint;
    SHOWMESSAGE('OK');
end;



procedure T_F_SIM_01_FILTRO_02.BBT_M02_ENCERRARClick(Sender: TObject);
VAR
    VI_AN_COMB1, VI_CONTAR : INTEGER;
    VC_QUERY: STRING;
begin
{    STGR_COMBINACOES_15M2.Repaint;
    STGR_COMBINACOES_15.RowCount := 0;
    FOR VI_AN_COMB1 :=0 TO (STGR_COMBINACOES_15M2.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
           STGR_COMBINACOES_15.Cells [VI_CONTAR,VI_AN_COMB1] := STGR_COMBINACOES_15M2.Cells [VI_CONTAR,VI_AN_COMB1];
           STGR_COMBINACOES_15.RowCount := VI_AN_COMB1;
        END;
    END; }
          SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_02_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            VC_QUERY:= 'UPDATE FILTRO_02_DEFINICAO SET CONTADOR_C1 = '+#39+ INTtoSTR(STGR_COMBINACOES_15M2.RowCount-1)
            + #39 +', QTD_DADOS = '+#39+ INTtoSTR(STGR_COMBINACOES_15M2.RowCount-1)
            + #39 +', HORA_TERMINO = ' +#39+FORMATDATETIME('h:n:s',time()) +#39+';' ;
             SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;

    STGR_COMBINACOES_15.Repaint;
    STGR_COMBINACOES_15M2.Repaint;
     PR_GRAVAR_RESULTADO_DOS_15_DADOS ('SIM');
    SHOWMESSAGE ('OK');
    CLOSE;
//    MEM_DESCFILTRO.Lines.Add('# FILTRO 02: RESULTADO');
//    MEM_DESCFILTRO.Lines.Add('  ' + INTtoSTR(STGR_COMBINACOES_15.RowCount));
//    RB_SIM_MODELO_02.Enabled := false;
    //BBT_EXECUTAR_SEL.Enabled := TRUE;
end;



PROCEDURE T_F_SIM_01_FILTRO_02.PR_GRAVAR_RESULTADO_DOS_15_DADOS (VC_FLAG_MENSAGEM : STRING);
VAR
     VI_COMBINACOES1, VI_COMBINACOES2, VI_CONTAR : integer;
     VC_DADOS, VC_QUERY : STRING;
BEGIN
     IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_02_DADOS')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     LA_LER_GRAVAR_PERCENTUAL_TITULO.Caption := 'GRAVANDO OS DADOS / RESULTADO';
     LA_LER_GRAVAR_PERCENTUAL_TEXTO1.Caption := '.';
     PGBR_LER_GRAVAR_PERCENTUAL.Position     := 0;
     PA_LER_GRAVAR_PERCENTUAL.Left           := 32;
     PA_LER_GRAVAR_PERCENTUAL.Repaint;
     SLEEP (4);
     FOR VI_COMBINACOES1:= 1 TO (STGR_COMBINACOES_15M2.RowCount-1) DO
     BEGIN
          VC_DADOS := '';
          // --- MONTA OS DADOS A SEREM ARMAZENADOS:
          FOR VI_CONTAR := 1 TO 15 DO
          BEGIN
               VC_DADOS := VC_DADOS + STGR_COMBINACOES_15M2.Cells[VI_CONTAR,VI_COMBINACOES1] + ' ';
          END;// FOR VI_CONTAR
          VC_QUERY  := 'INSERT INTO FILTRO_02_DADOS (DADOS) VALUES('
                    +#39+ VC_DADOS
                     + #39 +');';
          SELF.IBQ_COMBINACOES.SQL.Clear;
          SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
          SELF.IBQ_COMBINACOES.ExecSQL;
          SELF.IBQ_COMBINACOES.SQL.Clear;
          SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
          SELF.IBQ_COMBINACOES.ExecSQL;
               if (VI_COMBINACOES1 MOD 250)=0 then
               BEGIN
                    LA_LER_GRAVAR_PERCENTUAL_TEXTO1.Caption:=  INTtoSTR( TRUNC(VI_COMBINACOES1  / (STGR_COMBINACOES_15M2.RowCount-1) *100) ) + ' %  ';
                    LA_LER_GRAVAR_PERCENTUAL_TEXTO1.Caption:= LA_LER_GRAVAR_PERCENTUAL_TEXTO1.Caption +' -------  Quantidade:' + INTtoSTR(VI_COMBINACOES1) +' de  '+ INTtoSTR(STGR_COMBINACOES_15M2.RowCount-1) ;
                    LA_LER_GRAVAR_PERCENTUAL_TEXTO1.Repaint;
                    SLEEP (1);
                    PGBR_LER_GRAVAR_PERCENTUAL.Position := (TRUNC(VI_COMBINACOES1  / (STGR_COMBINACOES_15M2.RowCount-1) *100) );
                    PGBR_LER_GRAVAR_PERCENTUAL.Repaint;
                    STGR_COMBINACOES_15.REPAINT;
                    SLEEP(1);
               END;
     END;// FOR VI_COMBINACOES1
     LA_LER_GRAVAR_PERCENTUAL_TEXTO1.Caption:=  INTtoSTR( TRUNC(VI_COMBINACOES1  / (STGR_COMBINACOES_15.RowCount-1) *100) ) + ' %  ';
     LA_LER_GRAVAR_PERCENTUAL_TEXTO1.Caption:= LA_LER_GRAVAR_PERCENTUAL_TEXTO1.Caption +' -------  Quantidade:' + INTtoSTR(VI_COMBINACOES1-1) +' de  '+ INTtoSTR(STGR_COMBINACOES_15M2.RowCount-1) ;
     PGBR_LER_GRAVAR_PERCENTUAL.Position := 100;
     SELF.IBQ_COMBINACOES.SQL.Clear;
{     VC_QUERY  := 'UPDATE A_CONFIG1_ SET ULTIMA_SIMULACAO_SALVA=' +#39+ LA_N_SIMULACAO.Caption +#39+ ';';
     SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
          SELF.IBQ_COMBINACOES.SQL.Clear;
          SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
          SELF.IBQ_COMBINACOES.ExecSQL;  }   
     IF (TRIM(VC_FLAG_MENSAGEM) = 'SIM') THEN
          showmessage('Resultado Gravado.');
     LA_LER_GRAVAR_PERCENTUAL_TITULO.Caption := '.';
     LA_LER_GRAVAR_PERCENTUAL_TEXTO1.Caption := '.';
     PGBR_LER_GRAVAR_PERCENTUAL.Position := 0;
     PA_LER_GRAVAR_PERCENTUAL.Left := 7750;
end;

procedure T_F_SIM_01_FILTRO_02.BBT_201Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(1);
    BBT_201.Visible := false;
end;

procedure T_F_SIM_01_FILTRO_02.BBT_202Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(2);
    BBT_202.Visible := false;
end;

procedure T_F_SIM_01_FILTRO_02.BBT_203Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(3);
    BBT_203.Visible := false;
end;

procedure T_F_SIM_01_FILTRO_02.BBT_204Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(4);
    BBT_204.Visible := false;
end;

procedure T_F_SIM_01_FILTRO_02.BBT_205Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(5);
    BBT_205.Visible := false;
end;

procedure T_F_SIM_01_FILTRO_02.BBT_206Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(6);
    BBT_206.Visible := false;
end;

procedure T_F_SIM_01_FILTRO_02.BBT_207Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(7);
    BBT_207.Visible := false;
end;

procedure T_F_SIM_01_FILTRO_02.BBT_208Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(8);
    BBT_208.Visible := false;
end;

procedure T_F_SIM_01_FILTRO_02.BBT_209Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(9);
    BBT_209.Visible := false;
end;

procedure T_F_SIM_01_FILTRO_02.BBT_210Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(10);
    BBT_210.Visible := false;
end;

procedure T_F_SIM_01_FILTRO_02.BBT_211Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(11);
    BBT_211.Visible := false;
end;

procedure T_F_SIM_01_FILTRO_02.BBT_212Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(12);
    BBT_212.Visible := false;
end;

procedure T_F_SIM_01_FILTRO_02.BBT_213Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(13);
    BBT_213.Visible := false;
end;

procedure T_F_SIM_01_FILTRO_02.BBT_214Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(14);
    BBT_214.Visible := false;
end;

procedure T_F_SIM_01_FILTRO_02.BBT_215Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(15);
    BBT_215.Visible := false;
end;

procedure T_F_SIM_01_FILTRO_02.BBT_216Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(16);
    BBT_216.Visible := false;
end;

procedure T_F_SIM_01_FILTRO_02.BBT_217Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(17);
    BBT_217.Visible := false;
end;

procedure T_F_SIM_01_FILTRO_02.BBT_218Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(18);
    BBT_218.Visible := false;
end;

procedure T_F_SIM_01_FILTRO_02.BBT_219Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(19);
    BBT_219.Visible := false;
end;

procedure T_F_SIM_01_FILTRO_02.BBT_220Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(20);
    BBT_220.Visible := false;
end;

procedure T_F_SIM_01_FILTRO_02.BBT_221Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(21);
    BBT_221.Visible := false;
end;

procedure T_F_SIM_01_FILTRO_02.BBT_222Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(22);
    BBT_222.Visible := false;
end;

procedure T_F_SIM_01_FILTRO_02.BBT_223Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(23);
    BBT_223.Visible := false;
end;

procedure T_F_SIM_01_FILTRO_02.BBT_224Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(24);
    BBT_224.Visible := false;
end;


procedure T_F_SIM_01_FILTRO_02.BBT_225Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(25);
    BBT_225.Visible := false;
end;



PROCEDURE T_F_SIM_01_FILTRO_02.PR_BOTOES_MODELO2 (VI_NUMERO: INTEGER);
VAR
    VI_CONTAR, VI_CONTAR2 : INTEGER;
BEGIN
    FOR VI_CONTAR := 1 TO 15 DO
    BEGIN
        IF (STRtoINT (STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
        BEGIN
            STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0] := INTtoSTR(VI_NUMERO);
            EXIT;
        END ELSE
        IF (VI_CONTAR = 15) THEN
        BEGIN
            FOR VI_CONTAR2 :=1 TO 10 DO
            BEGIN
                IF (STRtoINT (STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                BEGIN
                    STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := INTtoSTR(VI_NUMERO);
                    EXIT;
                END; // IF (STRtoINT
            END; // FOR VI_CONTAR 2
        END;// IF (STRtoINT
    END; // VI_CONTAR
END;




procedure T_F_SIM_01_FILTRO_02.FormCreate(Sender: TObject);
begin
     SELF.Top  := 69;
     SELF.Left := 9;
          SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_02_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     BBT_PAN02_ZERAR.Click;
end;

procedure T_F_SIM_01_FILTRO_02.BT_CARREGARClick(Sender: TObject);
VAR
     VI_AN_COMB1, VI_CONTAR : INTEGER;
BEGIN
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT QTD_DADOS FROM FILTRO_02_DEFINICAO;')  ;
       SELF.IBQ_COMBINACOES.Open;
       VI_CONTAR := SELF.IBQ_COMBINACOES.FIELDBYNAME('QTD_DADOS').AsInteger;
          SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_02_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
          SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT DADOS FROM FILTRO_02_DADOS GROUP BY DADOS ORDER BY DADOS;')  ;
       SELF.IBQ_COMBINACOES.Open;
       IF (TRIM(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString) ='') THEN
           SELF.IBQ_COMBINACOES.Next;
       FOR VI_AN_COMB1:= 1 TO  VI_CONTAR DO
       BEGIN
           STGR_COMBINACOES_15M2.Cells [0, VI_AN_COMB1] := INTtoSTR(VI_AN_COMB1);
           STGR_COMBINACOES_15M2.Cells [1, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,1,2);
           STGR_COMBINACOES_15M2.Cells [2, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,4,2);
           STGR_COMBINACOES_15M2.Cells [3, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,7,2);
           STGR_COMBINACOES_15M2.Cells [4, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,10,2);
           STGR_COMBINACOES_15M2.Cells [5, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,13,2);
           STGR_COMBINACOES_15M2.Cells [6, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,16,2);
           STGR_COMBINACOES_15M2.Cells [7, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,19,2);
           STGR_COMBINACOES_15M2.Cells [8, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,22,2);
           STGR_COMBINACOES_15M2.Cells [9, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,25,2);
           STGR_COMBINACOES_15M2.Cells [10, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,28,2);
           STGR_COMBINACOES_15M2.Cells [11, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,31,2);
           STGR_COMBINACOES_15M2.Cells [12, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,34,2);
           STGR_COMBINACOES_15M2.Cells [13, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,37,2);
           STGR_COMBINACOES_15M2.Cells [14, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,40,2);
           STGR_COMBINACOES_15M2.Cells [15, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,43,2);
               STGR_COMBINACOES_15M2.RowCount := VI_AN_COMB1;
           SELF.IBQ_COMBINACOES.Next;
       END; // FOR VI_AN_COMB1
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM FILTRO_02_DEFINICAO;')  ;
       SELF.IBQ_COMBINACOES.Open;
    STGR_COMBINACOES_15M2.Repaint;
    SHOWMESSAGE ('OK');
    CLOSE;
end;


end.
