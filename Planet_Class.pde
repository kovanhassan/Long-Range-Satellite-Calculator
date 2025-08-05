// Planet Class
class Planet {

    // Fields
    String name;
    double planetMass;
    double planetRadius;
    double planetDiameter;
    String gravityOnSurface;
    String orbitalPeriod;
    String averageSurfaceTemp;
    String axialTilt; // Fixed typo from "axilTilt"
    String dominantGas;
    String numberOfMoons;
    String surfacePressure;

    // Constructor
    Planet(String n, double pM, double pR, double dia, String g, String o, String ast, String axT, String domGas, String numMoons, String sPressure) {
        this.name = n;
        this.planetMass = pM;
        this.planetRadius = pR;
        this.planetDiameter = dia;
        this.gravityOnSurface = g;
        this.orbitalPeriod = o;
        this.averageSurfaceTemp = ast;
        this.axialTilt = axT;
        this.dominantGas = domGas;
        this.numberOfMoons = numMoons;
        this.surfacePressure = sPressure;
    }

    // Method To display Planet Details
    void displayPlanetDetails() {
      
        //Allign Text To The Left and Fill Black
        textAlign(LEFT);
        fill(255);

        // Title
        textSize(20);
        text("Planet Statistics", 1230, 30);

        // Initial vertical position
        int yOffset = 80;

        
        textSize(15);
        
        //Below are Planet Details that will be printed on the right hand side of the screen for educational purposes
        
        //Putting Planet Name
        text("Planet Name:", 1210, yOffset);
        text(name, 1210, yOffset + 20);

        //Putting Planet Mass
        yOffset += 75;
        text("Planet Mass (kg):", 1210, yOffset);
        text(toScientificNotation(planetMass) + " kg", 1210, yOffset + 20);
        
        // Putting Planet Radius
        yOffset += 75;
        text("Planet Radius (m):", 1210, yOffset);
        text(toScientificNotation(planetRadius) + " m", 1210, yOffset + 20);
        
        // Putting Planet Diameter
        yOffset += 75;
        text("Planet Diameter (m):", 1210, yOffset);
        text(toScientificNotation(planetDiameter) + " m", 1210, yOffset + 20);
        
        
        //Putting Planet Surface Gravity
        yOffset += 75;
        text("Surface Gravity (m/s²):", 1210, yOffset);
        text(gravityOnSurface + " m/s²", 1210, yOffset + 20);
        
        
        //Putting Planet Orbital Period
        yOffset += 75;
        text("Orbital Period (Days):", 1210, yOffset);
        text(orbitalPeriod + " Days", 1210, yOffset + 20);
  
        //Putting Planet Avg Surface Temperature
        yOffset += 75;
        text("Avg Surface Temperature (°C):", 1210, yOffset);
        text(averageSurfaceTemp + " °C", 1210, yOffset + 20);
      
        //Putting Planet Axial Tilt
        yOffset += 75;
        text("Axial Tilt (°):", 1210, yOffset);
        text(axialTilt + " °", 1210, yOffset + 20);

        //Putting Planet Dominant Gas
        yOffset += 75;
        text("Dominant Gas:", 1210, yOffset);
        text(dominantGas, 1210, yOffset + 20);
        
        //Putting Number Of Moons For Planet
        yOffset += 75;
        text("Number of Moons:", 1210, yOffset);
        text(numberOfMoons, 1210, yOffset + 20);
        
        // Putting Planets Surface Pressure
        yOffset += 75;
        text("Surface Pressure (kPa):", 1210, yOffset);
        text(surfacePressure +" kPa", 1210, yOffset + 20);
    }
}
