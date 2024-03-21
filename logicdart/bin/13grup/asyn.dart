void main(List<String> args) {
  print('kochuudoo ....');
  kochyruu();
  print('kochurulup butu');

  // print('kochuudoo ....');
  // kochyruu().then((String value) {
  //   print('$value  koshtuu');
  // });
}

Future<String> kochyruu() async {
  // 500mb
  // ..
  await Future.delayed(Duration(seconds: 3), () => print('file .txt'));
  print('kochurulup butu');
  return 'File';
}
