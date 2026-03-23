/* Aspect Ratio
*/
//
//Display
fullScreen();
int appwidth = displayWidth;
;int appheight = displayHeight;
//
String upArow = "..";
String dependenciesFolder = "dependancies"
;String ImagesFolder = "Images";
String ImageName = "image"
;String fileExtension = ".jpg"
;String open = "/";  
//
//Concatinate
// Note, Cut Out, see Absolute Pathway: \\Users\N.stewart8\Documents\GitHub\Music-Player\Dependencies\Images
//see Absolute Pathway: Dependencies/Images
String imageDirectory = upArow + open + upArow + open + dependenciesFolder + open + ImagesFolder + open;
String pathway1 = imageDirectory + ImageName + fileExtension;
;println(pathway1);
PImage Image1 = loadImage(pathway1);
//
image(Image1, 0, 0);
//
int numberofButtons = 13;
int WidthofButton = appwidth/numberofButtons;
int beginningButtonSpace = WidthofButton;
float ImageDivX = beginningButtonSpace;
float ImageDivY = appheight*4.5/20;
float ImageDivWidth = appwidth*1/2 - beginningButtonSpace*1.5;
float ImageDivHeight = appheight*1.5/5;
int ImageWidth = 225;
int ImageHeight =225;
println (float (ImageWidth)/float (ImageHeight));
//Div: Image
//
float Image2AspectRatio_GreatOne = (ImageWidth > ImageHeight) ? float(ImageWidth)/float(ImageHeight) : float(ImageHeight)/float(ImageWidth) ;
//println("Verify Image Aspect Ratio Greater than One:", Image2AspectRatio_GreatOne>=1, "\Actual Number:", Image2AspectRatio_GreatOne);
float ImageWidthAdjusted = ImageDivWidth;
float ImageHeightAdjusted = (ImageWidth >= ImageDivWidth) ? ImageWidthAdjusted/Image2AspectRatio_GreatOne : ImageHeightAdjusted/Image2AspectRatio_GreatOne;
while (ImageHeightAdjusted > ImageDivHeight) {
ImageWidthAdjusted *= 0.99;
}//End while
println( "Comparison of ImageHeight and DivhHeight:", ImageHeight, ImageDivHeight);
rect (ImageDivX, ImageDivY, ImageWidthAdjusted, ImageHeightAdjusted);
