import 'package:flutter/material.dart';
import 'package:flutter_registration/model/product.dart';

class CartProduct extends StatelessWidget {
  const CartProduct({super.key, required this.productId});
  final int productId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          productList[productId].name,
          style: TextStyle(fontSize: 20, color: Colors.red[900]),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8) ,
        children: <Widget>[
          Image.network(productList[productId].pathPhoto),
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            child: Text(
              'Артикул: ${(productId + 1).toString()}',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            child: Text(
              'Полное название продукта: ${productList[productId].name}',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            child: Text(
              'Описание товара: ${productList[productId].description}',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            child: Text(
              'Цена товара: ${productList[productId].price.toString()} рублей',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}