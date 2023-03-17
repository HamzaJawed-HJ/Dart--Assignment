//Create a class named “Book” with properties such as title, author, publisher, and price.
// Add getter and setter methods for each property.
// Also, add a method to calculate the discount price of the book based on a given percentage.
import 'dart:io';

class Book {
  late String _title;
  late String _author;
  late String _publisher;
  late double _price;

  Book(String title, String author, String publisher, double price) {
    setTitle(title);
    setAuthor(author);
    setPublisher(publisher);
    setPrice(price);
  }

  void setTitle(String title) {
    this._title = title;
  }

  void setAuthor(String author) {
    this._author = author;
  }

  void setPublisher(String publisher) {
    this._publisher = publisher;
  }

  void setPrice(double price) {
    this._price = price;
  }

  String getTitle() {
    return _title;
  }

  String getAuthor() {
    return _author;
  }

  String getPublisher() {
    return _publisher;
  }

  double getPrice() {
    return _price;
  }

  double discount(double value) {
    double price = getPrice();
    value = value / 100;
    double Discount = value * price;

    return price - Discount;
  }

  void detail() {
    print("Book Name: ${getTitle()}");
    print("Author Name: ${getAuthor()}");
    print("Publisher Name: ${getPublisher()}");
    print("Price: ${getPrice()}");
  }
}

void main() {
  Book b1 =
      new Book("RICH DAD POOR DAD", "Robert Kiyosaki", "Warner Books", 5000);

  b1.detail();

  print("\n Dou You Want Discount??? \n ");
  print("Enter Discount: ");
  double dis = double.parse(stdin.readLineSync() as String);
  print("Price After discount: ${b1.discount(dis)}");
}
