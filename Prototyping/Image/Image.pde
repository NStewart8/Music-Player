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
//
//Image: Aspect Ratio Algorithm
float image2AspectRation_GreatOne =  ( imageWidth2 > imageHeight2 ) ? float(imageWidth2) / float(imageHeight2) : float(imageHeight2) / float(imageWidth2 ) ; 
float imageWidthAdjusted2 = imageDivWidth;
if (imageWidth2 >= imageDivWidth) { 
float imageHeightAdjusted1 = imageWidthAdjusted2 / image2AspectRation_GreatOne ;
} else {
float imageHeightAdjusted1 = imageWidthAdjusted2 / image2AspectRation_GreatOne ;
}

//println( float(imageWidth2)/ float(imageHeight2) );
//Ternary Operator for As[pect Ratio: Q: greatOne v lessOne

println("Verify Image Aspect Ratio Greater than One:", image2AspectRation_GreatOne>=1, "\tActual Number:", image2AspectRation_GreatOne);

println("Comparison of imageHeight2 and divHeight:", imageHeight2, imageDivHeight);

println("imageHeightAdjusted1", imageHeightAdjusted1);
println("Question: is this too big?", "\t\thint ... reposition image() above rect(div)");
// WHILE LOOP: decrease imageWidth to decrease the calculated imageHeight (% decrease within mutliplication assignment operator)
while ( imageHeightAdjusted1 > imageDivHeight ) {
  imageWidt imageHeightAdjusted1 = imageWidthAdjusted2 / image2AspectRation_GreatOne ;
