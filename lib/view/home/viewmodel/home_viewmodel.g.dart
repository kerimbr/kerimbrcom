// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeViewModel on _HomeViewModelBase, Store {
  final _$appBarElevationAtom =
      Atom(name: '_HomeViewModelBase.appBarElevation');

  @override
  double get appBarElevation {
    _$appBarElevationAtom.reportRead();
    return super.appBarElevation;
  }

  @override
  set appBarElevation(double value) {
    _$appBarElevationAtom.reportWrite(value, super.appBarElevation, () {
      super.appBarElevation = value;
    });
  }

  final _$numberAtom = Atom(name: '_HomeViewModelBase.number');

  @override
  int get number {
    _$numberAtom.reportRead();
    return super.number;
  }

  @override
  set number(int value) {
    _$numberAtom.reportWrite(value, super.number, () {
      super.number = value;
    });
  }

  final _$_HomeViewModelBaseActionController =
      ActionController(name: '_HomeViewModelBase');

  @override
  void _scrollListener() {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase._scrollListener');
    try {
      return super._scrollListener();
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementNumber() {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase.incrementNumber');
    try {
      return super.incrementNumber();
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
appBarElevation: ${appBarElevation},
number: ${number}
    ''';
  }
}
