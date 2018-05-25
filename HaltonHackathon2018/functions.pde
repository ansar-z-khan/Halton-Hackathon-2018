void drawFilters(){
  windowManual.fill(50, 50, 50, 50);
  if (muteStates[0] == true) {
    windowManual.rect(327, 147, 55, 55);
  }
  if (muteStates[1] == true) {
    windowManual.rect(327, 347, 55, 55);
  }
  if (muteStates[2] == true) {
    windowManual.rect(327, 547, 55, 55);
  }
  
  if (loopStates[0] == true) {
    windowManual.rect(327, 197, 55, 55);
  }
  if (loopStates[1] == true) {
    windowManual.rect(327, 397, 55, 55);
  }
  if (loopStates[2] == true) {
    windowManual.rect(327, 597, 55, 55);
  }
  
}

void showManualTitle() {
 windowManual.textSize(50);
 windowManual.fill(0);
 windowManual.text("Manual Control", 50, 100);
}
