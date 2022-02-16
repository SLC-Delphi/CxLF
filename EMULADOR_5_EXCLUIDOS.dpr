program EMULADOR_5_EXCLUIDOS;

uses
  Forms,
  EMULADOR_5_EXC in 'EMULADOR_5_EXC.pas' {_F_EMULADOR_5_EXC};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(T_F_EMULADOR_5_EXC, _F_EMULADOR_5_EXC);
  Application.Run;
end.
