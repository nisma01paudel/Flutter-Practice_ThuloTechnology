
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: ColorScheme.dark()),
      title: "Image in flutter",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage() extends StatelessWidget {
  const HomePage()({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('image/nis.jpg'),
              radius: 50,
            ),
            const SizedBox(height: 10),
            const Text(
              'Nisma Paudel',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'https://flutter-tutorial.net',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Drawer(),
//       appBar: AppBar(
//         // leading: Icon(Icons.menu),

//         title: Text("Local Image"),
//         backgroundColor: Colors.blueAccent,
//       ),
//       body: Center(
//         child: ListView(
//           children: [
//             Image.asset(
//               "image/polymorphism.png",
//               width: 300,
//               height: 300,
//             ),
//             Image.asset(
//               "image/nis.jpg",
//               width: 300,
//               height: 300,
//             ),
//             Image.asset(
//               "image/temp.png",
//               height: 250,
//               width: 250,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
