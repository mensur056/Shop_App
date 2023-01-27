// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shoes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShoesModel _$ShoesModelFromJson(Map<String, dynamic> json) => ShoesModel(
      image: json['image'] as String?,
      price: json['price'] as int?,
      shoesName: json['shoesName'] as String?,
    );

Map<String, dynamic> _$ShoesModelToJson(ShoesModel instance) =>
    <String, dynamic>{
      'image': instance.image,
      'price': instance.price,
      'shoesName': instance.shoesName,
    };
