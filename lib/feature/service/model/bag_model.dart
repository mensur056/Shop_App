import 'package:json_annotation/json_annotation.dart';
part 'bag_model.g.dart';

@JsonSerializable()
class BagModel {
  String? bagName;
  String? image;
  int? price;

  BagModel({this.bagName, this.image, this.price});

  factory BagModel.fromJson(Map<String, dynamic> json) {
    return _$BagModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$BagModelToJson(this);
  }
}
