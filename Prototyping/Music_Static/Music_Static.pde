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
Audioplayer[] playList = new AudioPlayer [numberofSongs];
Audioplayer[] soundEffects = new AudioPlayer [numberofSoundEffects];
int currentSong = numberofSongs - numberofSongs; //ZERO, Math Property
//
//Display
size(700,500);
//fullScreen(); //DisplayWidth //DisplayHeigjt
