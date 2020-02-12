import 'package:flutter_assets/core/services/navigation_service.dart';
import 'package:flutter_assets/features/home/routes.dart';
import 'package:mobx/mobx.dart';
part 'login_store.g.dart';

class LoginStore = LoginStoreBase with _$LoginStore;

abstract class LoginStoreBase with Store {
  final NavigationService _navigationService;

  LoginStoreBase(NavigationService navigationService)
      : _navigationService = navigationService,
        super();

  @observable
  bool isLoginIn = false;

  @action
  Future login() async {
    isLoginIn = true;
    await Future.delayed(Duration(seconds: 2));
    _navigationService.navigateToAndRemoveBelow(HomeRoute);
  }
}
