program Kontroler;

uses
  Vcl.Forms,
  mainunit in 'mainunit.pas' {MainForm},
  zvitnadovidka in 'zvitnadovidka.pas' {FormZvitnaDovidka},
  ModuleReports in 'ModuleReports.pas',
  ProcessForm in 'ProcessForm.pas' {ProcessFrm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TProcessFrm, ProcessFrm);
  Application.Run;
end.
