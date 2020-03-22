// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStoreBase, Store {
  final _$countLoadedAtom = Atom(name: '_HomeStoreBase.countLoaded');

  @override
  int get countLoaded {
    _$countLoadedAtom.context.enforceReadPolicy(_$countLoadedAtom);
    _$countLoadedAtom.reportObserved();
    return super.countLoaded;
  }

  @override
  set countLoaded(int value) {
    _$countLoadedAtom.context.conditionallyRunInAction(() {
      super.countLoaded = value;
      _$countLoadedAtom.reportChanged();
    }, _$countLoadedAtom, name: '${_$countLoadedAtom.name}_set');
  }

  final _$_HomeStoreBaseActionController =
      ActionController(name: '_HomeStoreBase');

  @override
  void load() {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction();
    try {
      return super.load();
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }
}
