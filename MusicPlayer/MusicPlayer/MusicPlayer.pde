import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
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
String upArow = "..";
String dependenciesFolder = "dependancies"
  ;
String ImagesFolder = "Images";
String ImageName = "image"
  ;
String fileExtension = ".jpg"
  ;
String open = "/";
//
//Concatinate
// Note, Cut Out, see Absolute Pathway: \\Users\N.stewart8\Documents\GitHub\Music-Player\Dependencies\Images
//see Absolute Pathway: Dependencies/Images
String imageDirectory = upArow + open + upArow + open + dependenciesFolder + open + ImagesFolder + open;
String pathway1 = imageDirectory + ImageName + fileExtension;
println(pathway1);
PImage Image1 = loadImage(pathway1);
//
image(Image1, 0, 0);
//
int imageWidth2 = 225;
int imageHeight2= 225;
int numberofButtons = 13;
int WidthofButton = appWidth/numberofButtons;
int beginningButtonSpace = WidthofButton;
float ImageDivX = beginningButtonSpace;
float ImageDivY = appHeight*4.5/20;
float ImageDivWidth = appWidth*1/2 - beginningButtonSpace*1.5;
float ImageDivHeight = appHeight*1.5/5;
rect(ImageDivX, ImageDivY, ImageDivWidth, ImageDivHeight);
//
//
//DIVs Population using unitless ratios (i.e. millimeters to pixels)
//See Case Study
//
//Directory or Pathway to Images
//String-Vars of Folders and File Names
//Concatenation of Pathways
//PImage Vars + Diensions (width & height)
//
//DIVs
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
;
float ScreenDivX = DivX + DivWidth*3/16;
float ScreenDivY = DivY + DivHeight*3/16;
float ScreenDivWidth = DivX + DivWidth*3/24;
float ScreenDivHeight= DivY + DivHeight*3/24;
;
rect( ScreenDivX, ScreenDivY, ScreenDivWidth, ScreenDivHeight );
//
float PrevSongDivWidth = DivWidth/12;
float PrevSongDivX = DivX + DivWidth*0.250;
float PrevSongDivY = DivY + DivHeight*0.92;
float PrevSongDivHeight = DivHeight/9;
;
rect( PrevSongDivX, PrevSongDivY, PrevSongDivWidth, PrevSongDivHeight );
//
float BackTenDivWidth = DivWidth/12;
float BackTenDivX = DivX + DivWidth*0.335;
float BackTenDivY = DivY + DivHeight*0.92;
float BackTenDivHeight = DivHeight/9;
;
rect( BackTenDivX, BackTenDivY, BackTenDivWidth, BackTenDivHeight );
//
float PauseDivWidth = DivWidth/12;
float PauseDivX = DivX + DivWidth*0.419;
float PauseDivY = DivY + DivHeight*0.92;
float PauseDivHeight = DivHeight/9;
;
rect( PauseDivX, PauseDivY, PauseDivWidth, PauseDivHeight );
//
float SkipSongDivWidth = DivWidth/12;
float SkipSongDivX = DivX + DivWidth*0.504;
float SkipSongDivY = DivY + DivHeight*0.92;
float SkipSongDivHeight = DivHeight/9;
;
rect( SkipSongDivX, SkipSongDivY, SkipSongDivWidth, SkipSongDivHeight );

