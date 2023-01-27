import 'package:json_annotation/json_annotation.dart';
part 'shoes_model.g.dart';

@JsonSerializable()
class ShoesModel {
  String? image;
  int? price;
  String? shoesName;

  ShoesModel({this.image, this.price, this.shoesName});

  factory ShoesModel.fromJson(Map<String, dynamic> json) {
    return _$ShoesModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ShoesModelToJson(this);
  }
}
