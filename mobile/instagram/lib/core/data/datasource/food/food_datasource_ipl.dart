
import 'package:instagram/core/data/datasource/food/food_datasource.dart';
import 'package:instagram/core/data/model/food/food_model.dart';
import 'package:instagram/core/network/api_client.dart';

class FoodDataSourceImpl implements FoodDatasource {
  final ApiClient apiClient;
  FoodDataSourceImpl({required this.apiClient});
  @override
  Future<void> addTodo(FoodModel todo) {
    throw UnimplementedError();
  }

  @override
  Future<void> deleteTodo(String id) {
    // TODO: implement deleteTodo
    throw UnimplementedError();
  }

  @override
  Future<List<FoodModel>> getTodos() {
    // TODO: implement getTodos
    throw UnimplementedError();
  }

  @override
  Future<void> updateTodoStatus(String id, bool isCompleted) {
    // TODO: implement updateTodoStatus
    throw UnimplementedError();
  }

}
