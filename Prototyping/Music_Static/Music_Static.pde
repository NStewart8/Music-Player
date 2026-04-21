
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
//Display
size(700,500);
//fullScreen(); //DisplayWidth //DisplayHeight
int appWidth = width; 
int appHeight = height;
//
minim = new Minim(this); //Manditory
String upArrow = "..";
String open = "/";
String MusicFolder = "Music"; //Developer Specific
String SFXFolder = "Sound Effects"; //Developer Specific
String dependanciesFolder = "dependancies"; //Developer Specific
String songName1 = "groove";
String soundEffect1 = "Spring_Attic_Door";
String fileExtension_mp3 = ".mp3";
//
String Musicdirectory = upArrow + open + upArrow + open + dependanciesFolder + open + MusicFolder + open;
String SFXdirectory = upArrow + open + upArrow + open + dependanciesFolder + open + SFXFolder + open;
String file = Musicdirectory + songName1 + fileExtension_mp3; //TO BE Rewritten and deleted once file is LOADED
playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
file = SFXdirectory + soundEffect1 + fileExtension_mp3; //Rewritting FILE
soundEffects[currentSong] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
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
}
playList[currentSong].play();
printArray (playList);
