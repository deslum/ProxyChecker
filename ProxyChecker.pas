program Project1;

{$mode objfpc}{$H+}

uses
HttpSend,regexpr,SysUtils,Classes;

type
TProxy = class
private
Http:THttpSend;
reg:TRegExpr;
public
constructor Create;
function Test(ip:String;port:String):boolean;
end;


constructor TProxy.Create;
begin

  http:=THttpSend.Create;
  reg:=TregExpr.Create;
  reg.Expression:='d_clip_button">(.*?)\<';
  http.UserAgent :='Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727)';
  end;

function TProxy.Test(ip:string;port:string):boolean;
var
SL:TStringList;
begin
  SL:=TStringList.Create;
  http.ProxyHost:=ip;
  http.ProxyPort:=port;
  http.HTTPMethod('get','2ip.ru');
  Sl.LoadFromStream(http.document);
  if reg.Exec(sl.Text) then
    if(Reg.Match[1])<>'' then Result:=true
                         else Result:=false;
  sl.Free;

end;


var
P:TProxy;
begin
p:=TProxy.Create;
writeln(p.Test('202.116.1.149','8128'));
p.Free;
end.
