import 'package:flutter_ecommerce/utilities/assets.dart';

class Product {
  final String id;
  final String title;
  final int price;
  final String imgURl;
  final int discountValue;
  final String? brandName;
  final double? rate;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.imgURl,
    this.discountValue = 0,
    this.brandName = 'Other',
    this.rate,
  });
}

List<Product> dummyProducts = [
  Product(
    id: '1',
    title: 'Dorothy Perkins',
    price: 300,
    imgURl: AppAssists.productImage,
    brandName: 'Dorothy Perkins',
    discountValue: 50,
  ),
  Product(
    id: '1',
    title: 'Dorothy Perkins',
    price: 300,
    imgURl: AppAssists.productImage,
    brandName: 'Dorothy Perkins',
    discountValue: 50,
  ),
  Product(
    id: '1',
    title: 'Dorothy Perkins',
    price: 300,
    imgURl: AppAssists.productImage,
    brandName: 'Dorothy Perkins',
    discountValue: 50,
  ),
  Product(
    id: '1',
    title: 'Dorothy Perkins',
    price: 300,
    imgURl: AppAssists.productImage,
    brandName: 'Dorothy Perkins',
    discountValue: 50,
  ),
  Product(
    id: '1',
    title: 'Dorothy Perkins',
    price: 300,
    imgURl: AppAssists.productImage,
    brandName: 'Dorothy Perkins',
    discountValue: 50,
  ),
  Product(
    id: '1',
    title: 'Dorothy Perkins',
    price: 300,
    imgURl: AppAssists.productImage,
    brandName: 'Dorothy Perkins',
    discountValue: 50,
  ),
  Product(
    id: '1',
    title: 'Dorothy Perkins',
    price: 300,
    imgURl: AppAssists.productImage,
    brandName: 'Dorothy Perkins',
    discountValue: 50,
  ),
  Product(
    id: '1',
    title: 'Dorothy Perkins',
    price: 300,
    imgURl: AppAssists.productImage,
    brandName: 'Dorothy Perkins',
    discountValue: 50,
  ),
  Product(
    id: '1',
    title: 'Dorothy Perkins',
    price: 300,
    imgURl: AppAssists.productImage,
    brandName: 'Dorothy Perkins',
    discountValue: 50,
  ),
  Product(
    id: '1',
    title: 'Dorothy Perkins',
    price: 300,
    imgURl: AppAssists.productImage,
    brandName: 'Dorothy Perkins',
    discountValue: 50,
  ),
  Product(
    id: '1',
    title: 'Dorothy Perkins',
    price: 300,
    imgURl: AppAssists.productImage,
    brandName: 'Dorothy Perkins',
    discountValue: 50,
  ),
  Product(
    id: '1',
    title: 'Dorothy Perkins',
    price: 300,
    imgURl: AppAssists.productImage,
    brandName: 'Dorothy Perkins',
    discountValue: 50,
  ),
  Product(
    id: '1',
    title: 'Dorothy Perkins',
    price: 300,
    imgURl: AppAssists.productImage,
    brandName: 'Dorothy Perkins',
    discountValue: 50,
  ),
];
