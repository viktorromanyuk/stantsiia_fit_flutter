import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stantsiia_fit_flutter/core/utils/utils.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    this.enabled = true,
    this.required = false,
    this.autofocus = false,
    this.obscureText = false,
    this.readOnly = false,
    this.label,
    this.hint,
    this.placeholder,
    this.validators,
    this.controller,
    this.keyboardType,
    this.inputFormatters = const [],
    this.onSubmitted,
  });

  final bool enabled;
  final bool required;
  final bool autofocus;
  final bool obscureText;
  final bool readOnly;

  final String? label;
  final String? hint;
  final String? placeholder;
  final List<Validator>? validators;
  final FormFieldController? controller;
  final TextInputType? keyboardType;
  final List<TextInputFormatter> inputFormatters;
  final VoidCallback? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 150),
      curve: Curves.easeOut,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (label != null)
            Padding(
              padding: const EdgeInsets.only(left: 14, bottom: 6),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: label ?? '',
                      style: AppFontSize.fs14.copyWith(
                        height: AppLineHeight.none,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    if (required)
                      WidgetSpan(
                        alignment: PlaceholderAlignment.aboveBaseline,
                        baseline: TextBaseline.ideographic,
                        child: SizedBox(
                          width: 8,
                          child: Text(
                            '*',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.error,
                              height: AppLineHeight.none,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            enabled: enabled,
            autofocus: autofocus,
            obscureText: obscureText,
            readOnly: readOnly,
            controller: controller?.textController,
            focusNode: controller?.focusNode,
            keyboardType: keyboardType,
            keyboardAppearance: Brightness.dark,
            inputFormatters: inputFormatters,
            errorBuilder: (context, errorText) {
              return Transform.translate(
                offset: const Offset(-5, 0),
                child: Text(
                  errorText,
                  style: AppFontSize.fs12.copyWith(
                    height: AppLineHeight.none,
                    color: AppColors.error,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              );
            },

            decoration: InputDecoration(
              fillColor: enabled ? AppColors.grayDarkAccent : AppColors.disabledBg,

              hintText: placeholder,
              hintStyle: AppFontSize.fs16.copyWith(
                color: enabled ? AppColors.placeholder : AppColors.disabledText,
                fontWeight: FontWeight.w500,
              ),
            ),
            onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
            validator: AppValidators.combine([
              if (required) AppValidators.required,
              ...(validators ?? []),
            ]),
          ),

          if (hint != null)
            Container(
              padding: const EdgeInsets.only(top: 6),
              alignment: Alignment.center,
              child: Text(
                hint ?? '',
                style: AppFontSize.fs12.copyWith(color: AppColors.grayLight),
              ),
            ),
        ],
      ),
    );
  }
}
