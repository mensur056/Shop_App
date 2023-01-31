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
  List<ComputerModel>? get items {
    _$itemsAtom.reportRead();
    return super.items;
  }

  @override
  set items(List<ComputerModel>? value) {
    _$itemsAtom.reportWrite(value, super.items, () {
      super.items = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_MobxViewModelBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
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
items: ${items},
isLoading: ${isLoading}
    ''';
  }
}
