import 'package:instagram/core/domain/entity/food/food_entity.dart';

abstract class FoodResponsitory {
  Future<List<FoodEntity>> getListFood();
  Future<void> addFood(FoodEntity todo);
  Future<void> updateTodoStatus(String id, bool isCompleted);
  Future<void> deleteFood(String id);
}