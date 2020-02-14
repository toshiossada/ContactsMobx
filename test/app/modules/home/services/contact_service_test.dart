import 'package:flutter_test/flutter_test.dart';

import 'package:contatos_mobx/app/modules/home/services/contact_service.dart';

void main() {
  ContactService service;

  setUp(() {
    service = ContactService();
  });

  group('ContactService Test', () {
    test("First Test", () {
      expect(service, isInstanceOf<ContactService>());
    });
  });
}
