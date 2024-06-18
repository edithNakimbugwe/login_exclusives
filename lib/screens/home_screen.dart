import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Home Screen',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Times New Roman',
              fontSize: 25,
              fontWeight: FontWeight.bold),
        )),
        backgroundColor: Colors.orange,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'This wll beb the home page',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Times New Roman',
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'the buttons will be put here',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Times New Roman',
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
