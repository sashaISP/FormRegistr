import 'package:flutter/material.dart';
import 'package:flutter_registration/model/product.dart';
import '../pages/cart_product.dart';

class ListProduct extends StatelessWidget {
  final int idProduct;
  const ListProduct({super.key, required this.idProduct});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.all(Radius.circular(16),
        ),
      ),
      child: Column(
        children: <Widget>[
          Image.network(productList[idProduct].pathPhoto,
            fit: BoxFit.scaleDown,
          ),
          Text(productList[idProduct].name,
            style: const TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          Text('${productList[idProduct].price} рублей',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          ElevatedButton(
            child: const Text('Подробнее'),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CartProduct(
                productId: idProduct,
              ),
              ),
              );
            },
          ),
        ],
      ),
    );
  }
}