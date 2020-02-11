import 'package:flutter_assets/core/repositories/preference_repository.dart';
import 'package:flutter_assets/core/stores/preference_store.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockPreferenceRepository extends Mock implements PreferenceRepository {}

void main() {
  group('PreferenceStore', () {
    test('should instanciate', () {
      final store = PreferenceStore(null);
      expect(store, isNotNull);
    });

    test('isFirstVisit: given null date, should return true', () async {
      final mockRepo = MockPreferenceRepository();
      when(mockRepo.fetchLastVisit()).thenAnswer((realInvocation) => null);

      final result = await PreferenceStore(mockRepo).isFirstVisit();

      expect(result, isTrue);
    });

    test('isFirstVisit: given valid date, should return false', () async {
      final mockRepo = MockPreferenceRepository();
      when(mockRepo.fetchLastVisit())
          .thenAnswer((realInvocation) => Future.value(DateTime.now()));

      final result= await PreferenceStore(mockRepo).isFirstVisit();

      expect(result, isFalse);
    });
  });
}
