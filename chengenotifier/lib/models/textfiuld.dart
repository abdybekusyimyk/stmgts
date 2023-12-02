// import 'package:chengenotifier/models/changenotifierpage.dart';
import 'package:flutter/material.dart';

class Textfiuldpage extends StatelessWidget {
  Textfiuldpage({Key? key}) : super(key: key);

  final _controller = TextEditingController();
  final ValueNotifier<dynamic> valueNotifier = ValueNotifier(" no name");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ValueListenableBuilder(
        valueListenable: valueNotifier,
        builder: (context, values, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                values,
                style: const TextStyle(fontSize: 34),
              ),
              SizedBox(
                width: 350,
                child: TextFormField(
                  // autofocus: true,
                  controller: _controller,
                  decoration: const InputDecoration(
                    labelText: "name",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              ElevatedButton(
                  child: const Text("Tap me"),
                  onPressed: () {
                    valueNotifier.value = _controller.text;
                  }),
            ],
          );
        },
      ),
    ));
  }
}
