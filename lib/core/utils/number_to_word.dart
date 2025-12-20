String numberToWord(num number, List<String> variants) {
  assert(variants.length >= 3, 'At least 3 variants are required');

  String word;

  final lastDigit = number.toInt() % 10;
  final lastTwoDigits = number.toInt() % 100;

  if (number is double && number != number.truncateToDouble()) {
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
