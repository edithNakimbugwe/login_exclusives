import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Center(child: Text("Login Page")),
        backgroundColor: Colors.amber[800],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 100, 30, 10),
        child: Container(
          height: 300,
          width: 800,
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(hintText: 'Type here'),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField()
            ],
          ),
        ),
      ),
    );
  }
}
