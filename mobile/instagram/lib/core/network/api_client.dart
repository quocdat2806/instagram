import 'package:dio/dio.dart';
import 'package:instagram/core/data/model/food/food_model.dart';
import 'package:retrofit/retrofit.dart';
part 'api_client.g.dart';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com")
abstract class ApiClient {
  factory ApiClient(Dio dio) = _ApiClient;
  @GET("/posts")
  Future<List<FoodModel>> getPosts();
}
