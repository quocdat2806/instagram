// data/repositories/food_repository_impl.dart
import 'package:instagram/core/domain/entity/food/food_entity.dart';
import 'package:instagram/core/domain/responsitory/food/food_responsitory.dart';

class FoodRepositoryImpl implements FoodResponsitory {
  @override
  Future<void> addFood(FoodEntity todo) {
    // TODO: implement addFood
    throw UnimplementedError();
  }

  @override
  Future<void> deleteFood(String id) {
    // TODO: implement deleteFood
    throw UnimplementedError();
  }

  @override
  Future<List<FoodEntity>> getListFood() {
    // TODO: implement getListFood
    throw UnimplementedError();
  }

  @override
  Future<void> updateTodoStatus(String id, bool isCompleted) {
    // TODO: implement updateTodoStatus
    throw UnimplementedError();
  }

 
}