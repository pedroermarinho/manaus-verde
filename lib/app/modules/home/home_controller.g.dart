// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HomeController = BindInject(
  (i) => HomeController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$contextAtom = Atom(name: '_HomeControllerBase.context');

  @override
  BuildContext get context {
    _$contextAtom.reportRead();
    return super.context;
  }

  @override
  set context(BuildContext value) {
    _$contextAtom.reportWrite(value, super.context, () {
      super.context = value;
    });
  }

  final _$addressAtom = Atom(name: '_HomeControllerBase.address');

  @override
  String get address {
    _$addressAtom.reportRead();
    return super.address;
  }

  @override
  set address(String value) {
    _$addressAtom.reportWrite(value, super.address, () {
      super.address = value;
    });
  }

  final _$listWidgetOptionsAddressAtom =
      Atom(name: '_HomeControllerBase.listWidgetOptionsAddress');

  @override
  ObservableList<Widget> get listWidgetOptionsAddress {
    _$listWidgetOptionsAddressAtom.reportRead();
    return super.listWidgetOptionsAddress;
  }

  @override
  set listWidgetOptionsAddress(ObservableList<Widget> value) {
    _$listWidgetOptionsAddressAtom
        .reportWrite(value, super.listWidgetOptionsAddress, () {
      super.listWidgetOptionsAddress = value;
    });
  }

  final _$optionsAddressAsyncAction =
      AsyncAction('_HomeControllerBase.optionsAddress');

  @override
  Future optionsAddress(String address) {
    return _$optionsAddressAsyncAction.run(() => super.optionsAddress(address));
  }

  @override
  String toString() {
    return '''
context: ${context},
address: ${address},
listWidgetOptionsAddress: ${listWidgetOptionsAddress}
    ''';
  }
}
