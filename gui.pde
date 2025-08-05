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

public void viewSavesEvent(GButton source, GEvent event) { //_CODE_:viewSaves:641600:
  // Previous Planet Will Be Saved To Screen Choice
  previousPlanetSaved = screenChoice;
  // If View Saves Button Is Pressed, The Screen Choice will shift to the save screen display
  screenChoice = "saveScreen";
  
  
} //_CODE_:viewSaves:641600:

public void backToAppButtonEvent(GButton source, GEvent event) { //_CODE_:backToAppButton:419270:
   // Will Put Screen Choice back to whatever planet the user was interacting with before he pressed the view saves button
  screenChoice = previousPlanetSaved;
} //_CODE_:backToAppButton:419270:

public void startButtonEvent(GButton source, GEvent event) { //_CODE_:startButton:400007:
  // Puts Screen Choice To Earth after user launches program
  screenChoice = "earth";
} //_CODE_:startButton:400007:

public void backToMainEvent(GButton source, GEvent event) { //_CODE_:backToMainButton:490308:
  // Puts screen choice back to start page if user decides to click this particular back button
  screenChoice = "start";
} //_CODE_:backToMainButton:490308:

public void startSateliteEvent(GButton source, GEvent event) { //_CODE_:startSatelite:240150:
  // Unpause Satelite's Orbit
  paused = false;
} //_CODE_:startSatelite:240150:

public void stopSateliteEvent(GButton source, GEvent event) { //_CODE_:stopSatelite:946057:
  // Pause Satelite's Orbit
  paused = true;
} //_CODE_:stopSatelite:946057:

public void changeSateliteMassEvent(GSlider source, GEvent event) { //_CODE_:changeSateliteMass:755497:
  // Gets The Integer Value Of The Satelite Mass
  satelite.sateliteMass = changeSateliteMass.getValueI();
} //_CODE_:changeSateliteMass:755497:

public void changeSateliteAltitudeEvent(GSlider source, GEvent event) { //_CODE_:changeSateliteAltitude:728805:
  // Gets Satelite Altitude From Slider And Converts It Into Meters
  satelite.realSateliteAltitude = (changeSateliteAltitude.getValueI()*1000);
  
  // Converts Altitude into pixel scaling in order to showcase the change onto the screen
  satelite.sateliteAltitude = (satelite.realSateliteAltitude / 100000);
} //_CODE_:changeSateliteAltitude:728805:

public void saveDataEvent(GButton source, GEvent event) { //_CODE_:saveData:360017:

  //If save Button is pressed, stats will be saved and loaded
  saveData();
  loadSavedData();
} //_CODE_:saveData:360017:

public void checkboxEarthEvent(GCheckbox source, GEvent event) { //_CODE_:checkboxEarth:748002:
    
    // If Other Planets Are Not Selected
    if (!checkboxMars.isSelected() && !checkboxVenus.isSelected() && !checkboxMercury.isSelected() && !checkboxNeptune.isSelected()) {
        checkboxEarth.setSelected(true); // Keep Earth selected
    } else {
        screenChoice = "earth"; // Set screen choice to Earth
        checkboxMars.setSelected(false); // Deselect Mars
        checkboxVenus.setSelected(false); // Deselect Venus
        checkboxMercury.setSelected(false); // Deselect Mercury
        checkboxNeptune.setSelected(false); // Deselect Neptune
    }
  
} //_CODE_:checkboxEarth:748002:

public void checkboxMarsEvent(GCheckbox source, GEvent event) { //_CODE_:checkboxMars:217298:
    
    // If Other Planets Are Not Selected
    if (!checkboxEarth.isSelected() && !checkboxVenus.isSelected() && !checkboxMercury.isSelected() && !checkboxNeptune.isSelected()) {
        checkboxMars.setSelected(true); // Keep Mars selected
    } else {
        screenChoice = "mars"; // Set screen choice to Mars
          checkboxEarth.setSelected(false); // Deselect Earth
          checkboxVenus.setSelected(false); // Deselect Venus
          checkboxMercury.setSelected(false); // Deselect Mercury
          checkboxNeptune.setSelected(false); // Deselect Neptune
    }
} //_CODE_:checkboxMars:217298:

public void checkboxVenusEvent(GCheckbox source, GEvent event) { //_CODE_:checkboxVenus:799719:
    
    // If Other Planets Are Not Selected
    if (!checkboxEarth.isSelected() && !checkboxMars.isSelected() && !checkboxMercury.isSelected() && !checkboxNeptune.isSelected()) {
        checkboxVenus.setSelected(true); // Keep Venus selected
    } else {
        screenChoice = "venus"; // Set screen choice to Venus
        checkboxEarth.setSelected(false); // Deselect Earth
        checkboxMars.setSelected(false); // Deselect Mars
        checkboxMercury.setSelected(false); // Deselect Mercury
        checkboxNeptune.setSelected(false); // Deselect Neptune
    }
} //_CODE_:checkboxVenus:799719:

