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
  Color color1 = Colors.green;
  Color color2 = Colors.amber;
  late Color targetColor;
  bool isFilled = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dragable Widget"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Draggable<Color>(
                  data: color1,
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1.withOpacity(0.5),
                      shape: const StadiumBorder(),
                      elevation: 6,
                    ),
                  ),
                  childWhenDragging: const SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.black12,
                      shape: StadiumBorder(),
                      elevation: 6,
                    ),
                  ),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1,
                      shape: const StadiumBorder(),
                      elevation: 6,
                    ),
                  ),
                ),
                Draggable<Color>(
                  data: color2,
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2.withOpacity(0.5),
                      shape: const StadiumBorder(),
                      elevation: 6,
                    ),
                  ),
                  childWhenDragging: const SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.black12,
                      shape: StadiumBorder(),
                      elevation: 6,
                    ),
                  ),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2,
                      shape: const StadiumBorder(),
                      elevation: 6,
                    ),
                  ),
                )
              ],
            ),
            DragTarget<Color>(
              builder: (BuildContext context, List<dynamic> accepted,
                      List<dynamic> rejected) =>
                  (isFilled)
                      ? SizedBox(
                          width: 100,
                          height: 100,
                          child: Material(
                            color: targetColor,
                            shape: const StadiumBorder(),
                          ),
                        )
                      : const SizedBox(
                          width: 100,
                          height: 100,
                          child: Material(
                            color: Colors.grey,
                            shape: StadiumBorder(),
                          )),
              onWillAccept: (value) => true,
              onAccept: (value) {
                isFilled = true;
                targetColor = value;
              },
            )
          ],
        ),
      ),
    );
  }
}
