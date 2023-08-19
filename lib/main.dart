import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Spacer Widget"),
        ),
        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(
              flex: 4,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.red,
            ),
            const Spacer(
              flex: 3,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.blue,
            ),
            const Spacer(
              flex: 2,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.greenAccent,
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        )),
      ),
    );
  }
}
