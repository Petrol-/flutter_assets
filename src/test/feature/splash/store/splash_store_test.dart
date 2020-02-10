import 'package:flutter_assets/core/services/navigation_service.dart';
import 'package:flutter_assets/features/splash/stores/splash_store.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNavigationService extends Mock implements NavigationService {}

void main() {
  group('SplashStore', () {
    test('should navigate to home after loading', () async {
      final mockNavigationService = MockNavigationService();
      final store = SplashStore(mockNavigationService);

      await store.load();
      
      verify(mockNavigationService.navigateTo("home"));
    });
  });
}
