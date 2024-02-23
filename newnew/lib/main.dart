import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PopupMenuButton Example',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenuButton Example'),
      ),
      body: Center(
        child: Text(
          'Selected menu: ${_selectedMenu ?? 'None'}',
          style: TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: PopupMenuButton<int>(
          onSelected: (int result) {
            setState(() {
              _selectedMenu = result;
            });
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
            const PopupMenuItem<int>(
              value: 1,
              child: ListTile(
                leading: Icon(Icons.info),
                title: Text('About Us'),
              ),
            ),
            const PopupMenuItem<int>(
              value: 2,
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text('Contact Us'),
              ),
            ),
            const PopupMenuItem<int>(
              value: 3,
              child: ListTile(
                leading: Icon(Icons.privacy_tip),
                title: Text('Privacy Policy'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
