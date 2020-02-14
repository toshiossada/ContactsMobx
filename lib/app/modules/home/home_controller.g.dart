// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  Computed<int> _$contactsLengthComputed;

  @override
  int get contactsLength =>
      (_$contactsLengthComputed ??= Computed<int>(() => super.contactsLength))
          .value;
  Computed<int> _$contactsFilteredLengthComputed;

  @override
  int get contactsFilteredLength => (_$contactsFilteredLengthComputed ??=
          Computed<int>(() => super.contactsFilteredLength))
      .value;
  Computed<List<ContactModel>> _$contactsFilteredComputed;

  @override
  List<ContactModel> get contactsFiltered => (_$contactsFilteredComputed ??=
          Computed<List<ContactModel>>(() => super.contactsFiltered))
      .value;

  final _$contactsAtom = Atom(name: '_HomeBase.contacts');

  @override
  ObservableList<ContactModel> get contacts {
    _$contactsAtom.context.enforceReadPolicy(_$contactsAtom);
    _$contactsAtom.reportObserved();
    return super.contacts;
  }

  @override
  set contacts(ObservableList<ContactModel> value) {
    _$contactsAtom.context.conditionallyRunInAction(() {
      super.contacts = value;
      _$contactsAtom.reportChanged();
    }, _$contactsAtom, name: '${_$contactsAtom.name}_set');
  }

  final _$filterAtom = Atom(name: '_HomeBase.filter');

  @override
  String get filter {
    _$filterAtom.context.enforceReadPolicy(_$filterAtom);
    _$filterAtom.reportObserved();
    return super.filter;
  }

  @override
  set filter(String value) {
    _$filterAtom.context.conditionallyRunInAction(() {
      super.filter = value;
      _$filterAtom.reportChanged();
    }, _$filterAtom, name: '${_$filterAtom.name}_set');
  }

  final _$getContactAsyncAction = AsyncAction('getContact');

  @override
  Future getContact() {
    return _$getContactAsyncAction.run(() => super.getContact());
  }

  final _$editAsyncAction = AsyncAction('edit');

  @override
  Future edit(ContactModel c) {
    return _$editAsyncAction.run(() => super.edit(c));
  }

  final _$_HomeBaseActionController = ActionController(name: '_HomeBase');

  @override
  dynamic setFilter(String v) {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.setFilter(v);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic remove(int id) {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.remove(id);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic add(ContactModel c) {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.add(c);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }
}
