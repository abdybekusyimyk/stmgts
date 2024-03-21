import 'dart:math';

void main() {
  bool b = true;
  int n = 16;
  int s = 0;

  while (b) {
    if (s > n) {
      print("No");
      return;
    } else {
      for (int i = 0; i < n; i++) {
        if (pow(2, i) == n) {
          print("Yes");

          return;
        }
      }
      s = s + 1;
    }
  }
}
