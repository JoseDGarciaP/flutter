import 'package:flutter/material.dart';
import 'package:router/config/router/router.dart';
import 'package:router/model/product_model.dart';
import 'package:router/service/product_service.dart';

class ProductoScreen extends StatelessWidget {
  const ProductoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ProductService().getProduct(),
      builder: (_, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text("No disponible"));
        }else if(snapshot.hasData){
          final List<ProductModel> data = snapshot.data!;

          return ListView.builder(
            itemCount: data.length,
            itemBuilder: ( _ , index) {
              return ListTile(
                onTap: () => {router.push( '/product/${data[index].id}')},
                title: Text(data[index].title),
                subtitle: Text(data[index].description),
              );
            },
          );
        }else{
          return Text("Data not found");
        }
      },
    );
  }
}
