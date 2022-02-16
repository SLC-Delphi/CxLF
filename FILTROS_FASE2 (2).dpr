program FILTROS_FASE2;

uses
  Forms,
  Filtros_Fase2tin in 'Filtros_Fase2tin.pas' {Form1},
  Simulacao01_Filtro_09 in 'Simulacao01_Filtro_09.pas' {_F_SIM_01_FILTRO_09},
  Simulacao01_Filtro_10 in 'Simulacao01_Filtro_10.pas' {_F_SIM_01_FILTRO_10},
  Simulacao01_Filtro_11 in 'Simulacao01_Filtro_11.pas' {_F_SIM_01_FILTRO_11},
  SIMULACAO002 in 'SIMULACAO002.pas' {_FRM_SIMULACAO2},
  Simulacao01_Filtro_13 in 'Simulacao01_Filtro_13.pas' {_F_SIM_01_FILTRO_13},
  EMULADOR_5_EXC in 'EMULADOR_5_EXC.pas' {_F_EMULADOR_5_EXC},
  EMULADOR_6_EXC in 'EMULADOR_6_EXC.pas' {_F_EMULADOR_6_EXC},
  Simulacao01_Filtro_15 in 'Simulacao01_Filtro_15.pas' {_F_NS_015},
  Simulacao_NS_01 in 'Simulacao_NS_01.pas' {_F_NS_01},
  EMULADOR_10_EXC in 'EMULADOR_10_EXC.pas' {_F_EMULADOR_10_EXC},
  EMULADOR_10_EXC_2 in 'EMULADOR_10_EXC_2.pas' {_F_EMULADOR_10_EXC_2},
  Simulacao01_Filtro_05 in 'Simulacao01_Filtro_05.pas' {_F_SIM_01_FILTRO_05},
  Simulacao01_Filtro_06 in 'Simulacao01_Filtro_06.pas' {_F_SIM_01_FILTRO_06},
  Simulacao01_Filtro_06b in 'Simulacao01_Filtro_06b.pas' {_F_SIM_01_FILTRO_06b},
  SIMULACAO001 in 'SIMULACAO001.pas' {_FRM_SIMULACAO_01},
  GERADOR_10_EXC_2 in 'GERADOR_10_EXC_2.pas' {_F_GERADOR_10_EXC_2},
  Simulacao01_filtro_09EXC_e_1 in 'Simulacao01_filtro_09EXC_e_1.pas' {_F_FILTRO_09_NS_E_1},
  Simulacao01_filtro_09EXC_e_1_v2 in 'Simulacao01_filtro_09EXC_e_1_v2.pas' {_F_FILTRO_09_NS_e_1_v2},
  Simulacao01_filtro_08EXC_e_1_16_v1 in 'Simulacao01_filtro_08EXC_e_1_16_v1.pas' {_F_FILTRO_08_NS1_16_v1},
  Simulacao01_Filtro_07 in 'Simulacao01_Filtro_07.pas' {_F_SIM_01_Filtro_07},
  Simulacao01_filtro_08EXC_e_1_16_v2 in 'Simulacao01_filtro_08EXC_e_1_16_v2.pas' {_F_FILTRO_08_NS1_16_v2},
  Gerador_10_Jogos_17_Numeros in 'Gerador_10_Jogos_17_Numeros.pas' {_F_GERADOR_10d17},
  GERADOR_03_M1 in 'GERADOR_03_M1.pas' {_F_GERADOR_03_M1},
  GERADOR_12p3_M1 in 'GERADOR_12p3_M1.pas' {_F_GERADOR_12p3_M1},
  GERADOR_8Grupos_M1 in 'GERADOR_8Grupos_M1.pas' {_F_GERADOR_3G8C_M1},
  GERADOR_8Grupos_M2 in 'GERADOR_8Grupos_M2.pas' {_F_GERADOR_3G8C_M2},
  SIMULACAO_3 in 'SIMULACAO_3.pas' {_FRM_SIMULACAO3},
  Gerador_4Grupos12Col in 'GERADOR_4Grupos12Col.pas' {_F_GERADOR4g12col},
  GERADOR_SOMAS_FIXAS in 'GERADOR_SOMAS_FIXAS.pas' {_F_GERADOR_SOMAS_FIXAS01},
  GERADOR_SOMAS_FIXAS_02 in 'GERADOR_SOMAS_FIXAS_02.pas' {_F_GERADOR_SOMAS_FIXAS02},
  Gerador_19_Jogos_15_Numeros1 in 'Gerador_19_Jogos_15_Numeros1.pas' {_F_GERADOR_19d15_1},
  Gerador_ResultadosDiversos_SmFx in 'Gerador_ResultadosDiversos_SmFx.pas' {_F_Gerador_ResDiv_SmFx1},
  uPREPARAR_3268760_1 in 'uPREPARAR_3268760_1.pas' {_F_Gerador_Resultados3268760_TODOS},
  Gerador_Resultados3268760_194_196 in 'Gerador_Resultados3268760_194_196.pas' {_F_Gerador_Resultados3268760_194_196},
  uGerador_ResultadosDiversos_SmFx2 in 'uGerador_ResultadosDiversos_SmFx2.pas' {_F_Gerador_ResDiv_SmFx2},
  uGerador_ResultDiv_SmFx3_162Comb in 'uGerador_ResultDiv_SmFx3_162Comb.pas' {_F_Gerador_ResDiv_SmFx3},
  uGerador_ResultDiv_SmFx4_162Comb in 'uGerador_ResultDiv_SmFx4_162Comb.pas' {_F_Gerador_ResDiv_SmFx4},
  uGerador_ResultDiv_SmFx5_235Comb in 'uGerador_ResultDiv_SmFx5_235Comb.pas' {_F_Gerador_ResDiv_SmFx5},
  uGerador_ResultDiv_SmFx6_235 in 'uGerador_ResultDiv_SmFx6_235.pas' {_F_Gerador_ResDiv_SmFx6},
  uGerador_ResultDiv_5cj15 in 'uGerador_ResultDiv_5cj15.pas' {_F_Gerador_ResDiv_5cj15},
  uGerador_ResultDiv_3jg18 in 'uGerador_ResultDiv_3jg18.pas' {_F_Gerador_ResDiv_3jg18},
  uGerador_ResultDiv_25linhas2 in 'uGerador_ResultDiv_25linhas2.pas' {_F_Gerador_ResDiv_25Linhas2},
  uDataModule01 in 'uDataModule01.pas' {DM1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(T_F_SIM_01_FILTRO_09, _F_SIM_01_FILTRO_09);
  Application.CreateForm(T_F_SIM_01_FILTRO_10, _F_SIM_01_FILTRO_10);
  Application.CreateForm(T_F_SIM_01_FILTRO_11, _F_SIM_01_FILTRO_11);
  Application.CreateForm(T_FRM_SIMULACAO2, _FRM_SIMULACAO2);
  Application.CreateForm(T_F_SIM_01_FILTRO_04, _F_SIM_01_FILTRO_04);
  Application.CreateForm(T_F_EMULADOR_5_EXC, _F_EMULADOR_5_EXC);
  Application.CreateForm(T_F_EMULADOR_6_EXC, _F_EMULADOR_6_EXC);
  Application.CreateForm(T_F_NS_015, _F_NS_015);
  Application.CreateForm(T_F_NS_01, _F_NS_01);
  Application.CreateForm(T_F_EMULADOR_10_EXC, _F_EMULADOR_10_EXC);
  Application.CreateForm(TDM1, DM1);
  //  Application.CreateForm(T_F_Ajustar_Simulacao2_DadosNS, _F_Ajustar_Simulacao2_DadosNS);
  Application.CreateForm(T_F_EMULADOR_10_EXC_2, _F_EMULADOR_10_EXC_2);
  Application.CreateForm(T_F_SIM_01_FILTRO_05, _F_SIM_01_FILTRO_05);
  Application.CreateForm(T_F_SIM_01_FILTRO_06, _F_SIM_01_FILTRO_06);
  Application.CreateForm(T_F_SIM_01_FILTRO_06b, _F_SIM_01_FILTRO_06b);
  Application.CreateForm(T_FRM_SIMULACAO_01, _FRM_SIMULACAO_01);
  Application.CreateForm(T_F_GERADOR_10_EXC_2, _F_GERADOR_10_EXC_2);
  Application.CreateForm(T_F_FILTRO_09_NS_E_1, _F_FILTRO_09_NS_E_1);
  Application.CreateForm(T_F_FILTRO_09_NS_e_1_v2, _F_FILTRO_09_NS_e_1_v2);
  Application.CreateForm(T_F_FILTRO_08_NS1_16_v1, _F_FILTRO_08_NS1_16_v1);
  Application.CreateForm(T_F_SIM_01_Filtro_07, _F_SIM_01_Filtro_07);
  Application.CreateForm(T_F_FILTRO_08_NS1_16_v2, _F_FILTRO_08_NS1_16_v2);
  Application.CreateForm(T_F_GERADOR_10d17, _F_GERADOR_10d17);
  Application.CreateForm(T_F_GERADOR_03_M1, _F_GERADOR_03_M1);
  Application.CreateForm(T_F_GERADOR_12p3_M1, _F_GERADOR_12p3_M1);
  Application.CreateForm(T_F_GERADOR_3G8C_M1, _F_GERADOR_3G8C_M1);
  Application.CreateForm(T_F_GERADOR_3G8C_M2, _F_GERADOR_3G8C_M2);
  Application.CreateForm(T_FRM_SIMULACAO3, _FRM_SIMULACAO3);
  Application.CreateForm(T_F_GERADOR4g12col, _F_GERADOR4g12col);
  Application.CreateForm(T_F_GERADOR_SOMAS_FIXAS01, _F_GERADOR_SOMAS_FIXAS01);
  Application.CreateForm(T_F_GERADOR_SOMAS_FIXAS02, _F_GERADOR_SOMAS_FIXAS02);
  Application.CreateForm(T_F_GERADOR_19d15_1, _F_GERADOR_19d15_1);
  Application.CreateForm(T_F_Gerador_ResDiv_SmFx1, _F_Gerador_ResDiv_SmFx1);
  Application.CreateForm(T_F_Gerador_Resultados3268760_TODOS, _F_Gerador_Resultados3268760_TODOS);
  Application.CreateForm(T_F_Gerador_Resultados3268760_194_196, _F_Gerador_Resultados3268760_194_196);
  Application.CreateForm(T_F_Gerador_ResDiv_SmFx2, _F_Gerador_ResDiv_SmFx2);
  Application.CreateForm(T_F_Gerador_ResDiv_SmFx3, _F_Gerador_ResDiv_SmFx3);
  Application.CreateForm(T_F_Gerador_ResDiv_SmFx4, _F_Gerador_ResDiv_SmFx4);
  Application.CreateForm(T_F_Gerador_ResDiv_SmFx5, _F_Gerador_ResDiv_SmFx5);
  Application.CreateForm(T_F_Gerador_ResDiv_SmFx6, _F_Gerador_ResDiv_SmFx6);
  Application.CreateForm(T_F_Gerador_ResDiv_5cj15, _F_Gerador_ResDiv_5cj15);
  Application.CreateForm(T_F_Gerador_ResDiv_3jg18, _F_Gerador_ResDiv_3jg18);
  Application.CreateForm(T_F_Gerador_ResDiv_25Linhas2, _F_Gerador_ResDiv_25Linhas2);
  Application.Run;
end.
