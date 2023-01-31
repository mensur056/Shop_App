import 'package:json_annotation/json_annotation.dart';
part 'tablet_model.g.dart';

@JsonSerializable()
class TabletModel {
  String? description;
  String? image;
  int? price;
  String? tabletName;

  TabletModel({this.description, this.image, this.price, this.tabletName});

  TabletModel.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    image = json['image'];
    price = json['price'];
    tabletName = json['tabletName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['description'] = description;
    data['image'] = image;
    data['price'] = price;
    data['tabletName'] = tabletName;
    return data;
  }
}
