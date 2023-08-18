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
  int number = 0;

  void pushButton() {
    // Untuk mengubah tampilan sesuai dengan state yang ada saat ini (Update Hot Reload)
    setState(() {
      number++;
    });
  }

  void reset() {
    // Untuk mengubah tampilan sesuai dengan state yang ada saat ini (Update Hot Reload)
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Stateful")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(number.toString(),
                  style: TextStyle(fontSize: 24 + number.toDouble())),
              const SizedBox(height: 10),
              TextButton(
                onPressed: pushButton,
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green),
                child: const Text(
                  "Add",
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: reset,
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green),
                child: const Text("Reset"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
