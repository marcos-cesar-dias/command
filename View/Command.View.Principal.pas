unit Command.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Command.Model.ESocial, Command.Model.Interfaces,
  Command.Model.CommandCarregar, Command.Model.InvokerExecutor,
  Command.Model.CommandEnviar, Command.Model.CommandEmail, Command.View.Invoker;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
  VAR
    eSocial : TESocial;
    Str : TStringList;
begin
  str := TStringList.Create;

  eSocial := TEsocial.Create(str);

  try
    TInvokerExecutor // pederia ser a view ? ou a ação do botão da view ?
      .New
        .Add(TCommandCarregar.New(eSocial))
        .Add(TCommandEnviar.New(eSocial))
        .Add(TCommandEmail.New(str))
        .Executar;

    memo1
      .Lines
      .AddStrings(str);

  finally
    str.free;
    esocial.free;
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
  VAR
    eSocial : TESocial;
    Str : TStringList;
begin
  str := TStringList.Create;
  eSocial := TEsocial.Create(str);
  try
    Application.CreateForm( TForm2, Form2);

    Form2.fInvokerButton1 :=
      TInvokerExecutor // pederia ser a view ? ou a ação do botão da view ?
        .New
          .Add(TCommandCarregar.New(eSocial))
          .Add(TCommandEnviar.New(eSocial));

    Form2.fInvokerButton2 :=
      TInvokerExecutor // pederia ser a view ? ou a ação do botão da view ?
        .New
         .Add(TCommandEmail.New(str));

    Form2.ShowModal;

    memo1
      .Lines
      .AddStrings(str);

  finally
    str.free;
    esocial.free;
  end;
end;

Initialization
  ReportMemoryLeaksOnShutdown := true;

end.


