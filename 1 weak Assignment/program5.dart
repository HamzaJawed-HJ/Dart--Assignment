import 'dart:io';

void main(List<String> args) {
//Write a program that prompts the user to enter a temperature in Celsius and then converts it to Fahrenheit.
// The formula for converting Celsius to Fahrenheit is F = (9/5) * C + 32.
  print("Enter temperature in Celsius: ");
  double tempCel = double.parse(stdin.readLineSync() as String);

  double tempFah = (9 / 5) * tempCel + 32;

  print("\ntemperature in Fahrenheit : $tempFah \n");
}
