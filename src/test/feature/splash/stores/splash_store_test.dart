import 'package:flutter_assets/core/services/navigation_service.dart';
import 'package:flutter_assets/core/stores/preference_store.dart';
import 'package:flutter_assets/features/home/routes.dart';
import 'package:flutter_assets/features/splash/stores/splash_store.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNavigationService extends Mock implements NavigationService {}
class MockPreferenceStore extends Mock implements PreferenceStore{}
void main() {
  group('SplashStore', () {
    test('load: given is first visit, should navigate to home after loading', () async {
      final mockNavigationService = MockNavigationService();
      final mockPrefStore = MockPreferenceStore();
      when(mockPrefStore.isFirstVisit()).thenAnswer((realInvocation) => Future.value(true));
      final store = SplashStore(mockNavigationService, mockPrefStore);

      await store.load();
      
      verify(mockNavigationService.navigateTo(HomeRoute, replace: true));
    });
  });
}
