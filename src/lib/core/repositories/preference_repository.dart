import 'dart:core';

class PreferenceRepository {
  Future<DateTime> fetchLastVisit() {
    return Future.value(null);
  }

  Future writeLastVisit(DateTime date) {
    throw UnimplementedError();
  }
}
