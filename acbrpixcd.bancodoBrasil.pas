unit acbrpixcd.bancodoBrasil;

interface

uses
  acbrpixcd.interfaces,
  ACBrPIXPSPBancoDoBrasil,
  acbrpixcd;

type
  TStrategyBancoDoBrasil = class(TInterfacedObject, iStrategy)
  private
    FPSP: TACBrPSPBancoDoBrasil;
    constructor create(conf: IConfiguracao);
    destructor destroy;

  public
    class function New(conf: IConfiguracao): iStrategy;
    function PSP: TacbrPsp;
  end;

implementation

{ TStrategyShipay }

uses System.SysUtils;

constructor TStrategyBancoDoBrasil.create(conf: IConfiguracao);
begin
  FPSP := TACBrPSPBancoDoBrasil.create(nil);

  FPSP.ChavePIX := conf.ChavePIX;
  FPSP.ClientID := conf.ClientID;
  FPSP.ClientSecret := conf.ClientSecret;
  FPSP.DeveloperApplicationKey := conf.developApplication;
  FPSP.BBAPIVersao := TACBrBBAPIVersao(conf.apiVersion.ToInteger)
end;

destructor TStrategyBancoDoBrasil.destroy;
begin
  FPSP.Free;
end;

class function TStrategyBancoDoBrasil.New(conf: IConfiguracao): iStrategy;
begin
  result := self.create(conf)
end;

function TStrategyBancoDoBrasil.PSP: TacbrPsp;
begin
  result := FPSP;
end;

end.
