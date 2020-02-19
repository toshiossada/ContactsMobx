import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:contatos_mobx/app/modules/home/components/contacts_list/contact_item/contact_item_widget.dart';

main() {
  testWidgets('ContactItemWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ContactItemWidget()));
    final textFinder = find.text('ContactItem');
    expect(textFinder, findsOneWidget);
  });
}
