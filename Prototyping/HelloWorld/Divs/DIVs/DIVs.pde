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
;rect( PrevSongDivX, PrevSongDivY,PrevSongDivWidth, PrevSongDivHeight );
//
float BackTenDivWidth = DivWidth/12;
float BackTenDivX = DivX + DivWidth*0.335;
float BackTenDivY = DivY + DivHeight*0.92;
float BackTenDivHeight = DivHeight/9;
;rect( BackTenDivX, BackTenDivY, BackTenDivWidth, BackTenDivHeight );
//
float PauseDivWidth = DivWidth/12;
float PauseDivX = DivX + DivWidth*0.419;
float PauseDivY = DivY + DivHeight*0.92;
float PauseDivHeight = DivHeight/9;
;rect( PauseDivX, PauseDivY, PauseDivWidth, PauseDivHeight );
//
float SkipSongDivWidth = DivWidth/12;
float SkipSongDivX = DivX + DivWidth*0.504;
float SkipSongDivY = DivY + DivHeight*0.92;
float SkipSongDivHeight = DivHeight/9;
;rect( SkipSongDivX, SkipSongDivY,SkipSongDivWidth, SkipSongDivHeight );

//
float muteDivWidth = DivWidth/12;
float muteDivX = DivX + DivWidth*0.588;
float muteDivY = DivY + DivHeight*0.92;
float muteDivHeight = DivHeight/9;
;rect( muteDivX, muteDivY,muteDivWidth, muteDivHeight );
//
float ShuffleeDivWidth = DivWidth/12;
float ShuffleeDivX = DivX + DivWidth*0.672;
float ShuffleeDivY = DivY + DivHeight*0.92;
float ShuffleeDivHeight = DivHeight/9;
;rect( ShuffleeDivX, ShuffleeDivY,ShuffleeDivWidth, ShuffleeDivHeight );
//
float UnMuteDivWidth = DivWidth/12;
float UnMuteDivX = DivX + DivWidth*0.166;
float UnMuteDivY = DivY + DivHeight*0.92;
float UnMuteDivHeight = DivHeight/9;
;rect( UnMuteDivX, UnMuteDivY,UnMuteDivWidth, UnMuteDivHeight );
//
float ExitDivWidth = DivWidth/24;
float ExitDivX = width - ExitDivWidth; 
float ExitDivY = 0;
float ExitDivHeight = DivHeight/18;
rect(ExitDivX, ExitDivY, ExitDivWidth, ExitDivHeight);
//
float DoubleSpeedDivWidth = DivWidth/12;
float DoubleSpeedDivX = DivX + DivWidth*0.757;
float DoubleSpeedDivY = DivY + DivHeight*0.92;
float DoubleSpeedDivHeight = DivHeight/9;
;rect( DoubleSpeedDivX, DoubleSpeedDivY,DoubleSpeedDivWidth, DoubleSpeedDivHeight );

//
