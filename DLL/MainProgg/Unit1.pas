unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
procedure MyFunc(Handle: THandle);export;stdcall;


implementation

{$R *.dfm}
procedure MyFunc(Handle: THandle);
  begin
  Application.Handle:= Handle;
  Form1:=Tform1.Create(Application);
  Form1.ShowModal;
  Form1.Free;
  end;

end.
