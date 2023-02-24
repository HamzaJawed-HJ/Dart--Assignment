import 'dart:io';

void main() {
  //Write a program that calculates the area of a triangle using the formula A = (b * h) / 2.
  // The program should prompt the user to enter the base and height of the triangle and
  // then display the calculated area.
  print("Enter Height: ");
  double height = double.parse(stdin.readLineSync() as String);

  print("Enter breath: ");
  double Base = double.parse(stdin.readLineSync() as String);

  double Area = (Base * height) / 2;
  print("AREA = $Area");
}
