// Satelite Class
class Satelite{
  
  // Fields
  int sateliteMass;
  int sateliteAltitude;
  float sateliteSpeed;
  int realSateliteAltitude;
  double sateliteVelocity;
  double sateliteEscapeVelocity;
  double kineticEnergy;
  double potentialEnergy;
  double totalEnergy;
  double timePeriodInSeconds;
  double timePeriodDays;
  double gravitationalForce;
  double angularMomentum;
  double sateliteAcceleration;
  int scaledSateliteAltitude;
  
  // Constructor
  Satelite(int sM, int sA, float sS){
    this.sateliteMass = sM;
    
    // Initialize altitude (altitude is set to 30,000 km by default)
    this.sateliteAltitude = sA;
    
    this.sateliteSpeed = sS;
    
    // Altitude in meters (used for calculations)
    this.realSateliteAltitude = 30000 * 1000;
  }
  
  // Methods
  
  // Method That Draws Satelite Orbit Ring
  void drawSateliteOrbitRing() {
      // noFill the ellipse in order to make the "line" visual
      noFill();
  
      // Change the color of the orbit based on the user's ringColor selection
      if (ringColor == "blue") {
          stroke(0, 0, 255); // Blue orbit
      } 
      
      else if (ringColor == "red") {
          stroke(255, 0, 0); // Red orbit
      } 
      
      else if (ringColor == "green") {
          stroke(0, 255, 0); // Green orbit
      } 
      
      else if (ringColor == "yellow") {
          stroke(255, 255, 0); // Yellow orbit
      }
      
      // Set the line thickness for the orbit
      strokeWeight(2);
  
      // Adjust scaledSateliteAltitude based on the selected planet
      if (screenChoice == "earth") {
          scaledSateliteAltitude = sateliteAltitude;
      } 
      
      else if (screenChoice == "mars") {
          scaledSateliteAltitude = (sateliteAltitude - 50); // Adjust for Mars scale
      } 
      
      else if (screenChoice == "venus") {
          scaledSateliteAltitude = (sateliteAltitude - 40); // Adjust for Venus scale
      } 
      
      else if (screenChoice == "mercury") {
          scaledSateliteAltitude = (sateliteAltitude - 55); // Adjust for Mercury scale
      }
      
      else if (screenChoice == "neptune") {
          scaledSateliteAltitude = (sateliteAltitude + 10); // Adjust for Neptune scale
      }
  
      // Draw the orbital ring with the adjusted altitude
      ellipse(width / 2, height / 2, (scaledSateliteAltitude) * 2, (scaledSateliteAltitude) * 2);
  
      
  // If User Selected Show Radius On Screen
  if (showRadiusOnScreen) {
      // Draw a white line from the planet's center to the satellite's orbit
      stroke(255, 255, 255); 
      strokeWeight(1.5); 
      line(width / 2, height / 2, width / 2 + scaledSateliteAltitude, height / 2);
  
      // Label the line as "Radius (km)"
      fill(255);
      textSize(12);
      textAlign(CENTER, BOTTOM); 
      text("Radius (km)", width / 2 + scaledSateliteAltitude / 2 + 27, height / 2 - 25);
  
      // Add the numeric radius value using scientific notation
      textAlign(RIGHT, RIGHT);
      text(toScientificNotation(realSateliteAltitude + statisticalPlanetRadius), 
           width / 2 + scaledSateliteAltitude / 2 + 60, height / 2 - 10);
  }
  }
  
  // Method That Draws The Satelite Orbit Around The Planet
  void drawSateliteOrbit() {
    PVector satellitePosition = new PVector(0,0); // Start position
    // Draw the satellite's orbit ring
    drawSateliteOrbitRing();
    
    // Increment the satellite's speed based on its velocity if not paused
    if (!paused) {
        // Scale the speed increment using satellite velocity divided by 8000
        double scaledFactor = sateliteVelocity / 8000.0; 
        
        // Adjust the satellite's speed proportionally
        this.sateliteSpeed += 0.01 * scaledFactor; 
    }

    // Calculate the satellite's position on the orbital path using trigonometric functions
    satellitePosition.x = width / 2 + cos(this.sateliteSpeed) * scaledSateliteAltitude;
    satellitePosition.y = height / 2 + sin(this.sateliteSpeed) * scaledSateliteAltitude;

    // Draw the satellite image at its current position
    image(sateliteImage, satellitePosition.x, satellitePosition.y, 50, 50); 
  }
  
