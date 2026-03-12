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
float SkipTenDivWidth = DivWidth/12;
float SkipTenDivX = DivX + DivWidth*0.250;
float SkipTenDivY = DivY + DivHeight*0.92;
float SkipTenDivHeight = DivHeight/9;
float SkipMoveX =236f; 
float SkipMoveY = 495f;
float SkipTenDivX1 = DivX + DivWidth*0.03125+(0.03125+SkipMoveX);
;float SkipTenDivY2 = DivY + DivHeight*0.03125+(0.03125+SkipMoveY); 
float SkipTenDivX3 = DivX + DivWidth*0.0625+(0.0625+SkipMoveX) ;  
float SkipTenDivY4 = DivY + DivHeight*0.0625+(0.0625+SkipMoveY); 
float SkipTenDivX5 = DivX + DivWidth*0.03125+(0.03125+SkipMoveX);
float SkipTenDivY6 = DivY + DivHeight*0.09375+(0.09375+SkipMoveY); 
;rect( SkipTenDivX, SkipTenDivY,SkipTenDivWidth, SkipTenDivHeight );
;triangle(SkipTenDivX1,SkipTenDivY2,SkipTenDivX3,SkipTenDivY4,SkipTenDivX5,SkipTenDivY6)
///

float BackTenDivX = appWidth * 61 / paperWidth; 
float BackTenDivY = appHeight * 15 / paperHeight; 
float BackTenDivWidth = appWidth * 71 / paperWidth;  
float BackTenDivHeight = appHeight * 25 / paperHeight; 
rect( BackTenDivX, BackTenDivY, BackTenDivWidth, BackTenDivHeight );
//
float SkipSongDivX = appWidth * 97 / paperWidth; 
float SkipSongDivY = appHeight * 15 / paperHeight; 
float SkipSongDivWidth = appWidth * 110 / paperWidth;  
float SkipSongDivHeight = appHeight * 25 / paperHeight; 
rect( SkipSongDivX, SkipSongDivY, SkipSongDivWidth, SkipSongDivHeight );
//
float PrevSongDivX = appWidth * 49 / paperWidth; 
float PrevSongDivY = appHeight * 15 / paperHeight; 
float PrevSongDivWidth = appWidth * 61 / paperWidth;  
float PrevSongDivHeight = appHeight * 25 / paperHeight; 
rect( PrevSongDivX, PrevSongDivY, PrevSongDivWidth, PrevSongDivHeight );
//
float UnmuteDivX = appWidth * 64 / paperWidth; 
float UnmuteDivY = appHeight * 4 / paperHeight; 
float UnmuteDivWidth = appWidth * 72 / paperWidth;  
float UnmuteDivHeight = appHeight * 17 / paperHeight; 
rect( UnmuteDivX, UnmuteDivY, UnmuteDivWidth, UnmuteDivHeight );
//
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
