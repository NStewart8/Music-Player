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
int imageWidth2 = 225;
int imageHeight2= 225;
int numberofButtons = 13;
int WidthofButton = appwidth/numberofButtons;
int beginningButtonSpace = WidthofButton;
float ImageDivX = beginningButtonSpace;
float ImageDivY = appheight*4.5/20;
float ImageDivWidth = appwidth*1/2 - beginningButtonSpace*1.5;
float ImageDivHeight = appheight*1.5/5;
//
//Image: Aspect Ratio Algorithm
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
rect(ImageDivX, ImageDivY, ImageDivWidth, ImageDivHeight);
//
