import processing.sound.*;

import g4p_controls.*;


DramaSound file1;
DramaSound file2;
DramaSound file3;

String[] fileNames = {
  "bellSound.mp3",
  "drumMusic.mp3",
  "gunSound.mp3",
  "rainMusic.mp3",
  "sneezeSound.mp3",
  "ufoMusic.mp3",
  //"launchMusic.mp3"
  "backgroundMusic.mp3"
  
};



void setup() {
  createGUI();
  size(400, 350, JAVA2D);
  //windowManual.setVisible(false);
  file1 = new DramaSound(fileNames[0], this);
  file2 = new DramaSound(fileNames[1], this);
  file3 = new DramaSound(fileNames[2], this);

}


void createManualScreen() {
  windowManual.setVisible(true);
  //create seek limits
  windowManual.setVisible(true);
  

}




void draw() {



}
