import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:contatos_mobx/app/modules/components/contacts_list/dissmissd_background/dissmissd_background_widget.dart';

main() {
  testWidgets('DissmissdBackgroundWidget has message',
      (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(DissmissdBackgroundWidget()));
    final textFinder = find.text('DissmissdBackground');
    expect(textFinder, findsOneWidget);
  });
}
