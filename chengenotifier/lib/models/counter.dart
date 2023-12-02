import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Counter extends StatelessWidget {
  Counter({Key? key}) : super(key: key);

  ValueNotifier<int> number = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cunter app')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder(
                valueListenable: number,
                builder: (
                  BuildContext context,
                  int value,
                  Widget? child,
                ) {
                  return Text(
                    value.toString(),
                    style: const TextStyle(fontSize: 40),
                  );
                }),
            const SizedBox(height: 40),
            ElevatedButton(
                onPressed: () {
                  number.value += 1;
                },
                child: const Text(
                  'botton',
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
