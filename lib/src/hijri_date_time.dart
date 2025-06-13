import 'dart:core';
import 'dart:developer';

import 'package:hijri_date_time/src/adjustment_configuration/hijri_adjustment_configuration.dart';

part 'hijri_constants.dart';

part 'hijri_date_time_array.dart';

part 'hijri_service.dart';

const _defaultHijriAdjustmentConfiguration =
    DefaultHijriAdjustmentConfiguration();

/// A class representing a date and time in the Islamic Hijri calendar.
/// This class provides functionality to work with Hijri dates, including
/// conversion to and from Gregorian dates, and various date manipulation utilities.
class HijriDateTime {
  /// Private constructor to create a HijriDateTime instance with the given parameters.
  ///
  /// [year] The Hijri year.
  /// [month] The Hijri month (1-12).
  /// [day] The day of the month.
  /// [hour] The hour (0-23).
  /// [minute] The minute (0-59).
  /// [second] The second (0-59).
  /// [millisecond] The milliseconds (0-999).
  /// [microsecond] The microseconds (0-999).
  /// [adjustmentConfiguration] Configuration for Hijri date adjustments.
  /// [hijriService] Service for Hijri date calculations.
  HijriDateTime._(
    final int year, {
    final int month = 1,
    final int day = 1,
    final int hour = 0,
    final int minute = 0,
    final int second = 0,
    final int millisecond = 0,
    final int microsecond = 0,
    final AdjustmentConfiguration adjustmentConfiguration =
        _defaultHijriAdjustmentConfiguration,
    required _HijriService hijriService,
  }) {
    _year = year;
    _month = month;
    _day = day;
    _hour = hour;
    _minute = minute;
    _second = second;
    _millisecond = millisecond;
    _microsecond = microsecond;
    _adjustmentConfiguration = adjustmentConfiguration;
    _hijriService = hijriService;
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
  late _HijriService _hijriService;

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

  /// Creates a new HijriDateTime instance with the specified Hijri date and time components.
  ///
  /// [year] The Hijri year.
  /// [month] The Hijri month (1-12), defaults to 1.
  /// [day] The day of the month, defaults to 1.
  /// [hour] The hour (0-23), defaults to 0.
  /// [minute] The minute (0-59), defaults to 0.
  /// [second] The second (0-59), defaults to 0.
  /// [millisecond] The milliseconds (0-999), defaults to 0.
  /// [microsecond] The microseconds (0-999), defaults to 0.
  /// [adjustmentConfiguration] Configuration for Hijri date adjustments.
  ///
  /// Throws an error if the date is invalid according to the Hijri calendar.
  factory HijriDateTime(
    final int year, {
    final int month = 1,
    final int day = 1,
    final int hour = 0,
    final int minute = 0,
    final int second = 0,
    final int millisecond = 0,
    final int microsecond = 0,
    final AdjustmentConfiguration adjustmentConfiguration =
        _defaultHijriAdjustmentConfiguration,
  }) {
    final hijriService = _HijriService(adjustmentConfiguration);

    hijriService.isValidHijri(year, month, day);

    return HijriDateTime._(
      year,
      month: month,
      day: day,
      hour: hour,
      minute: minute,
      second: second,
      millisecond: millisecond,
      microsecond: microsecond,
      adjustmentConfiguration: adjustmentConfiguration,
      hijriService: hijriService,
    );
  }

  /// Creates a HijriDateTime instance representing the current date and time.
  ///
  /// [adjustmentConfiguration] Optional configuration for Hijri date adjustments.
  /// If not provided, uses the default configuration.
  factory HijriDateTime.now({
    AdjustmentConfiguration adjustmentConfiguration =
        _defaultHijriAdjustmentConfiguration,
  }) {
    return HijriDateTime.fromGregorian(
      DateTime.now(),
      adjustmentConfiguration: adjustmentConfiguration,
    );
  }

  /// Creates a HijriDateTime instance from a Gregorian DateTime.
  ///
  /// [dateTime] The Gregorian DateTime to convert.
  /// [adjustmentConfiguration] Optional configuration for Hijri date adjustments.
  /// If not provided, uses the default configuration.
  factory HijriDateTime.fromGregorian(
    DateTime dateTime, {
    AdjustmentConfiguration adjustmentConfiguration =
        _defaultHijriAdjustmentConfiguration,
  }) {
    final hijriService = _HijriService(adjustmentConfiguration);

    final hijriRecord = hijriService.toHijri(dateTime);

    return HijriDateTime._(
      hijriRecord.year,
      month: hijriRecord.month,
      day: hijriRecord.day,
      hour: dateTime.hour,
      minute: dateTime.minute,
      second: dateTime.second,
      millisecond: dateTime.millisecond,
      microsecond: dateTime.microsecond,
      adjustmentConfiguration: adjustmentConfiguration,
      hijriService: hijriService,
    );
  }

  /// Converts this Hijri date to its corresponding Gregorian date.
  ///
  /// Returns a [DateTime] instance representing the equivalent Gregorian date.
  DateTime toGregorian() {
    return _hijriService.toGregorian(year, month, day);
  }

  /// Gets the Islamic Lunar Number (ILN) for this date.
  ///
  /// Returns the number of lunar months since the beginning of the Islamic calendar.
  int get iln {
    return _hijriService.getILN(year, month);
  }

  /// Updates the adjustment configuration for this Hijri date.
  ///
  /// [adjustmentConfiguration] The new adjustment configuration to apply.
  ///
  /// Returns a new HijriDateTime instance with the updated configuration.
  /// The current instance is also updated with the new values.
  HijriDateTime updateAdjustmentConfiguration(
    AdjustmentConfiguration adjustmentConfiguration,
  ) {
    final hijriService = _HijriService(adjustmentConfiguration);
    final dateTime = hijriService.toGregorian(year, month, day);

    final hijriRecord = hijriService.toHijri(dateTime);

    final updatedDateTime = HijriDateTime._(
      hijriRecord.year,
      month: hijriRecord.month,
      day: hijriRecord.day,
      hour: _hour,
      minute: _minute,
      second: _second,
      millisecond: _millisecond,
      microsecond: _microsecond,
      adjustmentConfiguration: adjustmentConfiguration,
      hijriService: hijriService,
    );

    _year = updatedDateTime.year;
    _month = updatedDateTime.month;
    _day = updatedDateTime.day;
    _hour = updatedDateTime.hour;
    _minute = updatedDateTime.minute;
    _second = updatedDateTime.second;
    _millisecond = updatedDateTime.millisecond;
    _microsecond = updatedDateTime.microsecond;
    _adjustmentConfiguration = adjustmentConfiguration;
    _hijriService = hijriService;

    return updatedDateTime;
  }

  /// Gets the day of the week for this date.
  ///
  /// Returns a value from 1 (Monday) to 7 (Sunday).
  int get weekday => _hijriService.getWeekday(year, month, day);

  /// Gets the number of days in the current month.
  ///
  /// Returns the length of the current Hijri month.
  int get monthLength => _hijriService.getDaysInMonth(year, month);

  /// Adds a duration to this date and returns a new HijriDateTime instance.
  ///
  /// [duration] The duration to add.
  ///
  /// Returns a new HijriDateTime instance representing the resulting date and time.
  HijriDateTime add(Duration duration) {
    return _hijriService.add(
      duration,
      year: _year,
      month: _month,
      day: _day,
      hour: _hour,
      minute: _minute,
      second: _second,
      millisecond: _millisecond,
      microsecond: _microsecond,
      adjustmentConfiguration: _adjustmentConfiguration,
    );
  }

  /// Subtracts a duration from this date and returns a new HijriDateTime instance.
  ///
  /// [duration] The duration to subtract.
  ///
  /// Returns a new HijriDateTime instance representing the resulting date and time.
  HijriDateTime subtract(Duration duration) {
    return _hijriService.subtract(
      duration,
      year: _year,
      month: _month,
      day: _day,
      hour: _hour,
      minute: _minute,
      second: _second,
      millisecond: _millisecond,
      microsecond: _microsecond,
      adjustmentConfiguration: _adjustmentConfiguration,
    );
  }

  /// Calculates the difference between this date and another HijriDateTime.
  ///
  /// [other] The HijriDateTime to compare with.
  ///
  /// Returns the difference in days between the two dates.
  int difference(HijriDateTime other) {
    return _hijriService.difference(
      other,
      year: _year,
      month: _month,
      day: _day,
      hour: _hour,
      minute: _minute,
      second: _second,
      millisecond: _millisecond,
      microsecond: _microsecond,
    );
  }

  /// Checks if this date is after another HijriDateTime.
  ///
  /// [other] The HijriDateTime to compare with.
  ///
  /// Returns true if this date is after the other date.
  bool isAfter(HijriDateTime other) {
    return _hijriService.isAfter(
      other,
      year: _year,
      month: _month,
      day: _day,
      hour: _hour,
      minute: _minute,
      second: _second,
      millisecond: _millisecond,
      microsecond: _microsecond,
    );
  }

  /// Checks if this date is before another HijriDateTime.
  ///
  /// [other] The HijriDateTime to compare with.
  ///
  /// Returns true if this date is before the other date.
  bool isBefore(HijriDateTime other) {
    return _hijriService.isBefore(
      other,
      year: _year,
      month: _month,
      day: _day,
      hour: _hour,
      minute: _minute,
      second: _second,
      millisecond: _millisecond,
      microsecond: _microsecond,
    );
  }

  /// Returns a string representation of this date in the format "YYYY-MM-DD HH:mm:ss.mmmuuu".
  ///
  /// The microseconds part is only included if it's non-zero.
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
