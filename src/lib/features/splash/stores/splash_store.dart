import 'package:flutter_assets/core/services/navigation_service.dart';
import 'package:flutter_assets/features/home/routes.dart';
import 'package:mobx/mobx.dart';

part 'splash_store.g.dart';

class SplashStore = SplashStoreBase with _$SplashStore;

abstract class SplashStoreBase with Store {
  final NavigationService _navigationService;

  SplashStoreBase(this._navigationService);

  @action
  Future load() async {
    await  Future.delayed(Duration(milliseconds: 1500));
    _navigationService.navigateTo(HomeRoute, replace: true);
  }
}
