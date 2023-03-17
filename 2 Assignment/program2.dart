import 'dart:io';

//Create a class named “Student” with properties such as name, age, major, and GPA.
// Add getter and setter methods for each property.
// Also, add a method to calculate the student’s grade level based on their age.

class Student {
  late String _name;
  late int _age;
  late double _gpa;
  late String _course;

  Student(String name, int age, double gpa, String course) {
    this.setName(name);
    this.setAge(age);
    this.setGpa(gpa);
    this.setcourse(course);
  }

  void setName(String name) {
    this._name = name;
  }

  void setAge(int age) {
    this._age = age;
  }

  void setGpa(double gpa) {
    this._gpa = gpa;
  }

  void setcourse(String course) {
    this._course = course;
  }

  String getName() {
    return _name;
  }

  int getAge() {
    return _age;
  }

  double getGpa() {
    return _gpa;
  }

  String getCourse() {
    return _course;
  }

  void calculateGrade() {
    int age = getAge();

    if (age <= 16) {
      print("\nAge: $age !!!!\n");
      print("School BOY !!!!");
      return;
    } else if (age >= 17 && age <= 19) {
      print("\nAge: $age !!!!\n");
      print("College Buddy !!!!");
      return;
    } else if (age >= 19 && age <= 24) {
      print("\nAge: $age !!!!\n");
      print("University Student !!!!");
      return;
    } else {
      print("\nAge: $age !!!!\n");
      print("You are Not Student !!!!");
    }
  }
}

void main() {
  print("Enter name: ");
  String name = stdin.readLineSync() as String;
  print("Enter Age: ");
  int age = int.parse(stdin.readLineSync() as String);
  print("Enter Gpa: ");
  double gpa = double.parse(stdin.readLineSync() as String);
  print("Enter Course: ");
  String course = stdin.readLineSync() as String;

  Student s1 = new Student(name, age, gpa, course);
  s1.calculateGrade();
}
