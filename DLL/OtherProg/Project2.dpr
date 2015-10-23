library Project2;


uses
  SysUtils,
  Classes;


{$R *.res}

function Summ(O: integer): integer;
  begin
    O := O + 666;
    result:= O;
  end;

Exports Summ index 12;
begin

end.