  // Method To Calculate Velocity Of Satelite
  double calculateSateliteVelocity(){
    // Calls functions to determine the mass and radius of the planet being used
    choosePlanetRadius();
    choosePlanetMass();
    
    // Calculate the satellite's velocity using Newton's law of gravitation
    sateliteVelocity = Math.sqrt((double) (gravitationalConstant * statisticalPlanetMass) / (statisticalPlanetRadius + realSateliteAltitude));
      
    // Round off the velocity to the nearest whole number and return
    sateliteVelocity = Math.round(sateliteVelocity);
    return sateliteVelocity;
  }

  // Method for Calculating The Escape Velocity
  double calculateSateliteEscapeVelocity(){
    // Calculate the escape velocity using the escape velocity formula
    sateliteEscapeVelocity = Math.sqrt((double) (2 * gravitationalConstant * statisticalPlanetMass) / (statisticalPlanetRadius + realSateliteAltitude));
    
    // Round off the escape velocity to the nearest whole number and return
    sateliteEscapeVelocity = Math.round(sateliteEscapeVelocity);
    return sateliteEscapeVelocity;
  }
  
  // Method to Calculate Kinetic Energy
  double calculateKineticEnergy(){
    // Calculate velocity squared
    double sateliteVelocitySquared = sateliteVelocity * sateliteVelocity;
    
    // Use the kinetic energy formula: KE = 0.5 * m * v^2
    kineticEnergy = 0.5 * sateliteMass * sateliteVelocitySquared;
    
    // Return the calculated kinetic energy
    return kineticEnergy;  
  }

  // Method to Calculate Potential Energy
  double calculatePotentialEnergy(){
    // Use the gravitational potential energy formula: U = -GMm/r
    potentialEnergy = (-1 * gravitationalConstant * statisticalPlanetMass * sateliteMass) / (realSateliteAltitude + statisticalPlanetRadius);
    
    // Return the calculated potential energy
    return potentialEnergy;
  }

  // Method to Calculate Total Energy
  double calculateTotalEnergy(){
    // Total energy is the sum of kinetic and potential energy
    totalEnergy = kineticEnergy + potentialEnergy;
   
    // Return the total energy
    return totalEnergy;
  }
  
  // Method to Calculate Orbital Time Period
  double calculateTimePeriod(){
    // Calculate the sum of the planet's radius and the satellite's altitude
    double radiusSum = realSateliteAltitude + statisticalPlanetRadius;
    
    // Cube the radius sum
    double radiusCubed = radiusSum * radiusSum * radiusSum;
    
    // Square pi
    float piSquared = pow(PI, 2);
    
    // Calculate the time period in seconds using Kepler's third law
    timePeriodInSeconds = Math.sqrt((double) (4 * piSquared * radiusCubed) / (gravitationalConstant * statisticalPlanetMass));
    
    // Convert the time period to days
    timePeriodDays = timePeriodInSeconds / 86400;
    
    // Return the calculated time period in days
    return timePeriodDays;
  }
  
  // Method to Calculate Gravitational Force
  double calculateGravitationalForce(){
    // Calculate the sum of the planet's radius and the satellite's altitude
    double radiusSum = realSateliteAltitude + statisticalPlanetRadius;
    
    // Square the radius sum
    double radiusSquared = radiusSum * radiusSum;
    
    // Use Newton's law of gravitation to calculate the force
    gravitationalForce = (gravitationalConstant * statisticalPlanetMass * sateliteMass) / radiusSquared;
    
    // Return the calculated gravitational force
    return gravitationalForce;
  }
  
