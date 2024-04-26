import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(colorScheme:),
      home: SignUpPage(),
    );
  }
}

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _phonenumberController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _phonenumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 67, 117),
        title: const Text(
          'Enter Details',
          style: TextStyle(
            color: Color.fromARGB(255, 243, 245, 247),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  // icon: ,
                  labelText: 'CompanyName',
                  hintText: 'Enter Company Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Company name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Address',
                  hintText: 'Enter your address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your address';
                  }

                  //   } else if (!value.contains('@')) {
                  //     return 'Please enter a valid email';
                  //   }
                  //   return null;
                  // },

                  //   else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                  //       .hasMatch(value)) {
                  //     return 'Please enter a valid email';
                  //   }
                  return null;
                },
                //   } else {
                //     setState(() {
                //       value = 'Invalid email address';
                //     });
                //   }
                // },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _phonenumberController,
                decoration: InputDecoration(
                  labelText: 'Phone number',
                  hintText: 'Enter your Phone number.',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                // obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone no.';
                  } else if (value.length < 10) {
                    return 'number must be at least 10 digits';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              MaterialButton(
                color: Colors.blue[900],

                // style: ElevatedButton.styleFrom(
                //     backgroundColor: Color.fromARGB(255, 20, 104, 173)),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Form Filled'),
                      ),
                    );
                    // Here you would typically handle the form submission,
                    // like sending the data to a server or saving it locally.
                  }
                },
                child: const Text(
                  'Continue',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// bool _isValidEmail(String email) {
//   // Regular expression for email validation
//   final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
//       caseSensitive: false, multiLine: false);

//   return emailRegex.hasMatch(email);
// }
