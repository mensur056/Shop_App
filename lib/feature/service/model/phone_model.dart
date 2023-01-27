class PhoneModel {
  String? description;
  String? image;
  String? phoneName;
  int? price;

  PhoneModel({this.description, this.image, this.phoneName, this.price});

  PhoneModel.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    image = json['image'];
    phoneName = json['phone_name'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['description'] = description;
    data['image'] = image;
    data['phone_name'] = phoneName;
    data['price'] = price;
    return data;
  }
}
