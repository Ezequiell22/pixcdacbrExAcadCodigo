unit acbrpixcd.configuracao;

interface

uses
  acbrpixcd.interfaces, acbrpixcd.enums;

type
  TConfiguracao = class(TInterfacedObject, iConfiguracao)

  private
//    Fpsp: TTipoPSP;
    Fnome: string;
    Fcep: string;
    Fcidade: string;
    Festado: string;
    Fambiente: string;
    Ftimeout: integer;
    Fhost: string;
    Fport: string;
    Fuser: string;
    Fpass: string;
    Farqlog: string;
    Fnivellog: string;
    FtipoCertificado: string;
    FapiVersion: string;
    FchavePix: string;
    FConsumerKey: string;
    FconsumerSecret: string;
    FclientId: string;
    FclientSecret: string;
    FdevelopApplication: string;
    FaccessKey: string;
    Fcnpj: string;
    FaccountId: string;
    Ftoken: string;
    Fcertificado: string;
    FcertificadoRoot: string;
    Fsenha: string;
    FmediatorFree: Currency;
    fchavePrimaria: string;
    FSecretKey: string;
  public
    class function New: iConfiguracao;
//    function psp(value: TTipoPSP): iConfiguracao; overload;
//    function psp: TTipoPSP; overload;
    function nome(value: string): iConfiguracao; overload;
    function nome: string; overload;
    function cep(value: string): iConfiguracao; overload;
    function cep: string; overload;
    function cidade(value: string): iConfiguracao; overload;
    function cidade: string; overload;
    function estado(value: string): iConfiguracao; overload;
    function estado: string; overload;
    function ambiente(value: string): iConfiguracao; overload;
    function ambiente: string; overload;
    function timeout(value: integer): iConfiguracao; overload;
    function timeout: integer; overload;
    function host(value: string): iConfiguracao; overload;
    function host: string; overload;
    function port(value: string): iConfiguracao; overload;
    function port: string; overload;
    function user(value: string): iConfiguracao; overload;
    function user: string; overload;
    function pass(value: string): iConfiguracao; overload;
    function pass: string; overload;
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

implementation

{ TConfiguracao }

function TConfiguracao.accessKey: string;
begin
  result := FaccessKey;
end;

function TConfiguracao.accessKey(value: string): iConfiguracao;
begin
  result := Self;
  FaccessKey := value;
end;

function TConfiguracao.accountId(value: string): iConfiguracao;
begin
  result := Self;
  FaccountId := value;
end;

function TConfiguracao.accountId: string;
begin
  result := faccountId;
end;

function TConfiguracao.ambiente(value: string): iConfiguracao;
begin
  result := Self;
  Fambiente := value;
end;

function TConfiguracao.ambiente: string;
begin
   result := fambiente;
end;

function TConfiguracao.apiVersion(value: string): iConfiguracao;
begin
  result := Self;
  FapiVersion := value;
end;

function TConfiguracao.apiVersion: string;
begin
   result := fapiVersion;
end;

function TConfiguracao.arqlog: string;
begin
   result := farqlog;
end;

function TConfiguracao.arqlog(value: string): iConfiguracao;
begin
  result := Self;
  Farqlog := value;
end;

function TConfiguracao.cep(value: string): iConfiguracao;
begin
  result := Self;
  Fcep := value;
end;

function TConfiguracao.cep: string;
begin
   result := fcep;
end;

function TConfiguracao.certificado(value: string): iConfiguracao;
begin
  result := Self;
  Fcertificado := value;
end;

function TConfiguracao.certificado: string;
begin
  result := fcertificado;
end;

function TConfiguracao.certificadoRoot(value: string): iConfiguracao;
begin
  result := Self;
  FcertificadoRoot := value;
end;

function TConfiguracao.certificadoRoot: string;
begin
  result := fcertificadoRoot;
end;

function TConfiguracao.chavePix: string;
begin
  result := fchavePix;
end;

function TConfiguracao.chavePix(value: string): iConfiguracao;
begin
  result := Self;
  FchavePix := value;
end;

function TConfiguracao.chavePrimaria: string;
begin
   result := fchavePrimaria;
end;

function TConfiguracao.chavePrimaria(value: string): iConfiguracao;
begin
  result := Self;
  fchavePrimaria := value;
end;

function TConfiguracao.cidade(value: string): iConfiguracao;
begin
  result := Self;
  Fcidade := value;
