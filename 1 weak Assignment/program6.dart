//CHALLENGE QUESTION:
import 'dart:io';

void main(List<String> args) {
//CHALLENGE QUESTION: Write a program that prompts the user to enter a positive integer and
// then determines whether it is a prime number.
//A prime number is a positive integer greater than 1 that has no positive integer divisors other than 1 and itself.
  print("Enter positive integer: ");
  int no = int.parse(stdin.readLineSync() as String);
  int count = 0;
  if (no == 0 || no == 1) {
    print("$no is NOT Prime Number");
  }
  for (int i = 1; i <= no; i++) {
    if (no % i == 0) {
      count++;
    }
  }
  if (count == 2) {
    print("$no is Prime Number");
  } else {
    print("$no is NOT Prime Number");
  }
}
