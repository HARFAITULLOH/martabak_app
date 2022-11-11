import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:uuid/uuid.dart';
import 'dart:convert';

import '../../../data/models/product_model.dart';

class MenuController extends GetxController {
  var onGoingCount = 0.obs;
  var products = List<Product>.empty().obs;
  var doneProducts = List<Product>.empty().obs;

  Product findById(String id) {
    return products.firstWhere((element) => element.id == id);
  }

  void add(String name, String image, String taste) {
    var id = Uuid().v4().toString();
    final data = Product(name, image, taste, id);
    products.add(data);
    onGoingCount.value = products.length;
  }

  void delete(String id) {
    products.removeWhere((element) => element.id == id);
    onGoingCount.value = products.length;
  }

  void done(String id) {
    var doneProduct = findById(id);

    if (doneProducts.isEmpty) {
      doneProduct.total = 1;
      doneProducts.add(doneProduct);
    } else if (doneProducts.isNotEmpty) {
      var check = true;
      // Searching same data
      for (var i = 0; i < doneProducts.length; i++) {
        // Check if name and taste same

        if (doneProducts[i].name == doneProduct.name &&
            doneProducts[i].taste == doneProduct.taste) {
          doneProducts[i].total = doneProducts[i].total! + 1;
          doneProducts.add(Product('', '', '', id));
          doneProducts.removeLast();
          check = false;
          break;
        }
      }

      if (check) {
        doneProduct.total = 1;
        doneProducts.add(doneProduct);
        onGoingCount.value = products.length;
      }
    }

    delete(id);
  }

  void removeFromMemory() {
    final box = GetStorage();
    box.erase();
  }

  void saveData() {
    final box = GetStorage();
    box.erase();
    var productsAsMap = products.map((element) => element.toJson()).toList();
    var doneProductsAsMap =
        doneProducts.map((element) => element.toJson()).toList();
    String jsonProducts = jsonEncode(productsAsMap);
    String jsonDoneProducts = jsonEncode(doneProductsAsMap);
    box.write('data', {
      'onGoingCount': onGoingCount.value,
      'products': jsonProducts,
      'doneProducts': jsonDoneProducts,
    });
  }

  @override
  void onInit() {
    final box = GetStorage();
    if (box.read('data') != null) {
      final data = box.read('data');
      onGoingCount.value = data['onGoingCount'];

      if (data['products'] != null) {
        List jsonProducts = jsonDecode(data['products']);
        products = jsonProducts
            .map((product) => Product.fromJson(product))
            .toList()
            .obs;
      }

      if (data['doneProducts'] != null) {
        print('doneProducts');
        List jsonDoneProducts = jsonDecode(data['doneProducts']);
        doneProducts = jsonDoneProducts
            .map((doneProduct) => Product.fromJson(doneProduct))
            .toList()
            .obs;
      }

      // products.value = data['products'];
      // doneProducts.value = data['doneProducts'];
    }
    super.onInit();
  }
}
