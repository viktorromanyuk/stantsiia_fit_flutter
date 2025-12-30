import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:stantsiia_fit_flutter/core/enums/enums.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';

class AuthLegalDisclaimer extends StatefulWidget {
  const AuthLegalDisclaimer({super.key, required this.type});

  final AuthType type;

  @override
  State<AuthLegalDisclaimer> createState() => _AuthLegalDisclaimerState();
}

class _AuthLegalDisclaimerState extends State<AuthLegalDisclaimer> {
  final _tapGestureRecognizer = TapGestureRecognizer();

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  //TODO: add links to env
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: AppFontSize.fs12.copyWith(color: AppColors.grayLight),
        children: [
          TextSpan(
            text:
                '${widget.type == AuthType.login ? 'Входячи в' : 'Створюючи'} обліковий запис, ви погоджуєтесь з нашими ',
          ),
          TextSpan(
            text: 'правилами й умовами ',
            style: TextStyle(color: AppColors.purple100, decoration: TextDecoration.underline),
            recognizer: _tapGestureRecognizer
              ..onTap = () => launchUrl(Uri.parse('http://192.168.1.136:3005/terms-and-conditions')),
          ),
          TextSpan(text: 'та '),
          TextSpan(
            text: 'політикою конфіденційності',
            style: TextStyle(color: AppColors.purple100, decoration: TextDecoration.underline),
            recognizer: _tapGestureRecognizer
              ..onTap = () => launchUrl(Uri.parse('http://192.168.1.136:3005/privacy-policy')),
          ),
        ],
      ),
    );
  }
}
