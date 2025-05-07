import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shop_app/presentation/ui/screen/main_bottom_nav_screen.dart';
import 'package:shop_app/presentation/ui/utils/images_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    goToNextScreen();
    super.initState();
  }

  Future<void> goToNextScreen() async {
    Future.delayed(const Duration(seconds: 3)).then(
      // (value) => Get.to(()=> const BottomNavBarScreen())
      (value) => Get.offAll(const BottomNavBarScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
            child: SvgPicture.asset(ImagesUtils.craftyBayLogoSVG, width: 100),
          ),
          const Spacer(),
          const CircularProgressIndicator(),
          const SizedBox(
            height: 10,
          ),
          // const Text(
          //   "Developed ",
          //   style: TextStyle(
          //       color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 13),
          // ),
          // const SizedBox(
          //   height: 10,
          // ),
          // const Text("Version 1.0.0"),
          // const SizedBox(
          //   height: 10,
          // )
        ],
      ),
    );
  }
}
