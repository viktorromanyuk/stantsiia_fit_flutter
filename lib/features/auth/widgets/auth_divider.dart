import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';

class AuthDivider extends StatelessWidget {
  const AuthDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20,
      children: [
        const Expanded(child: Divider()),
        Text(
          'Або',
          style: TextStyle(fontFamily: FontFamily.unbounded, height: AppLineHeight.none),
        ),
        const Expanded(child: Divider()),
      ],
    );
  }
}
