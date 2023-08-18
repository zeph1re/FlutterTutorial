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
          title: const Text("Container"),
        ),
        body: Container(
          color: Colors.red,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsetsDirectional.only(start: 10),
          child: Container(
            color: Colors.amber,
            margin: const EdgeInsets.all(10),
            child: Container(
              margin: const EdgeInsets.all(0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.amber, Colors.blueGrey])),
            ),
          ),
        ),
      ),
    );
  }
}
