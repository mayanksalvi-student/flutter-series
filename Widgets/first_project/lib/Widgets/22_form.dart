import 'package:flutter/material.dart';

class FormExample extends StatefulWidget {
  const FormExample({super.key});

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  trySubmit() {
    final isValid = _formkey.currentState!.validate();
    if (isValid) {
      _formkey.currentState!.save();
      print(firstName);
      print(lastname);
      print(email);
      print(password);
    } else {
      print('Error');
    }
  }

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String firstName = '';
  String lastname = '';
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Example')),
      body: Form(
        key: _formkey,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  child: const Text(
                    'SignUp Form',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(1, 2),
                          blurRadius: 2,
                          color: Colors.grey.shade300)
                    ]),
                child: Container(
                  margin: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'First name',
                        ),
                        validator: (value) {
                          if (value.toString().isEmpty) {
                            return 'Email is required';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (newValue) {
                          firstName = newValue.toString();
                        },
                      ),
                      const Divider(color: Colors.grey),
                      TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Last name',
                        ),
                        validator: (value) {
                          if (value.toString().isEmpty) {
                            return 'Last name is required';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (newValue) {
                          lastname = newValue.toString();
                        },
                      ),
                      const Divider(color: Colors.grey),
                      TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                        ),
                        validator: (value) {
                          if (value.toString().isEmpty) {
                            return 'Email is required';
                          } else if (!(value.toString().contains('@'))) {
                            return 'Enter valid email';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (newValue) {
                          email = newValue.toString();
                        },
                      ),
                      const Divider(color: Colors.grey),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                        ),
                        validator: (value) {
                          if (value.toString().isEmpty) {
                            return 'Password is required';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (newValue) {
                          password = newValue.toString();
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 30),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    trySubmit();
                  },
                  child: const Text('Signup'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
