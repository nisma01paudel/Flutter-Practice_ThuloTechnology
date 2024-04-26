import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProfileScreen(),
      title: "Profile Page",
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(" My Profile"),
          backgroundColor: Colors.pink.shade50,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/152644190?v=4"),
                ),
              ),
              SizedBox(
                height: 20,
                child: Text("Nisma Paudel",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 10),
              Text('I Love diving into new and innovative things.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(height: 20),
              Card(
                color: Colors.pink.shade50,
                elevation: 4.0,
                child: Column(
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.cake),
                      title: Text('Birth Date'),
                      subtitle: Text('2005-03-04'),
                    ),
                    const ListTile(
                      leading: Icon(Icons.school),
                      title: Text('Education'),
                      subtitle:
                          Text('3rd sem computer engineer, Flutter learner '),
                    ),
                    const ListTile(
                      leading: Icon(Icons.travel_explore),
                      title: Text('Hobbies'),
                      subtitle: Text('Travelling,Studying,Dancing,Poetry'),
                    ),
                    ListTile(
                        leading: const Icon(Icons.web),
                        title: const Text('Website'),
                        subtitle: const Text('paudelnisma.com.np'),
                        onTap: () {}),
                    const ListTile(
                      leading: Icon(Icons.email),
                      title: Text('Email'),
                      subtitle: Text('npaudel048@gmail.com'),
                    ),
                    const ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text('Address'),
                      subtitle: Text('Pokhara, Nepal'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Wrap(
                spacing: 10,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.facebook),
                    onPressed: () {
                      launchUrlString("https://www.facebook.com/npaudel.88");
                    },
                    color: Colors.blue,
                    tooltip: 'Facebook',
                  ),
                  IconButton(
                    icon: const Icon(Icons.link),
                    onPressed: () {
                      launchUrlString(
                          "https://www.linkedin.com/in/paudelnisma/");
                    },
                    color: Colors.blue,
                    tooltip: 'LinkedIn',
                  ),
                  IconButton(
                    icon: const Icon(Icons.code),
                    onPressed: () {
                      launchUrlString("https://github.com/nisma01paudel");
                    },
                    color: Colors.black,
                    tooltip: 'GitHub',
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
