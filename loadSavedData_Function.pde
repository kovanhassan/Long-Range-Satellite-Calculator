// Function to load Saved Data from User (Using Textfile)
void loadSavedData() {
  
    // Loads The Text File In Order To Read
    String[] data = loadStrings("SavedData.txt");
    
    // Ensure the file has enough data
    if (data != null && data.length >= 14) { 
        
        // Extracts The Text From The Data File
        savedSateliteAltitude = data[0];
        savedSateliteMass = data[1];
        savedSateliteVelocity = data[2];
        savedSateliteEscapeVelocity = data[3];
        savedSateliteKineticEnergy = data[4];
        savedSatelitePotentialEnergy = data[5];
        savedSateliteTotalEnergy = data[6];
        savedSateliteTimePeriod = data[7];
        savedSateliteGravitationalForce = data[8];
        savedSateliteAngularMomentum = data[9];
        savedSateliteGravitationalAcceleration = data[10];
        savedPlanetName = data[11];
        savedPlanetRadius = data[12];
        savedPlanetMass = data[13];
}
}


//Function To load Saved Data From User That Was In Data File Prior To User Launching Application
void loadOldData(){
    
  // Load Save File And Reads If Their Are Any Previous Saves
  String[] savedStatistics = loadStrings("SavedData.txt");
  
  if (savedStatistics != null && savedStatistics.length >= 14) {
      // Load saved statistics only if the file has at least 14 entries
      savedSateliteAltitude = savedStatistics[0];
      savedSateliteMass = savedStatistics[1];
      savedSateliteVelocity = savedStatistics[2];
      savedSateliteEscapeVelocity = savedStatistics[3];
      savedSateliteKineticEnergy = savedStatistics[4];
      savedSatelitePotentialEnergy = savedStatistics[5];
      savedSateliteTotalEnergy = savedStatistics[6];
      savedSateliteTimePeriod = savedStatistics[7];
      savedSateliteGravitationalForce = savedStatistics[8];
      savedSateliteAngularMomentum = savedStatistics[9];
      savedSateliteGravitationalAcceleration = savedStatistics[10];
      savedPlanetName = savedStatistics[11];
      savedPlanetMass = savedStatistics[12];
      savedPlanetRadius = savedStatistics[13];
  } 
  
  else {
      // Handle the case where the text is missing or incomplete
      
      // Set default values to avoid CRASHES
      savedSateliteAltitude = "No Save";
      savedSateliteMass = "No Save";
      savedSateliteVelocity = "No Save";
      savedSateliteEscapeVelocity = "No Save";
      savedSateliteKineticEnergy = "No Save";
      savedSatelitePotentialEnergy = "No Save";
      savedSateliteTotalEnergy = "No Save";
      savedSateliteTimePeriod = "No Save";
      savedSateliteGravitationalForce = "No Save";
      savedSateliteAngularMomentum = "No Save";
      savedSateliteGravitationalAcceleration = "No Save";
      savedPlanetName = "No Save";
      savedPlanetMass = "No Save";
      savedPlanetRadius = "No Save";
  }
  
}
