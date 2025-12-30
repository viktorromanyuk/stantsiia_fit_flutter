import 'package:flutter/material.dart';

class FormFieldController {
  FormFieldController({String? text}) : textController = TextEditingController(text: text);

  final TextEditingController textController;
  final FocusNode focusNode = FocusNode();

  void dispose() {
    textController.dispose();
    focusNode.dispose();
  }
}
