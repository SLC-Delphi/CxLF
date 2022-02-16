program Gerador_Filtro_17por8_modelo1;

uses
  Vcl.Forms,
  Gerador_e_Filtro_17por8_modelo1 in 'Gerador_e_Filtro_17por8_modelo1.pas' {Form1},
  Gerador_10_Jogos_17_NumerosMod2 in 'Gerador_10_Jogos_17_NumerosMod2.pas' {_F_GERADOR_25d17x8M2},
  uDataModule01 in 'uDataModule01.pas' {DM1: TDataModule},
  Ranqueadorr_18_Jogos_17_NumerosMod1 in 'Ranqueadorr_18_Jogos_17_NumerosMod1.pas' {_F_Ranqueador_18_Jogos_17_NumerosMod1},
  Gerador_25_Jogos_21_NumerosMod1 in 'Gerador_25_Jogos_21_NumerosMod1.pas' {_F_GERADOR_25d21x4M1},
  Ranqueadorr_116_Jogos_21_NumerosMod1 in 'Ranqueadorr_116_Jogos_21_NumerosMod1.pas' {_F_Ranqueador_116d21M1},
  Ranqueadorr_116_Jogos_21_NumerosModelo2 in 'Ranqueadorr_116_Jogos_21_NumerosModelo2.pas' {_F_Ranqueador_116d21M2},
  Gerador_10_Jogos_17_NumerosMod3 in 'Gerador_10_Jogos_17_NumerosMod3.pas' {_F_GERADOR_25d17x8M3},
  Ranqueadorr_020_Jogos_21_NumerosMod1 in 'Ranqueadorr_020_Jogos_21_NumerosMod1.pas' {_F_Ranqueador_020d21M1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM1, DM1);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(T_F_GERADOR_25d17x8M2, _F_GERADOR_25d17x8M2);
  Application.CreateForm(T_F_Ranqueador_18_Jogos_17_NumerosMod1, _F_Ranqueador_18_Jogos_17_NumerosMod1);
  Application.CreateForm(T_F_GERADOR_25d21x4M1, _F_GERADOR_25d21x4M1);
  Application.CreateForm(T_F_Ranqueador_116d21M1, _F_Ranqueador_116d21M1);
  Application.CreateForm(T_F_Ranqueador_116d21M2, _F_Ranqueador_116d21M2);
  Application.CreateForm(T_F_GERADOR_25d17x8M3, _F_GERADOR_25d17x8M3);
  Application.CreateForm(T_F_Ranqueador_020d21M1, _F_Ranqueador_020d21M1);
  Application.Run;
end.
