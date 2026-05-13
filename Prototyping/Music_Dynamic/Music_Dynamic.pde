import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//
//Global Variables
Minim minim;  
int numberOfSongs = 3;
int numberOfSoundEffect = 1;
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioMetaData[] playListMetaData = new AudioMetaData[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffect ];
int currentSong = numberOfSongs - numberOfSongs; 
//
float songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight;
color purpleInk, resetInk;
float constantDecrease;
int iWhile;
float fontSize1, fontSize2, fontSize3;
PFont font;
//
void setup() {
  //Display
  size( 700, 500 ); //width //height
  //fullScreen();  //displayWidth //displayHeight
  int appWidth = width; //Best Practice
  int appHeight = height;
  //
  //DIVs, Population
  int numberOfButtons = 13; //Half a button on either side as space, Center Button is Play
  int widthOfButton = appWidth/numberOfButtons;
  int beginningButtonSpace = widthOfButton;
  float quitX = appWidth - appHeight*1/20;
  float quitY = 0;
  float quitWidth = appHeight*1/20;
  float quitHeight = appHeight*1/20;
  songTitleDivX = beginningButtonSpace;
  songTitleDivY = appHeight*1.5/20;
  songTitleDivWidth = appWidth*1/2 - beginningButtonSpace*1.5;
  songTitleDivHeight = appHeight*1/10;
  float messageDIV_X = appWidth*1/2 + beginningButtonSpace*1/2;
  float messageDIV_Y = appHeight*1.5/20;
  float messageDIV_Width = appWidth*1/2 - beginningButtonSpace*1.5;
  float messageDIV_Height = appHeight*9/20;
  //
  //DIV: rect()
  rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
  rect(messageDIV_X, messageDIV_Y, messageDIV_Width, messageDIV_Height);
  rect(quitX, quitY, quitWidth, quitHeight);
  //
  //Music Loading - STRUCTURED Review
  minim = new Minim(this); //Manditory
  String upArrow = "..";
  String open = "/";
  String MusicFolder = "Music"; //Developer Specific
  String SFXFolder = "Sound Effects"; //Developer Specific
  String dependanciesFolder = "dependancies"; //Developer Specific
  //
  String[] songName = new String[numberOfSongs];
  songName[currentSong] = "Beat_Your_Competition";
  currentSong++;
  songName[currentSong] = "Ghost_Walk";
  currentSong++;
  songName[currentSong] = "groove";
  currentSong=0;
  //
  String soundEffect1 = "Car_Door_Closing";
  String fileExtension_mp3 = ".mp3";
  //
  String Musicdirectory = upArrow + open + upArrow + open + dependanciesFolder + open + MusicFolder + open ; //Concatenation
  String SFXdirectory = upArrow + open + upArrow + open + dependanciesFolder + open + SFXFolder + open ; //Concatenation
  String pathway;
  playListMetaData = new AudioMetaData[numberOfSongs];
  for ( int i=0; i<numberOfSongs; i++ ) {
    pathway = Musicdirectory + songName[i] + fileExtension_mp3; //TO BE Rewritten and deleted once file is LOADED
    playList[i] = minim.loadFile( pathway ); 
     // Replace with your actual count
  if (playList[i] != null) {
    playListMetaData[i] = playList[i].getMetaData();
  }
  }
  pathway = SFXdirectory + soundEffect1 + fileExtension_mp3; //Rewritting FILE
  soundEffects[currentSong] = minim.loadFile( pathway ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //
  for ( int i=0; i<numberOfSongs; i++ ) {
    if ( playList[i]==null ) { 
      println("The Play List did not load properly");
      printArray(playList);
      exit();
    }
  }
  if ( soundEffects[currentSong]==null ) { 
    println("The Sound Effects did not load properly");
    printArray(soundEffects);
    exit();
  }
  //
 // Fonts from OS
   println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
   String[] fontList = PFont.list(); //To list all fonts available on system
   printArray(fontList); //For listing all possible fonts to choose, then createFont
   //Spelling Counts and must compare CONSOLE v Tools / Create Font / Create Font Spelling
   //Tools / Create Font / Find Font / Do Not Press "OK", known conflict between loadFont() and createFont()
  
  // Students enter all text from Case Study
  String x = "X";
  //
  // Fonts from OS
  //rect(height)
  fontSize1 = songTitleDivHeight; //1:1 Font Height to rectHeight
  fontSize2 = messageDIV_Height;
  fontSize3 = quitHeight;
  PFont font; 
  String calibri = "Calibri";  
  font = createFont(calibri, fontSize1);
  //
  //Drawing Text
  purpleInk = #2C08FF; 
  color whiteInk = #FFFFFF; 
  resetInk = whiteInk;
  fill(purpleInk); 
  //Grey Scale 0-255
  textAlign (CENTER, CENTER); 
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  //
  // Procedure Passing RECT(#2) && fontSize(RECT#)
  float constantDecrease = 0.99;
  int iWhile=0;
  textFont(font, fontSize1);
  while ( textWidth(playListMetaData[currentSong].title()) > songTitleDivWidth ) {
   String title = playListMetaData[currentSong].title();
if (title == null || title.equals("")) {
  title = "Unknown Title"; // Fallback so the loop doesn't break
}
    println("While #1"); //Infinite WHILE Check
    iWhile++;
    if ( iWhile>10000 ) { //>1000 means -1 text or i
      println("Infninte WHILE Loop");
      exit();
    }
    fontSize1 *= constantDecrease;
    textFont(font, fontSize1);
  }
  text( playListMetaData[currentSong].title(), songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight );
 String title = playListMetaData[currentSong].title();
 if (title == null || title.equals("")) {
  title = "Unknown Title"; // Fallback so the loop doesn't break
}
  fill(resetInk);
  //
  playList[currentSong].play();
  //soundEffects[currentSong].play();
  //
}//End Setup
//
void draw() {
  rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
  fontSize1 = songTitleDivHeight;
  constantDecrease = 0.99;
  iWhile=0;
  textFont(font, fontSize1); 
  while ( textWidth(playListMetaData[currentSong].title()) > songTitleDivWidth ) {
   String title = playListMetaData[currentSong].title();
if (title == null || title.equals("")) {
  title = "Unknown Title"; // Fallback so the loop doesn't break
} 
  /* 
    println("While #1"); //Infinite WHILE Check
    iWhile++;
    if ( iWhile>10000 ) { //>1000 means -1 text or i
      println("Infninte WHILE Loop");
      exit();
    }
    */
    fontSize1 *= constantDecrease;
    textFont(font, fontSize1);
  }
  fill(purpleInk);
  text( playListMetaData[currentSong].title(), songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight );
  String title = playListMetaData[currentSong].title();
if (title == null || title.equals("")) {
  title = "Unknown Title"; // Fallback so the loop doesn't break
}
  fill(resetInk); //
}//End Draw
//
void mousePressed() {
}//End Mouse Pressed
//
void keyPressed() {
  /* Simple Play
   playList[currentSong].play();
   currentSong++;
   */
  //
  /* Key Board Short Cuts ... learning what the Music Buttons could be
   Note: CAP Lock with ||
   if ( key==? || key==? ) ; //'' only
   -
   if ( key==CODED || keyCode==SpecialKey ) ; //Special Keys abriviated CAPS
   -
   All Music Player Features are built out of these Minim AudioPlayer() functions
   .isPlaying()
   .isMuted()
   .loop(0), parameter is number of iterations after play
   .loop(), parameter is infinite interations
   .play(), parameter is built-in skip (milli-seconds or crystal-time)
   .pause()
   .rewind()
   .skip()
   .unmute()
   .mute()
   -
   Lesson Music Button Features based on single, double, and spamming taps
   - Play
   - Pause
   - Stop
   - Loop Once
   - Loop Infinite
   - Fast Forward
   - Fast Rewind
   - Mute
   - Next Song
   - Previous Song
   - Shuffle
   -
   - Advanced Buttons & Combinations
   - Play-Pause-Stop
   - Auto Play
   - Random Song
   */
  //if ( key=='P' || key=='p' ) playList[currentSong].play(); //Simple Play, no double tap possible
  //
  if ( key=='P' || key=='p' ) playList[currentSong].loop(0); //Simple Play, double tap possible
  /* Note: double tap is automatic rewind, no pause
   Symbol is two triangles
   This changes what the button might become after it is pressed
   */
  if ( key=='O' || key=='o' ) { // Pause
    //
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
    } else {
      playList[currentSong].play();
    }
  }
  //if ( key=='S' || key=='s' ) song[currentSong].pause(); //Simple Stop, no double taps
  //
  if ( key=='S' | key=='s' ) {
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause(); //single tap
    } else {
      playList[currentSong].rewind(); //double tap
    }
  }
  if ( key=='L' || key=='l' ) playList[currentSong].loop(1); // Loop ONCE: Plays, then plays again, then stops & rewinds
  if ( key=='K' || key=='k' ) playList[currentSong].loop(); // Loop Infinitely //Parameter: BLANK or -1
  if ( key=='F' || key=='f' ) playList[currentSong].skip( 10000 ); // Fast Forward, Rewind, & Play Again //Parameter: milliseconds
  if ( key=='R' || key=='r' ) playList[currentSong].skip( -10000 ); // Fast Reverse & Play //Parameter: negative numbers
  if ( key=='W' || key=='w' ) { // MUTE
    //
    //MUTE Behaviour: stops electricty to speakers, does not stop file
    //NOTE: MUTE has NO built-in PUASE button, NO built-in rewind button
    //ERROR: if song near end of file, user will not know song is at the end
    //Known ERROR: once song plays, MUTE acts like it doesn't work
    if ( playList[currentSong].isMuted() ) {
      //ERROR: song might not be playing
      //CATCH: ask .isPlaying() or !.isPlaying()
      playList[currentSong].unmute();
    } else {
      //Possible ERROR: Might rewind the song
      playList[currentSong].mute();
    }
  }
  if ( key==CODED || keyCode==ESC ) exit(); // QUIT //UP
  if ( key=='Q' || key=='q' ) exit(); // QUIT
  //
  if ( key=='N' || key=='n' ) { // NEXT //See .txt for starter hint
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
      playList[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      playList[currentSong].play();
    } else {
      //
      playList[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      // NEXT will not automatically play the song
      //song[currentSong].play();
    }
  }
  //if ( key=='B' || key=='b' ) ; // Previous, Back //Students to finish
  //
  if ( key=='Y' || key=='y' ) currentSong = int(random(numberOfSongs)); //random(0, numberOfSongs)
  //
  //if ( key=='S' || key=='s' ) ; // Shuffle - PLAY (Random)
  //Note: will randomize the currentSong number
  //Caution: random() is used very often
  //Question: how does truncating decimals affect returning random() floats
  /*
  if ( key=='' || key=='' ) ; // Play-Pause-STOP //Advanced, beyond single buttons
   - need to have basic GUI complete first
   */
  //
}//End Key Pressed
//
//End MAIN Program
