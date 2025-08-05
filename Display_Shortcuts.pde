// Functions That Create Grey Layout Backgrounds
void greyLayoutLeft(){
  fill(100);
  noStroke();
  rect(0,0,200,900);

}

void greyLayoutRight(){
  fill(100);
  noStroke();
  rect(1200,0,1400,900);
}



// Function That Enables Planet Checkbox and Save Button To Be Clicked
void enablePlanetAndSaveCheckBoxClick(){
    saveData.setEnabled(true);
    checkboxEarth.setEnabled(true);
    checkboxVenus.setEnabled(true);
    checkboxMercury.setEnabled(true);
    checkboxMars.setEnabled(true);
    checkboxNeptune.setEnabled(true);
}
