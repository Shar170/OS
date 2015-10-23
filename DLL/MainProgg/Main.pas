unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;
procedure MyFunc(Handle: THandle)stdcall;
type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  type TMyProc  = function(F: integer): integer;
var
  Form1: TForm1;
  procedure MyFunc;external 'Project1.dll' name 'ShowF';
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
   MyFunc(Handle);
end;

procedure TForm1.Button2Click(Sender: TObject);
  var
  Handle : THandle;
  Summ : TMyProc;
  begin
  Handle := LoadLibrary('Project2.dll');
  @Summ:=GetProcAddress(Handle,'Summ');
  Edit1.Text:= IntToStr(Summ(StrToInt(Edit1.Text)));
  FreeLibrary(Handle);
  end;
end.
