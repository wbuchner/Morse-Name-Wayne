program GameMain;
{$IFNDEF UNIX} {$r GameLauncher.res} {$ENDIF}
uses
  sgTypes, sgCore, sgAudio, sgText, sgGraphics, sgResources, sgInput, sgPhysics;

function ColorAt(x,y : Integer; offset : Double):Color;
var
	hue : Double;
begin
	hue := (offset + ((x+y)/(ScreenWidth()+ScreenHeight()))/2);
	result := HSBColor(hue, 0.9, 0.8);
end;

procedure MyClearScreen(offset : Double);
var
	x,y :Integer;
	c : Color;
begin
	x := 0;
	while x < ScreenWidth() do
	begin
	y := 0;
		while y < ScreenHeight() do
		begin
			c := ColorAt(x,y,offset);
			DrawPixel(c,x,y);
			y := y + 1;
		end;
	end;
end;


procedure Main();
var
	offset : Double;
begin
  OpenAudio();
  OpenGraphicsWindow('Screen Saver', 800, 600);
	// assign offset a value of either 0 or 1
  offset:=0;
  repeat 
    ProcessEvents();
    MyClearScreen(offset);
	RefreshScreen(); 
	offset := offset + 0.1;
	if offset > 1 then;
		begin
		offset := offset -1;
		end;   
  until WindowCloseRequested();
  
  CloseAudio();
  ReleaseAllResources();
end;

begin
  Main();
end.
