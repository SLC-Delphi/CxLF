program EMULADOR_6_EXCLUIDOS;

uses
  Forms,
  EMULADOR_6_EXC in 'EMULADOR_6_EXC.pas' {_F_EMULADOR_6_EXC};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(T_F_EMULADOR_6_EXC, _F_EMULADOR_6_EXC);
  Application.Run;
end.
