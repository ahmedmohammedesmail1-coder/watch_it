import 'package:dio/dio.dart';
import 'package:watch_it/core/network/remote/api_endpoint.dart';

class DioHelper {
  static Dio? dio;

  static void init() {
    if (dio != null) {
      return;
    }
    dio = Dio(
      BaseOptions(
        baseUrl: '$baseUrl$versionEndpoint',
      ),
    );
  }

// singlton
  static Dio getDio() {
    if (dio != null) {
      return dio!;
    }
    init();
    return dio!;
  }
  static Future<Response> get({required String endpoint}) async {
    Response res = await getDio().get(endpoint);
    return res;
  }



  
  // static Future<Either<String, Map<String, dynamic>>> get({
  //   required String path,
  //   Options? options,
  //   Map<String, dynamic>? queryParameters,
  //   String? search,
  // }) async {
  //   try {
  //     Response response = await getDio().get(path,
  //         options: Options(headers: {'Authorization': 'bearer $apiKey'}),
  //         queryParameters: {
  //           'q': 'bitcoin',
  //           'searchIn': 'title,content',
  //         });

  //     return Right(response.data);
  //   } on DioException catch (e) {
  //     return Left(e.response.toString());
  //   } catch (e) {
  //     return Left(e.toString());
  //   }
  // }
}
