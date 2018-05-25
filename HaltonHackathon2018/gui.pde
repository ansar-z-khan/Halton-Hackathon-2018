/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void windowManualDraw(PApplet appc, GWinData data) { //_CODE_:windowManual:666258:
  appc.background(230);
} //_CODE_:windowManual:666258:

public void play1_click(GImageButton source, GEvent event) { //_CODE_:play1:977343:
  println("imgButton1 - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:play1:977343:

public void songPicker1_click(GDropList source, GEvent event) { //_CODE_:songPicker1:814732:
  println("songPicker1 - GDropList >> GEvent." + event + " @ " + millis());
} //_CODE_:songPicker1:814732:

public void skipAmount1_change(GTextField source, GEvent event) { //_CODE_:skipAmount1:210116:
  println("skipAmount1 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:skipAmount1:210116:

public void rewind1_click(GImageButton source, GEvent event) { //_CODE_:rewind1:983723:
  println("rewind1 - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:rewind1:983723:

public void skip1_click(GImageButton source, GEvent event) { //_CODE_:skip1:451320:
  println("skip1 - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:skip1:451320:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  surface.setTitle("Welcome");
  windowManual = GWindow.getWindow(this, "Manual  Control", 0, 0, 800, 700, JAVA2D);
  windowManual.noLoop();
  windowManual.addDrawHandler(this, "windowManualDraw");
  play1 = new GImageButton(windowManual, 170, 170, 50, 50, new String[] { "playButton.png", "playButton.png", "playButton.png" } );
  play1.addEventHandler(this, "play1_click");
  songPicker1 = new GDropList(windowManual, 40, 190, 90, 80, 3);
  songPicker1.setItems(loadStrings("list_814732"), 0);
  songPicker1.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  songPicker1.addEventHandler(this, "songPicker1_click");
  skipAmount1 = new GTextField(windowManual, 250, 200, 100, 30, G4P.SCROLLBARS_NONE);
  skipAmount1.setPromptText("Enter Skip Amount");
  skipAmount1.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  skipAmount1.setOpaque(false);
  skipAmount1.addEventHandler(this, "skipAmount1_change");
  rewind1 = new GImageButton(windowManual, 250, 140, 50, 50, new String[] { "rewindButton.png", "rewindButton.png", "rewindButton.png" } );
  rewind1.addEventHandler(this, "rewind1_click");
  skip1 = new GImageButton(windowManual, 300, 140, 50, 50, new String[] { "fastForwardButton.png", "fastForwardButton.png", "fastForwardButton.png" } );
  skip1.addEventHandler(this, "skip1_click");
  windowManual.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow windowManual;
GImageButton play1; 
GDropList songPicker1; 
GTextField skipAmount1; 
GImageButton rewind1; 
GImageButton skip1; 
