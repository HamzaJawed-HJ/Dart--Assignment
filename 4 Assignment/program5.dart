//Create a list of strings and find the longest common subsequence (substring) among all the strings in the list.

void main() {
  List<String> strings = ["abcdefg", "abdefg", "abcefg", "abceg"];

  String lcs = longestCommonSubsequence(strings);
  print("Longest Common Subsequence: $lcs");
}

String longestCommonSubsequence(List<String> strings) {
  int n = strings.length;
  if (n == 0) {
    return "";
  } else if (n == 1) {
    return strings[0];
  } else if (n == 2) {
    return lcs(strings[0], strings[1]);
  } else {
    String s1 = strings[0];
    String s2 = longestCommonSubsequence(strings.sublist(1));
    return lcs(s1, s2);
  }
}

String lcs(String s1, String s2) {
  int m = s1.length;
  int n = s2.length;

  if (m == 0 || n == 0) {
    return "";
  } else if (s1[m - 1] == s2[n - 1]) {
    return lcs(s1.substring(0, m - 1), s2.substring(0, n - 1)) + s1[m - 1];
  } else {
    String lcs1 = lcs(s1.substring(0, m - 1), s2);
    String lcs2 = lcs(s1, s2.substring(0, n - 1));
    return (lcs1.length > lcs2.length) ? lcs1 : lcs2;
  }
}
