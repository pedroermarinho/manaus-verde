// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_screen_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $SplashScreenController = BindInject(
  (i) => SplashScreenController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SplashScreenController on _SplashScreenControllerBase, Store {
  final _$disposerAtom = Atom(name: '_SplashScreenControllerBase.disposer');

  @override
  ReactionDisposer get disposer {
    _$disposerAtom.reportRead();
    return super.disposer;
  }

  @override
  set disposer(ReactionDisposer value) {
    _$disposerAtom.reportWrite(value, super.disposer, () {
      super.disposer = value;
    });
  }

  final _$isValidAsyncAction =
      AsyncAction('_SplashScreenControllerBase.isValid');

  @override
  Future isValid() {
    return _$isValidAsyncAction.run(() => super.isValid());
  }

  @override
  String toString() {
    return '''
disposer: ${disposer}
    ''';
  }
}
