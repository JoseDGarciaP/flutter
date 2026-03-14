import 'package:flutter/material.dart';
import 'package:router/model/product_model.dart';

class CardWidget extends StatelessWidget {
  final ProductModel product;
  const CardWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Text(product.title);

  }
}
