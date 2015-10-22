unit Unit2;

interface

uses
  Classes,  Unit1, Windows;

  

type
  tnew = class(TThread)
  private
   index : integer;
   procedure UpdateLabel;
  protected
    procedure Execute;  override;
  end;

implementation
Uses SysUtils;

{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure tnew.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ tnew }

procedure Tnew.UpdateLabel;
begin
  Form1.Label1.Caption:=IntToStr(index);
end;

procedure tnew.Execute;
begin
  index:=1;
  while index>0 do
  begin
    Synchronize(UpdateLabel);
    Inc(index);
    if index>100000 then
      index:=0;
    if terminated then exit;
  end;
end;



end.
