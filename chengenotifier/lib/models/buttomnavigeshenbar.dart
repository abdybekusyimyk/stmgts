import 'package:chengenotifier/models/homepage.dart';
import 'package:chengenotifier/models/textfiuld.dart';
import 'package:flutter/material.dart';

class Buttomnavigeshenbar extends StatefulWidget {
  const Buttomnavigeshenbar({Key? key}) : super(key: key);

  @override
  State<Buttomnavigeshenbar> createState() => _ButtomnavigeshenbarState();
}

class _ButtomnavigeshenbarState extends State<Buttomnavigeshenbar> {
  List listbottombar = [
    const Homepage(),
    Textfiuldpage(),
  ];

  int indexnavigetion = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listbottombar[indexnavigetion],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexnavigetion,
          onTap: (index) {
            setState(() {
              indexnavigetion = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.playlist_add_circle_sharp), label: 'fiuld'),
          ]),
    );
  }
}
