import 'package:contatos_mobx/app/modules/home/models/contact_model.dart';
import 'package:contatos_mobx/app/modules/home/repositories/interfaces/contact_repository_interface.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'interfaces/contact_service_interface.dart';

class ContactService extends Disposable implements IContactService {
  final IContactRepository contactRepository;

  ContactService({this.contactRepository});

  @override
  void dispose() {}

  @override
  Future<List<ContactModel>> get() async {
    return await contactRepository.get();
  }
}
