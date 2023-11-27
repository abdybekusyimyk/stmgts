import 'package:flutter/material.dart';
import 'package:providermg/models/firstpage.dart';
import 'package:providermg/models/secondpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  String _information = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Setstate'),
      ),
      body: _currentIndex == 0
          ? FirstPage(information: _information)
          : SecondPage(onSubmit: (info) {
              setState(() {
                _information = info;
              });
            }),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'First Page',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Second Page',
          ),
        ],
      ),
    );
  }
}
