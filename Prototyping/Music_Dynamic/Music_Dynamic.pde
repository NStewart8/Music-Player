import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//
//Global Variable
Minim minim; //intiates entire class
int numberofSongs = 3;
int numberofSoundEffects = 1;
AudioPlayer[] playList = new AudioPlayer [numberofSongs];
AudioMetaData[] playListMetaData = new AudioMetaData[ numberofSongs ];
AudioPlayer[] soundEffects = new AudioPlayer [numberofSoundEffects];
int currentSong = numberofSongs - numberofSongs; //ZERO, Math Property
//
void setup() {
  //Display
  size(700, 500);
  fullScreen(); //DisplayWidth //DisplayHeight
  int appWidth = width;
  int appHeight = height;
  //
  int numberOfButtons = 13; //Half a button on either side as space, Center Button is Play
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
  //DIV: rect()
  rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
  rect(messageDIV_X, messageDIV_Y, messageDIV_Width, messageDIV_Height);
  rect(quitX, quitY, quitWidth, quitHeight);
  //
  //

  //
  minim = new Minim(this); //Manditory
  String upArrow = "..";
  String open = "/";
  String MusicFolder = "Music"; //Developer Specific
  String SFXFolder = "SFX"; //Developer Specific
  String dependanciesFolder = "dependancies"; //Developer Specific
  //
  String[] songName = new String[numberofSongs];
  songName[currentSong] = "Beat_Your_Competition";
  currentSong++;
  songName[currentSong] = "Ghost_Walk";
  currentSong++;
  songName[currentSong] = "groove";
  currentSong++;
  currentSong=0;
  //
  String songName1 = "groove";
  String soundEffect1 = "Spring_Attic_Door";
  String fileExtension_mp3 = ".mp3";
  //
  String Musicdirectory = upArrow + open + upArrow + open + dependanciesFolder + open + MusicFolder + open;
  String SFXdirectory = upArrow + open + upArrow + open + dependanciesFolder + open + SFXFolder + open;
  String pathway;
  for ( int i=0; i<numberofSongs; i++ ) {
    //
    pathway = Musicdirectory + songName[i] + fileExtension_mp3;
    playList[ i ] = minim.loadFile( pathway );
    playListMetaData[ i ] = playList[ i ].getMetaData();
  }
  pathway = SFXdirectory + soundEffect1 + fileExtension_mp3; //Rewritting FILE
  soundEffects[currentSong] = minim.loadFile( pathway ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //
  for ( int i=0; i<numberofSongs; i++ ) {
    if ( playList[i]==null ) { //ERROR, play list is NULL
      //See FILE or minim.loadFile
      println("The Play List did not load properly");
      printArray(playList);
      exit();
    }
  }
  if ( soundEffects[currentSong]==null ) { //ERROR, play list is NULL
    println("The Sound Effects did not load properly");
    printArray(soundEffects);
    exit();
  }

  String x = "X";
  //
  // Fonts from OS
  //rect(height) is biggest font is word is the smallest
  float fontSize1 = songTitleDivHeight; //1:1 Font Height to rectHeight
  float fontSize2 = messageDIV_Height;
  float fontSize3 = quitHeight;
  PFont font; //Font Varaible Name, able to have more than one Font
  String Calibri = "Calibri"; //Spelling of the Font Matters, see PFont.list() v Create Font above
  font = createFont(Calibri, fontSize1);
  //
  //Drawing Text
  color purpleInk = #2C08FF; //AP MiniLesson on bit, 8-bit or byte (grey scale, 256), colour
  color whiteInk = #FFFFFF; //Grey Scale is 255
  color resetInk = whiteInk;
  fill(purpleInk); //Ink, hexidecimal copied from Color Selector
  //Grey Scale 0-255
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  //
  // Procedure Passing RECT(#2) && fontSize(RECT#)
  float constantDecrease = 0.99;
  int iWhile=0;
  textFont(font, fontSize1); //must include textSize() before text() & textWidth()
  while ( textWidth(playListMetaData[currentSong].title()) > songTitleDivWidth ) {
    //println("While #1"); //Infinite WHILE Check
    iWhile++;
    if ( iWhile>10000 ) { //>1000 means -1 text or i
      println("Infninte WHILE Loop");
      exit();
    }
    fontSize1 *= constantDecrease;
    textFont(font, fontSize1);
  }
  text( playListMetaData[currentSong].title(), songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight );
  //



  //
}//End Setup
//
void draw() {
  playList[currentSong].play();
  //soundEffects[currentSong].play();
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
      if ( currentSong==numberofSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      playList[currentSong].play();
    } else {
      //
      playList[currentSong].rewind();
      //
      if ( currentSong==numberofSongs-1 ) {
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
  if ( key=='Y' || key=='y' ) currentSong = int(random(numberofSongs)); //random(0, numberofSongs)
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
