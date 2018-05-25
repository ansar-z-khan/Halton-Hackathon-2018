import processing.sound.*;

import g4p_controls.*;


SoundFile[] files;

String[] fileNames = {
  "bellSound.mp3",
  "drumMusic.mp3",
  "gunSound.mp3",
  "rainMusic.mp3",
  "sneezeSound.mp3",
  "ufoMusic.mp3"
};



void setup() {
  createGUI();
  size(400, 350, JAVA2D);
  //windowManual.setVisible(false);

}


void createManualScreen() {
  windowManual.setVisible(true);
  //create seek limits
  windowManual.setVisible(true);
  files = new SoundFile[fileNames.length];
  for(int i=0; i < fileNames.length; i++){
     files[i] = new SoundFile(this, fileNames[i]);
  }
}




void draw() {
  background(255);

}
