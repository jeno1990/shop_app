import 'package:get/get.dart';
import 'package:shop_app/presentation/state_holders/cart_controller.dart';
import 'package:shop_app/presentation/state_holders/categories_controller.dart';
import 'package:shop_app/presentation/state_holders/home_screen_slider_controller.dart';
import 'package:shop_app/presentation/state_holders/main_bottom_nav_controller.dart';
import 'package:shop_app/presentation/state_holders/new_products_controller.dart';
import 'package:shop_app/presentation/state_holders/popular_products_controller.dart';
import 'package:shop_app/presentation/state_holders/products_details_controller.dart';

class StateHoldersBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(MainBottomNavController());
    Get.put(HomeScreenSliderController());
    Get.put(CategoriesController());
    Get.put(PopularProductsController());
    Get.put(NewProductsController());
    Get.put(ProductsDetailsController());
    Get.put(CartController());
  }
}
