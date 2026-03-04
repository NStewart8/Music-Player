/* Divs 20 Rectangles
*/
//
println(displayWidth, displayHeight);
;fullScreen();
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
//rect( SongTitleDivX, SongTitleDivY, SongTitleDivWidth, SongTitleDivHeight );
float SongTitleDivX = appWidth * 50 / paperWidth; 
float SongTtleDivY = appHeight * 144 / paperHeight; 
float SongTitleDivWidth = appWidth * 150 / paperWidth;  
float SongTitleDivHeight = appHeight * 117 / paperHeight;
float SongTitleDiv1 = DivX + DivWidth*1/4;
float SongTitleDiv2 = DivY +  DivHeight*1/4;
float SongTitleDiv3 = DivWidth*1/2;
float SongTitleiv4 = DivHeight*1/2;
rect( SongTitleDiv1, SongTitleDiv2, SongTitleDiv3, SongTitleiv4 );
//
//rect( PlayButtonDivX, PlayButtonDivY, PlayButtonDivWidth, PlayButtonDivHeight );
float PlayButtonD = DivX * DivWidth*1/4
float DivY = appHeight * 44 / paperHeight; 
float PlayButtonDivWidth = appWidth * 160 / paperWidth;  
float PlayButtonDivHeight = appHeight * 53 / paperHeight; 
triangle(PlayButtonDivX,PlayButtonDivY,PlayButtonDivHeight,PlayButtonDivWidth  , y3)
//
//rect( PauseButtonDivX, PauseButtonDivY, PauseButtonDivWidth, PauseButtonDivHeight );
float DivX = appWidth * 71 / paperWidth; 
float DivY = appHeight * 15 / paperHeight; 
float DivWidth = appWidth * 85 / paperWidth;  
float DivHeight = appHeight * 25 / paperHeight; 
//
//rect( 'DivX, 'DivY, 'DivWidth, 'DivHeight );
float DivX = appWidth * 85 / paperWidth; 
float DivY = appHeight * 15 / paperHeight; 
float DivWidth = appWidth * 97 / paperWidth;  
float DivHeight = appHeight * 25 / paperHeight; 
//
//rect( BackTenDivX, BackTenDivY, BackTenDivWidth, BackTenDivHeight );
float BackTenDivX = appWidth * 61 / paperWidth; 
float BackTenDivY = appHeight * 15 / paperHeight; 
float BackTenDivWidth = appWidth * 71 / paperWidth;  
float BackTenDivHeight = appHeight * 25 / paperHeight; 
//
//rect( SkipSongDivX, SkipSongDivY, SkipSongDivWidth, SkipSongDivHeight );
float SkipSongDivX = appWidth * 97 / paperWidth; 
float SkipSongDivY = appHeight * 15 / paperHeight; 
float SkipSongDivWidth = appWidth * 110 / paperWidth;  
float SkipSongDivHeight = appHeight * 25 / paperHeight; 
//
//rect( PrevSongDivX, PrevSongDivY, PrevSongDivWidth, PrevSongDivHeight );
float PrevSongDivX = appWidth * 49 / paperWidth; 
float PrevSongDivY = appHeight * 15 / paperHeight; 
float PrevSongDivWidth = appWidth * 61 / paperWidth;  
float PrevSongDivHeight = appHeight * 25 / paperHeight; 
//
//rect( UnmuteDivX, UnmuteDivY, UnmuteDivWidth, UnmuteDivHeight );
float UnmuteDivX = appWidth * 64 / paperWidth; 
float UnmuteDivY = appHeight * 4 / paperHeight; 
float UnmuteDivWidth = appWidth * 72 / paperWidth;  
float UnmuteDivHeight = appHeight * 17 / paperHeight; 
//
//rect( MuteDivX, MuteDivY, MuteDivWidth, MuteDivHeight );
float  MuteDivX = appWidth * 72 / paperWidth; 
float  MuteDivY = appHeight * 4 / paperHeight; 
float  MuteDivWidth = appWidth * 80 / paperWidth;  
float  MuteDivHeight = appHeight * 17 / paperHeight; 
//
//rect( ShuffleDivX,  ShuffleDivY,  ShuffleDivWidth,  ShuffleDivHeight );
float ShuffleDivX = appWidth * 80 / paperWidth; 
float ShuffleDivY = appHeight * 4 / paperHeight; 
float ShuffleDivWidth = appWidth * 90 / paperWidth;  
float ShuffleDivHeight = appHeight * 17 / paperHeight; 
//
//rect( NoScreenDivX, NoScreenDivY, NoScreenDivWidth, NoScreenDivHeight );
float NoScreenDivX = appWidth * 90 / paperWidth; 
float NoScreenDivY = appHeight * 4 / paperHeight; 
float NoScreenDivWidth = appWidth * 100 / paperWidth;  
float NoScreenDivHeight = appHeight * 17 / paperHeight; 
//
//rect( DoubleSpeedDivX, DoubleSpeedDivY, DoubleSpeedDivWidth, DoubleSpeedDivHeight );
float DoubleSpeedDivX = appWidth * 150 / paperWidth; 
float DoubleSpeedDivY = appHeight * 38 / paperHeight; 
float DoubleSpeedDivWidth = appWidth * 160 / paperWidth;  
float DoubleSpeedDivHeight = appHeight * 44 / paperHeight; 
//
//rect( PlaylistDivX, PlaylistDivY, PlaylistDivWidth, PlaylistDivHeight );
float PlaylistDivX = appWidth * 150 / paperWidth; 
float PlaylistDivY = appHeight * 30 / paperHeight; 
float PlaylistDivWidth = appWidth * 160 / paperWidth;  
float PlaylistDivHeight = appHeight * 38 / paperHeight; 
//
//rect( ExitButtonDivX, ExitButtonDivY, ExitButtonDivWidth, ExitButtonDivHeight );
float ExitButtonDivX = appWidth * 190 / paperWidth; 
float ExitButtonDivY = appHeight * 162 / paperHeight; 
float ExitButtonDivWidth = appWidth * 197 / paperWidth;  
float ExitButtonDivHeight = appHeight * 168 / paperHeight; 
//
//rect( ScreenDivX, ScreenDivY, ScreenDivWidth, ScreenDivHeight );
float ScreenDivX = appWidth * 11 / paperWidth; 
float ScreenDivY = appHeight * 30 / paperHeight; 
float ScreenDivWidth = appWidth * 150 / paperWidth;  
float ScreenDivHeight = appHeight * 139 / paperHeight; 
//
//rect( SongBarDivX, SongBarDivY, SongBarDivWidth, SongBarDivHeight );
float SongBarDivX = appWidth * 7 / paperWidth; 
float SongBarDivY = appHeight * 26 / paperHeight; 
float SongBarDivWidth = appWidth * 154 / paperWidth;  
float SongBarDivHeight = appHeight * 28 / paperHeight; 
//
