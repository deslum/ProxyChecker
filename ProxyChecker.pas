program project1;

{$mode objfpc}{$H+}

uses laz_synapse,HttpSend,Sysutils,Classes,RegExpr;



var
  reg:TRegExpr;
  http:THttpSend;
  FS:TStringList;
  InputFile:TStringList;
  i:integer;
  Addr:String;
  InText:integer;
begin
  FS:=TStringList.Create;
  reg:=TregExpr.Create;
  reg.Expression:='d_clip_button">(.*?)\<';
  InputFile:=TStringList.Create;
  http:=Thttpsend.Create;
  http.UserAgent :='Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727)';
  InputFile.LoadFromFile('proxy.txt');
  for i:=0 to inputfile.Count-1 do begin
      Addr:=InputFile.Strings[i];
      InText:= Pos(':', Addr);
      http.ProxyHost:= Copy(Addr, 0, InText - 1);
      http.ProxyPort:= Copy(Addr, InText + 1, Length(Addr));
      if http.HTTPMethod('get','2ip.ru') then  begin
        FS.LoadFromStream(http.document);
        if reg.Exec(FS.Text) then
           if(Reg.Match[1])<>'' then Writeln(Reg.Match[1])
                                else Writeln('NO');
      end;

  end;


  readln;
end.
