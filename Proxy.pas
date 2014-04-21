unit Proxy;

interface

uses
  System.SysUtils, System.Variants, System.Classes,idHttp,
  RegularExpressionsAPI,RegularExpressionsCore,RegularExpressionsConsts,
  RegularExpressions;


type
  TProxy = class
    private
      Reg:TRegEx;
      http:TIdHttp;
      List:TStringList;
      InputFile:TStringList;
    public
      constructor Create;
      destructor Destroy;
      function Test(URL:String):boolean;
  end;


implementation

constructor TProxy.Create;
begin
  List:=TStringList.Create;
  Reg:=TregEx.Create('');
  InputFile:=TStringList.Create;
  Http:=TIdHttp.Create;
  Http.Request.UserAgent :='Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727)';
  InputFile.LoadFromFile('proxy.txt');
end;

function Tproxy.Test(URL: string):boolean;
var
  i:integer;
  Addr:String;
  InText:integer;
begin
for i:=0 to Inputfile.Count-1 do
  begin
    Addr:=InputFile.Strings[i];
    InText:= Pos(':', Addr);
    Http.ProxyParams.ProxyServer:= Copy(Addr, 0, InText - 1);
    Http.ProxyParams.ProxyPort:=StrToInt(Copy(Addr, InText + 1, Length(Addr)));
    Http.Get('213.180.204.3');
    //if Http.ResponseCode=200 then
  end;
end;

destructor TProxy.Destroy;
begin
  FreeAndNil(Http);
  FreeAndNil(InputFile);
  FreeAndNil(Reg);
  FreeAndNil(List);
end;


end.
