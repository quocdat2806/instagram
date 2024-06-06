import 'package:instagram/core/domain/entity/food/food_entity.dart';

class HomeState {
  final List<FoodEntity>? listFoodEntity;
  final bool? isLoading;
  final String? errorMessage;

  HomeState({
    this.listFoodEntity,
    this.isLoading,
    this.errorMessage,
  });

  HomeState copyWith({
    List<FoodEntity>? listFoodEntity,
    bool? isLoading,
    String? errorMessage,
  }) {
    return HomeState(
      listFoodEntity: listFoodEntity ?? this.listFoodEntity,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
