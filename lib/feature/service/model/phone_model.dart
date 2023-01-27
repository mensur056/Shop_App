import 'package:json_annotation/json_annotation.dart';
part 'phone_model.g.dart';

@JsonSerializable()
class PhoneModel {
  String? description;
  String? image;
  String? phoneName;
  int? price;

  PhoneModel({this.description, this.image, this.phoneName, this.price});

  factory PhoneModel.fromJson(Map<String, dynamic> json) {
    return _$PhoneModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PhoneModelToJson(this);
  }
}
