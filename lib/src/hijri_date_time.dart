import 'dart:core';
import 'dart:developer';

part 'hijri_array.dart';

part 'hijri_constants.dart';

part 'hijri_service.dart';

class HijriDateTime {
  static late _HijriService _hijriService;

  HijriDateTime._(
    final int year, [
    final int month = 1,
    final int day = 1,
    final int hour = 0,
    final int minute = 0,
    final int second = 0,
    final int millisecond = 0,
    final int microsecond = 0,
    final Map<int, int>? adjustments,
  ]) {
    _year = year;
    _month = month;
    _day = day;
    _hour = hour;
    _minute = minute;
    _second = second;
    _millisecond = millisecond;
    _microsecond = microsecond;
    _adjustments = adjustments ?? <int, int>{};
  }

  late int _year;
  late int _month;
  late int _day;
  late int _hour;
  late int _minute;
  late int _second;
  late int _millisecond;
  late int _microsecond;
  late Map<int, int> _adjustments;

  int get year => _year;

  int get month => _month;

  int get day => _day;

  int get hour => _hour;

  int get minute => _minute;

  int get second => _second;

  int get millisecond => _millisecond;

  int get microsecond => _microsecond;

  Map<int, int> get adjustments => _adjustments;

  factory HijriDateTime(
    final int year, [
    final int month = 1,
    final int day = 1,
    final int hour = 0,
    final int minute = 0,
    final int second = 0,
    final int millisecond = 0,
    final int microsecond = 0,
    final Map<int, int>? adjustments,
  ]) {
    _hijriService = _HijriService(adjustments ?? <int, int>{})
      ..isValidHijri(year, month, day);
    return HijriDateTime._(
      year,
      month,
      day,
      hour,
      minute,
      second,
      millisecond,
      microsecond,
      adjustments,
    );
  }

  factory HijriDateTime.now({Map<int, int>? adjustments}) {
    _hijriService = _HijriService(adjustments ?? <int, int>{});

    final now = DateTime.now();
    return HijriDateTime.fromGregorian(
      now,
      adjustments: adjustments ?? <int, int>{},
    );
  }

  factory HijriDateTime.fromGregorian(
    DateTime dateTime, {
    Map<int, int> adjustments = const {},
  }) {
    _hijriService = _HijriService(adjustments);

    final hijriRecord = _hijriService.toHijri(dateTime);

    return HijriDateTime._(
      hijriRecord.year,
      hijriRecord.month,
      hijriRecord.day,
      dateTime.hour,
      dateTime.minute,
      dateTime.second,
      dateTime.millisecond,
      dateTime.microsecond,
      adjustments,
    );
  }

  DateTime toGregorian() {
    return _hijriService.toGregorian(year, month, day);
  }

  /// The Julian Day Number is the continuous count of days since
  /// January 1, 4713 BCE (Julian calendar). It is used in astronomy and
  /// calendar computations as a neutral time reference.
  ///
  /// CJDN – Chronological Julian Day Number
  /// This term generally refers to the standard Julian Day Number (JDN).
  ///
  /// MCJDN – Modified Chronological Julian Day Number
  /// This is typically the JDN minus 2,400,000.
  int get jdn {
    return _hijriService.getJdn(year, month, day);
  }

  /// Islamic Lunar Index (ILN)
  int get iln {
    return _hijriService.getILN(year, month);
  }

  HijriDateTime updateAdjustments(Map<int, int> adjustments) {
    final gregorianDateTime = toGregorian();
    _adjustments = Map.from(_adjustments);
    _adjustments.addAll(adjustments);
    final newHijriDateTime = HijriDateTime.fromGregorian(gregorianDateTime,
        adjustments: _adjustments);

    _year = newHijriDateTime.year;
    _month = newHijriDateTime.month;
    _day = newHijriDateTime.day;

    return newHijriDateTime;
  }

  int get weekday => _hijriService.getWeekday(year, month, day);

  int get monthLength => _hijriService.getDaysInMonth(year, month);

  // Add utility functions like: difference, isAfter, isBefore,

  @override
  String toString() {
    String y = _fourDigits(year);
    String m = _twoDigits(month);
    String d = _twoDigits(day);
    String h = _twoDigits(hour);
    String min = _twoDigits(minute);
    String sec = _twoDigits(second);
    String ms = _threeDigits(millisecond);
    String us = microsecond == 0 ? "" : _threeDigits(microsecond);

    return "$y-$m-$d $h:$min:$sec.$ms$us";
  }

  static String _fourDigits(int n) {
    int absN = n.abs();
    String sign = n < 0 ? "-" : "";
    if (absN >= 1000) return "$n";
    if (absN >= 100) return "${sign}0$absN";
    if (absN >= 10) return "${sign}00$absN";
    return "${sign}000$absN";
  }

  static String _threeDigits(int n) {
    if (n >= 100) return "$n";
    if (n >= 10) return "0$n";
    return "00$n";
  }

  static String _twoDigits(int n) {
    if (n >= 10) return "$n";
    return "0$n";
  }
}
