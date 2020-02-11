import 'package:flutter_assets/core/services/navigation_service.dart';
import 'package:mobx/mobx.dart';
part 'welcome_store.g.dart';

class WelcomeStore = WelcomeStoreBase with _$WelcomeStore;

abstract class WelcomeStoreBase with Store {
  final NavigationService _navigationService;

  WelcomeStoreBase(this._navigationService);

  @action
  void goToLoginPage() {
    _navigationService.navigateTo("login");
  }
}
