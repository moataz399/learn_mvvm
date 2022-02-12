import 'package:complete_advanced_flutter/app/constant.dart';
import 'package:complete_advanced_flutter/domain/response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: Constant.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseurl}) = _AppServiceClient ;

  @POST('/customers/login')
  Future<AuthResponse> login();
}
