import 'package:contatos_mobx/app/modules/home/models/contact_model.dart';
import 'package:mobx/mobx.dart';

part 'details_controller.g.dart';

class DetailsController = _DetailsBase with _$DetailsController;

abstract class _DetailsBase with Store {
  @observable
  ContactModel contact = ContactModel();

  @action
  setItem(ContactModel v) {
    contact.id = v.id;
    contact.name = v.name;
    contact.lastname = v.lastname;
  }

  @action
  changeName(String v) => contact.name = v;
  @action
  changeLastname(String v) => contact.lastname = v;
}
