import 'dart:core';
import 'dart:developer';

import 'package:hijri_date_time/src/adjustment_configuration/hijri_adjustment_configuration.dart';

part 'hijri_constants.dart';

part 'hijri_service.dart';

const _defaultHijriAdjustmentConfiguration =
    DefaultHijriAdjustmentConfiguration();

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
    final AdjustmentConfiguration adjustmentConfiguration =
        _defaultHijriAdjustmentConfiguration,
  ]) {
    _year = year;
    _month = month;
    _day = day;
    _hour = hour;
    _minute = minute;
    _second = second;
    _millisecond = millisecond;
    _microsecond = microsecond;
    _adjustmentConfiguration = adjustmentConfiguration;
  }

  late int _year;
  late int _month;
  late int _day;
  late int _hour;
  late int _minute;
  late int _second;
  late int _millisecond;
  late int _microsecond;
  late AdjustmentConfiguration _adjustmentConfiguration;

  int get year => _year;

  int get month => _month;

  int get day => _day;

  int get hour => _hour;

  int get minute => _minute;

  int get second => _second;

  int get millisecond => _millisecond;

  int get microsecond => _microsecond;

  AdjustmentConfiguration get adjustmentConfiguration =>
      _adjustmentConfiguration;

  factory HijriDateTime(
    final int year, [
    final int month = 1,
    final int day = 1,
    final int hour = 0,
    final int minute = 0,
    final int second = 0,
    final int millisecond = 0,
    final int microsecond = 0,
    final AdjustmentConfiguration adjustmentConfiguration =
        _defaultHijriAdjustmentConfiguration,
  ]) {
    _hijriService = _HijriService(adjustmentConfiguration);

    _hijriService.isValidHijri(year, month, day);

    _setHijriAdjustmentConfiguration(adjustmentConfiguration);

    return HijriDateTime._(
      year,
      month,
      day,
      hour,
      minute,
      second,
      millisecond,
      microsecond,
      adjustmentConfiguration,
    );
  }

  factory HijriDateTime.now({
    AdjustmentConfiguration adjustmentConfiguration =
        _defaultHijriAdjustmentConfiguration,
  }) {
    _hijriService = _HijriService(adjustmentConfiguration);

    _setHijriAdjustmentConfiguration(adjustmentConfiguration);

    final now = DateTime.now();
    return HijriDateTime.fromGregorian(
      now,
      adjustmentConfiguration: adjustmentConfiguration,
    );
  }

  factory HijriDateTime.fromGregorian(
    DateTime dateTime, {
    AdjustmentConfiguration adjustmentConfiguration =
        _defaultHijriAdjustmentConfiguration,
  }) {
    _hijriService = _HijriService(adjustmentConfiguration);

    _setHijriAdjustmentConfiguration(adjustmentConfiguration);

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
      adjustmentConfiguration,
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

  HijriDateTime updateAdjustmentConfiguration(
    AdjustmentConfiguration adjustmentConfiguration,
  ) {
    _adjustmentConfiguration = adjustmentConfiguration;
    _hijriService = _HijriService(_adjustmentConfiguration);

    _setHijriAdjustmentConfiguration(_adjustmentConfiguration);

    final gregorianDateTime = toGregorian();

    final newHijriDateTime = HijriDateTime.fromGregorian(
      gregorianDateTime,
      adjustmentConfiguration: _adjustmentConfiguration,
    );

    _year = newHijriDateTime.year;
    _month = newHijriDateTime.month;
    _day = newHijriDateTime.day;

    return newHijriDateTime;
  }

  int get weekday => _hijriService.getWeekday(year, month, day);

  int get monthLength => _hijriService.getDaysInMonth(year, month);

  // Add utility functions like: difference, isAfter, isBefore,

  static void _setHijriAdjustmentConfiguration(
      AdjustmentConfiguration configuration) {
    switch (configuration) {
      case DefaultHijriAdjustmentConfiguration():
      case GlobalHijriAdjustmentConfiguration():
        break;
      case IndiaHijriAdjustmentConfiguration():
        _hijriService.updateUmmAlQuraDataForIndia();
    }
  }

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
