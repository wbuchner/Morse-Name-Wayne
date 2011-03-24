program FtoC;

Uses SysUtils;

function ConvertFtoC(f : Double):Double;
begin
	result := (5/9)*(f-32);
end;

procedure Main();
var	temp: String;
	tempF, tempC: Double;
	begin
		temp := ParamStr(1);
		tempf := StrToFloat(temp);
		tempC := ConvertFtoC(tempf);
		WriteLn('The converted Temp is: ',tempC:4:2);
	end;

begin
	Main();
end.