import 'package:flutter/material.dart';
import 'package:router/model/product_model.dart';

class CardWidget extends StatelessWidget {
  final ProductModel product;
  const CardWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Text(product.title);

    //La idea es hacer una card personalizada para mostrar el producto, pero por ahora solo muestro el titulo
  }
}
