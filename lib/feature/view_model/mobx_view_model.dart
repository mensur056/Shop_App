import 'package:mobx/mobx.dart';
import 'package:shop_app/feature/service/general_service.dart';
import 'package:shop_app/feature/service/model/computer_model.dart';
part 'mobx_view_model.g.dart';

class MobxViewModel = _MobxViewModelBase with _$MobxViewModel;

abstract class _MobxViewModelBase with Store {
  late IHomeService iHomeService;
  _MobxViewModelBase() {
    iHomeService = GeneralService();
  }
  @observable
  List<ComputerModel>? items;
  @observable
  bool isLoading = false;
  @action
  Future<void> fetchComputerItemFromApi() async {
    changeLoading();
    items = await iHomeService.fetchComputerProduct();
    changeLoading();
  }

  void changeLoading() {
    isLoading = !isLoading;
  }
}
