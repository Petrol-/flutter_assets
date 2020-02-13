import 'package:flutter_assets/features/home/stores/home_store.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HomeStore', () {
    test('should instantiate', () {
      final store = HomeStore();
      expect(store, isNotNull);
    });

    test('default selectedPagePosition should be 0', () {
      final store = HomeStore();
      expect(store.selectedPagePosition, isZero);
    });

    test(
        'selectedPagePosition should be 1 when selectPage() is called with value 1',
        () {
      final store = HomeStore();

      store.selectPage(1);

      expect(store.selectedPagePosition, 1);
    });

    test('given selectPagePosition 0,  selectPage with value 1 should return 0',
        () {
      final store = HomeStore();
      store.selectedPagePosition = 0;

      var oldPosition = store.selectPage(1);

      expect(oldPosition, 0);
    });
  });
}
