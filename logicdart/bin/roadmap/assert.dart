void main(List<String> args) {
  // tort(12);

  num bluk = 3;

  num bir = bluk % 2;

  if (bir == 0) {
    num b = bluk / 2;
    print(b.truncate());
  } else {
    print('====>  $bluk');
  }
}

tort(num bluk) {
  num bir = bluk % 2;

  if (bir == 0) {
    num b = bluk / 2;
    print(b.truncate());
  } else {
    print('====>  $bluk');
  }
}
