program NameTest;
uses SysUtils;

Function ReadString(prompt : String):String;
	begin
		Write(prompt);
		ReadLn(result);
	end;

function RandomNumber():Integer;
	begin
		RANDOMIZE();
		result := random(6)+0;
	end;

function RandonInsult():String;
	var
		quote: array [0..5] of String;
	begin
		quote[0] := '...Never heard of aname like that!';
		quote[1] := '...Your momma called you what?';
		quote[2] := '...Better change that name!';
		quote[3] := '...Ive heard worse but not by much!';
		quote[4] := '...Now thats a name I like!';
		quote[5] := '... thats a GREAT name!';
		
		result :=quote[RandomNumber()];
	end;
	
procedure Main();
	var 
	name : String;
	begin
		random();
		//RANDOMIZE; 
	name :='';
	While name <> 'quit' do
		begin
			name := ReadString('Enter Your Name :');
			if name = 'Wayne' then
				begin
					WriteLn(name,'',RandonInsult());
				end
			else if name = 'Cameron' then
				begin
					WriteLn(name,'',RandonInsult());
				end	
			else if name = 'Andrew' then
				begin
					WriteLn(name,'',RandonInsult());
				end	
			else if name = 'Daniel' then
				begin
					WriteLn(name,'',RandonInsult());
				end
			else
				begin
					WriteLn('Never heard of you');
				end;
		end;	
	end;
	
begin
	Main();
end.