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
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController(text: 'viktoraromanyuk@gmail.com');

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      theme: ThemeMode.light,
      appBar: AppSliverAppBar(
        title: 'Мій профіль',
      ),

      children: [
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverToBoxAdapter(
            child: Form(
              key: _formKey,
              child: Column(
                spacing: 18,
                children: [
                  AppTextFormField(
                    label: 'Ім\'я та прізвище',
                    hint: 'Введіть ім\'я та прізвище',
                    controller: _nameController,
                    required: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        print('error');
                        return 'Введіть ім\'я та прізвище';
                      }
                      return null;
                    },
                  ),

                  AppTextFormField(
                    label: 'Номер телефону',
                    hint: 'Введіть номер телефону',
                    keyboardType: TextInputType.phone,
                    controller: _phoneController,
                    inputFormatters: [AppInputFormatters.phone],
                    required: true,
                    validator: (value) {
                      final phone = value?.trim() ?? '';

                      final unmasked = AppInputFormatters.phone.unmaskText(phone);
                      if (unmasked.length != 9) {
                        return 'Недійсний формат';
                      }

                      return null;
                    },
                  ),

                  AppTextFormField(
                    label: 'Email',
                    hint: 'Введіть email',
                    keyboardType: TextInputType.emailAddress,
                    controller: _emailController,
                    enabled: false,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 14),
                    child: AppButton(
                      onPressed: () {
                        print('validate');
                        _formKey.currentState?.validate();
                      },
                      text: 'Зберегти',
                    ),
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
