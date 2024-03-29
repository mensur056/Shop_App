import 'package:dio/dio.dart';
import 'package:shop_app/core/extensions/service_extension.dart';
import 'package:shop_app/feature/service/model/bag_model.dart';
import 'package:shop_app/feature/service/model/computer_model.dart';
import 'package:shop_app/feature/service/model/phone_model.dart';
import 'package:shop_app/feature/service/model/tablet_model.dart';

abstract class IHomeService {
  Future<List<PhoneModel>?> fetchPhoneProduct();
  Future<List<BagModel>?> fetchBagProduct();
  Future<List<ComputerModel>?> fetchComputerProduct();
  Future<List<TabletModel>?> fetchShoesProduct();
}

class GeneralService implements IHomeService {
  Dio dio = Dio(BaseOptions(baseUrl: 'https://shopping-app-2238d-default-rtdb.firebaseio.com/'));

  @override
  Future<List<BagModel>?> fetchBagProduct() async {
    final response = await dio.get(ProjectRequestPath.computer.toPathCategory());
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
      print(data);
      if (data is List) {
        return data.map((e) => ComputerModel.fromJson(e)).toList();
      }
    }
    return null;
  }

  @override
  Future<List<TabletModel>?> fetchShoesProduct() async {
    final response = await dio.get(ProjectRequestPath.shoes.toPathCategory());
    if (response.statusCode == 200) {
      final data = response.data;
      if (data is List) {
        return data.map((e) => TabletModel.fromJson(e)).toList();
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
