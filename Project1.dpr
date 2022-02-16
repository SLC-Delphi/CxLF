program Project1;

uses
  Forms,
  uDataModule01 in 'uDataModule01.pas' {DM1: TDataModule},
  Unit1 in 'Unit1.pas' {_FRM_SIM_LOTOFACIL01},
  Simulacao01_Filtro_10 in 'Simulacao01_Filtro_10.pas' {_F_SIM_01_FILTRO_10},
  Simulacao01_Filtro_09 in 'Simulacao01_Filtro_09.pas' {_F_SIM_01_FILTRO_09},
  SIMULACAO002 in 'SIMULACAO002.pas' {_FRM_SIMULACAO2},
  Simulacao01_Filtro_11 in 'Simulacao01_Filtro_11.pas' {_F_SIM_01_FILTRO_11},
  Simulacao01_Filtro12 in 'Simulacao01_Filtro12.pas' {_F_SIM_01_FILTRO_12},
  Simulacao01_Filtro_13 in 'Simulacao01_Filtro_13.pas' {_F_SIM_01_FILTRO_04},
  EMULADOR_5_EXC in 'EMULADOR_5_EXC.pas' {_F_EMULADOR_5_EXC},
  EMULADOR_6_EXC in 'EMULADOR_6_EXC.pas' {_F_EMULADOR_6_EXC},
  Simulacao_NS_01 in 'Simulacao_NS_01.pas' {_F_NS_01},
  EMULADOR_10_EXC in 'EMULADOR_10_EXC.pas' {_F_EMULADOR_10_EXC},
  EMULADOR_10_EXC_2 in 'EMULADOR_10_EXC_2.pas' {_F_EMULADOR_10_EXC_2},
  Simulacao01_Filtro_05 in 'Simulacao01_Filtro_05.pas' {_F_SIM_01_FILTRO_05},
  Simulacao01_Filtro_06 in 'Simulacao01_Filtro_06.pas' {_F_SIM_01_FILTRO_06},
  Simulacao01_Filtro_06b in 'Simulacao01_Filtro_06b.pas' {_F_SIM_01_FILTRO_06b},
  Simulacao_15_triplas_duplas in 'Simulacao_15_triplas_duplas.pas' {_F_SIM_01_FILTRO_15td},
  Simulacao01_Filtro_02 in 'Simulacao01_Filtro_02.pas' {_F_SIM_01_FILTRO_02},
  GERADOR_10_EXC_2 in 'GERADOR_10_EXC_2.pas' {_F_GERADOR_10_EXC_2},
  Simulacao_16_triplas_duplas in 'Simulacao_16_triplas_duplas.pas' {_F_SIM_01_FILTRO_16td},
  Simulacao01_filtro_09EXC_e_1 in 'Simulacao01_filtro_09EXC_e_1.pas' {_F_FILTRO_09_NS_E_1},
  Simulacao01_filtro_09EXC_e_1_v2 in 'Simulacao01_filtro_09EXC_e_1_v2.pas' {_F_FILTRO_09_NS_e_1_v2},
  Simulacao01_filtro_08EXC_e_1_16_v1 in 'Simulacao01_filtro_08EXC_e_1_16_v1.pas' {_F_FILTRO_08_NS1_16_v1},
  Simulacao01_Filtro_07 in 'Simulacao01_Filtro_07.pas' {_F_SIM_01_Filtro_07},
  Gerador_10_Jogos_17_Numeros in 'Gerador_10_Jogos_17_Numeros.pas' {_F_GERADOR_10d17},
  GERADOR_03_M1 in 'GERADOR_03_M1.pas' {_F_GERADOR_03_M1},
  GERADOR_12p3_M1 in 'GERADOR_12p3_M1.pas' {_F_GERADOR_12p3_M1},
  GERADOR_8Grupos_M1 in 'GERADOR_8Grupos_M1.pas' {_F_GERADOR_3G8C_M1},
  GERADOR_8Grupos_M2 in 'GERADOR_8Grupos_M2.pas' {_F_GERADOR_3G8C_M2},
  SIMULACAO_3 in 'SIMULACAO_3.pas' {_FRM_SIMULACAO3},
  GERADOR_SOMAS_FIXAS_02 in 'GERADOR_SOMAS_FIXAS_02.pas' {_F_GERADOR_SOMAS_FIXAS02},
  Gerador_ResultadosDiversos_SmFx in 'Gerador_ResultadosDiversos_SmFx.pas' {_F_Gerador_ResDiv_SmFx1},
  Gerador_Resultados3268760_194_196 in 'Gerador_Resultados3268760_194_196.pas' {_F_Gerador_Resultados3268760_194_196},
  uGerador_ResultadosDiversos_SmFx2 in 'uGerador_ResultadosDiversos_SmFx2.pas' {_F_Gerador_ResDiv_SmFx2},
  uGerador_ResultDiv_SmFx3_162Comb in 'uGerador_ResultDiv_SmFx3_162Comb.pas' {_F_Gerador_ResDiv_SmFx3},
  uGerador_ResultDiv_SmFx4_162Comb in 'uGerador_ResultDiv_SmFx4_162Comb.pas' {_F_Gerador_ResDiv_SmFx4},
  uGerador_ResultDiv_SmFx5_235Comb in 'uGerador_ResultDiv_SmFx5_235Comb.pas' {_F_Gerador_ResDiv_SmFx5},
  uGerador_ResultDiv_SmFx6_235 in 'uGerador_ResultDiv_SmFx6_235.pas' {_F_Gerador_ResDiv_SmFx6},
  uGerador_ResultDiv_5cj15 in 'uGerador_ResultDiv_5cj15.pas' {_F_Gerador_ResDiv_5cj15},
  uGerador_ResultDiv_3jg18 in 'uGerador_ResultDiv_3jg18.pas' {_F_Gerador_ResDiv_3jg18},
  uE_Sorteio in 'uE_Sorteio.pas' {F_E_Sorteio},
  uEstatisica in 'uEstatisica.pas' {F_Estatisica},
  uGerador_08_Numeros_Fixos1 in 'uGerador_08_Numeros_Fixos1.pas' {_F_Gerador_08_NumerosFixos1},
  uGerador_10_NumFix1Ns in 'uGerador_10_NumFix1Ns.pas' {_F_Gerador_10_NumFix1Ns},
  uGerador_09_NumFix1Ns in 'uGerador_09_NumFix1Ns.pas' {_F_Gerador_09_NumFix1Ns},
  uGerador_ResultDiv_25linhas2 in 'uGerador_ResultDiv_25linhas2.pas' {_F_Gerador_ResDiv_25Linhas2},
  uGeradorRanking01 in 'uGeradorRanking01.pas' {_F_GeradorRanking01},
  uGerador_1Linha19e1de6 in 'uGerador_1Linha19e1de6.pas' {_F_Gerador_1LinhDe19e1de6},
  uCjtos13Linhas8por5Impares in 'uCjtos13Linhas8por5Impares.pas' {_F_Cjtos13Linhas8por5Impares},
  uCjtos13Linhas7por6Impares in 'uCjtos13Linhas7por6Impares.pas' {_F_Cjtos13Linhas7por6Impares};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM1, DM1);
  Application.CreateForm(T_FRM_SIM_LOTOFACIL01, _FRM_SIM_LOTOFACIL01);
  Application.CreateForm(TF_Estatisica, F_Estatisica);
  Application.CreateForm(T_F_Gerador_1LinhDe19e1de6, _F_Gerador_1LinhDe19e1de6);
  Application.Run;
end.
