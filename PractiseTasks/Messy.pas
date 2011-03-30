{$MODE OBJFPC}program Messy;
uses SysUtils;

Function ReadString(prompt : String):String;
begin
	Write(prompt);
	ReadLn(result);
end;

function Options():String;
	begin
		WriteLn('Simple Calculator');
		WriteLn('1: Addition');
		WriteLn('2: Subtraction');
		WriteLn('3: Multiplication');
		WriteLn('4: Division');
		WriteLn('5: Quit');
		Write('Option: ');
		ReadLn(result);
	end;

// function convertString(var option):Integer;
// 	begin
// 		while not TryStrToInt(option, result) do
// 		begin
// 			WriteLn('Please enter a whole number ');
// 			result := ReadString(prompt);
// 		end;
// 	end;

function addition(var left,right:Double):Double;
	begin
		result := (left+right);
	end;

function subtraction(var left,right:Double):Double;
	begin
		result := (left - right);
	end;

function multiply(var left,right:Double):Double;
	begin
		result := (left * right);
	end;
	
function divide(var left,right:Double):Double;
	begin
		result := (left / right);
	end;




procedure MAIN();
	var
	option : String;
	left,right : Integer;
	begin
		begin
			repeat 
			option :=  Options(); 
			
			WriteLn('Choose an option');
			ReadLn(option);
			// case(option) of
			// 		1:addition();
			// 		2:subtraction();	
			// 		3:multiply();
			// 		4:divide();
			// 		else
			// 			WriteLn('Bye...');
			// 		end;
			until(option = 5);
		end;
	end;


begin 

	Main();
 end.