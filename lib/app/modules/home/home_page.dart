import 'package:contatos_mobx/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'components/contacts_list/contact_list_widget.dart';
import 'components/search_appbar/search_appbar_widget.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final snackBar = SnackBar(
    content: Row(
      children: <Widget>[
        Icon(Icons.warning),
        SizedBox(
          width: 20,
        ),
        Expanded(child: Text('Contato Removido'))
      ],
    ),
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        child: Observer(
          builder: (_) {
            return SearchAppbarWidget(
              label:
                  '${controller.contactsFilteredLength}/${controller.contactsLength}',
              onChanged: controller.setFilter,
            );
          },
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: Observer(
        builder: (_) {
          return ContactListWidget(
            itemCount: controller.contactsFilteredLength,
            showMessage: () {
              _scaffoldKey.currentState.showSnackBar(snackBar);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Modular.to.pushNamed('/details');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
