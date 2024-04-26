import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_provider/controllers/todoprovider.dart';
import 'package:todo_provider/views/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ToDoProvider(),
        child: MaterialApp(
          theme: ThemeData(primarySwatch: Colors.blueGrey),
          home: HomeScreen(),
        ));
  }
}
