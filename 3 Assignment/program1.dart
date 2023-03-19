//Create a Vehicle class with brand, model, and year properties,
// and a method called drive() that prints a message indicating that the vehicle is being driven.
// Then create a Car class that inherits from Vehicle and has a numDoors property.
// Override the drive() method in the Car class to print a message that includes the number of doors.

class Vehicle {
  late String brand;
  late String model;
  late int year;

  Vehicle(this.brand, this.model, this.year);

  void drive() {
    print("$brand $model vehicle is being driven");
  }
}

class Car extends Vehicle {
  late int numDoors;
  Car(String brand, String model, int year, this.numDoors)
      : super(brand, model, year);

  @override
  void drive() {
    print(
        "$brand $model vehicle is being driven and Total Numbers Of Door is: $numDoors");
  }
}

void main() {
  Car car1 = new Car("Tesla", "Model S(3rd Generation)", 2021, 4);
  car1.drive();
}
