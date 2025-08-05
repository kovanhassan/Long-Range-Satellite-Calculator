// Importing g4p (FOR GUI)
import g4p_controls.*;

// GLOBAL VARIABLES BELOW
//-----------------------------------------------------------------------------------------------

//Setting Initial Screenchoice to Main Page
String screenChoice = "start";

//Initializing Each Background Image, Planet Image And Satelite Image, Program Logo and StartBackground
PImage planetEarthImage;
PImage planetMarsImage;
PImage planetVenusImage;
PImage planetMercuryImage;
PImage planetNeptuneImage;
PImage sateliteImage;
PImage earth,venus,mars,neptune,mercury;
PImage programLogoImage;
PImage startBackground;


// Fade In Is True & Alpha is 0 In Order For Animation To Occur In The Start Page
boolean fadeIn = true; 
float alpha = 0; 

// Initializing all our planets with the Planet data type
Planet planetEarth, planetMars, planetVenus, planetMercury,planetNeptune;

// Initializing our satelite with the Satelite data type
Satelite satelite;

//---------------------------------------------------------------------------------------------------
// Satelite Details

// Satelite Default Mass in Kilograms (Will Be Changed Based On Input)
int sateliteMass = 1000;

// Measured In Pixels On The Screen (Will Be Changed Based On Input)
int sateliteAltitude = 300; 

// Satelites Inital Speed (Will Be Changed Based On Input)
float sateliteSpeed = 0;
// --------------------------------------------------------------------------------------------------


//The Orbit Will Be Turned On From The Start
boolean paused = false;

// Set Radius Line Being Displayed To True
boolean showRadiusOnScreen = true;

// Global Constants
double gravitationalConstant = 6.67e-11; // Universal gravitational constant

// -----------------------------------------------
// Global Constants for Planets
// -----------------------------------------------

// Earth Constants
double earthMass = 5.972e24;             // Mass of Earth in kilograms
double earthRadius = 6.371e6;            // Radius of Earth in meters
double earthDiameter = 1.2742e7;         // Diameter of Earth in meters (12,742 km)
String earthGravity = "9.81";            // Gravity in m/s²
String earthOrbitalPeriod = "365.25";    // Orbital period in days
String earthAverageTemperature = "15";   // Average temperature in °C
String earthAxialTilt = "23.5";          // Axial tilt in degrees
String earthDominantGas = "Nitrogen (78%)";
String earthNumberOfMoons = "1";
String earthSurfacePressure = "101.3";

// Mars Constants
double marsMass = 6.4171e23;             // Mass of Mars in kilograms
double marsRadius = 3.3895e6;            // Radius of Mars in meters
double marsDiameter = 6.779e6;           // Diameter of Mars in meters
String marsGravity = "3.72076";          // Gravity in m/s²
String marsOrbitalPeriod = "687";        // Orbital period in days
String marsAverageTemperature = "-63";   // Average temperature in °C
String marsAxialTilt = "25.19";          // Axial tilt in degrees
String marsDominantGas = "Carbon Dioxide (95%)";
String marsNumberOfMoons = "2 (Phobos & Deimos)";
String marsSurfacePressure = "0.636";

// Venus Constants
double venusMass = 4.867e24;             // Mass of Venus in kilograms
double venusRadius = 6.0518e6;           // Radius of Venus in meters
double venusDiameter = 1.21036e7;        // Diameter of Venus in meters
String venusGravity = "8.87";            // Gravity in m/s²
String venusOrbitalPeriod = "224.7";     // Orbital period in days
String venusAverageTemperature = "464";  // Average temperature in °C
String venusAxialTilt = "177.36";        // Axial tilt in degrees
String venusDominantGas = "Carbon Dioxide (96.5%)";
String venusNumberOfMoons = "0";
String venusSurfacePressure = "9,200";

