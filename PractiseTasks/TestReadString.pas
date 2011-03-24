program TestReadString;

procedure ReadStringProc(prompt: String; out result : String);
begin
	Write(prompt);
	ReadLn(result);

end;

Function ReadStringFunction(prompt : String):String;
begin
	Write('Write your name');
	ReadLn(result);

end;

procedure Main();
	var name : String;
begin
	ReadStringProc('EnterYourName(proc)',name);
	WriteLn(name);
	name := ReadStringFunction('EnterYourName(func)');
	WriteLn(name);
end;

begin
	Main();
end.