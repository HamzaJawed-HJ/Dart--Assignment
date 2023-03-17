//Create a class named “Course” with properties such as name, code, instructor, and credits.
// Add getter and setter methods for each property.
// Also,add a method to calculate the total cost of the course based on the number of credits and the cost per credit.
class Course {
  late String _name;
  late String _code;
  late String _instructor;
  late double _credit;
  late double _cost;

  Course(
      String name, String code, String instructor, double credit, double cost) {
    setName(name);
    setCode(code);
    setInstructor(instructor);
    setCredit(credit);
    setCost(cost);
  }
  void setName(String name) {
    this._name = name;
  }

  void setCode(String code) {
    this._code = code;
  }

  void setInstructor(String instructor) {
    this._instructor = instructor;
  }

  void setCredit(double credit) {
    this._credit = credit;
  }

  void setCost(double cost) {
    this._cost = cost;
  }

  String getName() {
    return _name;
  }

  String getCode() {
    return _code;
  }

  String getInstructor() {
    return _instructor;
  }

  double getCredit() {
    return _credit;
  }

  double getCost() {
    return _cost;
  }

  double totalCost() {
    double credit = getCredit();
    double cost = getCost();

    return credit * cost;
  }
}

void main() {
  Course c1 = new Course("Linear Algebra", "LA", "Not Assign", 3, 3000);

  print("Course Name: ${c1.getName()}\nCourse Code: ${c1.getCode()}");
  print("Course Cost: ${c1.getCost()}\nCourse Credit Hour: ${c1.getCredit()}");
  print("\n\nTotal cost of Course: ${c1.totalCost()}");
}
