import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:contatos_mobx/app/modules/home/components/textfield/textfield_widget.dart';

main() {
  testWidgets('TextfieldWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(TextfieldWidget()));
    final textFinder = find.text('Textfield');
    expect(textFinder, findsOneWidget);
  });
}
