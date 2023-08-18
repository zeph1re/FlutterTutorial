import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Row and Column"),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("data 1"),
            Text("data 2"),
            Text("data 3"),
            Row(
              children: [
                Text("data 4"),
                Text("data 5"),
                Text("data 6"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
