import 'package:json_annotation/json_annotation.dart';
part 'computer_model.g.dart';

@JsonSerializable()
class ComputerModel {
  String? compName;
  String? image;
  int? price;

  ComputerModel({this.compName, this.image, this.price});

  factory ComputerModel.fromJson(Map<String, dynamic> json) {
    return _$ComputerModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ComputerModelToJson(this);
  }
}
