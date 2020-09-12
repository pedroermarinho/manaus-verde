// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_field_custom_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TextFieldCustomController on _TextFieldCustomControllerBase, Store {
  final _$labelTextAtom =
      Atom(name: '_TextFieldCustomControllerBase.labelText');

  @override
  String get labelText {
    _$labelTextAtom.reportRead();
    return super.labelText;
  }

  @override
  set labelText(String value) {
    _$labelTextAtom.reportWrite(value, super.labelText, () {
      super.labelText = value;
    });
  }

  final _$onChangedAtom =
      Atom(name: '_TextFieldCustomControllerBase.onChanged');

  @override
  dynamic Function(String) get onChanged {
    _$onChangedAtom.reportRead();
    return super.onChanged;
  }

  @override
  set onChanged(dynamic Function(String) value) {
    _$onChangedAtom.reportWrite(value, super.onChanged, () {
      super.onChanged = value;
    });
  }

  final _$errorTextAtom =
      Atom(name: '_TextFieldCustomControllerBase.errorText');

  @override
  String Function() get errorText {
    _$errorTextAtom.reportRead();
    return super.errorText;
  }

  @override
  set errorText(String Function() value) {
    _$errorTextAtom.reportWrite(value, super.errorText, () {
      super.errorText = value;
    });
  }

  final _$textInputTypeAtom =
      Atom(name: '_TextFieldCustomControllerBase.textInputType');

  @override
  TextInputType get textInputType {
    _$textInputTypeAtom.reportRead();
    return super.textInputType;
  }

  @override
  set textInputType(TextInputType value) {
    _$textInputTypeAtom.reportWrite(value, super.textInputType, () {
      super.textInputType = value;
    });
  }

  final _$_TextFieldCustomControllerBaseActionController =
      ActionController(name: '_TextFieldCustomControllerBase');

  @override
  dynamic setLabelText(String value) {
    final _$actionInfo = _$_TextFieldCustomControllerBaseActionController
        .startAction(name: '_TextFieldCustomControllerBase.setLabelText');
    try {
      return super.setLabelText(value);
    } finally {
      _$_TextFieldCustomControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setOnChanged(dynamic Function(String) value) {
    final _$actionInfo = _$_TextFieldCustomControllerBaseActionController
        .startAction(name: '_TextFieldCustomControllerBase.setOnChanged');
    try {
      return super.setOnChanged(value);
    } finally {
      _$_TextFieldCustomControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setErrorText(String Function() value) {
    final _$actionInfo = _$_TextFieldCustomControllerBaseActionController
        .startAction(name: '_TextFieldCustomControllerBase.setErrorText');
    try {
      return super.setErrorText(value);
    } finally {
      _$_TextFieldCustomControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setInputType(TextInputType value) {
    final _$actionInfo = _$_TextFieldCustomControllerBaseActionController
        .startAction(name: '_TextFieldCustomControllerBase.setInputType');
    try {
      return super.setInputType(value);
    } finally {
      _$_TextFieldCustomControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
labelText: ${labelText},
onChanged: ${onChanged},
errorText: ${errorText},
textInputType: ${textInputType}
    ''';
  }
}
