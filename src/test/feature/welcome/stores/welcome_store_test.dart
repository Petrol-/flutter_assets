import 'package:flutter_assets/features/welcome/stores/welcome_store.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('WelcomeStore', () {
    test('should instantiate', () {
      final store = WelcomeStore(null);
      expect(store, isNotNull);
    });
  });
}
