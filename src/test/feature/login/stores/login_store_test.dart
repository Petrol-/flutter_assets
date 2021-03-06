import 'package:flutter_assets/core/services/navigation_service.dart';
import 'package:flutter_assets/features/login/stores/login_store.dart';
import 'package:flutter_assets/features/main_skeleton/routes.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNavigationService extends Mock implements NavigationService {}

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

    test('login should redirect to main', () async {
      var nav = MockNavigationService();
      final store = LoginStore(nav);

      await store.login();

      verify(nav.navigateToAndRemoveBelow(MainRoute));
    });
  });
}
