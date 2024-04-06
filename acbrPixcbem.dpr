program acbrPixcbem;

uses
  Vcl.Forms,
  acbrpixcd.view.principal in 'view\acbrpixcd.view.principal.pas' {Form1},
  acbrpixcd.enums in 'acbrpixcd.enums.pas',
  acbrpixcd.interfaces in 'acbrpixcd.interfaces.pas',
  acbrpixcd.configuracao in 'acbrpixcd.configuracao.pas',
  acbrpixcd.shipay in 'acbrpixcd.shipay.pas',
  acbrpixcd.context in 'acbrpixcd.context.pas',
  acbrpixcd.controller in 'acbrpixcd.controller.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
