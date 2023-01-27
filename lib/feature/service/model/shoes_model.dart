class ShoesModel {
  String? image;
  int? price;
  String? shoesName;

  ShoesModel({this.image, this.price, this.shoesName});

  ShoesModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    price = json['price'];
    shoesName = json['shoes_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['price'] = price;
    data['shoes_name'] = shoesName;
    return data;
  }
}
