import 'package:dio/dio.dart';
import 'package:router/const/dragon_ball_const.dart';
import 'package:router/model/dragon_ball_model.dart';

class DragonBallService {
  final _dio = Dio();

  Future<List<DragonBallModel>> getDragonBall() async {
    final response = await _dio.get(dbzConst);

    if (response.statusCode == 200) {
      final data = response.data;
      return data.map((json) => DragonBallModel.fromJson(json));
    }

    return [];
  }
}