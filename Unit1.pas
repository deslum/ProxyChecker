unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,idHttp,RegularExpressionsAPI,RegularExpressionsCore,
  RegularExpressionsConsts,RegularExpressions, Vcl.StdCtrls, Vcl.Menus,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    ListBox1: TListBox;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    procedure ToolButton1Click(Sender: TObject);
  private
    procedure Start();
  RegularExpressionsConsts,RegularExpressions,Proxy;


type
  TForm1 = class(TForm)
  private
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
  InputFile:=TStringList.Create;
  http:=TIdHttp.Create;
  http.Request.UserAgent :='Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727)';
  InputFile.LoadFromFile('/Users/mas/Documents/ProxyChecker/dHidder/proxy.txt');
  for i:=0 to inputfile.Count-1 do begin
      Addr:=InputFile.Strings[i];
      InText:= Pos(':', Addr);
      http.Get('213.180.204.3');
  end;
end;

function Add(Pattern:String):TStrings;
var
  Str:TStrings;
  text:String;
begin
  Str:=TStringList.Create;
  reg.Create(Pattern);
  http:=TIdHttp.Create;
  text:=http.Get('http://free-proxy-list.net/');
  if reg.IsMatch(Text) then
  begin
    for i:=0 to reg.Matches(Text).Count-1 do
    begin
      Str.Add(reg.Matches(Text).Item[i].Value);
    end;
  end;
  Result:=Str;
  FreeAndNil(Str);
  FreeAndNil(Reg);
  FreeAndNil(Http);
end;

procedure TForm1.ToolButton1Click(Sender: TObject);
var
  reg:TRegex;
  i:integer;
begin
  listbox1.Clear;
  listbox1.Items.AddStrings(Add('[\d]{1,3}[.][\d]{1,3}[.][\d]{1,3}[.][\d]{1,3}'));
end;

end.
