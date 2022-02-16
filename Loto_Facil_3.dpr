program Loto_Facil_3;

uses
  Forms,
  Loto_Facil_3_exc6 in 'Loto_Facil_3_exc6.pas' {_F_EMULADOR_12p6_6_EXC},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(T_F_EMULADOR_12p6_6_EXC, _F_EMULADOR_12p6_6_EXC);
  Application.Run;
end.
