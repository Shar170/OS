unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
function EnumProc (Wd: HWnd; Param: LongInt): Boolean; stdcall;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
if findwindow(nil, ('упржщцопорп')) <>0 then
  begin
    showmessage ('Этот компьютер найденн');
   setwindowtext (findwindow(nil,'упржщцопорп'),'Окно Хакера');
   showmessage ('Этот компьютер переименован');
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if IsIconic( findwindow(nil,'упржщцопорп')) then begin
    Form1.Button2.Caption := 'Развернуть';
    OpenIcon(findwindow(nil,'упржщцопорп'));
    Form1.Button2.Caption :='Свернуть';
  end
else begin
  Form1.Button2.Caption :='Свернуть';
  CloseWindow(findwindow(nil,'упржщцопорп'));
  Form1.Button2.Caption := 'Развернуть';
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
if findwindow(nil, ('упржщцопорп')) <>0 then begin
    if IsIconic( findwindow(nil,'упржщцопорп') )
    then Form1.Button2.Caption := ('Развернуть')
    else Form1.Button2.Caption := ('Свернуть');
    end
  else  showmessage ('упржщцопорп не найден');
end;


function EnumProc (Wd: HWnd; Param: LongInt): Boolean; stdcall;
Var
  Nm: Array[0..255] of Char;
  Cs: Array[0..255] of Char;
Begin
  GetWindowText(Wd,Nm,255);
  GetClassName(Wd,Cs,255);
 Form1.ListBox1.Items.Add(String(Nm)+' / '+String(Cs){+'/'+String(Gwt)});
  EnumProc := TRUE;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Form1.ListBox1.Items.Clear;
EnumWindows(@EnumProc, 0);
end;

procedure TForm1.Button4Click(Sender: TObject);
 var
 hnd:thandle;
 canvas:tcanvas;
 dc:hdc;
 begin
 hnd:=findwindow(nil, ('Form1'));
 hnd:=findwindowex(hnd,0,'Form1.ListBox1',0);
 showwindow(hnd,sw_hide);
 sendmessage(hnd,wm_paint,0,0);
 sleep(1000);
 showwindow(hnd,sw_show);
 sendmessage(hnd,wm_paint,0,0);
 sleep(1000);
 canvas:=tcanvas.create;
 dc:=getdc(hnd);
 with canvas do
 begin
 handle:=dc;
 rectangle(0,0,1366,768);
 font.color:=$0000ff;
 textout(650,360,'System');
 textout(690,360,'FAILED');
 free;
 end;
 releasedc(0,dc);
end;

end.
