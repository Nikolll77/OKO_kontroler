program Kontroler;

uses
  Vcl.Forms,
  mainunit in 'mainunit.pas' {MainForm},
  zvitnadovidka in 'zvitnadovidka.pas' {FormZvitnaDovidka},
  ModuleReports in 'ModuleReports.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
