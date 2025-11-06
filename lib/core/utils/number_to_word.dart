/// Converts a number to a word with proper Ukrainian pluralization.
///
/// Example:
/// ```dart
/// numberToWord(1, ['місяць', 'місяці', 'місяців', 'місяця']) // "1 місяць"
/// numberToWord(2, ['місяць', 'місяці', 'місяців', 'місяця']) // "2 місяці"
/// numberToWord(5, ['місяць', 'місяці', 'місяців', 'місяця']) // "5 місяців"
/// ```
///
/// [number] can be int or double
/// [variants] should contain 4 forms:
/// - [0] singular (1, 21, 31, etc.)
/// - [1] few (2-4, 22-24, etc.)
/// - [2] many (5-20, 25-30, etc.)
/// - [3] fractional (optional, for non-integers)
String numberToWord(num number, List<String> variants) {
  assert(variants.length >= 3, 'At least 3 variants are required');

  String word;

  final lastDigit = number.toInt() % 10;
  final lastTwoDigits = number.toInt() % 100;

  if (number is double && number != number.truncateToDouble()) {
    // Non-integer - use fractional form (4th variant) if provided
    word = variants.length >= 4 ? variants[3] : variants[2];
  } else if (lastDigit == 1 && lastTwoDigits != 11) {
    word = variants[0];
  } else if (lastDigit >= 2 && lastDigit <= 4 && (lastTwoDigits < 10 || lastTwoDigits >= 20)) {
    word = variants[1];
  } else {
    word = variants[2];
  }

  return '$number $word';
}
