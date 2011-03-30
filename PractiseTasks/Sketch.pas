program Sketch;

uses SysUtils;

procedure ShowMenu();
begin
	WriteLn('I would like...');
	WriteLn('1: An Argument');
	WriteLn('2: Verbal Abuse');
	WriteLn('3: To Complain');
	WriteLn('4: Being hit on the head lessons');
	WriteLn('5: To Quit');
end;

procedure Argument();
begin
	WriteLn('I cant argue anymore your five minutes are up...');
end;

procedure Abuse();
begin
	WriteLn('WHAT DO YOU WANT!! Dont give me that you...');
end;

procedure Complain();
begin
	WriteLn('You want to complain, look at these shoes');
end;

procedure HitOnTheHead();
begin
	WriteLn('No, hold your head like that and say "Wah"');
end;

procedure Main();
var
	option : Integer;
begin
	repeat 
	ShowMenu(); 
	WriteLn('Choose an option');
	ReadLn(option);
	case(option) of
	1:Argument();
	2:Abuse();	
	3:Complain();
	4:HitOnTheHead();
	else
		WriteLn('Bye...');
	end;
	until(option = 5);
end;

begin
	Main();
end.