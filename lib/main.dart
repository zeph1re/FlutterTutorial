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
  List<Widget> widgets = [];

  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListView"),
        ),
        body: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      widgets.add(Text("Data ke-$counter"));
                    });
                    counter++;
                  },
                  child: const Text("Tambah Data"),
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        widgets.removeLast();
                      });
                      counter--;
                    },
                    child: const Text("Hapus Data")),
              ]),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widgets,
              )
            ],
          ),
        ]),
      ),
    );
  }
}
