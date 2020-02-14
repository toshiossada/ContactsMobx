import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final Function onChanged;
  final String hintText;
  final TextEditingController controller;

  const TextFieldWidget(
      {Key key, this.onChanged, this.hintText, this.controller})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        fontSize: 22.0,
        color: Colors.black,
      ),
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey[200]),
          borderRadius: BorderRadius.circular(25.7),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey[200]),
          borderRadius: BorderRadius.circular(25.7),
        ),
        filled: true,
        fillColor: Colors.grey[200],
        contentPadding:
            const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
        hintText: hintText,
      ),
      controller: controller,
      onChanged: onChanged,
    );
  }
}
