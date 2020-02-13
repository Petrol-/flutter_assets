// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_skeleton_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MainSkeletonStore on _MainSkeletonStoreBase, Store {
  final _$selectedPagePositionAtom =
      Atom(name: '_MainSkeletonStoreBase.selectedPagePosition');

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

  final _$_MainSkeletonStoreBaseActionController =
      ActionController(name: '_MainSkeletonStoreBase');

  @override
  int selectPage(int position) {
    final _$actionInfo = _$_MainSkeletonStoreBaseActionController.startAction();
    try {
      return super.selectPage(position);
    } finally {
      _$_MainSkeletonStoreBaseActionController.endAction(_$actionInfo);
    }
  }
}
