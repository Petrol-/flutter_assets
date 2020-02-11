import 'package:flutter_assets/core/repositories/preference_repository.dart';

class PreferenceService {
  final PreferenceRepository _preferenceRepository;

  PreferenceService(this._preferenceRepository);

  Future<bool> isFirstVisit() async {
    var lastVisit = await _preferenceRepository.fetchLastVisit();
    return lastVisit == null;
  }
}
