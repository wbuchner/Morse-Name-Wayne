program GameMain;
{$IFNDEF UNIX} {$r GameLauncher.res} {$ENDIF}
uses sgTypes, sgCore, sgAudio, sgText, sgGraphics, sgResources;

procedure DrawRect(rx,ry: Integer);
	begin
		ry :=ry;
		rx :=rx;
		FillRectangle(ColorBlack, rx,ry,200,80);
		Delay(300);
		RefreshScreen();
	end;

procedure DrawCir(cx,cy: Integer);
	begin
		cy :=cy;
		cx :=cx;
		DrawCircleOnScreen(ColorBlack,true, cx,cy,40);
		Delay(300);
		RefreshScreen();
		// to get a longer pause
		Delay(300);
		RefreshScreen();
	end;
procedure DelayRefresh();
	begin
		Delay(300);
		RefreshScreen();
	end;

procedure LetterW(letter :String);
	begin
		letter :=letter;
		DrawCir(50,80);
		DrawRect(120,40);
		DrawRect(380,40);
		DelayRefresh();
		Delay(300);
		ClearScreen(ColorWhite);
		RefreshScreen();
	end;
	
procedure LetterA(letter :String);
	begin
		letter :=letter;
		DrawCir(50,80);
		DrawRect(120,40);
		DelayRefresh();
		Delay(300);
		ClearScreen(ColorWhite);
		DelayRefresh();
	end;

procedure LetterY(letter :String);
	begin
		letter :=letter;
		DrawRect(20,40);
		DrawCir(280,80);
		DrawRect(340,40);
		DrawRect(580,40);
		DelayRefresh();
		Delay(300);
		ClearScreen(ColorWhite);
		DelayRefresh();
	end;

procedure LetterN(letter :String);
	begin
		letter :=letter;
		DrawRect(20,40);
		DrawCir(280,80);
		DelayRefresh();
		Delay(300);
		ClearScreen(ColorWhite);
		DelayRefresh();
	end;					

procedure LetterE(letter :String);
	begin
		letter :=letter;
		DrawCir(50,80);
		DelayRefresh();
		Delay(300);
		ClearScreen(ColorWhite);
		DelayRefresh();
	end;
procedure Stop(letter :String);
	begin
		letter :=letter;
		DrawText(letter,ColorBlack,350, 200);
		DrawCir(50,80);
		DrawRect(100,40);
		DrawCir(350,80);
		DrawRect(410,40);
		DrawCir(50,180);
		DrawRect(100,150);
		DelayRefresh();
		Delay(300);
		ClearScreen(ColorWhite);
		DelayRefresh();
	end;
	
procedure LetterB(letter :String);
	begin
		letter :=letter;
		//DrawText(letter,ColorBlack,350, 200);
		DrawRect(20,40);
		DrawCir(280,80);
		DrawCir(380,80);
		DrawCir(480,80);
		DelayRefresh();
		Delay(300);
		ClearScreen(ColorWhite);
		DelayRefresh();
	end;	
procedure LetterU(letter :String);
	begin
		letter :=letter;
		//DrawText(letter,ColorBlack,350, 200);
		DrawCir(50,80);
		DrawCir(180,80);
		DrawRect(300,40);
		DelayRefresh();
		Delay(300);
		ClearScreen(ColorWhite);
		DelayRefresh();
	end;
	
procedure LetterC(letter :String);
	begin
		letter :=letter;
		DrawRect(20,40);
		DrawCir(280,80);
		DrawRect(340,40);
		DrawCir(600,80);
		DelayRefresh();
		Delay(300);
		ClearScreen(ColorWhite);
		DelayRefresh();
	end;

procedure LetterH(letter :String);
	begin
		letter :=letter;
		//DrawText(letter,ColorBlack,350, 200);
		DrawCir(50,80);
		DrawCir(180,80);
		DrawCir(280,80);
		DrawCir(380,80);
		DelayRefresh();
		Delay(300);
		ClearScreen(ColorWhite);
		DelayRefresh();
	end;
		
procedure LetterR(letter :String);
	begin
		letter :=letter;
		DrawText(letter,ColorBlack,350, 200);
		DrawCir(50,80);
		DrawRect(100,40);
		DrawCir(350,80);
		DelayRefresh();
		Delay(300);
		ClearScreen(ColorWhite);
		DelayRefresh();
	end;
procedure Main();
begin
  OpenAudio();
  OpenGraphicsWindow('Hello World', 800, 600);
  ClearScreen(ColorWhite);
  repeat // The game loop...
    ProcessEvents();
   	//Draw screen
		ClearScreen(ColorWhite);
		LetterW('W');
		LetterA('A');
		LetterY('Y');
		LetterN('N');
		LetterE('E');
		Stop('Stop');
		LetterB('B');
		LetterU('U');
		LetterC('C');
		LetterH('H');
		LetterN('N');
		LetterE('E');
		LetterR('R');
		Delay(1000);
		RefreshScreen();
  until WindowCloseRequested();
  
  CloseAudio();
  ReleaseAllResources();
end;

begin
  Main();

end.
	//DrawText(theText: String; textColor: Colour; theFont: Font; pt: Point2D);
	// DrawText(letter,ColorBlack,350, 100);
	// 		DelayRefresh();