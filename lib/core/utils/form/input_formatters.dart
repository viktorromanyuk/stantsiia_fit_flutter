import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

abstract final class AppInputFormatters {
  static MaskTextInputFormatter phone() {
    return MaskTextInputFormatter(
      mask: '+380 (##) ###-##-##',
      filter: {'#': RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy,
    );
  }
}
