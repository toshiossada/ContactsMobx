// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ContactModel on _ContactModelBase, Store {
  Computed<String> _$fullNameComputed;

  @override
  String get fullName =>
      (_$fullNameComputed ??= Computed<String>(() => super.fullName)).value;

  final _$nameAtom = Atom(name: '_ContactModelBase.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$lastnameAtom = Atom(name: '_ContactModelBase.lastname');

  @override
  String get lastname {
    _$lastnameAtom.context.enforceReadPolicy(_$lastnameAtom);
    _$lastnameAtom.reportObserved();
    return super.lastname;
  }

  @override
  set lastname(String value) {
    _$lastnameAtom.context.conditionallyRunInAction(() {
      super.lastname = value;
      _$lastnameAtom.reportChanged();
    }, _$lastnameAtom, name: '${_$lastnameAtom.name}_set');
  }
}
