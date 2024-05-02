unit acbrpixcd.view.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ACBrBase, acbrpixcd,
  Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    edt_consulta_pix: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations
      public
      { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  acbrpixcd.controller,
  acbrpixcd.enums;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  var
  LController := TController.NEW;

  LController.configuracao.ClientID('não sei').SecretKey('não sei')
    .AccessKey('não sei');


  LController.pix.ConsultaPix(edt_consulta_pix.text);
end;

end.
