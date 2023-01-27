class ComputerModel {
  String? compName;
  String? image;
  int? price;

  ComputerModel({this.compName, this.image, this.price});

  ComputerModel.fromJson(Map<String, dynamic> json) {
    compName = json['comp_name'];
    image = json['image'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['comp_name'] = compName;
    data['image'] = image;
    data['price'] = price;
    return data;
  }
}
