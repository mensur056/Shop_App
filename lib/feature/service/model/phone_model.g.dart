// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phone_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhoneModel _$PhoneModelFromJson(Map<String, dynamic> json) => PhoneModel(
      description: json['description'] as String?,
      image: json['image'] as String?,
      phoneName: json['phoneName'] as String?,
      price: json['price'] as int?,
    );

Map<String, dynamic> _$PhoneModelToJson(PhoneModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'image': instance.image,
      'phoneName': instance.phoneName,
      'price': instance.price,
    };
