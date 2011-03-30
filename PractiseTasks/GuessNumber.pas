// Author: Wayne Buchner 6643140
// Purpose: A guess the number game
// Created: 29/03/2011
// Last updated: 29/03/2011
// Credits: 
 
program GuessNumber;

uses SysUtils, CRT;

Const MAX_NUMBER = 100;
Const MAX_GUESSES = 7;

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
		WriteLn('Please enter a number between 1 and 100 :');
		ReadLn(temp);
	end;
	result := num;
end;

function generateNum():Integer;
begin
	RANDOMIZE();
	result := random(MAX_NUMBER)+1;
end;

procedure Main();
	var
		number,guess, tries: Integer;
		response : String;
	begin
		guess := 0;
		tries := 1;
		// call repeat here to start the loop
	number := generateNum();

	repeat
	WriteLn('Number to guess is : ',number,' just for testing');
	guess := ReadInt('Please enter a number :');
	if guess = number then
		begin
			WriteLn('Congratulations!!');
			WriteLn('It only took you ',tries,' guesses.');

			break;
		end;
	WriteLn('Try Number : ',tries);
	tries := tries + 1;
	
	if tries = 8 then
		begin
		WriteLn('Too Many! play again');
		ReadLn(response);
		if (response = 'yes') or (response = 'Yes') then
		begin
			ClrScr();
			tries := 1;	
		end
		else
		begin
			WriteLn('Ok bye');
			break;
		end;
	end;
	
	until tries = 8;
	
	end;

begin
	ClrScr();
	Main();
end.