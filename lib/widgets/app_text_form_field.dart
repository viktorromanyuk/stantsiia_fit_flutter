import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    this.validator,
    this.controller,
    this.keyboardType,
    this.inputFormatters = const [],
  });

  final bool enabled;
  final bool required;
  final bool autofocus;
  final bool obscureText;
  final bool readOnly;

  final String? label;
  final String? hint;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final List<TextInputFormatter> inputFormatters;

  @override
  Widget build(BuildContext context) {
    return FormField<String>(
      validator: (value) {
        final text = controller?.text ?? value ?? '';
        if (required && text.isEmpty) {
          return 'Обовʼязкове поле';
        }
        return validator?.call(text);
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      builder: (fieldState) => Column(
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
          TextField(
            enabled: enabled,
            autofocus: autofocus,
            obscureText: obscureText,
            readOnly: readOnly,
            controller: controller,
            keyboardType: keyboardType,
            keyboardAppearance: Brightness.dark,
            inputFormatters: inputFormatters,
            decoration: InputDecoration(
              fillColor: enabled ? AppColors.grayDarkAccent : AppColors.disabledBg,

              hintText: hint,
              hintStyle: AppFontSize.fs16.copyWith(
                color: enabled ? AppColors.placeholder : AppColors.disabledText,
                fontWeight: FontWeight.w500,
              ),

              error: fieldState.errorText != null
                  ? Transform.translate(
                      offset: const Offset(-5, 0),
                      child: Text(
                        fieldState.errorText ?? '',
                        style: AppFontSize.fs12.copyWith(
                          height: AppLineHeight.none,
                          color: AppColors.error,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  : null,
            ),
            onChanged: fieldState.didChange,
            onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
          ),
        ],
      ),
    );
  }
}
