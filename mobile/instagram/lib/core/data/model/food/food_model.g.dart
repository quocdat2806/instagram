// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodModel _$FoodModelFromJson(Map<String, dynamic> json) => FoodModel(
      name: json['name'] as String?,
      image: json['image'] as String?,
      discountPercent: (json['discountPercent'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FoodModelToJson(FoodModel instance) => <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'discountPercent': instance.discountPercent,
    };