//
float muteDivWidth = DivWidth/12;
float muteDivX = DivX + DivWidth*0.588;
float muteDivY = DivY + DivHeight*0.92;
float muteDivHeight = DivHeight/9;
;
rect( muteDivX, muteDivY, muteDivWidth, muteDivHeight );
//
float ShuffleeDivWidth = DivWidth/12;
float ShuffleeDivX = DivX + DivWidth*0.672;
float ShuffleeDivY = DivY + DivHeight*0.92;
float ShuffleeDivHeight = DivHeight/9;
;
rect( ShuffleeDivX, ShuffleeDivY, ShuffleeDivWidth, ShuffleeDivHeight );
//
float UnMuteDivWidth = DivWidth/12;
float UnMuteDivX = DivX + DivWidth*0.166;
float UnMuteDivY = DivY + DivHeight*0.92;
float UnMuteDivHeight = DivHeight/9;
;
rect( UnMuteDivX, UnMuteDivY, UnMuteDivWidth, UnMuteDivHeight );
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
;
rect( DoubleSpeedDivX, DoubleSpeedDivY, DoubleSpeedDivWidth, DoubleSpeedDivHeight );
//
float MoveX =750f;
float MoveY = 330f;
float PlayButtonDivX1 = DivX + DivWidth*1/16+(1/16+MoveX);
float PlayButtonDivY2 = DivY + DivHeight*1/16+(1/16+MoveY);
float PlayButtonDivX3 = DivX + DivWidth*1/8+(1/8+MoveX) ;
float PlayButtonDivY4 = DivY + DivHeight*1/8+(1/8+MoveY);
float PlayButtonDivX5 = DivX + DivWidth*1/16+(1/16+MoveX);
float PlayButtonDivY6 = DivY + DivHeight*3/16+(3/16+MoveY);
triangle(PlayButtonDivX1, PlayButtonDivY2, PlayButtonDivX3, PlayButtonDivY4, PlayButtonDivX5, PlayButtonDivY6);
//
float PrevSongMoveX =236f;
float PrevSongMoveY = 495f;
float PrevSongDivX1 = DivX + DivWidth*0.0625+(0.03125+PrevSongMoveX);
;
float PrevSongDivY2 = DivY + DivHeight*0.03125+(0.03125+PrevSongMoveY);
float PrevSongDivX3 = DivX + DivWidth*0.03125+(0.0625+PrevSongMoveX) ;
float PrevSongDivY4 = DivY + DivHeight*0.0625+(0.0625+PrevSongMoveY);
float PrevSongDivX5 = DivX + DivWidth*0.0625+(0.03125+PrevSongMoveX);
float PrevSongDivY6 = DivY + DivHeight*0.09375+(0.09375+PrevSongMoveY);
;
triangle(PrevSongDivX1, PrevSongDivY2, PrevSongDivX3, PrevSongDivY4, PrevSongDivX5, PrevSongDivY6)
  ;
float moveX = 236f;
float moveY = 495f;
float lineLength = 20f;
line(PrevSongDivX3, PrevSongDivY2, PrevSongDivX3, PrevSongDivY6);
//
float BackTenMoveX =316f;
float BackTenMoveY = 495f;
float BackTenDivX1 = DivX + DivWidth*0.0625+(0.03125+BackTenMoveX);
;
float BackTenDivY2 = DivY + DivHeight*0.03125+(0.03125+BackTenMoveY);
float BackTenDivX3 = DivX + DivWidth*0.03125+(0.0625+BackTenMoveX) ;
float BackTenDivY4 = DivY + DivHeight*0.0625+(0.0625+BackTenMoveY);
float BackTenDivX5 = DivX + DivWidth*0.0625+(0.03125+BackTenMoveX);
float BackTenDivY6 = DivY + DivHeight*0.09375+(0.09375+BackTenMoveY);
;
triangle(BackTenDivX1, BackTenDivY2, BackTenDivX3, BackTenDivY4, BackTenDivX5, BackTenDivY6);
//
float PausemoveX = 906f;
float PausemoveY = 780f;
float barWidth = 10f;
float spacing = 15f;
float barHeight = 40f;
//
rect(PausemoveX, PausemoveY, barWidth, barHeight);
rect(PausemoveX + barWidth + spacing, PausemoveY, barWidth, barHeight);
//

float SkipSongMoveX =480f;
float SkipSongMoveY = 495f;
float SkipSonglineLength = 20f;
float SkipSongDivX1 = DivX + DivWidth*0.03125+(0.0625+SkipSongMoveX);
;
float SkipSongDivY2 = DivY + DivHeight*0.03125+(0.03125+SkipSongMoveY);
float SkipSongDivX3 = DivX + DivWidth*0.0625+(0.03125+SkipSongMoveX) ;
float SkipSongDivY4 = DivY + DivHeight*0.0625+(0.0625+SkipSongMoveY);
float SkipSongDivX5 = DivX + DivWidth*0.03125+(0.0625+SkipSongMoveX);
float SkipSongDivY6 = DivY + DivHeight*0.09375+(0.09375+SkipSongMoveY);
;
triangle(SkipSongDivX1, SkipSongDivY2, SkipSongDivX3, SkipSongDivY4, SkipSongDivX5, SkipSongDivY6)
  ;
