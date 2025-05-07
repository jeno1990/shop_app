import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/data/models/products_details.dart';
import 'package:shop_app/presentation/state_holders/products_details_controller.dart';
import 'package:shop_app/presentation/ui/utils/app_color.dart';
import 'package:shop_app/presentation/ui/widgets/custom_app_bar.dart';
import 'package:shop_app/presentation/ui/widgets/custom_stepper.dart';
import 'package:shop_app/presentation/ui/widgets/products_carousel_slider.dart';
import 'package:shop_app/presentation/ui/widgets/products_details_screen_widgets/products_details_color_selector.dart';
import 'package:shop_app/presentation/ui/widgets/products_details_screen_widgets/products_details_size_selector.dart';

class ProductsDetailsScreen extends StatefulWidget {
  // final int productsId;
  final ProductsDetails productsDetails;

  const ProductsDetailsScreen({super.key, required this.productsDetails});

  @override
  State<ProductsDetailsScreen> createState() => _ProductsDetailsScreenState();
}

class _ProductsDetailsScreenState extends State<ProductsDetailsScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Get.find<ProductsDetailsController>()
      //     .getProductsDetails(widget.productsId);
      // Get.find<ProductsDetailsController>().availableColor.clear();
    });
  }

  // ignore: unused_field
  int _selectedSizeIndex = 0;
  int _selectedColorIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Products Details", true),
      body: GetBuilder<ProductsDetailsController>(
        builder: (productsDetailsController) {
          if (productsDetailsController.getProductsDetailsInProgress) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Column(
            children: [
              ProductsDetailsCarouselSlider(
                imageList: [widget.productsDetails.product?.image ?? ""],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: SingleChildScrollView(
                    child:
                        productsDetails(widget.productsDetails, ['oxff18786a']),
                  ),
                ),
              ),
              // cartBottomContainer(
              //   productsDetailsController.productsDetails,
              //   productsDetailsController.availableColor,
              //   productsDetailsController.availableSizes,
              // ),
            ],
          );
        },
      ),
    );
  }

  Column productsDetails(ProductsDetails productsDetails, List<String> colors) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                productsDetails.product?.title ?? "",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.7,
                ),
              ),
            ),
            CustomStepper(
              stepValue: 1,
              lowerLimit: 1,
              upperLimit: 20,
              value: 1,
              onChanged: (value) {},
            ),
          ],
        ),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            const Icon(
              Icons.star,
              size: 18,
              color: Colors.amber,
            ),
            Text(
              '${productsDetails.product?.star ?? ""}',
              style: const TextStyle(
                fontSize: 15,
                overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.w500,
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
        const Text(
          "Color",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
        const SizedBox(
          height: 16,
        ),
        ProductsDetailsColorSelector(
            colors: colors,
            selectedColor: _selectedColorIndex,
            onSelected: (int index) {
              _selectedColorIndex = index;
            }),
        const SizedBox(
          height: 16,
        ),
        const Text(
          "Sizes",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
        const SizedBox(
          height: 16,
        ),
        ProductsDetailsSizeSelector(
          sizes: productsDetails.size?.split(',') ?? [],
          onSelect: (int index) {
            _selectedSizeIndex = index;
          },
          initialSelected: 0,
        ),
        const SizedBox(
          height: 16,
        ),
        const Text(
          "Description",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
        Text(
          productsDetails.des ?? "",
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}
