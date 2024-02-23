import 'package:flutter/material.dart';

void main() {
  runApp(const GridViewApp());
}

class Product {
  final String title;
  final String subtitle;
  final String imageUrl;

  Product({
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });
}

class GridViewApp extends StatelessWidget {
  const GridViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Grid View App",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Chess board"),
          backgroundColor: Colors.amber,
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 8), // Number of columns
          itemCount: 64,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: getColor(index),
              ),
            );
          },
        ));
  }
}

List<int> whites = [
  0,
  2,
  4,
  6,
  9,
  11,
  13,
  15,
  16,
  18,
  20,
  22,
  25,
  27,
  29,
  31,
  32,
  34,
  36,
  38,
  41,
  43,
  45,
  47,
  48,
  50,
  52,
  54,
  57,
  59,
  61,
  63
];
getColor(int index) {
  if (whites.contains(index)) {
    return Colors.white;
  } else {
    return Colors.black;
  }
}
