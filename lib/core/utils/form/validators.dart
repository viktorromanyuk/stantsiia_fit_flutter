import 'package:flutter/material.dart';
import 'input_formatters.dart';

typedef Validator = FormFieldValidator<String>;

abstract final class AppValidators {
  static Validator combine(List<Validator> validators) {
    return (value) {
      for (final validator in validators) {
        final error = validator(value);
        if (error != null) return error;
      }
      return null;
    };
  }

  static String? required(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Обовʼязкове поле';
    }
    return null;
  }

  static String? email(String? value) {
    final email = value?.trim() ?? '';
    if (email.isEmpty) return null;

    const pattern = r'^[^\s@]+@[^\s@]+\.[^\s@]+$';

    if (!RegExp(pattern).hasMatch(email)) {
      return 'Недійсний email';
    }
    return null;
  }

  static String? phone(String? value) {
    final text = value?.trim() ?? '';
    if (text.isEmpty) return null;

    final unmasked = AppInputFormatters.phone().unmaskText(text);

    if (unmasked.length != 9) {
      return 'Недійсний номер телефону';
    }
    return null;
  }
}
