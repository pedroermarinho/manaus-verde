// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_item_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MenuItemController on _MenuItemControllerBase, Store {
  final _$valueAtom = Atom(name: '_MenuItemControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_MenuItemControllerBaseActionController =
      ActionController(name: '_MenuItemControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_MenuItemControllerBaseActionController.startAction(
        name: '_MenuItemControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_MenuItemControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
