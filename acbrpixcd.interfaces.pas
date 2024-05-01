unit acbrpixcd.interfaces;

interface

uses
  acbrpixcd.enums,
  acbrPixCD,
  system.JSON;

type
  iPixCd = interface;
  iConfiguracao = interface
    ['{0870D976-4028-47A6-942A-DBD01CC44C1F}']
//    function psp(value: TTipoPSP): iConfiguracao; overload;
//    function psp: TTipoPSP; overload;

    // configuração do recebedor
    function nome(value: string): iConfiguracao; overload;
    function nome: string; overload;
    function cep(value: string): iConfiguracao; overload;
    function cep: string; overload;
    function cidade(value: string): iConfiguracao; overload;
    function cidade: string; overload;
    function estado(value: string): iConfiguracao; overload;
    function estado: string; overload;

    // configuração do psp
    function ambiente(value: string): iConfiguracao; overload;
    function ambiente: string; overload;
    function timeout(value: integer): iConfiguracao; overload;
    function timeout: integer; overload;

    // conf proxy
    function host(value: string): iConfiguracao; overload;
    function host: string; overload;
    function port(value: string): iConfiguracao; overload;
    function port: string; overload;
    function user(value: string): iConfiguracao; overload;
    function user: string; overload;
    function pass(value: string): iConfiguracao; overload;
    function pass: string; overload;

    // log
    function arqlog(value: string): iConfiguracao; overload;
    function arqlog: string; overload;
    function nivellog(value: string): iConfiguracao; overload;
    function nivellog: string; overload;

    function tipoCertificado(value: string): iConfiguracao; overload;
    function tipoCertificado: string; overload;
    function apiVersion(value: string): iConfiguracao; overload;
    function apiVersion: string; overload;
    function chavePix(value: string): iConfiguracao; overload;
    function chavePix: string; overload;
    function ConsumerKey(value: string): iConfiguracao; overload;
    function ConsumerKey: string; overload;
    function consumerSecret(value: string): iConfiguracao; overload;
    function consumerSecret: string; overload;
    function clientId(value: string): iConfiguracao; overload;
    function clientId: string; overload;
    function clientSecret(value: string): iConfiguracao; overload;
    function clientSecret: string; overload;
    function developApplication(value: string): iConfiguracao; overload;
    function developApplication: string; overload;
    function accessKey(value: string): iConfiguracao; overload;
    function accessKey: string; overload;
    function cnpj(value: string): iConfiguracao; overload;
    function cnpj: string; overload;
    function accountId(value: string): iConfiguracao; overload;
    function accountId: string; overload;
    function token(value: string): iConfiguracao; overload;
    function token: string; overload;
    function certificado(value: string): iConfiguracao; overload;
    function certificado: string; overload;
    function certificadoRoot(value: string): iConfiguracao; overload;
    function certificadoRoot: string; overload;
    function senha(value: string): iConfiguracao; overload;
    function senha: string; overload;
    function chavePrimaria(value: string): iConfiguracao; overload;
    function chavePrimaria: string; overload;
    function mediatorFree(value: Currency): iConfiguracao; overload;
    function mediatorFree: Currency; overload;
    function SecretKey(value: string): iConfiguracao; overload;
    function SecretKey: string; overload;

  end;

  IStrategy = interface
    ['{55067004-78EC-4975-8BED-2266E0684C07}']
    function PSP : TacbrPsp;
  end;

  iContext = interface
    ['{E0B47421-9210-4F29-9917-3AD1D894790B}']
    function execute(value : TTipoPSP) : IStrategy;
  end;

  iController = interface
    ['{07471412-B2B1-4A7C-B836-949F8ADD8C86}']
    function configuracao : IConfiguracao;
    function pix : iPixCD;
  end;

  iPixCd = interface
    ['{67C0933D-0978-40F1-B9BE-ABC1EB948BA9}']
    function ConsultaPix( avalue :string ) : IPixCd;
    function ConsultarPixRecebidos( adtini, adtfim : TdateTime;
      aPag, aItensPag: integer; aTxId, aCpfCnpj: string) : IpixCd;
    function SolicitarDevolucao(aId, aIdDev, aDescricao : string;
      aNatureza: integer; aValor : currency) : iPixCd;
    function ConsultarDevolucao( aId, aIdDev : string) : iPixCd;
    function CriarCobrancaImediata(aDevedor, aCpfCnpj, aPagador, aTxId: string;
      aValor: currency; aPodeAlterarValor : boolean = false) : iPixCd;
    function ConsultarCobrancaImediata(aTxId : string) : iPixCd;
    function ConsultarCobrancas(aDtIni, aDtFim : TdateTime; aPag, aItensPag: integer;
      aCpfCnpj: string; aStatus: integer; aComLocalizacao : boolean = false) : iPixCd;
    function CancelarCobranca( aTxId : string) : iPixCd;
    function CriarCobrancVencimento( aComprador, AcompradorCpfCnpj : string;
      aDescontoModalidade : integer; aDescontoValor : currency;
      aJurosModalidade : integer; aJurosValor : currency;
      aMultaModalidade : integer ; aMultaValor : currency;
      aVencimento: TdateTime; aDiasPagar : integer; aValor : currency) : iPixcd;
    function ConsultarCobrancaVencimento( aTxId : string; aRevisao : integer) : iPixCd;

    function retorno : string;
    function Json : TJsonObject;
    function JsonArray : TJsonArray;
  end;
implementation

end.
