program HelloWorldPost;

procedure Main();
var
	i : Integer;
	begin
		i:= 0;
	repeat
		i := i + 1;
		WriteLn(i,' -Hello World');
	until i = 1000000;

	end;

begin
	Main();
end.