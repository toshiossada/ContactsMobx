import 'package:contatos_mobx/app/modules/home/components/contacts_list/contact_item/contact_item_widget.dart';
import 'package:contatos_mobx/app/modules/home/models/contact_model.dart';
import 'package:flutter/material.dart';

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
          child: Container(
            width: MediaQuery.of(context).size.width - 30,
            padding: EdgeInsets.only(
              left: 9,
            ),
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(17),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 7, offset: Offset(2, 1))
                ]),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(17.0),
                  bottomRight: Radius.circular(17.0),
                  topLeft: Radius.circular(4.0),
                  bottomLeft: Radius.circular(4.0),
                ),
              ),
              child: ContactItemWidget(contact: contact),
            ),
          ),
        );
      },
    );
  }
}
