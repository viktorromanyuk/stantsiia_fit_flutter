import 'package:flutter/material.dart';
import 'form_field_controller.dart';

class FormController {
  FormController(this.fields);

  final List<FormFieldController> fields;

  final formKey = GlobalKey<FormState>();

  bool validate() {
    return formKey.currentState?.validate() ?? false;
  }

  void dispose() {
    for (final field in fields) {
      field.dispose();
    }
  }
}
