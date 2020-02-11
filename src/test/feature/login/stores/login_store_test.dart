import 'package:flutter_assets/features/login/stores/login_store.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LoginStore', () {
    test('should instanciate', () {
      final store = LoginStore();

      expect(store, isNotNull);
    });
  });
}
