program Variables;

uses SysUtils;

procedure change(var a : Integer);
	begin
		a:=a - 5;
	end;

procedure Main();
	var
		v1 : Integer;
	begin
		v1 := 10;
		WriteLn('Value of v1 is:',v1);
		change(v1);
		WriteLn('Value of v1 is:',v1);
	
	end;
	
begin
	Main();
end.