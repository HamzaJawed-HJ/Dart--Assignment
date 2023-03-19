// Create a Person class with firstName and lastName properties,
// and a method called fullName() that returns the full name of the person.
// Then create a Student class that inherits from Person and has a major property.
//Override the fullName() method in the Student class to include the major in the full name.

import 'dart:io';

class Person {
  late String firstName;
  late String lastName;

  Person(this.firstName, this.lastName);

  String fullName() {
    return "Full Name: $firstName $lastName";
  }
}

class Student extends Person {
  late String major;

  Student(String firstName, String lastName, this.major)
      : super(firstName, lastName);

  @override
  String fullName() {
    return "Full Name: $firstName $lastName \nMajor : $major";
  }
}

void main() {
  print("Enter First Name: ");
  String fname = stdin.readLineSync() as String;
  print("Enter Last Name: ");
  String lname = stdin.readLineSync() as String;
  print("Enter Major Course: ");
  String major = stdin.readLineSync() as String;

  Student student = new Student(fname, lname, major);

  print("${student.fullName()}");
}
