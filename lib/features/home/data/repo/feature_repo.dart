import 'package:dart_either/dart_either.dart';
import 'package:watch_it/core/network/remote/api_endpoint.dart';
import 'package:watch_it/core/network/remote/dio_helper.dart';
import 'package:watch_it/features/home/data/models/articals_model.dart';

class FeatureRepo {
    // parsing from json to model
  Future<Either<String, ArticalesModel>> getData() async {
    try {
      final res = await DioHelper.get(endpoint: everythingEndpoint);
      return Right(ArticalesModel.fromjson(res.data));
    } on Exception catch (e) {
      return Left(e.toString());
    }
  }
}
