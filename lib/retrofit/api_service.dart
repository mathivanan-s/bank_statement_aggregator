import 'package:bank_statement_aggregator/model/UserModel.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: 'https://reqres.in/')
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET('api/users')
  Future<UserModel> fetchBSAModel(@Query('page') String page);
}
