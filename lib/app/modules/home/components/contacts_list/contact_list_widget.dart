import 'package:contatos_mobx/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'dissmissd_background/dissmissd_background_widget.dart';

class ContactListWidget extends StatelessWidget {
  final int itemCount;
  final HomeController controller = Modular.get();
  final Function showMessage;

  ContactListWidget({Key key, this.itemCount, this.showMessage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (_, i) {
        var contact = controller.contactsFiltered[i];
        return Dismissible(
          key: UniqueKey(),
          direction: DismissDirection.endToStart,
          background: Container(
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: DissmissdBackgroundWidget(),
            ),
          ),
          onDismissed: (direction) {
            if (direction == DismissDirection.endToStart) {
              controller.remove(contact.id);

              showMessage();
            }
          },
          child: ListTile(
            onTap: () {
              Modular.to.pushNamed('/details/${contact.id}');
            },
            title: Text(contact.fullName),
          ),
        );
      },
    );
  }
}
