import 'package:flutter/material.dart';
import 'package:flutter_registration/model/product.dart';
import 'package:flutter_registration/components/product_list.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: productList.length,
            itemBuilder: (BuildContext context, int index) {
              return ListProduct(
                idProduct: productList[index].id,
              );
            },
        ),
         appBar: AppBar(title: const Text('Кроссовки'),),
    );
  }
}