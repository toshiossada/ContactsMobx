import 'dart:convert';

import 'package:contatos_mobx/app/modules/home/models/contact_model.dart';
import 'package:contatos_mobx/app/shared/custom_dio/custom_dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'interfaces/contact_repository_interface.dart';

class ContactRepository extends Disposable implements IContactRepository {
  final CustomDio dio;
  ContactRepository({this.dio});

  @override
  void dispose() {}

  @override
  Future<List<ContactModel>> get() async {
    var jsonString = await rootBundle.loadString('assets/mocks/contacts.json');
    final jsonResponse = json.decode(jsonString);
    var result = jsonResponse
        .map<ContactModel>((json) => ContactModel.fromJson(json))
        .toList();

    return result;
  }
}