line(SkipSongDivX3, SkipSongDivY2, SkipSongDivX3, SkipSongDivY6);
//
line(muteDivX, muteDivY, muteDivX + muteDivWidth, muteDivY + muteDivHeight);
//
float checkX1 = ShuffleeDivX + ShuffleeDivWidth*0.25;
float checkY1 = ShuffleeDivY + ShuffleeDivHeight*0.50;
float checkX2 = ShuffleeDivX + ShuffleeDivWidth*0.45;
float checkY2 = ShuffleeDivY + ShuffleeDivHeight*0.75;
float checkX3 = ShuffleeDivX + ShuffleeDivWidth*0.75;
float checkY3 = ShuffleeDivY + ShuffleeDivHeight*0.25;
line(checkX1, checkY1, checkX2, checkY2);
line(checkX2, checkY2, checkX3, checkY3);
float checkX4 = ShuffleeDivX + ShuffleeDivWidth * 0.25;
float checkY4 = (ShuffleeDivY + ShuffleeDivHeight) - ShuffleeDivHeight * 0.50;
float checkX5 = ShuffleeDivX + ShuffleeDivWidth * 0.45;
float checkY5 = (ShuffleeDivY + ShuffleeDivHeight) - ShuffleeDivHeight * 0.75;
float checkX6 = ShuffleeDivX + ShuffleeDivWidth * 0.75;
float checkY6 = (ShuffleeDivY + ShuffleeDivHeight) - ShuffleeDivHeight * 0.25;
line(checkX4, checkY4, checkX5, checkY5);
line(checkX5, checkY5, checkX6, checkY6);
//
float UnMutecheckX1 = UnMuteDivX + UnMuteDivWidth*0.25;
float UnMutecheckY1 = UnMuteDivY + UnMuteDivHeight*0.50;
float UnMutecheckX2 = UnMuteDivX + UnMuteDivWidth*0.45;
float UnMutecheckY2 = UnMuteDivY + UnMuteDivHeight*0.75;
float UnMutecheckX3 = UnMuteDivX + UnMuteDivWidth*0.75;
float UnMutecheckY3 = UnMuteDivY + UnMuteDivHeight*0.25;
line(UnMutecheckX1, UnMutecheckY1, UnMutecheckX2, UnMutecheckY2);
line(UnMutecheckX2, UnMutecheckY2, UnMutecheckX3, UnMutecheckY3);
//
line(ExitDivX, ExitDivY, ExitDivX + ExitDivWidth, ExitDivY + ExitDivHeight);
line(ExitDivX + ExitDivWidth, ExitDivY, ExitDivX, ExitDivY + ExitDivHeight);
//
textAlign(CENTER, CENTER);
textSize(DoubleSpeedDivHeight * 0.8);
fill(#2C08FF);
text("2X", DoubleSpeedDivX + DoubleSpeedDivWidth/2, DoubleSpeedDivY + DoubleSpeedDivHeight/2);
//
//Images & Aspoect Ratio Algoritrhm, including WHILE Loop
float image2AspectRation_GreatOne = ( imageWidth2 > imageHeight2 ) ? float(imageWidth2) / float(imageHeight2) : float(imageHeight2) / float(imageWidth2 ) ;
println("Verify Image Aspect Ratio Greater than One:", image2AspectRation_GreatOne>=1, "\tActual Number:", image2AspectRation_GreatOne);
float imageWidthAdjusted2 = ImageDivWidth;
println("Comparison of ImageHeight2 and divHeight:", imageHeight2, ImageDivHeight);
float imageHeightAdjusted1 = (imageWidth2 >= ImageDivWidth ) ?imageWidthAdjusted2 / image2AspectRation_GreatOne : imageWidthAdjusted2 * image2AspectRation_GreatOne ;
println("imageHeightAdjusted1", imageHeightAdjusted1);
println("Question: is this too big?", "\t\thint ... reposition image() above rect(div)");
while ( imageHeightAdjusted1 > ImageDivHeight ) {
  imageWidthAdjusted2 *= 0.99;
  imageHeightAdjusted1 = imageWidthAdjusted2 / image2AspectRation_GreatOne ; //CHANGE THIS
}//End WHILE
//image();

//
//
