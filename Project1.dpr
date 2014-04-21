program Project1;

uses
  Vcl.Forms,
<<<<<<< HEAD
  Unit1 in 'Unit1.pas' {Form1};
=======
  Unit1 in 'Unit1.pas' {Form1},
  Proxy in 'Proxy.pas';
>>>>>>> 5f53446ee67c6250061502fb47f8f45ff3acb06f

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
