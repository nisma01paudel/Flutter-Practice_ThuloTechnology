import 'package:flutter/material.dart';
import 'package:themeapp/sharedpreferencehelper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesHelper.init();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkTheme = false;
  @override
  void initState() {
    super.initState();
    _isDarkTheme = SharedPreferencesHelper.getBool("isDarkTheme") ?? false;
  }

  void _toggleTheme() {
    setState(() {
      _isDarkTheme = !_isDarkTheme;
      SharedPreferencesHelper.setBool("isDarkTheme", _isDarkTheme);
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Theme Switcher',
      theme: _isDarkTheme ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Settings',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            SwitchListTile(
              title: Text('Dark Theme'),
              value: _isDarkTheme,
              onChanged: (bool value) {
                setState(() {
                  _isDarkTheme = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
