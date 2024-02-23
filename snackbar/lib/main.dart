import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snackbar',
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
        title: Text("Snackbar Project"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () => showSnackBar(context, "Show Snackbar"),
                child: Text(
                  "Delete Message",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pinkAccent),
                onPressed: () => show2SnackBar(context, "Show Snackbar"),
                child: Text(
                  "This is a custom Snackbar",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
                onPressed: () => show3SnackBar(context, "Show Snackbar"),
                child: Text(
                  "Register",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
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

void show2SnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('This is a custom Snackbar!'),
      duration: Duration(milliseconds: 2000),
      backgroundColor: Colors.blue,
    ),
  );
}

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('Message deleted'),
      action: SnackBarAction(
        label: 'UNDO',
        onPressed: () {
          // Perform some action
        },
      ),
    ),
  );
}

void show3SnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('Register created successfully'),
      duration: Duration(seconds: 5),
      backgroundColor: Colors.green,
    ),
  );
}
