program TestValue;

procedure DoubleIt(var value: Integer);
begin
	value := value * 2;
end;

procedure MakeZero(out value: Integer);
begin
	value := 0;
end;

procedure Main();
var
testValue: Integer;
begin

MakeZero(testValue);
WriteLn('testValue is ', testValue);
testValue := 10;
WriteLn('testValue is now ', testValue);
DoubleIt(testValue);
WriteLn('testValue is now ', testValue);

end;

begin
	Main();
end.