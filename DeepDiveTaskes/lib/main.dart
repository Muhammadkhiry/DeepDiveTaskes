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
  Color color = Colors.green;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Task3", style: TextStyle(fontSize: 24))),
        drawer: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                height: 150,
                color: Colors.blue,
                child: Text("Menu", style: TextStyle(fontSize: 24)),
              ),
              SizedBox(height: 20),
              Text("Option1", style: TextStyle(fontSize: 18)),
              SizedBox(height: 20),
              Text("Option2", style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Container(color: color, height: 100, width: 100)],
            ),
            Slider(value: 0.5,
            min: 0,
            max: 1,
            onChanged: (double newValue){
              
            }),
            SizedBox(height: 20),
            Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      color = Colors.red;
                    });
                  },
                  child: Text("Red"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      color = Colors.green;
                    });
                  },
                  child: Text("Green"),
                ),
              ],
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    spacing: 20,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Safaa", style: TextStyle(fontSize: 24)),
                      Text("Laila", style: TextStyle(fontSize: 24)),
                      Text("Ghaith", style: TextStyle(fontSize: 24)),
                      Text("Omar", style: TextStyle(fontSize: 24)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 70),
            Container(
              padding: EdgeInsets.all(3),
              child: Row(
                spacing: 5,
                children: [
                  Container(color: Colors.red, width: 200, height: 200),
                  Container(color: Colors.green, width: 200, height: 200),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
