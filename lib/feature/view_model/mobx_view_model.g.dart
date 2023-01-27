// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobx_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MobxViewModel on _MobxViewModelBase, Store {
  late final _$itemsAtom =
      Atom(name: '_MobxViewModelBase.items', context: context);

  @override
  List<dynamic>? get items {
    _$itemsAtom.reportRead();
    return super.items;
  }

  @override
  set items(List<dynamic>? value) {
    _$itemsAtom.reportWrite(value, super.items, () {
      super.items = value;
    });
  }

  late final _$fetchBagItemFromApiAsyncAction =
      AsyncAction('_MobxViewModelBase.fetchBagItemFromApi', context: context);

  @override
  Future<void> fetchBagItemFromApi() {
    return _$fetchBagItemFromApiAsyncAction
        .run(() => super.fetchBagItemFromApi());
  }

  late final _$fetchPhoneItemFromApiAsyncAction =
      AsyncAction('_MobxViewModelBase.fetchPhoneItemFromApi', context: context);

  @override
  Future<void> fetchPhoneItemFromApi() {
    return _$fetchPhoneItemFromApiAsyncAction
        .run(() => super.fetchPhoneItemFromApi());
  }

  late final _$fetchShoesItemFromApiAsyncAction =
      AsyncAction('_MobxViewModelBase.fetchShoesItemFromApi', context: context);

  @override
  Future<void> fetchShoesItemFromApi() {
    return _$fetchShoesItemFromApiAsyncAction
        .run(() => super.fetchShoesItemFromApi());
  }

  late final _$fetchComputerItemFromApiAsyncAction = AsyncAction(
      '_MobxViewModelBase.fetchComputerItemFromApi',
      context: context);

  @override
  Future<void> fetchComputerItemFromApi() {
    return _$fetchComputerItemFromApiAsyncAction
        .run(() => super.fetchComputerItemFromApi());
  }

  @override
  String toString() {
    return '''
items: ${items}
    ''';
  }
}
