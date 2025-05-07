import 'package:flutter/material.dart';
import 'package:shop_app/presentation/ui/utils/app_color.dart';

class FavoriteLoveIconButton extends StatelessWidget {
  const FavoriteLoveIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: AppColor.primaryColor,
      child: Padding(
        padding: EdgeInsets.all(2.0),
        child: Icon(
          Icons.favorite_border,
          size: 16,
          color: Colors.white,
        ),
      ),
    );
  }
}
