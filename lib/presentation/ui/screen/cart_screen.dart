import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:shop_app/presentation/state_holders/cart_controller.dart';

class CartPage extends StatelessWidget {
  final List<Map<String, dynamic>> cartItems = List.generate(4, (_) {
    return {
      'name': 'New Year Special Shoe',
      'price': 100,
      'color': 'Red',
      'size': 'X',
      'quantity': 1,
    };
  });

  CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(builder: (cartController) {
      double total = cartController.cartScreenModel.fold(
          0, (sum, item) => sum + (double.tryParse(item.price ?? '0') ?? 0));

      return Scaffold(
        appBar: AppBar(
          title: const Text('Cart'),
          leading: const BackButton(),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 1,
        ),
        body: cartController.cartScreenInProgress
            ? const Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      itemCount: cartController.cartScreenModel.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 10),
                      padding: const EdgeInsets.all(10),
                      itemBuilder: (context, index) {
                        var item = cartController.cartScreenModel[index];
                        return Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              children: [
                                Image.network(
                                  item.image ??
                                      'https://img.icons8.com/color/96/nike.png',
                                  width: 70,
                                  height: 70,
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(item.title ?? 'Product Name',
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      const SizedBox(height: 4),
                                      Text('Color: balck, Size: 9}',
                                          style: TextStyle(
                                              color: Colors.grey[600],
                                              fontSize: 12)),
                                      const SizedBox(height: 4),
                                      Text('\$${item.price}',
                                          style: const TextStyle(
                                              color: Colors.teal,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.delete_outline,
                                          color: Colors.grey),
                                      onPressed: () {},
                                    ),
                                    Row(
                                      children: [
                                        IconButton(
                                          icon: const Icon(Icons.remove,
                                              color: Colors.teal),
                                          onPressed: () {},
                                        ),
                                        // Text('0${item.quantity}'),
                                        IconButton(
                                          icon: const Icon(Icons.add,
                                              color: Colors.teal),
                                          onPressed: () {},
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    decoration: const BoxDecoration(color: Color(0xFFE6FAF9)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Total Price',
                                style: TextStyle(color: Colors.grey)),
                            const SizedBox(height: 4),
                            Text('\$${total.toStringAsFixed(2)}',
                                style: const TextStyle(
                                    color: Colors.teal,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16)),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              backgroundColor: Colors.teal),
                          child: const Text('Checkout',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,
          selectedItemColor: Colors.teal,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined), label: 'Categories'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: 'Wish'),
          ],
        ),
      );
    });
  }
}
