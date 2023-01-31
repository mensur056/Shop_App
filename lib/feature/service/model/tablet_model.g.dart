// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tablet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TabletModel _$TabletModelFromJson(Map<String, dynamic> json) => TabletModel(
      description: json['description'] as String?,
      image: json['image'] as String?,
      price: json['price'] as int?,
      tabletName: json['tabletName'] as String?,
    );

Map<String, dynamic> _$TabletModelToJson(TabletModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'image': instance.image,
      'price': instance.price,
      'tabletName': instance.tabletName,
    };
