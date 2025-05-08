import 'package:get/get.dart';
import 'package:shop_app/data/models/home_screen_slider_model.dart';
import 'package:shop_app/data/models/products.dart';
import 'package:shop_app/data/utils/dummy_data.dart';

class CartController extends GetxController {
  bool _cartContoller = false;
  List<Product> _sliderModel = [];
  final String _message = '';
  int _cartItemCount = 0;

  bool get cartScreenInProgress => _cartContoller;
  List<Product> get cartScreenModel => _sliderModel;
  String get message => _message;
  int get cartItemCount => _cartItemCount;

  Future<bool> getCartScreen() async {
    _cartContoller = true;
    update();
    _cartContoller = false;

    _sliderModel = [];
    await Future.delayed(const Duration(seconds: 3));
    update();
    return true;
  }

  void addToCart(Product product) {
    _sliderModel.add(product);
    _cartItemCount++;
    update();
  }
}
