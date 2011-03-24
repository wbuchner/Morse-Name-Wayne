program TestSwap;

procedure Swap(var v1, v2 : Integer);//out a, b : Integer
var temp : Integer;
begin
	temp:=v1;
	v1:=v2;
	v2:=temp;
end;

procedure Main();
	var v1,v2 : Integer;
begin
	Write('Enter a number ');
	ReadLn(v1);
	Write('Enter another number ');
	ReadLn(v2);
	WriteLn ('v1 is :',v1,' and v2 is :',v2);
	Swap(v1,v2);
	WriteLn ('v1 is now :',v1,' and v2 is now :',v2);
end;

begin
	Main();
end.