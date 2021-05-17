program PadraoCommand;

uses
  Vcl.Forms,
  Command.View.Principal in 'View\Command.View.Principal.pas' {Form1},
  Command.Model.Interfaces in 'Model\Command.Model.Interfaces.pas',
  Command.Model.ESocial in 'Model\Command.Model.ESocial.pas',
  Command.Model.CommandCarregar in 'Model\Command.Model.CommandCarregar.pas',
  Command.Model.CommandEnviar in 'Model\Command.Model.CommandEnviar.pas',
  Command.Model.InvokerExecutor in 'Model\Command.Model.InvokerExecutor.pas',
  Command.Model.CommandEmail in 'Model\Command.Model.CommandEmail.pas',
  Command.View.Invoker in 'View\Command.View.Invoker.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
