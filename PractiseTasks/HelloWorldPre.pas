program HelloWorldPre;

procedure Main();
var
	i : Integer;
	begin
		i:= 1;
		while i < 1000000 do
		begin
			WriteLn(i,' -Hello World');
			i := i + 1;
		end;
	end;

begin
	Main();
end.