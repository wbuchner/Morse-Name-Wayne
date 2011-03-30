{$MODE OBJFPC}program Clean;
uses SysUtils, CRT;

Function ReadString(prompt : String):String;
begin
	Write(prompt);
	ReadLn(result);
end;

Function ReadInt(prompt : String):Integer;
var
	temp : String;
	num : Integer;
begin
	temp := ReadString(prompt);
	while not TryStrToInt(temp,num) do
	begin
		WriteLn('Please enter a number from the menu :');
		ReadLn(temp);
	end;
	result := num;
end;

function Options():Integer;
var 
temp: String;
num : Integer;
begin
	WriteLn('Simple Calculator');
	WriteLn('1: Addition');
	WriteLn('2: Subtraction');
	WriteLn('3: Multiplication');
	WriteLn('4: Division');
	WriteLn('5: Quit');
	Write('Option: ');
	ReadLn(temp);

	while not TryStrToInt(temp,num) do
	begin
		WriteLn('Please enter a whole number :');
		ReadLn(temp);
	end;
	result := num;
end;

procedure Calculate(option : Integer);
var left,right : Integer;
	result:Double;
	op: array [1..5] of String;
begin
	op[1] :='+';
	op[2] :='-';
	op[3] :='*';
	op[4] :='/';
	if option = 5 then
	begin
		WriteLn('Bye...');
	end
	else 
	begin
		left := ReadInt('Please enter a number :');
		right := ReadInt('Please enter a number :');
		case(option) of
			1:
			begin
				result := (left,op[option],right);
			end;
			2:
			begin
				result := (left-right);
			end;	
			3:
			begin
				result := (left*right);
			end;
			4:
			begin
				result := (left/right);
			end;
		end;
		WriteLn(left,' ',op[option],' ',right,' = ',result:4:2);	
	end;
end;

procedure Main();
var
	option : Integer;
begin
	repeat 
			ClrScr();
			option :=  Options();
			calculate(option);
			Delay(1500);
		until(option = 5);
end;

begin 
	Main();
end.