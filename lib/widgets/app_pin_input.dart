import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';
import 'package:stantsiia_fit_flutter/core/utils/utils.dart';

final _defaultPinTheme = PinTheme(
  width: 50,
  height: 50,
  textStyle: AppFontSize.fs20.copyWith(
    fontFamily: FontFamily.unbounded,
  ),
  decoration: BoxDecoration(
    border: Border.all(color: AppColors.gray),
    borderRadius: BorderRadius.all(AppBorderRadius.r8),
  ),
);

final _focusedPinTheme = _defaultPinTheme.copyDecorationWith(
  border: Border.all(color: AppColors.whiteMilk),
);

final _errorPinTheme = _defaultPinTheme.copyDecorationWith(
  border: Border.all(color: AppColors.error),
);

class AppPinInput extends StatelessWidget {
  const AppPinInput({super.key, required this.controller});

  final FormFieldController controller;

  @override
  Widget build(BuildContext context) {
    return Pinput(
      controller: controller.textController,
      focusNode: controller.focusNode,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      errorTextStyle: AppFontSize.fs12.copyWith(
        height: AppLineHeight.none,
        color: AppColors.error,
        fontWeight: FontWeight.w500,
      ),
      defaultPinTheme: _defaultPinTheme,
      focusedPinTheme: _focusedPinTheme,
      errorPinTheme: _errorPinTheme,
      length: 6,

      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      validator: (pin) {
        if (pin == '111111') return null;

        return 'Код недійсний або термін його дії закінчився';
      },
    );
  }
}
