// Display Screen Function
void displayScreen(){
  
  // If Start Page
  if (screenChoice == "start"){
    
  // Disable all Planet checkboxes
    saveData.setEnabled(false);
    checkboxEarth.setEnabled(false);
    checkboxVenus.setEnabled(false);
    checkboxMercury.setEnabled(false);
    checkboxMars.setEnabled(false);
    checkboxNeptune.setEnabled(false);

    // Set Earth as checked and deselect other planets
    checkboxEarth.setSelected(true);   // Earth is checked
    checkboxVenus.setSelected(false); // Venus is unchecked
    checkboxMercury.setSelected(false); // Mercury is unchecked
    checkboxMars.setSelected(false); // Mars is unchecked
    checkboxNeptune.setSelected(false); // Neptune is unchecked
    
    
    // For Logo Fade In Animation 
    if (fadeIn) {
      
      // Increase alpha for fade-in
      alpha += 10;  
      
      if (alpha >= 255) {
         // Switch fadeIn off
         fadeIn = false;
      }
    } 
    
    // Apply the tint with changing alpha
    tint(255, alpha); 


    //If Fade In Animation Is Finished, Display The Start Button
    if(!fadeIn){
      startButton.setVisible(true);
    }
    
    // If Fade In Animation Is Not Finished, Hide The Start Button
    else{
      startButton.setVisible(false);
    }
    
    //Apply Start Background
    background(startBackground);
    
    //Hide GUI
    backToAppButton.setVisible(false);
    viewSaves.setVisible(false);
    backToMainButton.setVisible(false);
    
    // Display Program Logo
    image(programLogoImage,width/2,220);
    
    
  }
  
  
  
  
  // If Screen Choice Is Earth
  if (screenChoice == "earth"){
    
    // ENABLE CHECKBOXES
    enablePlanetAndSaveCheckBoxClick();
    
    
    //SET GUI 
    backToAppButton.setVisible(false);
    viewSaves.setVisible(true);
    startButton.setVisible(false);
    backToMainButton.setVisible(true);
     
    //Put Earth Background Image
    background(planetEarthImage);
    
    // Call Grey Layout Functions
    greyLayoutLeft();
    greyLayoutRight();
    
    //Display Planet And Satelite Stats
    planetEarth.displayPlanetDetails();
    satelite.displaySateliteDetails();
    
    //Display Satelite Orbit
    satelite.drawSateliteOrbit();
  }
    
   // If screen choice is mars
   if(screenChoice == "mars"){
     
    // Enable CHECKBOXES
    enablePlanetAndSaveCheckBoxClick();
    
     
     //SET GUI
     saveData.setEnabled(true);
     viewSaves.setVisible(true);
     backToAppButton.setVisible(false);
     backToMainButton.setVisible(true);
     
     // Put Mars Background Image
     background(planetMarsImage);
     
     // Call Grey Layout Functions
     greyLayoutLeft();
     greyLayoutRight();
     
     // Draw Satelite Orbit
     satelite.drawSateliteOrbit();
     
     
     //Display Planet And Satelite Details
     satelite.displaySateliteDetails();
     planetMars.displayPlanetDetails();
   }
   
   
   // If Screen choice is venus
   if(screenChoice == "venus"){
     
    //Enable CHECKBOXES
    enablePlanetAndSaveCheckBoxClick();
    
     //Set GUI
    viewSaves.setVisible(true);
    backToAppButton.setVisible(false);
    backToMainButton.setVisible(true);
    
    //Background Venus Image Set
    background(planetVenusImage);
  
    // Call Grey Layout Functions
    greyLayoutLeft();
    greyLayoutRight();
    
    // Draw Satelite Orbit
    satelite.drawSateliteOrbit();
    
    //Display Planet And Satelite Details
    satelite.displaySateliteDetails();
    planetVenus.displayPlanetDetails();
    
   }
   
   // If Screen choice is mercury
   if(screenChoice == "mercury"){
     
     
    // ENABLE CHECKBOXES
    enablePlanetAndSaveCheckBoxClick();
     
     //Set GUI
    saveData.setEnabled(true);
    viewSaves.setVisible(true);
    backToAppButton.setVisible(false);
    backToMainButton.setVisible(true);
     
     // Background Mercury Image Set
    background(planetMercuryImage);
     
    
    // Call Grey Layout Functions
    greyLayoutLeft();
    greyLayoutRight();
    
    // Draw Satelite Orbit
    satelite.drawSateliteOrbit();
    
    //Display Planet And Satelite Details
    satelite.displaySateliteDetails();
    planetMercury.displayPlanetDetails();

   }
   
   //If Screen choice is neptune
   if(screenChoice == "neptune"){
     
     
    // ENABLE CHECKBOXES
    enablePlanetAndSaveCheckBoxClick();
    
     
    //Set GUI

    saveData.setEnabled(true);
    viewSaves.setVisible(true);
    backToAppButton.setVisible(false);
    backToMainButton.setVisible(true);
     
     // Background Neptune Image Set
    background(planetNeptuneImage);
     
     
    // Call Grey Layout Functions
    greyLayoutLeft();
    greyLayoutRight();
    
    // Draw Satelite Orbit
    satelite.drawSateliteOrbit();
    
    //Display Planet And Satelite Details
    satelite.displaySateliteDetails();
    planetNeptune.displayPlanetDetails();
     
   }
   
   //If Screen Choice is SaveScreen
   if (screenChoice == "saveScreen") {
  
    //Set GUI AND DISABLE CHECKBOXES
    checkboxEarth.setEnabled(false);
    checkboxVenus.setEnabled(false);
    checkboxMercury.setEnabled(false);
    checkboxMars.setEnabled(false);
    checkboxNeptune.setEnabled(false);

    saveData.setEnabled(false);
    backToMainButton.setVisible(false);
    backToAppButton.setVisible(true);
    viewSaves.setVisible(false);
    
    
    // Set background and styling
    background(20); // Dark background
    fill(255); 
    textSize(25);
    
    //Align Text Center
    textAlign(CENTER, CENTER);

    // Title
    text("Saved Data Overview", width / 2, 40);


    // Adjust text size and alignment for the saved data
    textAlign(LEFT, CENTER);

    // Set positions and dimensions
    
    // Center of the screen
    int centerX = width / 2;       
    
    int column1X = centerX - 400; // Move Planet Statistics farther left
    int column2X = centerX + 100; // Move Satellite Statistics farther right
    int yOffset = 200;            // Initial Y offset for rows
    int rowHeight = 60;           // Vertical spacing between rows
    
    stroke(255, 255, 255); 
    
    // Draw a green box around the Planet Statistics section
    fill(0, 255, 0, 100); // Light green with transparency
    rect(column1X - 20, yOffset - 80, 413, 270, 80); // Adjusted rectangle dimensions for rounding

    // Saved Planet Statistics Are Printed To Screen Below
    
    
    fill(200, 200, 255); // Light blue section header
    textSize(30); 
    
    text("Planet Statistics", column1X, yOffset - 40);
    fill(255); 
    
    textSize(20); 

    // Planet Mass
    text("Planet Mass (kg):", column1X, yOffset);
    text(savedPlanetMass + " (kg)", column1X + 250, yOffset);
    yOffset += rowHeight;

    // Planet Radius
    text("Planet Radius (m):", column1X, yOffset);
    text(savedPlanetRadius + " (m)", column1X + 250, yOffset);
    yOffset += rowHeight;
    
    // Planet Name
    text("Planet Name:", column1X, yOffset);
    text(savedPlanetName, column1X + 250, yOffset);
    

    // Reset for Satellite Statistics Section
    yOffset = 200;

    // Draw a green box around the Satellite Statistics section
    fill(0, 255, 0, 100); // Light green with transparency
    rect(column2X - 20, yOffset - 80, 438, 650,80); // Adjusted rectangle dimensions for padding and rounding

    // Below Are The Saved Satelite Statistics Being Printed On The Save Screen

    // Satellite Statistics Section
    fill(200, 255, 200); 
    textSize(25); 
    text("Satellite Statistics", column2X, yOffset - 40);
    fill(255); // Reset to white text
    textSize(18); // Smaller font for satellite stats

    // Altitude
    text("Altitude (km):", column2X, yOffset);
    text(savedSateliteAltitude + " (km)", column2X + 250, yOffset);
    yOffset += rowHeight;

    //Satelite Velocity
    text("Velocity (m/s):", column2X, yOffset);
    text(savedSateliteVelocity + " (m/s)", column2X + 250, yOffset);
    yOffset += rowHeight;

    // Satelite Escape Velocity
    text("Escape Velocity (m/s):", column2X, yOffset);
    text(savedSateliteEscapeVelocity + " (m/s)", column2X + 250, yOffset);
    yOffset += rowHeight;


    // Satelite Kinetic Energy
    text("Kinetic Energy (J):", column2X, yOffset);
    text(savedSateliteKineticEnergy + " (J)", column2X + 250, yOffset);
    yOffset += rowHeight;

    // Satelite Potential Energy
    text("Potential Energy (J):", column2X, yOffset);
    text(savedSatelitePotentialEnergy + " (J)", column2X + 250, yOffset);
    yOffset += rowHeight;

    // Satelite Total Energy
    text("Total Energy (J):", column2X, yOffset);
    text(savedSateliteTotalEnergy + " (J)", column2X + 250, yOffset);
    yOffset += rowHeight;
  
  
    //Satelite Gravitational Force
    text("Gravitational Force (N):", column2X, yOffset);
    text(savedSateliteGravitationalForce + " (N)", column2X + 250, yOffset);
    yOffset += rowHeight;

    // Satelite Angular Momentum
    text("Angular Momentum (kg·m²/s):", column2X, yOffset);
    text(savedSateliteAngularMomentum + " (kg·m²/s)", column2X + 250, yOffset);
    yOffset += rowHeight;

    // Satelite Gravitational Acceleration
    text("Gravitational Acceleration (m/s²):", column2X, yOffset);
    text(savedSateliteGravitationalAcceleration + " (m/s²)", column2X + 250, yOffset);
    yOffset += rowHeight;
    
    
    // Satelite Time Period
    text("Time Period (Days):", column2X, yOffset);
    text(savedSateliteTimePeriod + " (Days)", column2X + 250, yOffset);
}

     
   }
    
    
    

  
  
  
  
