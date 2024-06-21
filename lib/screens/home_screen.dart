import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:login_project/screens/login_screen.dart';
import 'package:login_project/screens/product_tile.dart';

import '../controller/product_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ProductController pdtController = Get.put(ProductController());

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
              child: Obx(
                () => MasonryGridView.count(
                  crossAxisCount: 2,
                  itemCount: pdtController.productList.length,
                  itemBuilder: (context, index) {
                    return ProductTile(pdtController.productList[index]);
                  },
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
