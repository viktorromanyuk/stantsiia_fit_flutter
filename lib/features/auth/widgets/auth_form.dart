import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:stantsiia_fit_flutter/router/router.gr.dart';

import 'package:stantsiia_fit_flutter/gen/assets.gen.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';
import 'package:stantsiia_fit_flutter/core/enums/enums.dart';

import './widgets.dart';

class AuthForm extends StatelessWidget {
  const AuthForm({
    super.key,
    required this.formKey,
    required this.type,
    required this.formFields,
  });

  final GlobalKey<FormState> formKey;
  final AuthType type;
  final List<Widget> formFields;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: mediaQuery.size.height - mediaQuery.padding.top,
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppIcon(Assets.icons.logoFull, height: 40),

                  const SizedBox(height: 40),
                  AuthProviders(),

                  const SizedBox(height: 28),
                  AuthDivider(),
                  const SizedBox(height: 8),

                  Form(
                    key: formKey,
                    child: Column(
                      spacing: 18,
                      children: [
                        ...formFields,

                        Padding(
                          padding: const EdgeInsets.only(top: 14),
                          child: AppButton(
                            onPressed: () {
                              if (formKey.currentState?.validate() ?? false) {
                                context.router.push(const OtpVerifyRoute());
                              }
                            },
                            text: type == AuthType.login ? 'Увійти' : 'Зареєструватись',
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),
                  AuthScreenSwitch(type: type),

                  const SizedBox(height: 16),
                  AuthLegalDisclaimer(type: type),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
