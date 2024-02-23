import 'package:flutter/material.dart';

void main() {
  runApp(ListApp());
}

class ListApp extends StatelessWidget {
  const ListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "List View",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Menu Food"),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: [
            MaterialButton(
              onPressed: () {/* Handle click */},
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.category),
                  Text('Category 1'),
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {/* Handle click */},
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.category),
                  Text('Category 2'),
                ],
              ),
            ),
            // Add more categories as needed
          ],
        )
        // try changing to `scrollDirection: Axis.horizontal` to see horizontal list
        );
  }
}
