void main() {
  // Given a string s, find the length of the longest
  // substring
  // without repeating characters.
  // Input: s = "abcabcbb"
  // Output: 3
  // Explanation: The answer is "abc", with the length of 3.
  // Input: s = "pwwkew"
  // Output: 3
  // Explanation: The answer is "wke", with the length of 3.
  // Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
  print(giveLengthOfSubstring('abcabcbb'));
}

int giveLengthOfSubstring(String str) {
  int count = 0;
  for (int i = 0; i < str.length - 1; i++) {
    if (str[i] != str[i + 1]) {
      count++;
    } else {
      giveLengthOfSubstring(str.substring(i + 1));
    }
  }
  return count;
}
