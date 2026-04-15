/* Text, Simple ... Hardcoded
 */
//
//Display
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
//Population: DIVs
int numberOfButtons = 13; 
int widthOfButton = appWidth/numberOfButtons;
int beginningButtonSpace = widthOfButton;
float quitX = appWidth - appHeight*1/20;
float quitY = 0;
float quitWidth = appHeight*1/20;
float quitHeight = appHeight*1/20;
float songTitleDivX = beginningButtonSpace;
float songTitleDivY = appHeight*1.5/20;
float songTitleDivWidth = appWidth*1/2 - beginningButtonSpace*1.5;
float songTitleDivHeight = appHeight*1/10;
float messageDIV_X = appWidth*1/2 + beginningButtonSpace*1/2;
float messageDIV_Y = appHeight*1.5/20;
float messageDIV_Width = appWidth*1/2 - beginningButtonSpace*1.5;
float messageDIV_Height = appHeight*9/20;
//
//DIV: Image
rect(quitX, quitY, quitWidth, quitHeight);
rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
rect(messageDIV_X, messageDIV_Y, messageDIV_Width, messageDIV_Height);
//
//Strings, Text, Literal
String title = "Wahoo!";
/* Full String longer than Rectangle, "Wahoo! I changed 2D Size."
 - divHeight must fit the font size or text is not shown (Advanced, error check includes %-decrease)
 - Fonts includes the in WHITE SPACE around the foreground "coloured ink"
 - divWidth must include the font size
 - if font is too big, wrap around happens
 - OR full string is not drawn
 */
/*Fonts from OS
 println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
 String[] fontList = PFont.list(); //To list all fonts available on system
 printArray(fontList); //For listing all possible fonts to choose, then createFont
 //Spelling Counts and must compare CONSOLE v Tools / Create Font / Create Font Spelling
 //Tools / Create Font / Find Font / Do Not Press "OK", known conflict between loadFont() and createFont()
 */
//
float fontSize1 = appHeight; 
float fontSize2 = appHeight; 
float fontSize3 = appHeight;
//println( fontSize );
PFont font; 
String Calibri = "Calibri"; 
font = createFont(Calibri, fontSize1);
//
// Aspect Ratio for Calibri-48
float fontSizeCalibri = 83; 
float divHeightCalibri = songTitleDivHeight; 
float CalibriAspectRatio = fontSizeCalibri / divHeightCalibri; 
float textAdjustment = 0.9;
fontSize1 = songTitleDivHeight*CalibriAspectRatio * textAdjustment;
fontSize2 = messageDIV_Height*CalibriAspectRatio * textAdjustment;
fontSize3 = quitHeight*CalibriAspectRatio * textAdjustment;
//println( fontSize );
//
//Drawing Text
color purpleInk = #2C08FF; 
color whiteInk = #FFFFFF; 
color resetInk = whiteInk;
fill(purpleInk); 
textAlign (CENTER, CENTER); 
//
float constantDecrease = 0.99;
int iWhile=0;
textFont(font, fontSize1); //must include textSize() before text() & textWidth()
while (textWidth(title) > songTitleDivWidth) {
  //println("While #1"); //Demon Infinite LOOP
  iWhile++;
  if ( iWhile>1000 ) {
    println("Infninte WHILE Loop");
    exit();
  }
  fontSize1 *= constantDecrease;
  textFont(font, fontSize1);
}
text( title, songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight );
textFont(font, fontSize2); //must include textSize() before text() & textWidth()
iWhile=0;
while (textWidth(title) > messageDIV_Width) {
  //println("While #1"); //Demon Infinite LOOP
  iWhile++;
  if ( iWhile>1000 ) {
    println("Infninte WHILE Loop");
    exit();
  }
  fontSize2 *= constantDecrease;
  textFont(font, fontSize2);
}
text( title, messageDIV_X, messageDIV_Y, messageDIV_Width, messageDIV_Height );
textFont(font, fontSize3); //must include textSize() before text() & textWidth()
iWhile=0;
while (textWidth(title) > quitWidth) {
  //println("While #1"); //Demon Infinite LOOP
  iWhile++;
  if ( iWhile>1000 ) {
    println("Infninte WHILE Loop");
    exit();
  }
  fontSize3 *= constantDecrease;
  textFont(font, fontSize3);
}
text( title, quitX, quitY, quitWidth, quitHeight );
fill(resetInk);
//
