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
  String dummy =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tellus velit, fringilla non dapibus non, blandit pulvinar lectus. Sed feugiat vel enim vitae euismod. Proin ac velit non velit convallis rutrum sit amet et enim. Nam dictum erat in fermentum mollis. Vivamus vitae urna hendrerit, sodales tellus in, imperdiet mi. Aliquam pretium ornare libero eu volutpat. Maecenas varius erat mauris, non faucibus tellus mattis a.";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Stack and Align"),
            ),
            body: Stack(
              children: [
                // Background
                Column(
                  children: [
                    Flexible(
                        flex: 1,
                        child: Row(
                          children: [
                            Flexible(
                              flex: 1,
                              child: Container(
                                color: Colors.amberAccent,
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Container(
                                color: Colors.green,
                              ),
                            )
                          ],
                        )),
                    Flexible(
                        flex: 1,
                        child: Row(
                          children: [
                            Flexible(
                              flex: 1,
                              child: Container(
                                color: Colors.amber,
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Container(
                                color: Colors.blue,
                              ),
                            )
                          ],
                        ))
                  ],
                ),
                // listview

                ListView(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: Text(
                            dummy,
                            style: const TextStyle(fontSize: 30),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: Text(
                            dummy,
                            style: const TextStyle(fontSize: 30),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: Text(
                            dummy,
                            style: const TextStyle(fontSize: 30),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                // button tengah bawah
                Align(
                  alignment: const Alignment(0, 0.90),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.green,
                      ),
                      child: const Text(
                        "Button",
                        style: TextStyle(fontSize: 16),
                      )),
                )
              ],
            )));
  }
}
