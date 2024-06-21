import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:login_project/services/remote_services.dart';

import '../model/product_model.dart';

class ProductController extends GetxController {
  var productList = <Product>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    var products = await RemoteServices.fetchProducts();
    if (products != null) {
      productList.value = products;
    }
  }
}
