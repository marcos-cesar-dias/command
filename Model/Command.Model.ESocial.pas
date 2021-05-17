unit Command.Model.ESocial;

interface

uses
  System.Classes;
type

  TESocial = class
    private
      FStr : TStringList;
    public
    constructor Create(stringList: TStringList);
    procedure Carregar;
    procedure Enviar;
  end;

implementation

uses
  Vcl.Dialogs;

{ TESocial }

procedure TESocial.Carregar;
begin
  FStr.Add('CARREGANDO...');
end;

constructor TESocial.Create(stringList: TStringList);
begin
  FStr := StringList;
end;

procedure TESocial.Enviar;
begin
  FStr.Add('ENVIANDO ESOCIAL...');
end;

end.
