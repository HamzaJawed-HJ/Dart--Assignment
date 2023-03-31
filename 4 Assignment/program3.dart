//Create a list of maps, where each map represents a product with a name, price, and quantity.
//Sort the list by the total cost of each product (price x quantity) in descending order

void main() {
  List<Map<String, dynamic>> products = [
    {"name": "Panadol Tab", "price": 1000.0, "quantity": 5},
    {"name": "Panadol SYP", "price": 250.0, "quantity": 10},
    {"name": "Rigix Tab", "price": 355.5, "quantity": 20},
    {"name": "Fexet-D Tab", "price": 450.0, "quantity": 3},
  ];

  products.sort((a, b) =>
      (b["price"] * b["quantity"]).compareTo(a["price"] * a["quantity"]));

  products.forEach((product) {
    print(
        "${product["name"]} - Total cost: ${product["price"] * product["quantity"]}");
  });
}
