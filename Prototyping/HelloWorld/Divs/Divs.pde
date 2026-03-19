/* Divs 20 Rectangles
*/
//
println(displayWidth, displayHeight);
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
int paperWidth = 192;
int paperHeight = 168;
float DivX = appWidth * 1/4; 
float DivY = appHeight * 1/4; 
float DivWidth = appWidth * 1/2;  
float DivHeight = appHeight * 1/2;
//
float SongTitleDivWidth = appWidth * 0.5;
float SongTitleDivX = (appWidth / 2) - (SongTitleDivWidth / 2);
float SongTitleDivY = 0;
float SongTitleDivHeight = appHeight * 0.1;
rect( SongTitleDivX, SongTitleDivY, SongTitleDivWidth, SongTitleDivHeight );
//
float PlayButtonDivWidth = DivWidth/9;
float PlayButtonDivX = DivX + DivWidth*0.814;
float PlayButtonDivY = DivY + DivHeight*0.645;
float PlayButtonDivHeight = DivHeight/6;
rect( PlayButtonDivX, PlayButtonDivY, PlayButtonDivWidth, PlayButtonDivHeight );
float MoveX =750f; 
float MoveY = 330f;
float PlayButtonDivX1 = DivX + DivWidth*1/16+(1/16+MoveX);
;float PlayButtonDivY2 = DivY + DivHeight*1/16+(1/16+MoveY); 
float PlayButtonDivX3 = DivX + DivWidth*1/8+(1/8+MoveX) ;  
float PlayButtonDivY4 = DivY + DivHeight*1/8+(1/8+MoveY); 
float PlayButtonDivX5 = DivX + DivWidth*1/16+(1/16+MoveX);
float PlayButtonDivY6 = DivY + DivHeight*3/16+(3/16+MoveY); 
rect( PlayButtonDivX, PlayButtonDivY, PlayButtonDivWidth, PlayButtonDivHeight )
;triangle(PlayButtonDivX1,PlayButtonDivY2,PlayButtonDivX3,PlayButtonDivY4,PlayButtonDivX5,PlayButtonDivY6)
//
;float ScreenDivX = DivX + DivWidth*3/16;  
float ScreenDivY = DivY + DivHeight*3/16; 
float ScreenDivWidth = DivX + DivWidth*3/24;
float ScreenDivHeight= DivY + DivHeight*3/24;
;rect( ScreenDivX, ScreenDivY, ScreenDivWidth, ScreenDivHeight );
// 
float PrevSongDivWidth = DivWidth/12;
float PrevSongDivX = DivX + DivWidth*0.250;
float PrevSongDivY = DivY + DivHeight*0.92;
float PrevSongDivHeight = DivHeight/9;
float PrevSongMoveX =236f; 
float PrevSongMoveY = 495f;
float PrevSongDivX1 = DivX + DivWidth*0.0625+(0.03125+PrevSongMoveX);
;float PrevSongDivY2 = DivY + DivHeight*0.03125+(0.03125+PrevSongMoveY); 
float PrevSongDivX3 = DivX + DivWidth*0.03125+(0.0625+PrevSongMoveX) ;  
float PrevSongDivY4 = DivY + DivHeight*0.0625+(0.0625+PrevSongMoveY); 
float PrevSongDivX5 = DivX + DivWidth*0.0625+(0.03125+PrevSongMoveX);
float PrevSongDivY6 = DivY + DivHeight*0.09375+(0.09375+PrevSongMoveY); 
;rect( PrevSongDivX, PrevSongDivY,PrevSongDivWidth, PrevSongDivHeight );
;triangle(PrevSongDivX1,PrevSongDivY2,PrevSongDivX3,PrevSongDivY4,PrevSongDivX5,PrevSongDivY6)
;float moveX = 236f; 
float moveY = 495f;
float lineLength = 20f; 
line(PrevSongDivX3, PrevSongDivY2, PrevSongDivX3, PrevSongDivY6);
//
float BackTenDivWidth = DivWidth/12;
float BackTenDivX = DivX + DivWidth*0.335;
float BackTenDivY = DivY + DivHeight*0.92;
float BackTenDivHeight = DivHeight/9;
float BackTenMoveX =316f; 
float BackTenMoveY = 495f;
float BackTenDivX1 = DivX + DivWidth*0.0625+(0.03125+BackTenMoveX);
;float BackTenDivY2 = DivY + DivHeight*0.03125+(0.03125+BackTenMoveY); 
float BackTenDivX3 = DivX + DivWidth*0.03125+(0.0625+BackTenMoveX) ;  
float BackTenDivY4 = DivY + DivHeight*0.0625+(0.0625+BackTenMoveY); 
float BackTenDivX5 = DivX + DivWidth*0.0625+(0.03125+BackTenMoveX);
float BackTenDivY6 = DivY + DivHeight*0.09375+(0.09375+BackTenMoveY); 
;rect( BackTenDivX, BackTenDivY, BackTenDivWidth, BackTenDivHeight );
;triangle(BackTenDivX1,BackTenDivY2,BackTenDivX3,BackTenDivY4,BackTenDivX5,BackTenDivY6)
;
float PauseDivWidth = DivWidth/12;
float PauseDivX = DivX + DivWidth*0.419;
float PauseDivY = DivY + DivHeight*0.92;
float PauseDivHeight = DivHeight/9;
;rect( PauseDivX, PauseDivY, PauseDivWidth, PauseDivHeight );
float PausemoveX = 906f; // Left-to-right position
float PausemoveY = 780f; // Top position
float barWidth = 10f; // Thickness of each bar
float spacing = 15f; // Space between the two bars
float barHeight = 40f; // How tall the bars are
// Left Bar
rect(PausemoveX, PausemoveY, barWidth, barHeight);
// Right Bar (moved over by barWidth + spacing)
rect(PausemoveX + barWidth + spacing, PausemoveY, barWidth, barHeight);
//
float SkipSongDivWidth = DivWidth/12;
float SkipSongDivX = DivX + DivWidth*0.504;
float SkipSongDivY = DivY + DivHeight*0.92;
float SkipSongDivHeight = DivHeight/9;
float SkipSongMoveX =480f; 
float SkipSongMoveY = 495f;
float SkipSonglineLength = 20f; 
float SkipSongDivX1 = DivX + DivWidth*0.03125+(0.0625+SkipSongMoveX);
;float SkipSongDivY2 = DivY + DivHeight*0.03125+(0.03125+SkipSongMoveY); 
float SkipSongDivX3 = DivX + DivWidth*0.0625+(0.03125+SkipSongMoveX) ;  
float SkipSongDivY4 = DivY + DivHeight*0.0625+(0.0625+SkipSongMoveY); 
float SkipSongDivX5 = DivX + DivWidth*0.03125+(0.0625+SkipSongMoveX);
float SkipSongDivY6 = DivY + DivHeight*0.09375+(0.09375+SkipSongMoveY); 
;rect( SkipSongDivX, SkipSongDivY,SkipSongDivWidth, SkipSongDivHeight );
;triangle(SkipSongDivX1,SkipSongDivY2,SkipSongDivX3,SkipSongDivY4,SkipSongDivX5,SkipSongDivY6)
;line(SkipSongDivX3, SkipSongDivY2, SkipSongDivX3, SkipSongDivY6);
//
float UnmuteDivWidth = DivWidth/12;
float UnmuteDivX = DivX + DivWidth*0.588;
float UnmuteDivY = DivY + DivHeight*0.92;
float UnmuteDivHeight = DivHeight/9;
;rect( UnmuteDivX, UnmuteDivY,UnmuteDivWidth, UnmuteDivHeight );
line(UnmuteDivX, UnmuteDivY, UnmuteDivX + UnmuteDivWidth, UnmuteDivY + UnmuteDivHeight);
       float  MuteDivX = appWidth * 72 / paperWidth; 
