unit acbrpixcd.context;

interface

uses acbrpixcd.interfaces,
  acbrpixcd.enums,
  system.SysUtils,
  system.Generics.Collections,
  acbrpixcd.shipay;

type
  TContext = class(TInterfacedObject, iContext)
  private
    Fconf: Iconfiguracao;
    Fmap: TDictionary<TTipoPSP, IStrategy>;

    procedure crateMap;
    constructor create(conf: Iconfiguracao);
    destructor destroy; override;
  public
    class function new(conf: Iconfiguracao): iContext;
    function execute(value: TTipoPSP): IStrategy;
  end;

implementation

uses
  acbrpixcd.bancodoBrasil;

{ TContext }

procedure TContext.crateMap;
begin
  Fmap.Add(shipay, TStrategyShipay.new(Fconf));
  Fmap.Add(bancobrasil, TStrategyBancoDobrasil.new(Fconf))
end;

constructor TContext.create(conf: Iconfiguracao);
begin
  Fconf := conf;
  Fmap := TDictionary<TTipoPSP, IStrategy>.create;
end;

destructor TContext.destroy;
begin
  Fmap.Free;
  inherited;
end;

function TContext.execute(value: TTipoPSP): IStrategy;
begin
  if not Fmap.TryGetValue(value, result) then
    raise Exception.create('Não existe este PSP');
end;

class function TContext.new(conf: Iconfiguracao): iContext;
begin
  result := self.create(conf)
end;

end.
