// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bag_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BagModel _$BagModelFromJson(Map<String, dynamic> json) => BagModel(
      bagName: json['bagName'] as String?,
      image: json['image'] as String?,
      price: json['price'] as int?,
    );

Map<String, dynamic> _$BagModelToJson(BagModel instance) => <String, dynamic>{
      'bagName': instance.bagName,
      'image': instance.image,
      'price': instance.price,
    };
