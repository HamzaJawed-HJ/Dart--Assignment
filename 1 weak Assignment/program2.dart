import 'dart:io';

void main(List<String> args) {
  //Write a program that prompts the user to enter two floating-point numbers and then calculates their average.
  //The program should display the result with two decimal places.

  print("ENTER 1st FLOATING NO: ");
  double f1 = double.parse(stdin.readLineSync() as String);

  print("ENTER 2nd FLOATING NO: ");
  double f2 = double.parse(stdin.readLineSync() as String);

  double avg = (f1 + f2) / 2;
  print("AVERAGE OF BOTH NUMBER: " + avg.toStringAsFixed(2));
}
