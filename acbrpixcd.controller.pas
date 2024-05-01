unit acbrpixcd.controller;

interface

uses
  acbrpixcd.interfaces;

type
  TController = class(TInterfacedObject, iController)
  private
    Fconfiguracao: IConfiguracao;
    FContext: Icontext;
    FPix : iPixCd;
    constructor create;
  public
    class function NEW: iController;
    function configuracao: IConfiguracao;
    function pix: IPixCd;
  end;

implementation

uses
  acbrpixcd.context, acbrpixcd.configuracao, acbrpixcd.pixcd;

{ TController }

function TController.configuracao: IConfiguracao;
begin
  result := Fconfiguracao;
end;

function TController.pix: IPixCd;
begin
  if not assigned(FPix) then
      FPix := TPixCd.new(FContext);
  result := FPix;
end;

constructor TController.create;
begin
  Fconfiguracao := TConfiguracao.new;
  FContext := TContext.new(Fconfiguracao);
end;

class function TController.NEW: iController;
begin
  result := self.Create;
end;

end.
