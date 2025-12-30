import 'package:flutter/material.dart';

import 'package:stantsiia_fit_flutter/gen/assets.gen.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';

class AuthProviders extends StatelessWidget {
  const AuthProviders({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        AppButton(
          icon: Assets.icons.google,
          text: 'Увійти з Google',
        ),
        AppButton(
          icon: Assets.icons.apple,
          text: 'Увійти з Apple',
        ),
      ],
    );
  }
}
