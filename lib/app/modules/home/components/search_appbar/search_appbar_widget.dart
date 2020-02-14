import 'package:contatos_mobx/app/modules/home/components/textfield/textfield_widget.dart';
import 'package:flutter/material.dart';

class SearchAppbarWidget extends StatelessWidget {
  final Function onChanged;
  final String label;

  const SearchAppbarWidget({Key key, this.onChanged, this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
      title: TextFieldWidget(
        hintText: 'Pesquisar',
        onChanged: onChanged,
      ),
    );
  }
}
