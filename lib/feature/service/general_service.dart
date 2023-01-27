import 'package:dio/dio.dart';
import 'package:shop_app/feature/service/model/bag_model.dart';
import 'package:shop_app/feature/service/model/computer_model.dart';
import 'package:shop_app/feature/service/model/phone_model.dart';
import 'package:shop_app/feature/service/model/shoes_model.dart';

abstract class IHomeService {
  Future<List<PhoneModel>?> fetchPhoneProduct();
  Future<List<BagModel>?> fetchBagProduct();
  Future<List<ComputerModel>?> fetchComputerProduct();
  Future<List<ShoesModel>?> fetchShoesProduct();
}

class GeneralService implements IHomeService {
  Dio dio = Dio(BaseOptions(baseUrl: 'https://shopping-app-2238d-default-rtdb.firebaseio.com/'));

  @override
  Future<List<BagModel>?> fetchBagProduct() async {
    final response = await dio.get(ProjectRequestPath.bag.toPathCategory());
    if (response.statusCode == 200) {
      final data = response.data;
      if (data is List) {
        return data.map((e) => BagModel.fromJson(e)).toList();
      }
    }
    return null;
  }

  @override
  Future<List<ComputerModel>?> fetchComputerProduct() async {
    final response = await dio.get(ProjectRequestPath.computer.toPathCategory());
    if (response.statusCode == 200) {
      final data = response.data;
      if (data is List) {
        return data.map((e) => ComputerModel.fromJson(e)).toList();
      }
    }
    return null;
  }

  @override
  Future<List<ShoesModel>?> fetchShoesProduct() async {
    final response = await dio.get(ProjectRequestPath.shoes.toPathCategory());
    if (response.statusCode == 200) {
      final data = response.data;
      if (data is List) {
        return data.map((e) => ShoesModel.fromJson(e)).toList();
      }
    }
    return null;
  }

  @override
  Future<List<PhoneModel>?> fetchPhoneProduct() async {
    final response = await dio.get(ProjectRequestPath.phone.toPathCategory());
    if (response.statusCode == 200) {
      final data = response.data;
      if (data is List) {
        return data.map((e) => PhoneModel.fromJson(e)).toList();
      }
    }
    return null;
  }
}

enum ProjectRequestPath { bag, phone, computer, shoes }

extension ProjectRequestPathExtension on ProjectRequestPath {
  String toPathCategory() {
    return 'category/$name.json';
  }
}
