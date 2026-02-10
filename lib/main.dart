import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "you have pushed the button mny times",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text("$counter", style: TextStyle(fontSize: 40)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  color: Colors.blueAccent,
                  padding: EdgeInsets.all(20),
                  shape: CircleBorder(),
                  child: Text(
                    "+",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                SizedBox(width: 200),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      counter--;
                    });
                  },

                  color: Colors.blueAccent,
                  padding: EdgeInsets.all(20),
                  shape: CircleBorder(),
                  child: Text(
                    "-",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
