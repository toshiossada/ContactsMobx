import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:contatos_mobx/app/modules/components/contacts_list/contacts_list_widget.dart';

main() {
  testWidgets('ContactsListWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ContactsListWidget()));
    final textFinder = find.text('ContactsList');
    expect(textFinder, findsOneWidget);
  });
}
