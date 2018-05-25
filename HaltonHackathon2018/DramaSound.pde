class DramaSound {


  SoundFile file;
  boolean isPlaying = false;
  float lastTimestamp = 0.0;

  float timeStarted = 0;




  DramaSound(String fileName, PApplet app) {
    file = new SoundFile(app, fileName);
  }
  void playSound() {
    if (!isPlaying && lastTimestamp == 0) {//Pressing play for the time
      file.cue(0.0);
      file.play();
      timeStarted = millis();
      isPlaying = true;
      return;
    } else if (!isPlaying && lastTimestamp > 0) {
      file.cue(lastTimestamp);
      file.play();
      timeStarted = millis()/1000;
      isPlaying = true;
      return;
    }
  }
  void pauseSound() {
    if (isPlaying) {
      lastTimestamp = (float(millis())-timeStarted)/1000;
      file.stop();
      isPlaying = false;
    }
  }
  void stopSound() {
    if (isPlaying) {
      lastTimestamp = 0;
      file.stop();
      isPlaying = false;
    }
  }
  void fastForward(float jumpAmount){//Jump amount is in seconds
    
   
    
   if(jumpAmount + lastTimestamp > file.duration() ){
     lastTimestamp = file.duration();
   }
   else if(jumpAmount + lastTimestamp < 0){
     lastTimestamp = 0;
   }
       
    
   
       
     
  }
  
  
}
