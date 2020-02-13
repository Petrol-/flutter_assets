import 'package:flutter_assets/features/main_skeleton/stores/main_skeleton_store.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MainSkeletonStore', () {
    test('should instantiate', () {
      final store = MainSkeletonStore();
      expect(store, isNotNull);
    });

    
    test('default selectedPagePosition should be 0', () {
      final store = MainSkeletonStore();
      expect(store.selectedPagePosition, isZero);
    });

    test(
        'selectedPagePosition should be 1 when selectPage() is called with value 1',
        () {
      final store = MainSkeletonStore();

      store.selectPage(1);

      expect(store.selectedPagePosition, 1);
    });

    test('given selectPagePosition 0,  selectPage with value 1 should return 0',
        () {
      final store = MainSkeletonStore();
      store.selectedPagePosition = 0;

      var oldPosition = store.selectPage(1);

      expect(oldPosition, 0);
    });
  });
}
