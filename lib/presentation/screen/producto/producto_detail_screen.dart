import 'package:flutter/material.dart';
import 'package:router/presentation/widget/card_widget.dart';
import 'package:router/service/product_service.dart';

class ProductoDetailScreen extends StatefulWidget {
  final int id;
  const ProductoDetailScreen({super.key, required this.id});

  @override
  State<ProductoDetailScreen> createState() => _ProductoDetailScreenState();
}

class _ProductoDetailScreenState extends State<ProductoDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detalle del producto ${widget.id}")),
      body: FutureBuilder(
        future: ProductService().getProductUnico(widget.id),
        builder: (_, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("No disponible"));
          } else if (snapshot.hasData) {
            final data = snapshot.data;

            if (data == null) {
              return Text("Producto no encontrado");
            } else {
              return CardWidget(product: data);
            }
          } else {
            return Text("Data not found");
          }
        },
      ),
    );
  }
}
