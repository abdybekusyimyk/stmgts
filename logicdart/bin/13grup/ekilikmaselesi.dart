import 'dart:math';

void main(List<String> args) {
  bool b = true;
  int n = 128;
  int s = 0;

  while (b) {
    if (s > n) {
      print('No');
      return;
    } else {
      for (int i = 0; i < n; i++) {
        if (pow(2, i) == n) {
          print(i);
          print('Yes');
          return;
        }
      }
      s = s + 1;
    }
  }
}
