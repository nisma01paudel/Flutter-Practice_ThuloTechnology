import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.highContrastLight(),
        // colorSchemeSeed: Colors.grey,
      ),
      debugShowCheckedModeBanner: false,
      title: "Drawer",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My app'),
        backgroundColor: Colors.blueGrey,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://flutter-tutorial.net/images/sample_background_image.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              accountName: Text('Nisma Paudel'),
              accountEmail: Text('npaudel048@gmail.com'),
              currentAccountPicture: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/152644190?v=4'),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Dashboard'),
            ),
            const ListTile(
              leading: Icon(Icons.receipt),
              title: Text('Invoices'),
            ),
            const ListTile(
              leading: Icon(Icons.payment),
              title: Text('Payments'),
            ),
            const ListTile(
              leading: Icon(Icons.pie_chart),
              title: Text('Expenses'),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
