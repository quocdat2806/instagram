import 'package:instagram/core/data/model/food/food_model.dart';

abstract class FoodDatasource {
  Future<List<FoodModel>> getTodos();
  Future<void> addTodo(FoodModel todo);
  Future<void> updateTodoStatus(String id, bool isCompleted);
  Future<void> deleteTodo(String id);
}