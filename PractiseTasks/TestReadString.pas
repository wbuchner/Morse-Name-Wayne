program TestReadString;

uses SysUtils;

	Function ReadString(prompt : String):String;
	begin
		Write(prompt);
		ReadLn(result);
	end;

	function ReadDouble(prompt: String): Double;
	var
		temp: String;
	begin
		temp := ReadString(prompt);
		
		while not TryStrToFloat(temp, result) do
		begin
			WriteLn('Please enter a real number ');
			temp := ReadString(prompt);
		end;
	end;

	Function ReadInt(prompt : String):Integer;
	var
		temp : String;
		age : Integer;
	begin
		//temp := ReadString(prompt);
		while not TryStrToInt(ReadString(prompt),age) do
		begin
			WriteLn('Please enter a whole number :');
			ReadLn(temp);
		end;
		result := age;
	end;

	function ReadIntegerRange(prompt : String ; min, max : Integer):Integer;
	begin
		result := ReadInt(prompt);
		While (result < min) or (result > max) do
		begin
			WriteLn('Please enter a value between ',min,' and ', max);
			result:= ReadInt(prompt);
		end;
	end;

	procedure Main();
	var 
		name : String;
		age : Integer;
		aDouble : Double;
	begin
		name := ReadString('EnterYourName :');
		age := ReadIntegerRange('Enter your age :',1,50);
		aDouble := ReadDouble('Enter a real number');
		WriteLn('Hi ',name, ' you are ',age,' you are this smart : ',aDouble:4:2);
	end;

begin
	Main();
end.