import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:stantsiia_fit_flutter/core/enums/enums.dart';
import 'package:stantsiia_fit_flutter/core/utils/utils.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';

import '../widgets/auth_form.dart';

@RoutePage()
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _nameController = FormFieldController();
  final _phoneController = FormFieldController();
  final _emailController = FormFieldController();

  late final _formController = FormController([
    _nameController,
    _phoneController,
    _emailController,
  ]);

  @override
  void dispose() {
    _formController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AuthForm(
      type: AuthType.signup,
      formKey: _formController.formKey,
      formFields: [
        AppTextFormField(
          label: 'Ім\'я та прізвище',
          placeholder: 'Введіть ім\'я та прізвище',
          controller: _nameController,
          required: true,
        ),

        AppTextFormField(
          label: 'Номер телефону',
          placeholder: 'Введіть номер телефону',
          keyboardType: TextInputType.phone,
          controller: _phoneController,
          required: true,
          inputFormatters: [AppInputFormatters.phone()],
          validators: [AppValidators.phone],
        ),

        AppTextFormField(
          label: 'Email',
          placeholder: 'Введіть email',
          keyboardType: TextInputType.emailAddress,
          controller: _emailController,
          required: true,
          validators: [AppValidators.email],
        ),
      ],
    );
  }
}
