import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  final String information;

  // ignore: prefer_const_constructors_in_immutables
  FirstPage({super.key, required this.information});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Birnchi bet=>>  $information',
              style: const TextStyle(fontSize: 30)),
        ],
      ),
    );
  }
}
