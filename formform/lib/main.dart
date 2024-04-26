import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Where do you like to go?'),
        ),
        body: DifficultySelectionWidget(),
      ),
    );
  }
}

enum Difficulty {
  easy("Paris"),
  medium("London"),
  hard("Berlin");

  // Members
  final String text;
  const Difficulty(this.text);
}

class DifficultySelectionWidget extends StatefulWidget {
  @override
  _DifficultySelectionWidgetState createState() =>
      _DifficultySelectionWidgetState();
}

class _DifficultySelectionWidgetState extends State<DifficultySelectionWidget> {
  Difficulty? _selectedDifficulty = Difficulty.easy;
  var settings = <String, bool>{
    'Wi-Fi': true,
    'Bluetooth': false,
    'Airplane Mode': false,
    'Mobile Data': true,
  };
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ...Difficulty.values
          .map((option) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: RadioListTile<Difficulty>(
                  hoverColor: const Color.fromARGB(255, 202, 142, 142),
                  activeColor: Colors.greenAccent,
                  title: Text(option.text),
                  value: option,
                  groupValue: _selectedDifficulty,
                  onChanged: (value) {
                    setState(() {
                      _selectedDifficulty = value!;
                    });
                  },
                ),
              ))
          .toList(),
      ...settings.keys.map((String key) {
        return SwitchListTile(
          title: Text(key),
          value: settings[key]!,
          onChanged: (bool value) {
            setState(() {
              settings[key] = value;
            });
          },
        );
      }).toList(),
    ]);
  }
}
