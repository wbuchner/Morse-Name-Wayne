program SwallowAirSpeedVelocity;
Uses SysUtils;

function UserInput(a : String):Double;
begin
	result := StrToFloat(a);
end;

function AirSpeedVelocity(f,a,s : Double):Double;
begin
	result := f*(a/100)/s;
end;

procedure YourSwallow(s:Double);
	var f,a: Double;
begin
	Write('Enter Frequency: ');
	ReadLn(f);
	Write('Enter Amplitude: ');
	ReadLn(a);
	WriteLn('Your Swallow f=',f:2:0,'hz, A=',a/100:4:2,'m, Air Speed = ',AirSpeedVelocity(f,a,s):4:2,'m/s');
end;
procedure Main();
var
	text : String;
	s: Double;
begin
	s := UserInput(ParamStr(1));
	text := 'Swallow f=15hz, A=0.21m, Air Speed = ';
	WriteLn('African ',text,' ',AirSpeedVelocity(15,21,s):4:2,'m/s');
	WriteLn('European ',text,' ',AirSpeedVelocity(14,22,s):4:2,'m/s');
	YourSwallow(s);
end;

begin
	Main();
end.