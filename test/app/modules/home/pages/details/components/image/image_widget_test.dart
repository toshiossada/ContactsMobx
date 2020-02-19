import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:contatos_mobx/app/modules/home/pages/details/components/image/image_widget.dart';

main() {
  testWidgets('ImageWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ImageWidget()));
    final textFinder = find.text('Image');
    expect(textFinder, findsOneWidget);
  });
}
