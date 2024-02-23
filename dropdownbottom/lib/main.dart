import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bottombar",
      home: BottomPage(),
    );
  }
}

class BottomPage extends StatefulWidget {
  const BottomPage({super.key});

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  List<String> Countryname = ['India', 'China', 'Nepal'];
  String? selectedCountry = "India";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottombar "),
      ),
      body: Center(
        child: DropdownButton<String>(
          value: selectedCountry,
          items: Countryname.map<DropdownMenuItem<String>>(
            (String value) =>
                DropdownMenuItem(value: value, child: Text(value)),
          ).toList(),
          onChanged: (String? value) {
            setState(() {
              selectedCountry = value;
            });
          },
        ),
      ),
    );
  }
}
