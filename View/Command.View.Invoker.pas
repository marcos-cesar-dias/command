unit Command.View.Invoker;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Command.Model.Interfaces;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }


  public
    fInvokerButton1: IInvoker;
    fInvokerButton2: IInvoker;
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  fInvokerButton1.Executar;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  fInvokerButton2.Executar;
end;

end.
