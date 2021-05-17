unit Command.Model.CommandCarregar;

interface

uses
  Command.Model.Interfaces, Command.Model.ESocial;

type
  TCommandCarregar = class(TInterfacedObject, ICommand)
  private
    FESocial : TESocial;
  public
    constructor Create(AEsocial: TESocial);
    class function New(AEsocial: TESocial): ICommand;
    procedure Execute;
  end;

implementation

{ TCommandCarregar }

constructor TCommandCarregar.Create(AEsocial: TESocial);
begin
  FESocial := AEsocial;
end;

procedure TCommandCarregar.Execute;
begin
  FESocial.Carregar;
end;

class function TCommandCarregar.New(AEsocial: TESocial): ICommand;
begin
  result := Self.Create(AEsocial);
end;

end.
