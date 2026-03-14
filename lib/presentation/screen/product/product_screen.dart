import 'package:flutter/material.dart';
import 'package:router/model/product_model.dart';
import 'package:router/service/product_service.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<ProductModel> products = [];

  @override
  void initState() {
    super.initState();
    getProductos();
  }

  void getProductos() async {
    final List<ProductModel> temporal = await ProductService().getProduct();
    setState(() {
      products = temporal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        //final product = products[index];
        return ListTile(
          title: Text(products[index].title),
          subtitle: Text(products[index].description),
        );
      },
    );
  }
}
