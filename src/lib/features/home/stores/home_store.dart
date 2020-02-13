import 'package:mobx/mobx.dart';
part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  @observable
  var selectedPagePosition = 0;

  @action
  int selectPage(int position) {
    var oldPosition = selectedPagePosition;
    selectedPagePosition = position;
    return oldPosition;
  }
}
