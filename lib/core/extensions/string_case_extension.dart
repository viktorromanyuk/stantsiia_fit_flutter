extension StringCaseExtension on String {
  String toCapitalCase({int lastCapitalized = 0}) {
    return '${this[lastCapitalized].toUpperCase()}${this.substring(lastCapitalized + 1).toLowerCase()}';
  }
}