public void checkboxMercuryEvent(GCheckbox source, GEvent event) { //_CODE_:checkboxMercury:733940:
    
    // If Other Planets Are Not Selected
    if (!checkboxEarth.isSelected() && !checkboxMars.isSelected() && !checkboxVenus.isSelected() && !checkboxNeptune.isSelected()) {
        checkboxMercury.setSelected(true); // Keep Mercury selected
    } else {
        screenChoice = "mercury"; // Set screen choice to Mercury
        checkboxEarth.setSelected(false); // Deselect Earth
        checkboxMars.setSelected(false); // Deselect Mars
        checkboxVenus.setSelected(false); // Deselect Venus
        checkboxNeptune.setSelected(false); // Deselect Neptune
    }
} //_CODE_:checkboxMercury:733940:

public void changeRingRedEvent(GButton source, GEvent event) { //_CODE_:changeRingRed:539305:
  // If User Selects Red Ring
  ringColor = "red";
} //_CODE_:changeRingRed:539305:

public void changeRingBlueEvent(GButton source, GEvent event) { //_CODE_:changeRingBlue:807704:
  // If User Selects Blue Ring
  ringColor = "blue";
} //_CODE_:changeRingBlue:807704:

public void button1_click1(GButton source, GEvent event) { //_CODE_:changeRingGreen:394239:
  // If User Selects Green Ring
  ringColor = "green";
} //_CODE_:changeRingGreen:394239:

public void changeRingYellowEvent(GButton source, GEvent event) { //_CODE_:changeRingYellow:504613:
  // If User Selects Yellow Ring
  ringColor = "yellow";
} //_CODE_:changeRingYellow:504613:

public void checkboxNeptuneEvent(GCheckbox source, GEvent event) { //_CODE_:checkboxNeptune:595310:
      // If Other Planets Are Not Selected
    if (!checkboxEarth.isSelected() && !checkboxMars.isSelected() && !checkboxVenus.isSelected() && !checkboxMercury.isSelected()) {
        checkboxNeptune.setSelected(true); // Keep Neptune selected
    } else {
        screenChoice = "neptune"; // Set screen choice to Neptune
        checkboxEarth.setSelected(false); // Deselect Earth
        checkboxMars.setSelected(false); // Deselect Mars
        checkboxVenus.setSelected(false); // Deselect Venus
        checkboxMercury.setSelected(false); // Deselect Mercury
    }
} //_CODE_:checkboxNeptune:595310:

