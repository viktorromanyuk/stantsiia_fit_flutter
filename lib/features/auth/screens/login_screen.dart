import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:stantsiia_fit_flutter/core/utils/utils.dart';
import 'package:stantsiia_fit_flutter/core/enums/enums.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';

import '../widgets/auth_form.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = FormFieldController(text: 'viktoraromanyuk@gmail.com');

  late final _formController = FormController([_emailController]);

  @override
  void dispose() {
    _formController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AuthForm(
      type: AuthType.login,
      formKey: _formController.formKey,
      formFields: [
        AppTextFormField(
          controller: _emailController,
          label: 'Email',
          placeholder: 'Введіть email',
          hint: 'На ваш email буде надіслано одноразовий код для входу',
          required: true,
          validators: [AppValidators.email],
        ),
      ],
    );
  }
}
