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
int numberofSoundEffects = 3;
AudioPlayer[] playList = new AudioPlayer [numberofSongs];
AudioPlayer[] soundEffects = new AudioPlayer [numberofSoundEffects];
int currentSong = numberofSongs - numberofSongs; //ZERO, Math Property
//
void setup() {
  //Display
  size(700, 500);
  //fullScreen(); //DisplayWidth //DisplayHeight
  //int appWidth = width;
  //int appHeight = height;
  //
  minim = new Minim(this); //Manditory
  String upArrow = "..";
  String open = "/";
  String MusicFolder = "Music"; //Developer Specific
  String SFXFolder = "Sound Effects"; //Developer Specific
  String dependanciesFolder = "dependancies"; //Developer Specific
//
String[] songName = new String[numberofSongs];
songName[0]= "Beat_Your_Competition";
songName[1]= "groove";
songName[2] = "Ghost_Walk";

  String songName1 = "groove";
  String soundEffect1 = "Spring_Attic_Door";
  String fileExtension_mp3 = ".mp3";
  //
  String Musicdirectory = upArrow + open + upArrow + open + dependanciesFolder + open + MusicFolder + open;
 // String SFXdirectory = upArrow + open + upArrow + open + dependanciesFolder + open + SFXFolder + open;
  String pathway = Musicdirectory + songName1 + fileExtension_mp3; //TO BE Rewritten and deleted once file is LOADED
  println(pathway);
  playList[ currentSong ] = minim.loadFile( pathway ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
 // pathway = SFXdirectory + soundEffect1 + fileExtension_mp3; //Rewritting FILE
  println(pathway);
  playList[ currentSong ] = minim.loadFile( pathway ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //pathway = SFXdirectory + soundEffect1 + fileExtension_mp3; //Rewritting FILE
  println(pathway);
  soundEffects[currentSong] = minim.loadFile( pathway ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //
  if ( playList[currentSong]==null || soundEffects[currentSong]==null ) { //ERROR, play list is NULL
    //See FILE or minim.loadFile
    println("The Play List or Sound Effects did not load properly");
    printArray(playList);
    printArray(soundEffects);
    /*
  println("Music Pathway", musicDirectory);
     println("Full Music File Pathway", file);
     */
  } else {
    playList[currentSong].loop();
    printArray(playList);
  }
}//End Setup
//
void draw() {
}//End Draw
//
void mousePressed() {
}//End Mouse Pressed
//
void keyPressed() {
}//End Key Pressed
//
//End MAIN Program
