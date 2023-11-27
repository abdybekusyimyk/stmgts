import 'dart:developer';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SecondPage extends StatefulWidget {
  final Function(String) onSubmit;

  SecondPage({super.key, required this.onSubmit});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final TextEditingController _textController = TextEditingController();
  String? name;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name == null ? 'no text' : name.toString(),
            style: const TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 40),
          SizedBox(
            width: 350,
            child: TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'Malymat jaz',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              widget.onSubmit(_textController.text);
              log(_textController.text);
              setState(() {
                name = _textController.text;
              });
              _textController.clear();
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
