import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';

class AppTextFormField extends StatelessWidget {
  AppTextFormField({
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
    this.keyboardAppearance,
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
  final Brightness? keyboardAppearance;
  final List<TextInputFormatter> inputFormatters;
  final _borderBase = OutlineInputBorder(
    borderRadius: BorderRadius.all(AppStyles.borderRadius.r18),
  );

  late final ({
    OutlineInputBorder base,
    OutlineInputBorder disabled,
    OutlineInputBorder focused,
    OutlineInputBorder error,
  })
  _borderConfig = (
    base: _borderBase.copyWith(
      borderSide: BorderSide(color: AppStyles.colors.grayLight),
    ),
    disabled: _borderBase.copyWith(
      borderSide: BorderSide(color: AppStyles.colors.grayLight),
    ),
    focused: _borderBase.copyWith(
      borderSide: BorderSide(color: AppStyles.colors.grayDark),
    ),
    error: _borderBase.copyWith(
      borderSide: BorderSide(color: AppStyles.colors.error),
    ),
  );

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
      builder: (fieldState) {
        final errorText = fieldState.errorText;

        return Column(
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
                        style: AppStyles.fontSize.fs14.copyWith(
                          height: AppStyles.lineHeight.none,
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
                                color: AppStyles.colors.error,
                                height: AppStyles.lineHeight.none,
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
              inputFormatters: inputFormatters,
              onChanged: fieldState.didChange,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),

                filled: true,
                fillColor: enabled ? AppStyles.colors.transparent : AppStyles.colors.disabledBg,

                hintText: hint,
                hintStyle: AppStyles.fontSize.fs16.copyWith(
                  color: enabled ? AppStyles.colors.placeholder : AppStyles.colors.disabledText,
                  fontWeight: FontWeight.w500,
                ),

                enabledBorder: _borderConfig.base,
                disabledBorder: _borderConfig.disabled,
                focusedBorder: _borderConfig.focused,

                focusedErrorBorder: _borderConfig.error,
                errorBorder: _borderConfig.error,
                error: errorText != null
                    ? Transform.translate(
                        offset: const Offset(-5, 0),
                        child: Text(
                          errorText,
                          style: AppStyles.fontSize.fs12.copyWith(
                            height: AppStyles.lineHeight.none,
                            color: AppStyles.colors.error,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    : null,
              ),
              onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
            ),
          ],
        );
      },
    );
  }
}
