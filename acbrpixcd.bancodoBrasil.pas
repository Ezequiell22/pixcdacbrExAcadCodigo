unit acbrpixcd.bancodoBrasil;

interface

uses
  acbrpixcd.interfaces,
  ACBrPIXPSPBancoDoBrasil,
  acbrpixcd,
  system.Classes,
  acbrJson;

type
  TStrategyBancoDoBrasil = class(TInterfacedObject, iStrategy, iBancoDoBrasil)
  private
    FPSP: TACBrPSPBancoDoBrasil;
    constructor create(conf: IConfiguracao);
    destructor destroy;

  public
    class function New(conf: IConfiguracao): iStrategy;
    function PSP: TacbrPsp;
    procedure QuandoReceberRespostaHttp( const aURL : string; const aMethod : string;
    respHeaders: TStrings; var aResultCode : integer; var RespostaHttp : AnsiString);
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

procedure TStrategyBancoDoBrasil.QuandoReceberRespostaHttp(const aURL,
  aMethod: string; respHeaders: TStrings; var aResultCode: integer;
  var RespostaHttp: AnsiString);
var
  jsRet, js: TACBrJSONObject;
  ja, jsArr: TACBrJSONArray;
  I: Integer;

  function GetDetalhesPagador(aJson: TACBrJSONObject): String;
  var
    jPag: TACBrJSONObject;
  begin
    jPag := aJson.AsJSONObject['pagador'];
    if Assigned(jPag) then
      Result := aJson.AsString['infoPagador'] + ' ' + jPag.AsString['cpf'] +
        jPag.AsString['cnpj'] + ' - ' + jPag.AsString['nome'];
  end;

begin
  if (AMethod = ChttpMethodGET) and (AResultCode = HTTP_OK) and (Pos(cEndPointPix, AURL) > 0) then
  begin
    jsRet := TACBrJSONObject.Parse(String(RespostaHttp));
    jsArr :=  jsRet.AsJSONArray['pix'];
    try
      if Assigned(jsArr) and (jsArr.Count > 0) then
      begin
        ja := TACBrJSONArray.Create;

        for i := 0 to jsArr.Count - 1 do
        begin
          js := jsArr.ItemAsJSONObject[i];
          js.AddPair('infoPagador', GetDetalhesPagador(js));
          ja.AddElementJSONString(js.ToJSON);
        end;
        jsRet.AddPair('pix', ja);
      end
      else
        jsRet.AddPair('infoPagador', GetDetalhesPagador(jsRet));

      RespostaHttp := jsRet.ToJSON;
    finally
      jsRet.Free;
    end;
  end;
end;
end.
