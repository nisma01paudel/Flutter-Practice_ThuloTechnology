import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:st_counter_app/counterprovide.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to counter App"),
      ),
      body: Column(
        children: [
          Text(counter.count.toString()),
          ElevatedButton(
              onPressed: () {
                counter.increment();
              },
              child: Text("press")),
          ElevatedButton(
              onPressed: () {
                counter.decrement();
              },
              child: Text("unpress")),
        ],
      ),
    );
  }
}
