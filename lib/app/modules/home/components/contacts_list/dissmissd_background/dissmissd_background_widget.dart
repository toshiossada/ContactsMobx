import 'package:flutter/material.dart';

class DissmissdBackgroundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Text(
            'Excluido!',
            style: TextStyle(
              fontSize: 22.0,
              color: Colors.white,
            ),
          ),
        ),
        Align(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.cancel),
          ),
        ),
      ],
    );
  }
}
