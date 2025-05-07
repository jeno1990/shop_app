import 'package:get/get.dart';
import 'package:shop_app/data/models/products_details.dart';
import 'package:shop_app/data/models/products_details_model.dart';

class ProductsDetailsController extends GetxController {
  bool _getProductsDetailsInProgress = false;
  final ProductsDetails _productsDetails = ProductsDetails();
  final List<String> _availableColor = [];
  final List<String> _availableSizes = [];
  final String _errorMessage = '';

  bool get getProductsDetailsInProgress => _getProductsDetailsInProgress;

  ProductsDetails get productsDetails => _productsDetails;

  List<String> get availableColor => _availableColor;

  List<String> get availableSizes => _availableSizes;

  String get errorMessage => _errorMessage;

  Future<bool> getProductsDetails(int productsId) async {
    _getProductsDetailsInProgress = true;
    update();
    await Future.delayed(const Duration(seconds: 3));
    _getProductsDetailsInProgress = false;
    update();
    return true;
  }
}
