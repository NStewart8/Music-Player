/* Aspect Ratio
*/
//
//Display
fullScreen();
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
