import 'package:get/get.dart';
import 'package:shop_app/data/models/products_model.dart';
import 'package:shop_app/data/utils/dummy_data.dart';

class NewProductsController extends GetxController {
  bool _getNewProductsInProgress = false;
  final String _message = "";
  ProductModel _productModel = ProductModel();

  bool get getNewInProgress => _getNewProductsInProgress;

  ProductModel get productModel => _productModel;

  String get message => _message;

  Future<bool> getNewProducts() async {
    _getNewProductsInProgress = true;
    update();
    _getNewProductsInProgress = false;

    _productModel = ProductModel(
      msg: "New products fetched successfully",
      data: dummy_product_data,
    );
    await Future.delayed(const Duration(seconds: 3));
    update();
    return true;
  }
}
