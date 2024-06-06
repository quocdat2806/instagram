import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
@immutable
class MainPageState extends Equatable{
  final  int currentIndexPage;
  const MainPageState({this.currentIndexPage = 0});
  MainPageState copyWith({
    int? currentIndexPage,
  }) {
    return MainPageState(
      currentIndexPage: currentIndexPage ?? this.currentIndexPage,
    );
  }
  @override
  List<Object?> get props => [
    currentIndexPage,
  ];
}