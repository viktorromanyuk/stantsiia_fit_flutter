import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';
import 'package:stantsiia_fit_flutter/core/utils/utils.dart';

@RoutePage()
class AccountProfileScreen extends StatefulWidget {
  const AccountProfileScreen({super.key});

  @override
  State<AccountProfileScreen> createState() => _AccountProfileScreenState();
}

class _AccountProfileScreenState extends State<AccountProfileScreen> {
  final _nameController = FormFieldController();
  final _phoneController = FormFieldController();
  final _emailController = FormFieldController(text: 'viktoraromanyuk@gmail.com');

  late final _formController = FormController([
    _nameController,
    _phoneController,
    _emailController,
  ]);

  bool _isLoading = false;

  @override
  void dispose() {
    _formController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      scrollable: false,
      appBar: AppSliverAppBar(
        title: 'Мій профіль',
      ),

      children: [
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverToBoxAdapter(
            child: Form(
              key: _formController.formKey,
              child: Column(
                spacing: 18,
                children: [
                  AppTextFormField(
                    label: 'Ім\'я та прізвище',
                    placeholder: 'Введіть ім\'я та прізвище',
                    controller: _nameController,
                    required: true,
                    enabled: !_isLoading,
                  ),

                  AppTextFormField(
                    label: 'Номер телефону',
                    placeholder: 'Введіть номер телефону',
                    keyboardType: TextInputType.phone,
                    controller: _phoneController,
                    inputFormatters: [AppInputFormatters.phone()],
                    required: true,
                    enabled: !_isLoading,
                    validators: [AppValidators.phone],
                  ),

                  AppTextFormField(
                    label: 'Email',
                    placeholder: 'Введіть email',
                    keyboardType: TextInputType.emailAddress,
                    controller: _emailController,
                    enabled: false,
                  ),

                  AppButton(
                    isLoading: _isLoading,
                    onPressed: () async {
                      if (_formController.validate()) {
                        if (mounted) {
                          setState(() => _isLoading = true);
                        }

                        await Future.delayed(const Duration(seconds: 2));

                        if (mounted) {
                          setState(() => _isLoading = false);
                        }
                      }
                    },
                    text: 'Зберегти',
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
