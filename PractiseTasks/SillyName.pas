program SillyName;

uses SysUtils;

procedure Main();
var
	name : String;
begin
	Write('Enter Your Name');
	ReadLn(name);
	
	if name = 'wayne' then
		begin
			WriteLn('Thats a silly Name')	
		end	
	else
		begin
			WriteLn('Thats a great name')
		end;
end;
begin
	Main();
end.