float  MuteDivY = appHeight * 4 / paperHeight; 
float  MuteDivWidth = appWidth * 80 / paperWidth;  
float  MuteDivHeight = appHeight * 17 / paperHeight; 
rect( MuteDivX, MuteDivY, MuteDivWidth, MuteDivHeight );
//
float ShuffleDivX = appWidth * 80 / paperWidth; 
float ShuffleDivY = appHeight * 4 / paperHeight; 
float ShuffleDivWidth = appWidth * 90 / paperWidth;  
float ShuffleDivHeight = appHeight * 17 / paperHeight; 
rect( ShuffleDivX,  ShuffleDivY,  ShuffleDivWidth,  ShuffleDivHeight );
//
float NoPauseButtonDivX = appWidth * 90 / paperWidth; 
float NoPauseButtonDivY = appHeight * 4 / paperHeight; 
float NoPauseButtonDivWidth = appWidth * 100 / paperWidth;  
float NoPauseButtonDivHeight = appHeight * 17 / paperHeight; 
rect( NoPauseButtonDivX, NoPauseButtonDivY, NoPauseButtonDivWidth, NoPauseButtonDivHeight );
//
float DoubleSpeedDivX = appWidth * 150 / paperWidth; 
float DoubleSpeedDivY = appHeight * 38 / paperHeight; 
float DoubleSpeedDivWidth = appWidth * 160 / paperWidth;  
float DoubleSpeedDivHeight = appHeight * 44 / paperHeight; 
rect( DoubleSpeedDivX, DoubleSpeedDivY, DoubleSpeedDivWidth, DoubleSpeedDivHeight );
//
float PlaylistDivX = appWidth * 150 / paperWidth; 
float PlaylistDivY = appHeight * 30 / paperHeight; 
float PlaylistDivWidth = appWidth * 160 / paperWidth;  
float PlaylistDivHeight = appHeight * 38 / paperHeight; 
rect( PlaylistDivX, PlaylistDivY, PlaylistDivWidth, PlaylistDivHeight );
//
float ExitButtonDivX = appWidth * 190 / paperWidth; 
float ExitButtonDivY = appHeight * 162 / paperHeight; 
float ExitButtonDivWidth = appWidth * 197 / paperWidth;  
float ExitButtonDivHeight = appHeight * 168 / paperHeight; 
rect( ExitButtonDivX, ExitButtonDivY, ExitButtonDivWidth, ExitButtonDivHeight );
//
float PauseButtonDivX = appWidth * 11 / paperWidth; 
float PauseButtonDivY = appHeight * 30 / paperHeight; 
float PauseButtonDivWidth = appWidth * 150 / paperWidth;  
float PauseButtonDivHeight = appHeight * 139 / paperHeight; 
rect( PauseButtonDivX, PauseButtonDivY, PauseButtonDivWidth, PauseButtonDivHeight );
//
float SongBarDivX = appWidth * 7 / paperWidth; 
float SongBarDivY = appHeight * 26 / paperHeight; 
float SongBarDivWidth = appWidth * 154 / paperWidth;  
float SongBarDivHeight = appHeight * 28 / paperHeight; 
rect( SongBarDivX, SongBarDivY, SongBarDivWidth, SongBarDivHeight );
//
