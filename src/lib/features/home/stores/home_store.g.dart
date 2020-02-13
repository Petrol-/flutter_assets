// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStoreBase, Store {
  final _$selectedPagePositionAtom =
      Atom(name: '_HomeStoreBase.selectedPagePosition');

  @override
  int get selectedPagePosition {
    _$selectedPagePositionAtom.context
        .enforceReadPolicy(_$selectedPagePositionAtom);
    _$selectedPagePositionAtom.reportObserved();
    return super.selectedPagePosition;
  }

  @override
  set selectedPagePosition(int value) {
    _$selectedPagePositionAtom.context.conditionallyRunInAction(() {
      super.selectedPagePosition = value;
      _$selectedPagePositionAtom.reportChanged();
    }, _$selectedPagePositionAtom,
        name: '${_$selectedPagePositionAtom.name}_set');
  }

  final _$_HomeStoreBaseActionController =
      ActionController(name: '_HomeStoreBase');

  @override
  void selectPage(int position) {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction();
    try {
      return super.selectPage(position);
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }
}
