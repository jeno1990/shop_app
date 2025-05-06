import 'package:get/get.dart';
import 'package:shop_app/data/models/category_model.dart';
import 'package:shop_app/data/utils/dummy_data.dart';

class CategoriesController extends GetxController {
  bool _categoriesInProgress = false;
  bool get categoriesInProgress => _categoriesInProgress;
  CategoryModel _categoryModel = CategoryModel();
  CategoryModel get categoryModel => _categoryModel;

  final String _message = '';
  String get message => _message;

  Future<bool> getCategories() async {
    _categoriesInProgress = true;
    update();
    _categoriesInProgress = false;

    _categoryModel = CategoryModel(
      msg: "New products fetched successfully",
      data: dummy_category_data,
    );

    update();
    return true;
  }
}
