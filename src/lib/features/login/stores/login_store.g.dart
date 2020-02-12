// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginStore on LoginStoreBase, Store {
  final _$isLoginInAtom = Atom(name: 'LoginStoreBase.isLoginIn');

  @override
  bool get isLoginIn {
    _$isLoginInAtom.context.enforceReadPolicy(_$isLoginInAtom);
    _$isLoginInAtom.reportObserved();
    return super.isLoginIn;
  }

  @override
  set isLoginIn(bool value) {
    _$isLoginInAtom.context.conditionallyRunInAction(() {
      super.isLoginIn = value;
      _$isLoginInAtom.reportChanged();
    }, _$isLoginInAtom, name: '${_$isLoginInAtom.name}_set');
  }

  final _$loginAsyncAction = AsyncAction('login');

  @override
  Future<dynamic> login() {
    return _$loginAsyncAction.run(() => super.login());
  }
}
