import 'package:contatos_mobx/app/modules/home/components/textfield/textfield_widget.dart';
import 'package:contatos_mobx/app/modules/home/home_controller.dart';
import 'package:contatos_mobx/app/modules/home/models/contact_model.dart';
import 'package:contatos_mobx/app/modules/home/pages/details/details_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'components/image/image_widget.dart';

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
  void initState() {
    // TODO: implement initState
    super.initState();

    if (widget.id != null)
      controller.setItem(
          _homeController.contacts.firstWhere((e) => e.id == widget.id));
    else
      controller.setItem(ContactModel());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: Text(widget.id != null ? 'Editar Contato' : 'Novo Contato'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              color: Colors.purple[300],
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Observer(
                    builder: (_) {
                      return ImageWidget(
                        changeImage: (file) {
                          controller.changeImage(file);
                        },
                        image: controller.contact.image,
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.white,
                      child: Text(
                        controller.contact.name != null
                            ? controller.contact.fullName
                            : "Novo Contato",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          shadows: [
                            Shadow(
                              blurRadius: 10.0,
                              color: Colors.black,
                              offset: Offset(2.0, 2.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFieldWidget(
                hintText: 'Nome',
                controller:
                    TextEditingController(text: controller.contact.name),
                onChanged: controller.changeName,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFieldWidget(
                hintText: 'Sobrenome',
                controller:
                    TextEditingController(text: controller.contact.lastName),
                onChanged: controller.changeLastName,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFieldWidget(
                hintText: 'E-mail',
                controller:
                    TextEditingController(text: controller.contact.email),
                onChanged: controller.changeEmail,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFieldWidget(
                hintText: 'Telefone',
                keyboardType: TextInputType.phone,
                controller: TextEditingController(text: controller.contact.tel),
                onChanged: controller.changeTelephone,
              ),
            ),
          ],
        ),
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
