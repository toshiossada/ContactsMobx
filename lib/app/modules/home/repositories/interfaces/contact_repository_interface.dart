import 'package:contatos_mobx/app/modules/home/models/contact_model.dart';

abstract class IContactRepository {
  Future<List<ContactModel>> get();
}