public void showRadiusButtonEvent(GButton source, GEvent event) { //_CODE_:showRadiusButton:362608:
  // If User Pressed Show Radius, it Will either turn display it (if not on) or turn it off (if already on)
  showRadiusOnScreen = !showRadiusOnScreen;
} //_CODE_:showRadiusButton:362608:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  viewSaves = new GButton(this, 1080, 850, 120, 50);
  viewSaves.setText("View Saves");
  viewSaves.setLocalColorScheme(GCScheme.RED_SCHEME);
  viewSaves.addEventHandler(this, "viewSavesEvent");
  backToAppButton = new GButton(this, 0, 0, 80, 30);
  backToAppButton.setText("Back");
  backToAppButton.addEventHandler(this, "backToAppButtonEvent");
  startButton = new GButton(this, 625, 469, 140, 70);
  startButton.setText("Run Program");
  startButton.addEventHandler(this, "startButtonEvent");
  backToMainButton = new GButton(this, 200, 850, 120, 50);
  backToMainButton.setText("Back to Start");
  backToMainButton.setLocalColorScheme(GCScheme.RED_SCHEME);
  backToMainButton.addEventHandler(this, "backToMainEvent");
  appController = GWindow.getWindow(this, "", 0, 0, 325, 660, JAVA2D);
  appController.noLoop();
  appController.setActionOnClose(G4P.KEEP_OPEN);
  startSatelite = new GButton(appController, 160, 181, 130, 30);
  startSatelite.setText("Start Satelite Orbit");
  startSatelite.addEventHandler(this, "startSateliteEvent");
  stopSatelite = new GButton(appController, 160, 218, 130, 30);
  stopSatelite.setText("Stop Satelite Orbit");
  stopSatelite.setLocalColorScheme(GCScheme.RED_SCHEME);
  stopSatelite.addEventHandler(this, "stopSateliteEvent");
  changeSateliteMass = new GSlider(appController, 0, 460, 325, 60, 10.0);
  changeSateliteMass.setShowValue(true);
  changeSateliteMass.setLimits(1000, 1000, 25000);
  changeSateliteMass.setShowTicks(true);
  changeSateliteMass.setNumberFormat(G4P.INTEGER, 0);
  changeSateliteMass.setLocalColorScheme(GCScheme.RED_SCHEME);
  changeSateliteMass.setOpaque(true);
  changeSateliteMass.addEventHandler(this, "changeSateliteMassEvent");
  changeSateliteAltitude = new GSlider(appController, 0, 575, 325, 60, 10.0);
  changeSateliteAltitude.setShowValue(true);
  changeSateliteAltitude.setLimits(30000, 20000, 40000);
  changeSateliteAltitude.setNumberFormat(G4P.INTEGER, 0);
  changeSateliteAltitude.setLocalColorScheme(GCScheme.RED_SCHEME);
  changeSateliteAltitude.setOpaque(true);
  changeSateliteAltitude.addEventHandler(this, "changeSateliteAltitudeEvent");
  saveData = new GButton(appController, 160, 75, 130, 33);
  saveData.setText("Save Data");
  saveData.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  saveData.addEventHandler(this, "saveDataEvent");
  checkboxEarth = new GCheckbox(appController, 12, 79, 110, 27);
  checkboxEarth.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  checkboxEarth.setTextAlign(GAlign.MIDDLE, GAlign.MIDDLE);
  checkboxEarth.setText("Earth");
  checkboxEarth.setOpaque(true);
  checkboxEarth.addEventHandler(this, "checkboxEarthEvent");
  checkboxEarth.setSelected(true);
  label1 = new GLabel(appController, 12, 30, 110, 33);
  label1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label1.setText("Selected Planet");
  label1.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label1.setOpaque(true);
  checkboxMars = new GCheckbox(appController, 12, 113, 110, 27);
  checkboxMars.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  checkboxMars.setText("Mars");
  checkboxMars.setOpaque(true);
  checkboxMars.addEventHandler(this, "checkboxMarsEvent");
  checkboxVenus = new GCheckbox(appController, 12, 150, 113, 27);
  checkboxVenus.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  checkboxVenus.setText("Venus");
  checkboxVenus.setOpaque(true);
  checkboxVenus.addEventHandler(this, "checkboxVenusEvent");
  checkboxMercury = new GCheckbox(appController, 12, 190, 113, 27);
  checkboxMercury.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  checkboxMercury.setText("Mercury");
  checkboxMercury.setOpaque(true);
  checkboxMercury.addEventHandler(this, "checkboxMercuryEvent");
  label2 = new GLabel(appController, 0, 535, 103, 35);
  label2.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label2.setText("Satelite Altitude (km)");
  label2.setOpaque(true);
  label3 = new GLabel(appController, 0, 420, 103, 35);
  label3.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label3.setText("Satelite Mass (kg)");
  label3.setOpaque(true);
  label4 = new GLabel(appController, 100, 300, 101, 20);
  label4.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label4.setText("Ring Color");
  label4.setOpaque(true);
  changeRingRed = new GButton(appController, 100, 325, 46, 29);
  changeRingRed.setText("Red");
  changeRingRed.setLocalColorScheme(GCScheme.RED_SCHEME);
  changeRingRed.addEventHandler(this, "changeRingRedEvent");
  changeRingBlue = new GButton(appController, 158, 326, 46, 29);
  changeRingBlue.setText("Blue");
  changeRingBlue.addEventHandler(this, "changeRingBlueEvent");
  changeRingGreen = new GButton(appController, 100, 364, 46, 29);
  changeRingGreen.setText("Green");
  changeRingGreen.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  changeRingGreen.addEventHandler(this, "button1_click1");
  changeRingYellow = new GButton(appController, 158, 363, 46, 29);
  changeRingYellow.setText("Yellow");
  changeRingYellow.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  changeRingYellow.addEventHandler(this, "changeRingYellowEvent");
  checkboxNeptune = new GCheckbox(appController, 12, 225, 113, 27);
  checkboxNeptune.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  checkboxNeptune.setText("Neptune");
  checkboxNeptune.setOpaque(true);
  checkboxNeptune.addEventHandler(this, "checkboxNeptuneEvent");
  showRadiusButton = new GButton(appController, 160, 114, 130, 30);
  showRadiusButton.setText("Show Radius");
  showRadiusButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  showRadiusButton.addEventHandler(this, "showRadiusButtonEvent");
  savingWarningLabel = new GLabel(appController, 160, 30, 133, 30);
  savingWarningLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  savingWarningLabel.setText("*Saving Data Will Delete Past Data*");
  savingWarningLabel.setOpaque(true);
  appController.loop();
}

// Variable declarations 
// autogenerated do not edit
GButton viewSaves; 
GButton backToAppButton; 
GButton startButton; 
GButton backToMainButton; 
GWindow appController;
GButton startSatelite; 
GButton stopSatelite; 
GSlider changeSateliteMass; 
GSlider changeSateliteAltitude; 
GButton saveData; 
GCheckbox checkboxEarth; 
GLabel label1; 
GCheckbox checkboxMars; 
GCheckbox checkboxVenus; 
GCheckbox checkboxMercury; 
GLabel label2; 
GLabel label3; 
GLabel label4; 
GButton changeRingRed; 
GButton changeRingBlue; 
GButton changeRingGreen; 
GButton changeRingYellow; 
GCheckbox checkboxNeptune; 
GButton showRadiusButton; 
GLabel savingWarningLabel; 
