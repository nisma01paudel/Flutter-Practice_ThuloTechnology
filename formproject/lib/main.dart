import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

enum Capital {
  Paris("Paris"),
  London("London"),
  Berlin("Berlin");

  // Members
  final String text;
  const Capital(this.text);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Formexample",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

  bool isChecked = false;

  List<String> languages = [
    'Dart',
    'Python',
    'Java',
    'JavaScript',
    'C++',
    'C#',
    'Ruby',
    'Go',
    'Swift',
    'Kotlin',
  ];
  List<String> selectedLanguages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formexample"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                // Form fields go here
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'First Name',
                    hintText: 'Enter your first name',
                  ),
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value == "") {
                      return 'Please enter your first name';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Last Name',
                    hintText: 'Enter your last name',
                  ),
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value == "") {
                      return 'Please enter your last name';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter your email',
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                // TextFormField(
                //   decoration: InputDecoration(
                //     labelText: 'Password',
                //   ),
                //   obscureText: true,
                // ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: 'Password',
                    ),
                    obscureText: true,
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    prefixIcon: Icon(Icons.phone),
                    suffixIcon: Icon(Icons.check_circle),
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(10),
                  ],
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Feedback",
                    prefixIcon: Icon(Icons.message),
                    suffixIcon: Icon(Icons.check_circle),
                  ),
                  maxLength: 15,
                  keyboardType: TextInputType.text,
                  // inputFormatters: [
                  //   LengthLimitingTextInputFormatter(10),
                  // ],
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: languages.map((String language) {
                      return CheckboxListTile(
                        title: Text(language),
                        value: selectedLanguages.contains(language),
                        onChanged: (bool? value) {
                          setState(() {
                            if (value == true) {
                              selectedLanguages.add(language);
                            } else {
                              selectedLanguages.remove(language);
                            }
                          });
                        },
                      );
                    }).toList(),
                  ),
                ),
// Column(children: [

// ],)
                //  Column(
                //   children: Capital.values.map((option) =>
                //   RadioListTile(
                //   title: Text(option.text),
                //   value:option,
                //   groupValue: _selectedCapital,

                //   onChanged: (value){
                //   setstate((){
                //     _selectedCapital = value;
                //   });
                //   },
                //   )).toList(),
                // ),
                // Checkbox(
                //   value: isChecked,
                //   checkColor: Colors.white, // color of tick Mark
                //   activeColor: Colors.green,
                //   onChanged: (bool? value) {
                //     setState(
                //       () {
                //         isChecked = value!;
                //       },
                //     );
                //   },
                // ),

                const Text("I accept the aggrement."),

                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Perform submission logic
                    }
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
