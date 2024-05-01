unit acbrpixcd.pixcd;

interface

uses
  acbrpixcd.interfaces,
  acbrpixcd,
  system.JSON,
  system.DateUtils,
  acbrUtil,
  ACBrPIXBase;

type

  TPixCd = class(TInterfacedObject, IPixCd)
  private
    FAcbrPixCd: TAcbrPixCd;
    FContext: iContext;
    Fretorno: string;
    FJson: TJsonObject;
    FJsonArray: TJsonArray;
  public
    constructor Create(contexto: iContext);
    destructor Destroy; override;
    class function New(contexto: iContext): IPixCd;
    function ConsultaPix(avalue: string): IPixCd;
    function ConsultarPixRecebidos(adtini, adtfim: TdateTime;
      aPag, aItensPag: integer; aTxId, aCpfCnpj: string): IPixCd;
    function SolicitarDevolucao(aId, aIdDev, aDescricao: string;
      aNatureza: integer; aValor: currency): IPixCd;
    function ConsultarDevolucao(aId, aIdDev: string): IPixCd;
    function CriarCobrancaImediata(aDevedor, aCpfCnpj, aPagador, aTxId: string;
      aValor: currency; aPodeAlterarValor: boolean = false): IPixCd;
    function ConsultarCobrancaImediata(aTxId: string): IPixCd;
    function ConsultarCobrancas(adtini, adtfim: TdateTime;
      aPag, aItensPag: integer; aCpfCnpj: string; aStatus: integer;
      aComLocalizacao: boolean = false): IPixCd;
    function CancelarCobranca(aTxId: string): IPixCd;
    function CriarCobrancVencimento(aComprador, AcompradorCpfCnpj: string;
      aDescontoModalidade: integer; aDescontoValor: currency;
      aJurosModalidade: integer; aJurosValor: currency;
      aMultaModalidade: integer; aMultaValor: currency; aVencimento: TdateTime;
      aDiasPagar: integer; aValor: currency): IPixCd;
    function ConsultarCobrancaVencimento(aTxId: string;
      aRevisao: integer): IPixCd;

    function retorno: string;
    function JSON: TJsonObject;
    function JsonArray: TJsonArray;
  end;

implementation

function TPixCd.CancelarCobranca(aTxId: string): IPixCd;
begin

end;

function TPixCd.ConsultaPix(avalue: string): IPixCd;
begin
  result := self;
  if FAcbrPixCd.PSP.epPix.ConsultarPix(avalue) then
    Fretorno := FAcbrPixCd.PSP.epPix.Pix.AsJSON
  else
    Fretorno := FAcbrPixCd.PSP.epPix.Problema.AsJSON;
end;

function TPixCd.ConsultarCobrancaImediata(aTxId: string): IPixCd;
begin

end;

function TPixCd.ConsultarCobrancas(adtini, adtfim: TdateTime;
  aPag, aItensPag: integer; aCpfCnpj: string; aStatus: integer;
  aComLocalizacao: boolean): IPixCd;
begin

end;

function TPixCd.ConsultarCobrancaVencimento(aTxId: string;
  aRevisao: integer): IPixCd;
begin

end;

function TPixCd.ConsultarDevolucao(aId, aIdDev: string): IPixCd;
begin

end;

function TPixCd.ConsultarPixRecebidos(adtini, adtfim: TdateTime;
  aPag, aItensPag: integer; aTxId, aCpfCnpj: string): IPixCd;
begin
  result := self;

  var
  ok := FAcbrPixCd.PSP.epPix.ConsultarPixRecebidos(startOfTheDay(adtini),
    EndOfTheday(adtfim), aTxId, OnlyNumber(aCpfCnpj), aPag, aItensPag);

  if ok then
    Fretorno := FAcbrPixCd.PSP.epPix.PixConsultados.AsJSON
  else
    Fretorno := FAcbrPixCd.PSP.epPix.Problema.AsJSON;

end;

constructor TPixCd.Create(contexto: iContext);
begin
  FContext := contexto;
  FAcbrPixCd := TAcbrPixCd.Create(nil);
end;

function TPixCd.CriarCobrancaImediata(aDevedor, aCpfCnpj, aPagador,
  aTxId: string; aValor: currency; aPodeAlterarValor: boolean): IPixCd;
begin

end;

function TPixCd.CriarCobrancVencimento(aComprador, AcompradorCpfCnpj: string;
  aDescontoModalidade: integer; aDescontoValor: currency;
  aJurosModalidade: integer; aJurosValor: currency; aMultaModalidade: integer;
  aMultaValor: currency; aVencimento: TdateTime; aDiasPagar: integer;
  aValor: currency): IPixCd;
begin

end;

destructor TPixCd.Destroy;
begin
  FAcbrPixCd.Free;
  inherited;
end;

function TPixCd.JSON: TJsonObject;
begin
  result := FJson;
end;

function TPixCd.JsonArray: TJsonArray;
begin
  result := FJsonArray;
end;

class function TPixCd.New(contexto: iContext): IPixCd;
begin
  result := self.Create(contexto);
end;

function TPixCd.retorno: string;
begin
  result := Fretorno;
end;

function TPixCd.SolicitarDevolucao(aId, aIdDev, aDescricao: string;
  aNatureza: integer; aValor: currency): IPixCd;
begin
  result := self;

  FAcbrPixCd.PSP.epPix.DevolucaoSolicitada.Clear;
  FAcbrPixCd.PSP.epPix.DevolucaoSolicitada.valor := aValor;
  FAcbrPixCd.PSP.epPix.DevolucaoSolicitada.natureza :=
    TAcbrPixNaturezaDevolucao(aNatureza);
  FAcbrPixCd.PSP.epPix.DevolucaoSolicitada.descricao := aDescricao;

  if FAcbrPixCd.PSP.epPix.SolicitarDevolucaoPix(aId, aIdDev) then
    Fretorno := FAcbrPixCd.PSP.epPix.Devolucao.AsJSON
  else
    Fretorno := FAcbrPixCd.PSP.epPix.Problema.AsJSON
end;

end.
