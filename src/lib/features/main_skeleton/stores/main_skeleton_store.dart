import 'package:mobx/mobx.dart';

part 'main_skeleton_store.g.dart';

class MainSkeletonStore = _MainSkeletonStoreBase with _$MainSkeletonStore;

abstract class _MainSkeletonStoreBase with Store {
  @observable
  var selectedPagePosition = 0;

  @action
  int selectPage(int position) {
    var oldPosition = selectedPagePosition;
    selectedPagePosition = position;
    return oldPosition;
  }
}
