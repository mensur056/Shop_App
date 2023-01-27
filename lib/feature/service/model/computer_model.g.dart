// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'computer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComputerModel _$ComputerModelFromJson(Map<String, dynamic> json) =>
    ComputerModel(
      compName: json['compName'] as String?,
      image: json['image'] as String?,
      price: json['price'] as int?,
    );

Map<String, dynamic> _$ComputerModelToJson(ComputerModel instance) =>
    <String, dynamic>{
      'compName': instance.compName,
      'image': instance.image,
      'price': instance.price,
    };
