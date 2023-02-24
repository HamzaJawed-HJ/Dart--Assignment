import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  //Write a program that prompts the user to enter a radius and then calculates the volume and surface area of a sphere.
  // The formulas for volume and surface area are V = (4/3) * pi * r^3 and A = 4 * pi * r^2, respectively.
  final double pi = 3.141;
  print("ENTER RADIUS: ");
  double radius = double.parse(stdin.readLineSync() as String);

  double volume = (4 / 3) * pi * pow(radius, 3);
  print("\nVOLUME OF SPHERE: $volume");

  double surArea = 4 * pi * pow(radius, 2);
  print("\nSURFACE AREA OF SPHERE: $surArea \n");
}
