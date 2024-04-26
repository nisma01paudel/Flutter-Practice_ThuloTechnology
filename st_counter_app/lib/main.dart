import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:st_counter_app/HomePage.dart';
import 'package:st_counter_app/counterprovide.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Counter(),
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
