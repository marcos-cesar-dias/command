unit Command.Model.Interfaces;

interface

type

  ICommand = interface
  ['{0C7C712C-4C86-44D5-95BB-438CA9E203B1}']
    procedure Execute;
  end;

  IInvoker = interface
  ['{646B4CB0-2031-4898-96CE-8083F0439FFE}']
    function Add(Cmd: ICommand): IInvoker;
    procedure Executar();
  end;

implementation

end.
