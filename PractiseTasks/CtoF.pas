program CtoF;

Uses SysUtils;

function Convert(c:Double):Double;
	begin
		result := (c * 9/5)+32;
	end;

procedure Main();
	var temp: String;
		tempC, tempF: Double;
	begin
		Write('Enter the temerature ');
		ReadLn(temp);
		tempC := StrToFloat(temp);
		tempF := Convert(tempC);
		WriteLn(tempF:4:0);
	end;

begin
	Main();
end.