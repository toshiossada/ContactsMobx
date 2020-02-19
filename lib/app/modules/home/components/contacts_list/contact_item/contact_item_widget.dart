import 'dart:io';

import 'package:contatos_mobx/app/modules/home/models/contact_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ContactItemWidget extends StatelessWidget {
  final ContactModel contact;

  const ContactItemWidget({Key key, this.contact}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            bottomLeft: Radius.circular(50),
            topRight: Radius.circular(50),
            bottomRight: Radius.circular(20),
          ),
          shape: BoxShape.rectangle,
          image: DecorationImage(
              image: contact.image != null
                  ? FileImage(File(contact.image))
                  : AssetImage("assets/images/avatar.png"),
              fit: BoxFit.cover),
        ),
      ),
      title: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                contact.fullName ?? '',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.cyan[800],
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                contact.email ?? '',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.teal,
                ),
              ),
              Text(
                contact.tel ?? '',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.teal,
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        Modular.to.pushNamed('/details/${contact.id}');
      },
    );
  }
}
