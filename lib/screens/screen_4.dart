import 'dart:io';

import 'package:flutter/material.dart';

import 'image_picker.dart';

class Screen4 extends StatefulWidget {
  @override
  _Screen4State createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  File imageFile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            key: _formKey,
            child: Stack(
              children: <Widget>[
                ImagePickerWidget(
                    imageFile: this.imageFile,
                    onImageSelected: (File file) {
                      setState(() {
                        imageFile = file;
                      });
                    }),
                Positioned.fill(
                    child: Align(
                  alignment: Alignment.centerRight,
                  child: TextField(
                      decoration:
                          InputDecoration(labelText: "Ingresa tu nombre")),
                )),
                Positioned.fill(
                    child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: 40,
                    width: 100,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.lightBlue.shade100),
                        onPressed: () {
                          showFifthScreen(context);
                        },
                        child: Text("Siguiente")),
                  ),
                ))
              ],
            )));
  }

  void showFifthScreen(BuildContext context) {
    Navigator.of(context).pushNamed("/fifth");
  }
}
