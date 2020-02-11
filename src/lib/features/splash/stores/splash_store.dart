import 'package:flutter_assets/core/services/navigation_service.dart';
import 'package:mobx/mobx.dart';

part 'splash_store.g.dart';

class SplashStore = SplashStoreBase with _$SplashStore;

abstract class SplashStoreBase with Store {
  final NavigationService _navigationService;

  SplashStoreBase(this._navigationService);

  @action
  Future load() async {
    await  Future.delayed(Duration(seconds: 1));
    _navigationService.navigateTo("home", replace: true);
  }
}
