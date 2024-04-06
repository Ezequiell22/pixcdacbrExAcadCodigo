unit acbrpixcd.shipay;

interface

uses
  acbrpixcd.interfaces,
  ACBrPIXPSPShipay,
  acbrpixcd;

type
  TStrategyShipay = class(TInterfacedObject, iStrategy)
  private
    FPSP: TACBrPSPShipay;
    constructor create(conf: IConfiguracao);
    destructor destroy;

  public
    class function New(conf: IConfiguracao): iStrategy;
    function PSP: TacbrPsp;
  end;

implementation

{ TStrategyShipay }

constructor TStrategyShipay.create(conf: IConfiguracao);
begin
  FPSP := TACBrPSPShipay.create(nil);

  FPSP.ClientID := conf.ClientID;
  FPSP.SecretKey := conf.SecretKey;
  FPSP.AccessKey := conf.AccessKey;
end;

destructor TStrategyShipay.destroy;
begin
  FPSP.Free;
end;

class function TStrategyShipay.New(conf: IConfiguracao): iStrategy;
begin
  result := self.create(conf)
end;

function TStrategyShipay.PSP: TacbrPsp;
begin
  result := FPSP;
end;

end.
