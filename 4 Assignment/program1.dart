//Create a list of integers and find the longest subsequence of consecutive numbers in the list.

List longest_Subsequence(List<int> list) {
  List<int> consList = [];
  list.sort();
  int maxLength = 1;
  int currLength = 1;

  for (int i = 1; i < list.length; i++) {
    if (list[i] == list[i - 1] + 1) {
      consList.add(list[i]);
      currLength++;

      if (currLength > maxLength) {
        maxLength = currLength;
      }
    } else {
      currLength = 1;
    }
  }

  return consList;
}

void main() {
  List<int> list = [1, 3, 5, 9, 10, 8, 6, 7];
  List longest_subsequence = longest_Subsequence(list);

  print("longest subsequence of consecutive numbers: ");
  for (int value in longest_subsequence) {
    print(value);
  }
}
