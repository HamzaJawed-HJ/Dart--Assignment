import 'dart:io';
import 'dart:math';

void main(List<String> args) {
//Write a program that prompts the user to enter a base and an exponent and
//then calculates the result of raising the base to the exponent.
// For example, if the user enters 2 and 3, the program should calculate 2^3 = 8.

  print("ENTER BASE: ");
  double base = double.parse(stdin.readLineSync() as String);

  print("ENTER EXPONENT: ");
  int exp = int.parse(stdin.readLineSync() as String);

  num result = pow(base, exp);
  print("\nRESULT: $result \n");
}
