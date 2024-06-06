import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instagram/features/main/presention/state/main_page_state.dart';

class MainPageStateNotifier extends StateNotifier<MainPageState> {
  MainPageStateNotifier():super(const MainPageState(currentIndexPage: 0));
  void handleSwitchTab({int currentIndexTab = 0}){
    state = state.copyWith(currentIndexPage: currentIndexTab);

  }
}