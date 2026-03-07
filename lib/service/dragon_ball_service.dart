import 'package:dio/dio.dart';
import 'package:router_go/const/dragon_ball_const.dart';
import 'package:router_go/model/dragon_ball_model.dart';

class DragonBallService {
  final _dio = Dio();

  Future<List<DragonBallModel>> getDragonBall() async {
    final response = await _dio.get(dragonBallConst);
    if (response.statusCode == 200) {
      final data = response.data;

      return data.map((json) => DragonBallModel.fromJson(json as Map<String, dynamic>));
    }
    return [];
  }
}