end;

function TConfiguracao.cidade: string;
begin
   result := fcidade;
end;

function TConfiguracao.clientId(value: string): iConfiguracao;
begin
  result := Self;
  FclientId := value;
end;

function TConfiguracao.clientId: string;
begin
   result := fclientId;
end;

function TConfiguracao.clientSecret: string;
begin
  result := fclientSecret;
end;

function TConfiguracao.clientSecret(value: string): iConfiguracao;
begin
  result := Self;
  FclientSecret := value;
end;

function TConfiguracao.cnpj(value: string): iConfiguracao;
begin
  result := Self;
  Fcnpj := value;
end;

function TConfiguracao.cnpj: string;
begin
   result := fcnpj;
end;

function TConfiguracao.ConsumerKey(value: string): iConfiguracao;
begin
  result := Self;
  FConsumerKey := value;
end;

function TConfiguracao.ConsumerKey: string;
begin
   result := fConsumerKey;
end;

function TConfiguracao.consumerSecret(value: string): iConfiguracao;
begin
  result := Self;
  FconsumerSecret := value;
end;

function TConfiguracao.consumerSecret: string;
begin
   result := fconsumerSecret;
end;

function TConfiguracao.developApplication: string;
begin
   result := fdevelopApplication;
end;

function TConfiguracao.developApplication(value: string): iConfiguracao;
begin
  result := Self;
  FdevelopApplication := value;
end;

function TConfiguracao.estado: string;
begin
   result := festado;
end;

function TConfiguracao.estado(value: string): iConfiguracao;
begin
  result := Self;
  Festado := value;
end;

function TConfiguracao.host: string;
begin
   result := fhost;
end;

function TConfiguracao.host(value: string): iConfiguracao;
begin
  result := Self;
  Fhost := value;
end;

function TConfiguracao.mediatorFree(value: Currency): iConfiguracao;
begin
  result := Self;
  FmediatorFree := value;
end;

function TConfiguracao.mediatorFree: Currency;
begin
   result := fmediatorFree;
end;

class function TConfiguracao.New: iConfiguracao;
begin
  result := self.Create;
end;

function TConfiguracao.nivellog(value: string): iConfiguracao;
begin
  result := Self;
  Fnivellog := value;
end;

function TConfiguracao.nivellog: string;
begin
   result := fnivellog;
end;

function TConfiguracao.nome(value: string): iConfiguracao;
begin
  result := Self;
  Fnome := value;
end;

function TConfiguracao.nome: string;
begin
  result := fnome;
end;

function TConfiguracao.pass: string;
begin
   result := fpass;
end;

function TConfiguracao.pass(value: string): iConfiguracao;
begin
  result := Self;
  Fpass := value;
end;

function TConfiguracao.port(value: string): iConfiguracao;
begin
  result := Self;
  Fport := value;
end;

function TConfiguracao.port: string;
begin
  result := fport;
end;

//function TConfiguracao.psp(value: TTipoPSP): iConfiguracao;
//begin
//  result := Self;
//  Fpsp := value;
//end;
//
//function TConfiguracao.psp: TTipoPSP;
//begin
//  result := fpsp;
//end;

function TConfiguracao.SecretKey(value: string): iConfiguracao;
begin
  result := Self;
  FSecretKey := value;
end;

function TConfiguracao.SecretKey: string;
begin
  result := fSecretKey;
end;

function TConfiguracao.senha(value: string): iConfiguracao;
begin
  result := Self;
  Fsenha := value;
end;

function TConfiguracao.senha: string;
begin
  result := senha;
end;

function TConfiguracao.timeout(value: integer): iConfiguracao;
begin
  result := Self;
  Ftimeout := value;
end;

function TConfiguracao.timeout: integer;
begin
   result := ftimeout;
end;

function TConfiguracao.tipoCertificado: string;
begin
   result := ftipoCertificado;
end;

function TConfiguracao.tipoCertificado(value: string): iConfiguracao;
begin
  result := Self;
  FtipoCertificado := value;
end;

function TConfiguracao.token: string;
begin
   result := fToken;
end;

function TConfiguracao.token(value: string): iConfiguracao;
begin
  result := Self;
  Ftoken := value;
end;

function TConfiguracao.user: string;
begin
   result := fuser;
end;

function TConfiguracao.user(value: string): iConfiguracao;
begin
  result := Self;
  Fuser := value;
end;

end.
