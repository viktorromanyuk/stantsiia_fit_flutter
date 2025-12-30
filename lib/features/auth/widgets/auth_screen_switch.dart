import 'package:stantsiia_fit_flutter/router/router.gr.dart';
import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';
import 'package:stantsiia_fit_flutter/core/enums/enums.dart';

class AuthScreenSwitch extends StatelessWidget {
  const AuthScreenSwitch({
    super.key,
    required this.type,
  });

  final AuthType type;
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: AppFontSize.fs16.copyWith(fontWeight: FontWeight.w500),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 4,
        children: [
          Text(type == AuthType.login ? 'Ще не маєте акаунту?' : 'Вже маєте акаунт?'),
          GestureDetector(
            onTap: () => context.router.replaceAll([
              type == AuthType.login ? const SignupRoute() : const LoginRoute(),
            ]),
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: AppColors.whiteMilk, width: 1)),
              ),
              child: Text(type == AuthType.login ? 'Зареєструватися' : 'Увійти'),
            ),
          ),
        ],
      ),
    );
  }
}
