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
      println("cue the song up:" + lastTimestamp);
      file.play();
      timeStarted = millis()/1000;
      isPlaying = true;
      return;
    }
  }
  void pauseSound() {
    if (isPlaying) {
      lastTimestamp = (float(millis())-timeStarted)/1000;
      println("paused at: " + lastTimestamp);
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
  void jump(float jumpAmount){//Jump amount is in seconds
        boolean initState = isPlaying;
        pauseSound();
       if(jumpAmount + lastTimestamp > file.duration() ){
         lastTimestamp = file.duration();
       }
       else if(jumpAmount + lastTimestamp < 0){
         lastTimestamp = 0;
       }
       else{
         lastTimestamp += jumpAmount;
       }
       if(initState){
         playSound();
       }  
  }
  void jumpToTime(float jumpAmount){//in seconds
        stopSound();
        if(jumpAmount >= file.duration()){
          jumpAmount = file.duration();
        }
        file.cue(jumpAmount);
                file.play();
        timeStarted = millis();
        isPlaying = true;
  
  }
  void update(){
   if(millis()-timeStarted+lastTimestamp >= file.duration()){
     stopSound();
   }
  }
  
  
}
