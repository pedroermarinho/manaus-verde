// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sidebar_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SidebarController on _SidebarControllerBase, Store {
  final _$userAtom = Atom(name: '_SidebarControllerBase.user');

  @override
  UserModel get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(UserModel value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$loadingAtom = Atom(name: '_SidebarControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$animationControllerAtom =
      Atom(name: '_SidebarControllerBase.animationController');

  @override
  AnimationController get animationController {
    _$animationControllerAtom.reportRead();
    return super.animationController;
  }

  @override
  set animationController(AnimationController value) {
    _$animationControllerAtom.reportWrite(value, super.animationController, () {
      super.animationController = value;
    });
  }

  final _$isSidebarOpenedStreamControllerAtom =
      Atom(name: '_SidebarControllerBase.isSidebarOpenedStreamController');

  @override
  StreamController<bool> get isSidebarOpenedStreamController {
    _$isSidebarOpenedStreamControllerAtom.reportRead();
    return super.isSidebarOpenedStreamController;
  }

  @override
  set isSidebarOpenedStreamController(StreamController<bool> value) {
    _$isSidebarOpenedStreamControllerAtom
        .reportWrite(value, super.isSidebarOpenedStreamController, () {
      super.isSidebarOpenedStreamController = value;
    });
  }

  final _$isSidebarOpenedStreamAtom =
      Atom(name: '_SidebarControllerBase.isSidebarOpenedStream');

  @override
  Stream<bool> get isSidebarOpenedStream {
    _$isSidebarOpenedStreamAtom.reportRead();
    return super.isSidebarOpenedStream;
  }

  @override
  set isSidebarOpenedStream(Stream<bool> value) {
    _$isSidebarOpenedStreamAtom.reportWrite(value, super.isSidebarOpenedStream,
        () {
      super.isSidebarOpenedStream = value;
    });
  }

  final _$isSidebarOpenedSinkAtom =
      Atom(name: '_SidebarControllerBase.isSidebarOpenedSink');

  @override
  StreamSink<bool> get isSidebarOpenedSink {
    _$isSidebarOpenedSinkAtom.reportRead();
    return super.isSidebarOpenedSink;
  }

  @override
  set isSidebarOpenedSink(StreamSink<bool> value) {
    _$isSidebarOpenedSinkAtom.reportWrite(value, super.isSidebarOpenedSink, () {
      super.isSidebarOpenedSink = value;
    });
  }

  final _$getUserAsyncAction = AsyncAction('_SidebarControllerBase.getUser');

  @override
  Future getUser() {
    return _$getUserAsyncAction.run(() => super.getUser());
  }

  @override
  String toString() {
    return '''
user: ${user},
loading: ${loading},
animationController: ${animationController},
isSidebarOpenedStreamController: ${isSidebarOpenedStreamController},
isSidebarOpenedStream: ${isSidebarOpenedStream},
isSidebarOpenedSink: ${isSidebarOpenedSink}
    ''';
  }
}
