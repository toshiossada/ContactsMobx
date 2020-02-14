import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:contatos_mobx/app/modules/components/search_appbar/search_appbar_widget.dart';

main() {
  testWidgets('SearchAppbarWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(SearchAppbarWidget()));
    final textFinder = find.text('SearchAppbar');
    expect(textFinder, findsOneWidget);
  });
}
