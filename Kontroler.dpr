program Kontroler;

uses
  Vcl.Forms,
  mainunit in 'mainunit.pas' {MainForm},
  zvitnaOstatok in 'zvitnaOstatok.pas' {frmZvitnaOstatok},
  ModuleReports in 'ModuleReports.pas',
  ProcessForm in 'ProcessForm.pas' {ProcessFrm},
  LimitsCheck in 'LimitsCheck.pas' {frmLimitsCheck},
  zapClientCountOper in 'zapClientCountOper.pas' {KlientsCountOper},
  GetOpkasIdForm in 'GetOpkasIdForm.pas' {frmgetOpkasId},
  OpersByClientForm in 'OpersByClientForm.pas' {frmOpersByClient},
  GetClientIdForm in 'GetClientIdForm.pas' {frmGetClentId},
  zvitnadovidka in 'zvitnadovidka.pas' {FormZvitnaDovidka};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TProcessFrm, ProcessFrm);
  Application.CreateForm(TfrmLimitsCheck, frmLimitsCheck);
  Application.Run;
end.
