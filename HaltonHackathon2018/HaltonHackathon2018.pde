import processing.sound.*;

import g4p_controls.*;


SoundFile[] files;
boolean [] loopStates;
boolean [] muteStates;

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
  createManualScreen();
  size(400, 350, JAVA2D);
  //windowManual.setVisible(false);
    files = new SoundFile[fileNames.length];
  for(int i=0; i < fileNames.length; i++){
     files[i] = new SoundFile(this, fileNames[i]);
  }
  
  loopStates = new boolean [] {false, false, false};
  muteStates = new boolean [] {false, false, false};

}


void createManualScreen() {
  windowManual.setVisible(true);
  //create seek limits
  windowManual.setVisible(true);
  

}




void draw() {
  background(255);
  files[1].play();
  delay(1000);
  files[1].stop();
  delay(3000);
  files[1].play();

}
