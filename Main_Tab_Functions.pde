//Function That Loads Each Background Image, Program Logo, Satelite Image (With Proper Resizing)
void loadImages(){

  //Loads Each Background Image For Each Planet
  planetEarthImage = loadImage("Images/earthBackground.png");
  planetMarsImage = loadImage("Images/marsBackground.png");
  planetVenusImage = loadImage("Images/venusBackground.png");
  planetMercuryImage = loadImage("Images/mercuryBackground.png");
  planetNeptuneImage = loadImage("Images/neptuneBackground.png");

  // Loads & Resizes Program Logo and Start Background
  programLogoImage = loadImage("Images/programLogo.png");
  programLogoImage.resize(350,350);
  startBackground = loadImage("Images/startBackground.jpg");
  startBackground.resize(1400,900);
  
  //Loads Picture of Satelite And Resizes to Appropriate Size
  sateliteImage = loadImage("Images/satelite.png");
  sateliteImage.resize(50,50);
  
}
