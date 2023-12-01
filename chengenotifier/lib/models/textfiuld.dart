import 'package:chengenotifier/models/changenotifierpage.dart';
import 'package:flutter/material.dart';

class Textfiuldpage extends StatelessWidget {
  Textfiuldpage({Key? key}) : super(key: key);

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListenableBuilder(
                listenable: MyNotifier(),
                builder: (BuildContext context, Widget? child) {
                  return Text('data');
                }),
            const SizedBox(
              height: 70,
            ),
            SizedBox(
                width: 350,
                child: TextFormField(
                  controller: controller,
                  decoration:
                      const InputDecoration(border: OutlineInputBorder()),
                ))
          ],
        ),
      ),
    );
  }
}