  // Method to Calculate Angular Momentum
  double calculateAngularMomentum(){
    // Calculate the sum of the planet's radius and the satellite's altitude
    double radiusSum = realSateliteAltitude + statisticalPlanetRadius;
    
    // Calculate angular momentum using L = m * v * r
    angularMomentum = sateliteMass * sateliteVelocity * radiusSum;
    
    // Return the calculated angular momentum
    return angularMomentum;   
  }
  
  // Method to Calculate Satellite Acceleration
  double calculateSateliteAcceleration(){
    // Calculate the sum of the planet's radius and the satellite's altitude
    double radiusSum = realSateliteAltitude + statisticalPlanetRadius;
    
    // Square the radius sum
    double radiusSquared = radiusSum * radiusSum;
    
    // Use the gravitational acceleration formula: a = GM/r^2
    sateliteAcceleration = (gravitationalConstant * statisticalPlanetMass) / radiusSquared;
    
    // Return the calculated acceleration
    return sateliteAcceleration;
  }


// Method That Displays Satelite Stats To Screen
void displaySateliteDetails(){
  
  //Align Text To Left And Fill Text White
  textAlign(LEFT);
  fill(255);
  
  textSize(20);
  // Title
  text("Satellite Statistics", 30, 30);
  
  textSize(15);
  
  // Initial vertical position for the first stat
  int yOffset = 80;  
  
  
  // Below Are The Printed Text Strings Of Each Calculated Value...
  
  // Altitude
  text("Altitude (km)", 10, yOffset);
  text((realSateliteAltitude / 1000) + " km", 10, yOffset + 20);
  yOffset += 75;  // Increase vertical distance between stats
  
  // Satelite Mass
  text("Mass (kg)", 10, yOffset);
  text(sateliteMass + " kg", 10, yOffset + 20);
  yOffset += 75;  // Increase vertical distance between stats
  
  // Velocity
  calculateSateliteVelocity();
  text("Velocity (m/s)", 10, yOffset);
  text((int)sateliteVelocity + " m/s", 10, yOffset + 20);
  yOffset += 75;  // Increase vertical distance between stats
  
  // Escape Velocity
  calculateSateliteEscapeVelocity();
  text("Escape Velocity (m/s)", 10, yOffset);
  text((int)sateliteEscapeVelocity + " m/s", 10, yOffset + 20);
  yOffset += 75;  // Increase vertical distance between stats
  
  // Satelite Kinetic Energy
  calculateKineticEnergy();
  text("Kinetic Energy (J)", 10, yOffset);
  text(toScientificNotation(kineticEnergy) + " J", 10, yOffset + 20);
  yOffset += 75;  // Increase vertical distance between stats
  
  // Satelite Potential Energy
  calculatePotentialEnergy();
  text("Potential Energy (J)", 10, yOffset);
  text(toScientificNotation(potentialEnergy) + " J", 10, yOffset + 20);
  yOffset += 75;  // Increase vertical distance between stats
  
  // Satelite Total Energy
  calculateTotalEnergy();
  text("Total Energy (J)", 10, yOffset);
  text(toScientificNotation(totalEnergy) + " J", 10, yOffset + 20);
  yOffset += 75;  // Increase vertical distance between stats
  
  // Time Period
  calculateTimePeriod();
  text("Time Period (Days)", 10, yOffset);
  text(roundToThreeDecimals(timePeriodDays) + " Days", 10, yOffset + 20);
  yOffset += 75;  // Increase vertical distance between stats
  
  // Gravitational Force
  calculateGravitationalForce();
  text("Gravitational Force (N)", 10, yOffset);
  text(toScientificNotation(gravitationalForce) + " N", 10, yOffset + 20);
  yOffset += 75;  // Increase vertical distance between stats
  
  // Satelite Angular Momentum
  calculateAngularMomentum();
  text("Angular Momentum (kg·m/s²)", 10, yOffset);
  text(toScientificNotation(angularMomentum) + " kg·m²/s", 10, yOffset + 20);
  yOffset += 75; 
  
  // Satelite Acceleration
  textSize(14);
  calculateSateliteAcceleration();
  text("Gravitational Acceleration (m/s²)", 10, yOffset);
  text(toScientificNotation(sateliteAcceleration) + " m²/s", 10, yOffset + 20);
}  
}
