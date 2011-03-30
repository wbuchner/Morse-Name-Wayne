// Author: Cameron Martin
// Student ID: 6452450
// Date: 24/03/2011
// Program: example.pas
// Description: 

program TestInput;
uses SysUtils;

	function ReadString(prompt: String): String;
	begin
		Write(prompt);
		ReadLn(result);
	end;
	
	function ReadInt(prompt: String): Integer;
	var
		temp: String;
	begin
		temp := ReadString(prompt);
		
		while not TryStrToInt(temp, result) do
		begin
			WriteLn('Please enter a whole number ');
			temp := ReadString(prompt);
		end;
	end;
	
	function ReadDouble(prompt: String): Double;
	var
		temp: String;
	begin
		temp := ReadString(prompt);
		
		while not TryStrToFloat(temp, result) do
		begin
			WriteLn('Please enter a floating value number ');
			temp := ReadString(prompt);
		end;
	end;	
	
	function ReadIntRange(prompt: String; min, max: Integer): Integer;
	begin
		result := ReadInt(prompt);
		while (result < min) or (result > max) do
		begin
			WriteLn('Please enter a number between ', min, ' and ', max);
			result := ReadInt(prompt);
		end;
	end;
	
	procedure Main();
	var
		name: String;
		age: Integer;
		myData : Double;
	begin
		name := ReadString('Please enter your name: ');
		myData := ReadDouble('Please enter my data: ');
		age := ReadIntRange('Please enter your age: ', 0, 110);
		
		WriteLn('name is ', name);
		WriteLn('myData is ', myData:4:2);
		WriteLn('age is ', age);
	end;
	
begin
	Main();
end.