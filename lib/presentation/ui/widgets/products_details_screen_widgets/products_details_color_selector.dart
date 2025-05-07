import 'package:flutter/material.dart';
import 'package:shop_app/presentation/ui/utils/color_extension.dart';

class ProductsDetailsColorSelector extends StatefulWidget {
  final List<String> colors;
  final int selectedColor;
  final Function(int index) onSelected;

  const ProductsDetailsColorSelector(
      {super.key,
      required this.colors,
      required this.selectedColor,
      required this.onSelected});

  @override
  State<ProductsDetailsColorSelector> createState() =>
      _ProductsDetailsColorSelectorState();
}

class _ProductsDetailsColorSelectorState
    extends State<ProductsDetailsColorSelector> {
  int colorSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: widget.colors.length,
        itemBuilder: (context, int index) {
          return InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              colorSelectedIndex = index;
              widget.onSelected(index);
              if (mounted) {
                setState(() {});
              }
            },
            child: CircleAvatar(
              radius: 18,
              backgroundColor: HexColor.fromHex('#18786a'),
              child: colorSelectedIndex == index
                  ? const Icon(
                      Icons.done,
                      color: Colors.white,
                    )
                  : null,
            ),
          );
        },
        separatorBuilder: (context, int index) {
          return const SizedBox(
            width: 8,
          );
        },
      ),
    );
  }
}
