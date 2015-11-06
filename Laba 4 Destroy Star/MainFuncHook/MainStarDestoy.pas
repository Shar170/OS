unit MainStarDestoy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask;

type

    HookProc=procedure(State: Boolean); stdcall;
    TForm1 = class(TForm)
    MaskEdit1: TMaskEdit;
    Button1: TButton;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    DllHandle: HWND;
    SetHook: HookProc;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;
implementation
{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
DllHandle:=LoadLibrary('DLL_HOOK.dll');
if DllHandle=0 then
  ShowMessage(IntToStr(GetLastError))
else
  @SetHook:=GetProcAddress(DllHandle, 'SetHook');
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if DllHandle<>0 then
  FreeLibrary(DllHandle);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
SetHook(true);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
SetHook(false);
end;

end.
