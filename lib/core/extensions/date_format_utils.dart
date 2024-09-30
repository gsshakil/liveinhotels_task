import 'package:intl/intl.dart';

class DateFormatUtils {
  static formatMonth(DateTime dateTime) {
    DateFormat('MMM').format(dateTime);
  }

  static formatDay(DateTime dateTime) {
    DateFormat('dd').format(dateTime);
  }
}
