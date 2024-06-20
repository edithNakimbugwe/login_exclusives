import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Flexible(
              child: MasonryGridView.count(
                crossAxisCount: 2,
                itemCount: 1000,
                itemBuilder: (context, index) {
                  return Container(
                    width: 160,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.orange[100],
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Item $index"),
                        const SizedBox(
                          height: 35,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.black,
                                backgroundColor: Colors.orange,
                                elevation: 10,
                              ),
                              child: const Text(
                                'Buy',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.black,
                                backgroundColor: Colors.orange,
                                elevation: 10,
                              ),
                              child: const Text(
                                'Cart',
                                style: TextStyle(color: Colors.black),
                              ),
                            )
                          ],
                        )
                      ],
                    )),
                  );
                },
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
