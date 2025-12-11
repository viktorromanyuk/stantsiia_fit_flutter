import 'package:dart_date/dart_date.dart';

abstract final class AppDateFormats {
  static const hoursAndMinutes = 'HH:mm';
  static const year = 'yyyy';
  static const monthLong = 'MMMM';
  static const dayOfMonth = 'dd';
  static const weekdayShort = 'EEE';
  static const weekdayLong = 'EEEE';
  static const dayMonthLong = 'd MMMM';
  static const dayMonthShort = 'dd.MM';
  static const dayMonthYear = 'dd.MM.yyyy';
  static const monthDayYearWithDash = 'MM-dd-yyyy';
}

String formatDate(DateTime date, String format) => date.format(format, 'uk');
