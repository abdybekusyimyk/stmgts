// import 'package:flutter/material.dart';
// import 'package:providermg/models/firstpage.dart';
// import 'package:providermg/models/secondpage.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: MainPage(),
//     );
//   }
// }

// class MainPage extends StatefulWidget {
//   const MainPage({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _MainPageState createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   int _currentIndex = 0;
//   String _information = "";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Colors.red,
//       appBar: AppBar(
//         title: const Text('Setstate'),
//       ),
//       body: _currentIndex == 0
//           ? FirstPage(information: _information)
//           : SecondPage(onSubmit: (info) {
//               setState(() {
//                 _information = info;
//               });
//             }),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'First Page',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.business),
//             label: 'Second Page',
//           ),
//         ],
//       ),
//     );
//   }
// }

//!!!!!!!!!!!!!!!!!!!!!!!!!!

import 'package:flutter/material.dart';

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
  String _information = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'First Page=>  $_information',
              style: const TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) async {
          if (index == 1) {
            final result = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondPage()),
            );

            // if (result != null) {
            setState(() {
              _information = result;
            });
            // }
          }
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

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: TextField(
                controller: _textController,
                decoration: const InputDecoration(labelText: 'text jaz'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, _textController.text);
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
