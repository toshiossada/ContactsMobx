import 'dart:math';

import 'package:contatos_mobx/app/modules/home/models/contact_model.dart';
import 'package:mobx/mobx.dart';

import 'services/interfaces/contact_service_interface.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  IContactService contactService;
  _HomeBase({this.contactService}) {
    getContact();
  }
  @observable
  ObservableList<ContactModel> contacts = ObservableList<ContactModel>();
  @observable
  String filter;

  @computed
  int get contactsLength => contacts?.length ?? 0;
  @computed
  int get contactsFilteredLength => contactsFiltered?.length ?? 0;
  @computed
  List<ContactModel> get contactsFiltered => contacts
      .where((e) => (e.fullName ?? '')
          .toLowerCase()
          .contains(filter?.toLowerCase() ?? ''))
      .toList();

  @action
  setFilter(String v) => filter = v;

  @action
  remove(int id) {
    contacts.removeWhere((e) => e.id == id);
  }

  @action
  getContact() async {
    try {
      var lContacts = await contactService.get();
      contacts = lContacts.asObservable();
    } catch (e) {
      print(e.message.toString());
    }
  }

  @action
  add(ContactModel c) {
    if (contacts.length > 0)
      c.id = contacts.map((element) => element.id).reduce(max) + 1;
    else
      c.id = 1;
    contacts.add(c);
  }

  @action
  edit(ContactModel c) async {
    var index = contacts.indexWhere((e) => e.id == c.id);
    contacts[index] = c;
  }
}
