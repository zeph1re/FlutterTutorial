import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Flexible Layout"),
            ),
            body: Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Row(children: [
                    Flexible(
                        flex: 1,
                        child: Container(
                            margin: const EdgeInsets.all(10),
                            color: Colors.green)),
                    Flexible(
                        flex: 1,
                        child: Container(
                            margin: const EdgeInsets.all(10),
                            color: Colors.amber)),
                    Flexible(
                        flex: 1,
                        child: Container(
                            margin: const EdgeInsets.all(10),
                            color: Colors.red)),
                  ]),
                ),
                Flexible(
                    flex: 2,
                    child: Container(
                        margin: const EdgeInsets.all(10), color: Colors.blue)),
                Flexible(
                    flex: 1,
                    child: Container(
                        margin: const EdgeInsets.all(10),
                        color: Colors.greenAccent)),
              ],
            )));
  }
}
