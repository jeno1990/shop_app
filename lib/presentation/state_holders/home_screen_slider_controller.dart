import 'package:get/get.dart';
import 'package:shop_app/data/models/home_screen_slider_model.dart';
import 'package:shop_app/data/utils/dummy_data.dart';

class HomeScreenSliderController extends GetxController {
  bool _homeScreenSliderInProgress = false;
  HomeScreenSliderModel _sliderModel = HomeScreenSliderModel();
  final String _message = '';

  bool get homeScreenSliderInProgress => _homeScreenSliderInProgress;
  HomeScreenSliderModel get homeScreenSliderModel => _sliderModel;

  String get message => _message;

  Future<bool> getHomeScreenSlider() async {
    _homeScreenSliderInProgress = true;
    update();
    _homeScreenSliderInProgress = false;

    _sliderModel = HomeScreenSliderModel(
        msg: "slider fetched successfully", data: dummy_slider_data);
    await Future.delayed(const Duration(seconds: 3));
    update();
    return true;
  }
}
