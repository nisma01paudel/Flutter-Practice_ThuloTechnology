import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // bool isSwitched = false;
  // var settings = <String, bool>{
  //   'Wi-Fi': true,
  //   'Bluetooth': false,
  //   'Airplane Mode': false,
  //   'Mobile Data': true,
  // };
  // App settings options
  Map<String, bool> appSettings = {
    'Notifications': true,
    'Dark Mode': false,
    'Location Tracking': true,
    'Automatic Updates': false,
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: ListView(
        children: appSettings.keys.map((String key) {
          return SwitchListTile(
            title: Text(key),
            value: appSettings[key]!,
            onChanged: (bool value) {
              setState(() {
                appSettings[key] = value;
              });
            },
          );
        }).toList(),
      )),
    );
  }
}
