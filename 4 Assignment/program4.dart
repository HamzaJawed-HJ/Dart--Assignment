//Create a map that associates the names of countries with their population and area.
//Find the top 5 largest countries by population density (population / area).

void main() {
  Map<String, Map<String, double>> countries = {
    "China": {"population": 1393.8, "area": 9.6},
    "Indonesia": {"population": 269.7, "area": 1.9},
    "Brazil": {"population": 212.6, "area": 8.5},
    "Pakistan": {"population": 200.8, "area": 0.8},
    "Nigeria": {"population": 195.9, "area": 0.9},
    "Mexico": {"population": 130.2, "area": 1.9},
  };

  List<MapEntry<String, double>> density = countries.entries
      .map((entry) => MapEntry(
          entry.key, entry.value["population"]! / entry.value["area"]!))
      .toList();

  density.sort((a, b) => b.value.compareTo(a.value));

  print("Top 5 largest countries by population density:");

  density.take(5).forEach((entry) {
    print("${entry.key}: ${entry.value.toStringAsFixed(2)}");
  });
}
