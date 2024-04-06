unit acbrpixcd.controller;

interface

uses
  acbrpixcd.interfaces;

type
  TController = class(TInterfacedObject, iController)
  private
    Fconfiguracao: IConfiguracao;
    Fcontexto: Icontext;

    constructor crate;
  public
    class function NEW: iController;
    function configuracao: IConfiguracao;
    function contexto: Icontext;
  end;

implementation

uses
  acbrpixcd.context, acbrpixcd.configuracao;

{ TController }

function TController.configuracao: IConfiguracao;
begin
  result := Fconfiguracao;
end;

function TController.contexto: Icontext;
begin
  if not assigned(Fcontexto) then
      Fcontexto := TContext.new(Fconfiguracao);

  result := Fcontexto;
end;

constructor TController.crate;
begin
  Fconfiguracao := TConfiguracao.new;
end;

class function TController.NEW: iController;
begin
  result := self.Create;
end;

end.
