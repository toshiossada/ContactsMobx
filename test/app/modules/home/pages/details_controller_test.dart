import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:contatos_mobx/app/modules/home/pages/details_controller.dart';
import 'package:contatos_mobx/app/modules/home/home_module.dart';

void main() {
  initModule(HomeModule());
  DetailsController details;

  setUp(() {
    details = HomeModule.to.bloc<DetailsController>();
  });

  group('DetailsController Test', () {
    test("First Test", () {
      expect(details, isInstanceOf<DetailsController>());
    });

    test("Set Value", () {
      expect(details.value, equals(0));
      details.increment();
      expect(details.value, equals(1));
    });
  });
}
