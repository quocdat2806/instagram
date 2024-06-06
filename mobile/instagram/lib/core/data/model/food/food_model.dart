import 'package:instagram/core/domain/entity/food/food_entity.dart';
import 'package:json_annotation/json_annotation.dart';
part 'food_model.g.dart';
@JsonSerializable()
class FoodModel extends FoodEntity {
  late final String? name ;
  late final String? image ;
  late final int? discountPercent;
  FoodModel({
    this.name,
    this.image,
    this.discountPercent,
  }):super();
  factory FoodModel.fromJson(Map<String, dynamic> json) => _$FoodModelFromJson(json);
  Map<String, dynamic> toJson() => _$FoodModelToJson(this);
}