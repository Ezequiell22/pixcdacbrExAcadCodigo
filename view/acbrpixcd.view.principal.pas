unit acbrpixcd.view.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
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
  iController :=
      TController
        .NEW
        .configuracao
          .psp(shipay)
            .ClientID('não sei')
            .SecretKey('não sei')
            .AccessKey('não sei')
end;

end.
