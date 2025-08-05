// Function That Converts Double Values To Scientific Notation
String toScientificNotation(double value){
    String formattedValue = String.format("%.3e", value); // Format to 3 decimal places in scientific notation
    String[] parts = formattedValue.split("e");
    String base = parts[0];
    String exponent = parts[1].replace("+", ""); // Remove "+" from the exponent if present
    return base + "×10^" + exponent;
  }
  
// Function That Rounds Values To Three Decimal Places
double roundToThreeDecimals(double value) {
    double formattedValue = value * 1000;  // Multiply by 1000 for three decimals
    formattedValue = Math.round(formattedValue);  // Store the rounded result
    double roundedValue = formattedValue / 1000;  // Divide by 1000 to restore scale
    return roundedValue;
}

    
