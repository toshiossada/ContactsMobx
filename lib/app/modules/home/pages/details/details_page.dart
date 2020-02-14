import 'package:contatos_mobx/app/modules/home/components/textfield/textfield_widget.dart';
import 'package:contatos_mobx/app/modules/home/home_controller.dart';
import 'package:contatos_mobx/app/modules/home/pages/details/details_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DetailsPage extends StatefulWidget {
  final String title;
  final int id;
  const DetailsPage({Key key, this.title = "Details", this.id})
      : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends ModularState<DetailsPage, DetailsController> {
  final HomeController _homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    if (widget.id != null)
      controller.setItem(
          _homeController.contacts.firstWhere((e) => e.id == widget.id));

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.id != null ? 'Editar Contato' : 'Novo Contato'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFieldWidget(
              hintText: 'Nome',
              controller: TextEditingController(text: controller.contact.name),
              onChanged: controller.changeName,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFieldWidget(
              hintText: 'Sobrenome',
              controller:
                  TextEditingController(text: controller.contact.lastname),
              onChanged: controller.changeLastname,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.save),
        onPressed: () async {
          if (widget.id == null)
            _homeController.add(controller.contact);
          else
            await _homeController.edit(controller.contact);
          Modular.to.pop();
        },
      ),
    );
  }
}
