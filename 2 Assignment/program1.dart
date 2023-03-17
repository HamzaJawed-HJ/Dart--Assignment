import 'dart:io';

//Create a class named “Circle” with properties such as radius.
//Add getter and setter methods for the radius property.
//Also add a method to calculate the circumference of the circle.

class Circle {
  late double _radius;

  Circle(double radius) {
    setRadius(radius);
  }

  void setRadius(double radius) {
    this._radius = radius;
  }

  double getRadius() {
    return _radius;
  }

  double Circumference() {
    final pi = 3.141;
    double radius = getRadius();

    return 2 * pi * radius;
  }
}

void main() {
  print("Enter radius: ");
  double radius = double.parse(stdin.readLineSync() as String);
  Circle c1 = new Circle(radius);
  print("Circumference: ${c1.Circumference()}");
}
