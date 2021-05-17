unit Command.Model.CommandEnviar;

interface

uses
  Command.Model.Interfaces, Command.Model.ESocial;


type
  TCommandEnviar = class(TInterfacedObject, ICommand)
  private
    FESocial : TESocial;
  public
    constructor Create(AEsocial: TESocial);
    class function New(AEsocial: TESocial): ICommand;
    procedure Execute;
  end;
implementation

{ TCommandEnviar }

constructor TCommandEnviar.Create(AEsocial: TESocial);
begin
  FESocial := AEsocial;
end;

procedure TCommandEnviar.Execute;
begin
  FESocial.Enviar;
end;

class function TCommandEnviar.New(AEsocial: TESocial): ICommand;
begin
  result := Self.Create(AEsocial);
end;

end.
