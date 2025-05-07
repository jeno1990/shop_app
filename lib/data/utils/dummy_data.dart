import 'package:flutter/material.dart';
import 'package:shop_app/data/models/brands.dart';
import 'package:shop_app/data/models/category_data.dart';
import 'package:shop_app/data/models/home_screen_slider_data.dart';
import 'package:shop_app/data/models/products.dart';
import 'package:shop_app/data/models/products_details.dart';

List<SliderData> dummy_slider_data = [
  SliderData(
      createdAt: DateTime.now().toString(),
      id: 1,
      image:
          "https://www.cariuma.com/cdn/shop/files/Embedded_Nav_V2_a7559940-0ff2-4c4a-9a6c-e3efb3e9a9f5.jpg?crop=center&height=760&v=1744791826&width=610",
      productId: 1,
      updatedAt: DateTime.now().toString(),
      shortDes: "short description 1",
      title: "Happy Easter Special Deal 30% Off"),
  SliderData(
      createdAt: DateTime.now().toString(),
      id: 1,
      image:
          "https://cdn.pixabay.com/photo/2016/11/19/18/06/feet-1840619_1280.jpg",
      productId: 1,
      updatedAt: DateTime.now().toString(),
      shortDes: "short description 1",
      title: "Happy Easter Special Deal 30% Off"),
  SliderData(
      createdAt: DateTime.now().toString(),
      id: 1,
      image:
          "https://media.istockphoto.com/id/531912454/photo/female-hands-lacing-running-shoes-closeup.jpg?s=612x612&w=0&k=20&c=U47vJHb8I7JW2lMpad7hwhE4OmITpLdHBAGAO2j2HwE=",
      productId: 1,
      updatedAt: DateTime.now().toString(),
      shortDes: "short description 1",
      title: "Happy Easter Special Deal 30% Off"),
];

List<Product> dummy_product_data = [
  Product(
    id: 1,
    title: "Calvin Klein",
    shortDes:
        "Amazing product with great features. Perfect for everyday comfort and style.",
    price: "46.99",
    discount: 10,
    discountPrice: "36.99",
    image:
        "https://www.cariuma.com/cdn/shop/files/Embedded_Nav_V2_a7559940-0ff2-4c4a-9a6c-e3efb3e9a9f5.jpg?crop=center&height=760&v=1744791826&width=610",
    stock: 1,
    star: 4.5,
    remark: "ramark",
    categoryId: 1,
    brandId: 1,
    createdAt: DateTime.now().toString(),
    updatedAt: DateTime.now().toString(),
    brand: Brand(
      brandName: "Calvin Klein",
    ),
    // category : "",
  ),
  Product(
    id: 1,
    title: "Nike",
    shortDes:
        "Amazing product with great features. Perfect for everyday comfort and style.",
    price: "46.99",
    discount: 10,
    discountPrice: "36.99",
    image:
        "https://row.barkershoes.com/cdn/shop/collections/c9de6e9bd9195ba8b4ce02dcc7138b6a_600x375_crop_center.jpg?v=1632492625",
    stock: 1,
    star: 4.5,
    remark: "ramark",
    categoryId: 1,
    brandId: 1,
    createdAt: DateTime.now().toString(),
    updatedAt: DateTime.now().toString(),
    brand: Brand(
      brandName: "Calvin Klein",
    ),
    // category : "",
  ),
  Product(
    id: 1,
    title: "Sport Shoes",
    shortDes:
        "Amazing product with great features. Perfect for everyday comfort and style.",
    price: "46.99",
    discount: 10,
    discountPrice: "36.99",
    image:
        "https://media.istockphoto.com/id/531912454/photo/female-hands-lacing-running-shoes-closeup.jpg?s=612x612&w=0&k=20&c=U47vJHb8I7JW2lMpad7hwhE4OmITpLdHBAGAO2j2HwE=",
    stock: 1,
    star: 4.5,
    remark: "ramark",
    categoryId: 1,
    brandId: 1,
    createdAt: DateTime.now().toString(),
    updatedAt: DateTime.now().toString(),
    brand: Brand(
      brandName: "Calvin Klein",
    ),
    // category : "",
  )
];
List<CategoryData> dummy_category_data = [
  CategoryData(
      id: 1,
      categoryName: "Electroncs",
      categoryImg:
          "https://www.cariuma.com/cdn/shop/files/Embedded_Nav_V2_a7559940-0ff2-4c4a-9a6c-e3efb3e9a9f5.jpg?crop=center&height=760&v=1744791826&width=610",
      createdAt: DateTime.now().toString(),
      updatedAt: DateTime.now().toString(),
      icon: Icons.electrical_services_sharp),
  CategoryData(
      id: 1,
      categoryName: "Clothing",
      categoryImg:
          "https://www.cariuma.com/cdn/shop/files/Embedded_Nav_V2_a7559940-0ff2-4c4a-9a6c-e3efb3e9a9f5.jpg?crop=center&height=760&v=1744791826&width=610",
      createdAt: DateTime.now().toString(),
      updatedAt: DateTime.now().toString(),
      icon: Icons.checkroom_outlined),
  CategoryData(
      id: 1,
      categoryName: "Food",
      categoryImg:
          "https://www.cariuma.com/cdn/shop/files/Embedded_Nav_V2_a7559940-0ff2-4c4a-9a6c-e3efb3e9a9f5.jpg?crop=center&height=760&v=1744791826&width=610",
      createdAt: DateTime.now().toString(),
      updatedAt: DateTime.now().toString(),
      icon: Icons.food_bank_outlined),
  CategoryData(
      id: 1,
      categoryName: "Furniture",
      categoryImg:
          "https://www.cariuma.com/cdn/shop/files/Embedded_Nav_V2_a7559940-0ff2-4c4a-9a6c-e3efb3e9a9f5.jpg?crop=center&height=760&v=1744791826&width=610",
      createdAt: DateTime.now().toString(),
      updatedAt: DateTime.now().toString(),
      icon: Icons.chair_outlined),
];
