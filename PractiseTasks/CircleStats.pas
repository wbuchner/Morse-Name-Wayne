program CircleStats;

Const  PI = 3.1415;

function CircleArea(var r : Double):Double;
begin
	result := (PI * r * r);
end;

function CircleDiameter(var r : Double):Double;
begin
	result := (2 * r);
end;

function CircleCircumfrerence( var r : Double):Double;
begin
	result := PI * CircleDiameter(r);
end;

procedure Main();
	var radius : Double;
begin
	WriteLn('Works');
	Write('Enter a Radius ');
	ReadLn(radius);
	WriteLn('Area is ',CircleArea(radius):4:2);
	WriteLn('Diameter is ',CircleDiameter(radius):4:2);
	WriteLn('Circumference is ',CircleCircumfrerence(radius):4:2 );	
end;

begin
	Main();
end.