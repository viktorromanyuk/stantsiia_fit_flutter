import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:stantsiia_fit_flutter/router/router.gr.dart';

import 'package:stantsiia_fit_flutter/styles/styles.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';
import 'package:stantsiia_fit_flutter/core/utils/utils.dart';

@RoutePage()
class OtpVerifyScreen extends StatefulWidget {
  const OtpVerifyScreen({super.key});

  @override
  State<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends State<OtpVerifyScreen> {
  final _pinController = FormFieldController();
  late final _formController = FormController([
    _pinController,
  ]);

  @override
  void dispose() {
    _formController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0,
        title: Text(
          'Код верифікації',
          style: AppFontSize.fs20.copyWith(
            fontFamily: FontFamily.unbounded,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              AppAlertBanner(
                child: RichText(
                  text: TextSpan(
                    style: AppFontSize.fs14,
                    children: [
                      TextSpan(text: 'На ваш email '),
                      TextSpan(
                        text: 'viktoraromanyuk@gmail.com',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ), // TODO: add dynamic email
                      TextSpan(text: ' було відправлено '),
                      TextSpan(text: 'код верифікації.'), // TODO: add dynamic alert text
                      TextSpan(text: ' Будь ласка введіть його у полі нижче.'),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 32),

              Form(
                key: _formController.formKey,
                child: AppPinInput(controller: _pinController),
              ),

              SizedBox(height: 32),
              AppButton(
                text: 'Підтвердити',
                onPressed: () {
                  if (_formController.validate()) {
                    context.router.replaceAll([const MainLayoutRoute()]);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
