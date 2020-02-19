import 'dart:io';

import 'package:contatos_mobx/app/modules/home/models/contact_model.dart';
import 'package:mobx/mobx.dart';

part 'details_controller.g.dart';

class DetailsController = _DetailsBase with _$DetailsController;

abstract class _DetailsBase with Store {
  @observable
  ContactModel contact;

  @action
  setItem(ContactModel v) {
    contact = v.copyWith();
  }

  @action
  changeName(String v) => contact.name = v;
  @action
  changeLastName(String v) => contact.lastName = v;
  @action
  changeEmail(String v) => contact.email = v;
  @action
  changeTelephone(String v) => contact.tel = v;
  @action
  changeImage(File file) {
    if (file == null) return;
    contact = contact.copyWith(image: file.path);
  }
}
