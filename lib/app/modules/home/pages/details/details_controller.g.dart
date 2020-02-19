// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DetailsController on _DetailsBase, Store {
  final _$contactAtom = Atom(name: '_DetailsBase.contact');

  @override
  ContactModel get contact {
    _$contactAtom.context.enforceReadPolicy(_$contactAtom);
    _$contactAtom.reportObserved();
    return super.contact;
  }

  @override
  set contact(ContactModel value) {
    _$contactAtom.context.conditionallyRunInAction(() {
      super.contact = value;
      _$contactAtom.reportChanged();
    }, _$contactAtom, name: '${_$contactAtom.name}_set');
  }

  final _$_DetailsBaseActionController = ActionController(name: '_DetailsBase');

  @override
  dynamic setItem(ContactModel v) {
    final _$actionInfo = _$_DetailsBaseActionController.startAction();
    try {
      return super.setItem(v);
    } finally {
      _$_DetailsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeName(String v) {
    final _$actionInfo = _$_DetailsBaseActionController.startAction();
    try {
      return super.changeName(v);
    } finally {
      _$_DetailsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeLastName(String v) {
    final _$actionInfo = _$_DetailsBaseActionController.startAction();
    try {
      return super.changeLastName(v);
    } finally {
      _$_DetailsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeEmail(String v) {
    final _$actionInfo = _$_DetailsBaseActionController.startAction();
    try {
      return super.changeEmail(v);
    } finally {
      _$_DetailsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeTelephone(String v) {
    final _$actionInfo = _$_DetailsBaseActionController.startAction();
    try {
      return super.changeTelephone(v);
    } finally {
      _$_DetailsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeImage(File file) {
    final _$actionInfo = _$_DetailsBaseActionController.startAction();
    try {
      return super.changeImage(file);
    } finally {
      _$_DetailsBaseActionController.endAction(_$actionInfo);
    }
  }
}
