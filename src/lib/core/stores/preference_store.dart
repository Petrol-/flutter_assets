import 'package:flutter_assets/core/repositories/preference_repository.dart';
import 'package:mobx/mobx.dart';
part 'preference_store.g.dart';

class PreferenceStore = _PreferenceStoreBase with _$PreferenceStore;

abstract class _PreferenceStoreBase with Store {
  final PreferenceRepository _preferenceRepository;

  _PreferenceStoreBase(this._preferenceRepository);

  Future<bool> isFirstVisit() async {
    var lastVisit = await _preferenceRepository.fetchLastVisit();
    return lastVisit == null;
  }
}
