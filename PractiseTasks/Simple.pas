program Simple;

function Pass(var a,b : Integer):Integer;
	begin
		result := (a + b);
	end;

procedure AddPass(var a : Integer; out result : Integer);
	begin
		a := a*50;
		result := a;
	end;
	
procedure Main();
	var myVal,c,d,result : Integer;
	begin
		c := 25;
		d := 0;
		myVal := 1;
		myVal := Pass(c,d);
		WriteLn('value = ',myVal);
		AddPass(myVal,result);
		WriteLn('procedure AddPass ',myVal);
	end;

begin
	Main();
end.