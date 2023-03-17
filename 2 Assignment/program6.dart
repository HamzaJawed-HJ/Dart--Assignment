//Write a program that takes a string as input and checks if it is a palindrome.
//A palindrome is a string that reads the same forwards and backwards.
//For example, “racecar” is a palindrome.

import 'dart:io';

bool palindrome(String value) {
  return value.toLowerCase() == value.split('').reversed.join().toLowerCase();
}

void main() {
  print("Enter Text");
  String input = stdin.readLineSync() as String;
  if (palindrome(input)) {
    print("palindrome");
  } else {
    print("NOT palindrome");
  }
}
