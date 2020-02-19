import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:image_picker/image_picker.dart';

class ImageWidget extends StatelessWidget {
  final Function changeImage;
  final String image;

  const ImageWidget({Key key, this.changeImage, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ImagePicker.pickImage(source: ImageSource.gallery).then((file) {
          changeImage(file);
        });
      },
      child: Container(
        width: double.infinity,
        //height: 300,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: image != null
                    ? FileImage(File(image))
                    : AssetImage("assets/images/avatar.png"),
                fit: BoxFit.cover)),
      ),
    );
  }
}
