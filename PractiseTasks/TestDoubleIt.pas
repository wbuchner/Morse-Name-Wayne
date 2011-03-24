program TestDoubleIt;

procedure DoubleIt(var v : Integer);
	begin
		v := v*2;
	end;

procedure Main();
	var myVal: Integer;
	begin
		Write('Enter a number');
		ReadLn(myVal);
		DoubleIt(myVal);
		WriteLn('Double that is ',myVal);
		DoubleIt(myVal);
		WriteLn('Double that is ',myVal);
	end;

begin
	Main();
end.