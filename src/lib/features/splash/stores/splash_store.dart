import 'package:flutter_assets/core/services/navigation_service.dart';
import 'package:flutter_assets/core/stores/preference_store.dart';
import 'package:flutter_assets/features/welcome/routes.dart';
import 'package:mobx/mobx.dart';

part 'splash_store.g.dart';

class SplashStore = SplashStoreBase with _$SplashStore;

abstract class SplashStoreBase with Store {
  final NavigationService _navigationService;
  final PreferenceStore _preferenceStore;
  SplashStoreBase(this._navigationService, this._preferenceStore);

  @action
  Future load() async {
    var isFirstVisit = _preferenceStore.isFirstVisit();
    await Future.delayed(Duration(milliseconds: 1500));
    if (await isFirstVisit)
      _navigationService.navigateTo(WelcomeRoute, replace: true);

    //TODO Else navigate to Login/HomePage
  }
}
