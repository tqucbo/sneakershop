import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color color;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.color = const Color(0xffefeff2),
  });
}

List<Product> products = [
  Product(
    title: 'High Patent Bred',
    price: 291,
    image: 'assets/images/aj1_1.png',
    color: Colors.transparent,
  ),
  Product(
    title: 'Mid Barcelona',
    price: 164,
    image: 'assets/images/aj1_2.png',
    color: Colors.transparent,
  ),
  Product(
    title: 'High Gold Toe',
    price: 431,
    image: 'assets/images/aj1_3.png',
    color: const Color(0xFFad936e),
  ),
  Product(
    title: 'Mid Patent Black Gold',
    price: 303,
    image: 'assets/images/aj1_4.png',
    color: const Color(0xFF88663d),
  ),
  Product(
    title: 'Mid Carbon Fiber',
    price: 215,
    image: 'assets/images/aj1_5.png',
    color: Colors.transparent,
  ),
  Product(
    title: 'High Shattered Backboard 3.0',
    price: 414,
    image: 'assets/images/aj1_6.png',
    color: const Color(0xFFdc5302),
  ),
  Product(
    title: 'High Patent Fearless',
    price: 389,
    image: 'assets/images/aj1_7.png',
    color: Colors.transparent,
  ),
];
