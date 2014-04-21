unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,idHttp,RegularExpressionsAPI,RegularExpressionsCore,
  RegularExpressionsConsts,RegularExpressions;

type
  TForm1 = class(TForm)
  private
    procedure Start();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


var
  reg:TRegEx;
  http:TIdHttp;
  FS:TStringList;
  InputFile:TStringList;
  i:integer;
  Addr:String;
  InText:integer;
procedure TForm1.Start();
begin
  FS:=TStringList.Create;
  reg:=TregEx.Create('');
  InputFile:=TStringList.Create;
  http:=TIdHttp.Create;
  http.Request.UserAgent :='Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727)';
  InputFile.LoadFromFile('/Users/mas/Documents/ProxyChecker/dHidder/proxy.txt');
  for i:=0 to inputfile.Count-1 do begin
      Addr:=InputFile.Strings[i];
      InText:= Pos(':', Addr);
      //http.Request.ProxyHost:= Copy(Addr, 0, InText - 1);
      //http.ProxyPort:= Copy(Addr, InText + 1, Length(Addr));
      http.Get('213.180.204.3');
  end;
end;

end.