// Mercury Constants
double mercuryMass = 3.301e23;           // Mass of Mercury in kilograms
double mercuryRadius = 2.440e6;          // Radius of Mercury in meters
double mercuryDiameter = 4.880e6;        // Diameter of Mercury in meters
String mercuryGravity = "3.7";           // Gravity in m/s²
String mercuryOrbitalPeriod = "88";      // Orbital period in days
String mercuryAverageTemperature = "167";// Average temperature in °C
String mercuryAxialTilt = "0.034";       // Axial tilt in degrees
String mercuryDominantGas = "Sodium and Oxygen";
String mercuryNumberOfMoons = "0";
String mercurySurfacePressure = "1×10^−14";

// Neptune Constants
double neptuneMass = 1.024e26;           // Mass of Neptune in kilograms
double neptuneRadius = 24622000;         // Radius of Neptune in meters
double neptuneDiameter = 49244000;       // Diameter of Neptune in meters
String neptuneGravity = "11.15";         // Gravity in m/s²
String neptuneOrbitalPeriod = "60190";   // Orbital period in days
String neptuneAverageTemperature = "-201";// Average temperature in °C
String neptuneAxialTilt = "28.32";       // Axial tilt in degrees
String neptuneDominantGas = "Hydrogen and Helium";
String neptuneNumberOfMoons = "14 (including Triton)";
String neptuneSurfacePressure = "110";


// Satellite and Planetary Saved Data
String savedSateliteAltitude;
String savedSateliteMass;
String savedSateliteVelocity;
String savedSateliteEscapeVelocity;
String savedSateliteKineticEnergy;
String savedSatelitePotentialEnergy; 
String savedSateliteTotalEnergy;
String savedSateliteTimePeriod;
String savedSateliteGravitationalForce;
String savedSateliteAngularMomentum;
String savedSateliteGravitationalAcceleration; 
String savedPlanetName;
String savedPlanetRadius;
String savedPlanetMass;


// Tracks the last planet (Used For Saving Purposes)
String previousPlanetSaved;

// Default ring color for satellite visuals
String ringColor = "blue";

// Setup Function
void setup(){
  
  // Creates GUI
  createGUI();
  
  // Creates Size Of Screen
  size(1400,900);
  
  //Centers Image
  imageMode(CENTER);
  
  //Loads Images
  loadImages();
  
  // Create and initialize planet objects with their respective properties
  planetEarth = new Planet("Earth", earthMass, earthRadius, earthDiameter, earthGravity, earthOrbitalPeriod, earthAverageTemperature, earthAxialTilt, earthDominantGas, earthNumberOfMoons, earthSurfacePressure);
  planetMars = new Planet("Mars", marsMass, marsRadius, marsDiameter, marsGravity, marsOrbitalPeriod, marsAverageTemperature, marsAxialTilt, marsDominantGas, marsNumberOfMoons, marsSurfacePressure);
  planetVenus = new Planet("Venus", venusMass, venusRadius, venusDiameter, venusGravity, venusOrbitalPeriod, venusAverageTemperature, venusAxialTilt, venusDominantGas, venusNumberOfMoons, venusSurfacePressure);
  planetMercury = new Planet("Mercury", mercuryMass, mercuryRadius, mercuryDiameter, mercuryGravity, mercuryOrbitalPeriod, mercuryAverageTemperature, mercuryAxialTilt, mercuryDominantGas, mercuryNumberOfMoons, mercurySurfacePressure);
  planetNeptune = new Planet("Neptune", neptuneMass, neptuneRadius, neptuneDiameter, neptuneGravity, neptuneOrbitalPeriod, neptuneAverageTemperature, neptuneAxialTilt, neptuneDominantGas, neptuneNumberOfMoons, neptuneSurfacePressure);

  // Initialize satellite object with mass, altitude, and speed
  satelite = new Satelite(sateliteMass,sateliteAltitude,sateliteSpeed);
  
  // Loads Old Saved Data from prior app use
  loadOldData();
  
  }


// Draw Function
void draw() {
  
  // Calls Display Screen Function
  displayScreen(); 
}
