// Global Variables
double statisticalPlanetRadius;
double statisticalPlanetMass;

// Function That Chooses What Planet Radius Is Being Used Depending On The Users Planet Selection
double choosePlanetRadius(){
  
  // If the user selects Earth, set the radius to Earth's radius
  if(screenChoice == "earth"){
      statisticalPlanetRadius = earthRadius; 
  }
  
  // If the user selects Mars, set the radius to Mars' radius
  if(screenChoice == "mars"){
      statisticalPlanetRadius = marsRadius;
  }
  
  // If the user selects Venus, set the radius to Venus' radius
  if(screenChoice == "venus"){
    statisticalPlanetRadius = venusRadius;
  }
  
  // If the user selects Mercury, set the radius to Mercury's radius
  if(screenChoice == "mercury"){
    statisticalPlanetRadius = mercuryRadius;
  }
  
  // If the user selects Neptune, set the radius to Neptune's radius
  if(screenChoice == "neptune"){
    statisticalPlanetRadius = neptuneRadius;
  }
  
  // Return the selected planet's radius
  return statisticalPlanetRadius;
}

// Function That Chooses What Planet Mass Is Being Used Depending On The Users Planet Selection
double choosePlanetMass(){
  
  // If the user selects Earth, set the mass to Earth's mass
  if(screenChoice == "earth"){
      statisticalPlanetMass = earthMass;
  }
  
  // If the user selects Mars, set the mass to Mars' mass
  if(screenChoice == "mars"){
      statisticalPlanetMass = marsMass;
  }
  
  // If the user selects Venus, set the mass to Venus' mass
  if(screenChoice == "venus"){
    statisticalPlanetMass = venusMass;
  }
  
  // If the user selects Mercury, set the mass to Mercury's mass
  if(screenChoice == "mercury"){
    statisticalPlanetMass = mercuryMass;
  }

  // If the user selects Neptune, set the mass to Neptune's mass
  if(screenChoice == "neptune"){
    statisticalPlanetMass = neptuneMass;
  }
  
  // Return the selected planet's mass
  return statisticalPlanetMass;
}
