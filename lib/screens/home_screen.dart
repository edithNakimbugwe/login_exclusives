import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [
            Text('This wll beb the home page'),
            Text('the buttons will be put here')
          ],
        ),
      ),
    );
  }
}
