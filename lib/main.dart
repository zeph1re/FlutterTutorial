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
  String message = "Ini adalah text";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Text Style"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                message,
                style: const TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.overline,
                    decorationColor: Colors.red,
                    decorationThickness: 5,
                    decorationStyle: TextDecorationStyle.wavy),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  setState(() {
                    message = "Button Pressed";
                  });
                },
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green),
                child: const Text("Press Me",
                    style: const TextStyle(fontFamily: "Poppins")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
