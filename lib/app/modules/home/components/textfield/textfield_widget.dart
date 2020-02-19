import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final Function onChanged;
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;

  const TextFieldWidget({
    Key key,
    this.onChanged,
    this.hintText,
    this.controller,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontSize: 22),
      keyboardType: keyboardType,
      maxLines: 1,
      decoration: new InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey),
        contentPadding: const EdgeInsets.only(left: 15, top: 5, bottom: 17),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(17),
          borderSide: BorderSide(
            color: Colors.grey,
            width: 3.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(17),
          borderSide: BorderSide(
            color: Colors.grey,
            width: 3.0,
          ),
        ),
      ),
      controller: controller,
      onChanged: onChanged,
    );
  }
}
