import 'package:contatos_mobx/app/modules/home/models/contact_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'dissmissd_background/dissmissd_background_widget.dart';

class ContactListWidget extends StatelessWidget {
  final int itemCount;
  final Function onRemove;
  final List<ContactModel> list;
  ContactListWidget({Key key, this.itemCount, this.onRemove, this.list})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (_, i) {
        var contact = list[i];
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
              onRemove(contact.id);
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
