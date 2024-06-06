import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instagram/core/domain/entity/food/food_entity.dart';
import 'package:instagram/core/domain/usecase/food_usecase/GetListFood.dart';
import 'package:instagram/features/home/presention/state/home_state.dart';

class HomeStateNotifier extends StateNotifier<HomeState> {
  final GetListFood? getListFoodUseCase;
  HomeStateNotifier({
     this.getListFoodUseCase,
  }) : super(HomeState(listFoodEntity: [], isLoading: false));

  Future< List<FoodEntity>?> loadTodos() async {
    state = state.copyWith(isLoading: true);
    try {
      List<FoodEntity>? todos = await getListFoodUseCase?.getListFood();
      state = state.copyWith(listFoodEntity: [], isLoading: false);
     return todos;
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
    return [];
  }
}