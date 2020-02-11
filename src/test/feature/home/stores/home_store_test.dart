import 'package:flutter_assets/features/home/stores/home_store.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HomeStore', () {
    test('should instantiate', (){
      final store = HomeStore();
      expect(store, isNotNull);
    });
  });
}
