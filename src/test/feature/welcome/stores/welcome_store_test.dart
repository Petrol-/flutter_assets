import 'package:flutter_assets/core/services/navigation_service.dart';
import 'package:flutter_assets/features/welcome/stores/welcome_store.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNavigationService extends Mock implements NavigationService {}

void main() {
  group('WelcomeStore', () {
    test('should instantiate', () {
      final store = WelcomeStore(null);
      expect(store, isNotNull);
    });

    test('gotoToLoginPage, should navigate to login', () {
      final mockNav = MockNavigationService();
      final store = WelcomeStore(mockNav);

      store.goToLoginPage();

      verify(mockNav.navigateTo("login"));
    });
  });
}
