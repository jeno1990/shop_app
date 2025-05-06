import 'package:get/get.dart';
import 'package:shop_app/data/models/products_model.dart';
import 'package:shop_app/data/utils/dummy_data.dart';

class PopularProductsController extends GetxController {
  bool _getPopularProductsInProgress = false;
  final String _message = "";
  ProductModel _productModel = ProductModel();

  bool get getPopularProductsInProgress => _getPopularProductsInProgress;

  ProductModel get productModel => _productModel;

  String get message => _message;

  Future<bool> getPopularProducts() async {
    _getPopularProductsInProgress = true;
    update();
    _getPopularProductsInProgress = false;

    // _productModel = ProductModel.fromJson(response.responseJson ?? {});
    _productModel = ProductModel(
      msg: "New products fetched successfully",
      data: dummy_product_data,
    );
    await Future.delayed(const Duration(seconds: 3));
    update();
    return true;
  }
}
