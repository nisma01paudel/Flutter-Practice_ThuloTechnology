import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Selection App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color? _selectedColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _selectedColor,
      appBar: AppBar(title: Text('Color Selection')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Select Color'),
              onPressed: () async {
                final selectedColor = await Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => ColorSelectionScreen()),
                );
                if (selectedColor != null) {
                  setState(() {
                    _selectedColor = selectedColor as Color?;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ColorSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select Color')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Red'),
            onTap: () {
              Navigator.of(context).pop(Colors.red);
            },
          ),
          ListTile(
            title: Text('Blue'),
            onTap: () {
              Navigator.of(context).pop(Colors.blue);
            },
          ),
          ListTile(
            title: Text('Green'),
            onTap: () {
              Navigator.of(context).pop(Colors.green);
            },
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// // MyApp Widget
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Drawer Navigation Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomePage(),
//     );
//   }
// }

// // HomePage Widget
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Home Page')),
//       body: const Center(child: Text('Home Page Content')),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Text('My App'),
//             ),
//             ListTile(
//               title: const Text('Home'),
            
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               title: const Text('Contact'),
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => ContactPage()));
//               },
//             ),
//             ListTile(
//               title: const Text('About'),
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage()));
//               },
//             ),
//              ListTile(
//               title: const Text('Settings'),
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => SettingPage()));
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // ContactPage Widget
// class ContactPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Contact Page')),
//       body: const Center(child: Text('Contact Page')),
//     );
//   }
// }

// // AboutPage Widget
// class AboutPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('About Page')),
//       body: const Center(child: Text('About Page')),
//     );
//   }
// }
// class SettingPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Setting Page')),
//       body: const Center(child: Text('Setting Page')),
//     );
//   }
// }
