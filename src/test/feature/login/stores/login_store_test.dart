import 'package:flutter_assets/features/home/routes.dart';
import 'package:flutter_assets/features/login/stores/login_store.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../splash/stores/splash_store_test.dart';

void main() {
  group('LoginStore', () {
    test('should instanciate', () {
      final store = LoginStore(null);

      expect(store, isNotNull);
    });

    test("login should set isLoginIn to true", () async {
      var nav = MockNavigationService();
      final store = LoginStore(nav);

      await store.login();

      expect(store.isLoginIn, isTrue);
    });

    test('login should redirect to home', () async {
      var nav = MockNavigationService();
      final store = LoginStore(nav);

      await store.login();

      verify(nav.navigateToAndRemoveBelow(HomeRoute));
    });
  });
}
