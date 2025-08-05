// Function that saves satellite and planet data to a text file
void saveData() {
    // Create a PrintWriter to write to "data/savedData.txt"
    PrintWriter pw = createWriter("data/savedData.txt");

    // Save satellite data to the file
    // Save the satellite's altitude (converted from meters to kilometers) on the first line
    pw.println(satelite.realSateliteAltitude / 1000);

    // Save the satellite's mass on the second line
    pw.println(satelite.sateliteMass);

    // Save the satellite's velocity on the third line
    pw.println(satelite.sateliteVelocity);

    // Save the satellite's escape velocity on the fourth line (formatted in scientific notation)
    pw.println(toScientificNotation(satelite.sateliteEscapeVelocity));

    // Save the satellite's kinetic energy (in scientific notation) on the fifth line
    pw.println(toScientificNotation(satelite.kineticEnergy));

    // Save the satellite's potential energy (in scientific notation) on the sixth line
    pw.println(toScientificNotation(satelite.potentialEnergy));

    // Save the satellite's total energy (in scientific notation) on the seventh line
    pw.println(toScientificNotation(satelite.totalEnergy));

    // Save the satellite's orbital time period in days (rounded to three decimals) on the eighth line
    pw.println(roundToThreeDecimals(satelite.timePeriodDays));

    // Save the gravitational force acting on the satellite (in scientific notation) on the ninth line
    pw.println(toScientificNotation(satelite.gravitationalForce));

    // Save the satellite's angular momentum (in scientific notation) on the tenth line
    pw.println(toScientificNotation(satelite.angularMomentum));

    // Save the satellite's gravitational acceleration (in scientific notation) on the eleventh line
    pw.println(toScientificNotation(satelite.sateliteAcceleration));

    // Save the planet name based on the current screen choice
    if (screenChoice == "earth") {
        pw.println("Earth"); // Save "Earth" on the twelfth line if the planet is Earth
    } 
    
    if (screenChoice == "venus") {
        pw.println("Venus"); // Save "Venus" if the planet is Venus
    } 
    
    if (screenChoice == "mercury") {
        pw.println("Mercury"); // Save "Mercury" if the planet is Mercury
    } 
    
    if (screenChoice == "mars") {
        pw.println("Mars"); // Save "Mars" if the planet is Mars
    } 
    
    if (screenChoice == "neptune") {
        pw.println("Neptune"); // Save "Neptune" if the planet is Neptune
    }

    // Save the planet's radius (in scientific notation) on the thirteenth line
    pw.println(toScientificNotation(statisticalPlanetRadius));

    // Save the planet's mass (in scientific notation) on the fourteenth line
    pw.println(toScientificNotation(statisticalPlanetMass));

    // Save the data and close the PrintWriter
    pw.close();
}
