import 'package:dio/dio.dart';
import 'package:router/const/product_const.dart';
import 'package:router/model/product_model.dart';

class ProductService {
  final _dio = Dio();

  Future<List<ProductModel>> getProduct() async {
    final response = await _dio.get(productConst);

    if (response.statusCode == 200) {
      final List<dynamic> data = response.data;
      return data.map((json) => ProductModel.fromJson(json)).toList();
    }

    return [];
  }

  Future<ProductModel?> getProductUnico(int id) async {
    final response = await _dio.get("$productConst/$id");
    if (response.statusCode == 200) {
      return ProductModel.fromJson(response.data);
    }

    return null;
  }
}
