import 'package:dio/dio.dart';
import 'package:router_go/const/product_const.dart';
import 'package:router_go/model/product_model.dart';

class ProductService {
  final _dio = Dio();

  Future<List<ProductModel>> getProduct() async {
    final response = await _dio.get(productConst);
    if (response.statusCode == 200) {
      final data = response.data;
      return (data as List).map((json) => ProductModel.fromJson(json)).toList();
    }
    return [];
  }
}
