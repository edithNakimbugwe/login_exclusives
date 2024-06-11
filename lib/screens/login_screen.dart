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
      body: const Center(child: Text('Login forwil appear here')),
    );
  }
}
