unit Command.Model.CommandEmail;

interface

uses
  Command.Model.Interfaces, System.Classes;


type
  TCommandEMail = class(TInterfacedObject, ICommand)
  private
    FStr: TStringList;
  public
    constructor Create(Str: TStringList);
    class function New(Str: TStringList): ICommand;
    procedure Execute;
  end;
implementation

{ TCommandEMail }

constructor TCommandEMail.Create(Str: TStringList);
begin
  FStr := str;
end;

procedure TCommandEMail.Execute;
begin
  Fstr.Add('Enviando EMail');
end;

class function TCommandEMail.New(Str: TStringList): ICommand;
begin
  result := Self.Create(Str);
end;

end.

