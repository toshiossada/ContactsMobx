import 'package:contatos_mobx/app/modules/home/pages/details/details_controller.dart';
import 'package:contatos_mobx/app/modules/home/pages/details/details_page.dart';
import 'package:contatos_mobx/app/modules/home/repositories/contact_repository.dart';
import 'package:contatos_mobx/app/modules/home/services/contact_service.dart';
import 'package:contatos_mobx/app/modules/home/home_controller.dart';
import 'package:contatos_mobx/app/shared/custom_dio/custom_dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:contatos_mobx/app/modules/home/home_page.dart';

import 'repositories/interfaces/contact_repository_interface.dart';
import 'services/interfaces/contact_service_interface.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DetailsController()),
        Bind<IContactRepository>(
            (i) => ContactRepository(dio: Modular.get<CustomDio>())),
        Bind<IContactService>((i) =>
            ContactService(contactRepository: i.get<IContactRepository>())),
        Bind((i) => HomeController(contactService: i.get<IContactService>())),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
        Router('/details', child: (_, args) => DetailsPage()),
        Router('/details/:id',
            child: (_, args) => DetailsPage(
                  id: int.parse(args.params['id']),
                )),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
