import 'package:mobx/mobx.dart';
import 'package:shop_app/feature/service/general_service.dart';
part 'mobx_view_model.g.dart';

class MobxViewModel = _MobxViewModelBase with _$MobxViewModel;

abstract class _MobxViewModelBase with Store {
  late IHomeService iHomeService;
  _MobxViewModelBase() {
    iHomeService = GeneralService();
  }
  @observable
  List? items;
  @action
  Future<void> fetchBagItemFromApi() async {
    items = await iHomeService.fetchBagProduct();
  }

  @action
  Future<void> fetchPhoneItemFromApi() async {
    items = await iHomeService.fetchPhoneProduct();
  }

  @action
  Future<void> fetchShoesItemFromApi() async {
    items = await iHomeService.fetchShoesProduct();
  }

  @action
  Future<void> fetchComputerItemFromApi() async {
    items = await iHomeService.fetchComputerProduct();
  }
}
