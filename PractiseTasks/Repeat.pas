program RepeatLoop;

uses SysUtils;

procedure Main();
	var
		temp : String;
	begin
		repeat
			WriteLn('Hello World');
			Write('Quit?');
			ReadLn(temp);
		until(temp = 'Yes') or (temp = 'y');
		WriteLn('bye');
		
	end;

begin
	Main();
end.