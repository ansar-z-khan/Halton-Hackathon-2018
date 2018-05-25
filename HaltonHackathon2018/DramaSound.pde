class DramaSound {
  SoundFile file;
  boolean isPlaying = false;
  float lastTimestamp = 0.0;
  float timeStarted = 0;
  float volume = 100;
  
  boolean isMuted;
  
  double fadeVal = 0;

  DramaSound(String fileName, PApplet app) {
    file = new SoundFile(app, fileName);
  }
  
  void playSound() {
      if (!isPlaying && lastTimestamp == 0) {//Pressing play for the time
        file.cue(0.0);
        file.play();
        timeStarted = millis()/1000.0;
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
      println("stops");
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
  void update(int num){
    //println("is playing:" + isPlaying);

    if (volume <= 0) {
      volume = 0;
      fadeVal = 0;
    }

    println(frameCount%frameRate);
    if (frameCount%frameRate >= 0 && frameCount%frameRate <= 2){
      volume -= fadeVal;
      println("fade val = " + fadeVal + "volume = " + volume);
    }

    file.amp(volume/100);
   if(millis()/1000.0-timeStarted+lastTimestamp >= file.duration()){
     
     if (loopStates[num-1]) {
       //jumpToTime(0);
       //playSound();
     } else {
       stopSound();
     }
     //stopSound();
   }
   
   if (muteStates[num-1]) {
     file.amp(0);
   } else {
     file.amp(volume/100);
   }

   
  }
  float getTime(){
    if(isPlaying){
       return millis()/1000.0-timeStarted+lastTimestamp;
    }
    else{
      return lastTimestamp;
    }
   
  }
  
}
