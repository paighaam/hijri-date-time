part of 'hijri_date_time.dart';

typedef JDNs = ({int mcjdn, int cjdn, int jdn});

typedef _HijriDateTimeRecord = ({int year, int month, int day});

class _HijriService {
  static final Map<int, _HijriService> _instances = {};

  final List<int> _ummAlQuraDateArray;
  final Map<int, int> _adjustments;

  const _HijriService._(this._adjustments, this._ummAlQuraDateArray);

  factory _HijriService(AdjustmentConfiguration adjustmentConfiguration) {
    return _instances[adjustmentConfiguration.hashCode] ??= _HijriService._(
      adjustmentConfiguration.adjustments,
      switch (adjustmentConfiguration) {
        DefaultHijriAdjustmentConfiguration() => UMMALQURADATEARRAY,
        GlobalHijriAdjustmentConfiguration() => UMMALQURADATEARRAY,
        IndiaHijriAdjustmentConfiguration() =>
          _updateUmmAlQuraDataForIndia(UMMALQURADATEARRAY),
      },
    );
  }

  DateTime toGregorian(int year, int month, int day) {
    int cjdn = _getCJDN(year, month, day);

    return _julianToGregorian(cjdn);
  }

  DateTime _julianToGregorian(int julianDate) {
    //source from: http://keith-wood.name/calendars.html
    int z = (julianDate + 0.5).floor();
    int a = ((z - 1867216.25) / 36524.25).floor();
    a = z + 1 + a - (a / 4).floor();
    int b = a + 1524;
    int c = ((b - 122.1) / 365.25).floor();
    int d = (365.25 * c).floor();
    int e = ((b - d) / 30.6001).floor();
    int day = b - d - (e * 30.6001).floor();
    int month = e - (e > 13.5 ? 13 : 1);
    int year = c - (month > 2.5 ? 4716 : 4715);
    if (year <= 0) {
      year--;
    } // No year zero
    return DateTime(year, month, day);
  }

  // Gregorian to Hijri Conversion - Updated to follow HijriCalendar approach
  _HijriDateTimeRecord toHijri(DateTime dateTime) {
    final year = dateTime.year;
    final month = dateTime.month;
    final day = dateTime.day;

    // Follow HijriCalendar's gregorianToHijri method
    int m = month;
    int y = year;

    // append January and February to the previous year (i.e. regard March as
    // the first month of the year in order to simplify leapday corrections)
    if (m < 3) {
      y -= 1;
      m += 12;
    }

    // determine offset between Julian and Gregorian calendar
    int a = (y / 100).floor();
    int jgc = a - (a / 4.0).floor() - 2;

    // compute Chronological Julian Day Number (CJDN)
    int cjdn = (365.25 * (y + 4716)).floor() +
        (30.6001 * (m + 1)).floor() +
        day -
        jgc -
        1524;

    // Additional Gregorian calendar adjustment (from HijriCalendar)
    a = ((cjdn - 1867216.25) / 36524.25).floor();
    jgc = a - (a / 4.0).floor() + 1;
    int b = cjdn + jgc + 1524;
    int c = ((b - 122.1) / 365.25).floor();
    int d = (365.25 * c).floor();
    int adjustedMonth = ((b - d) / 30.6001).floor();
    // int adjustedDay = (b - d) - (30.6001 * adjustedMonth).floor();

    if (adjustedMonth > 13) {
      c += 1;
      adjustedMonth -= 12;
    }

    adjustedMonth -= 1;
    // int adjustedYear = c - 4716;

    // compute Modified Chronological Julian Day Number (MCJDN)
    int mcjdn = cjdn - 2400000;

    // Find the correct lunation index using HijriCalendar's approach
    int i;
    for (i = 0; i < _ummAlQuraDateArray.length; i++) {
      if (_ummalquraDataIndex(i)! > mcjdn) break;
    }

    // Debug prints
    final adjPrev = _adjustments[(i - 1) + 16260];
    final adjCurr = _adjustments[i + 16260];
    log('mcjdn: '
        '[33m$mcjdn[0m, '
        '_ummalquraDataIndex(i-1): '
        '[33m${_ummalquraDataIndex(i - 1)}[0m, adjPrev: $adjPrev, '
        '_ummalquraDataIndex(i): '
        '[33m${_ummalquraDataIndex(i)}[0m, adjCurr: $adjCurr');

    // compute and output the Umm al-Qura calendar date
    int iln = i + 16260;
    int ii = ((iln - 1) / 12).floor();
    int hYear = ii + 1;
    int hMonth = iln - 12 * ii;

    // Calculate the day taking into account adjustments
    int baseDay = mcjdn - _ummalquraDataIndex(i - 1)! + 1;
    int monthLength = _ummalquraDataIndex(i)! - _ummalquraDataIndex(i - 1)!;

    // If the day exceeds the month length, it means we need to move to the next month
    if (baseDay > monthLength) {
      hMonth++;
      if (hMonth > 12) {
        hMonth = 1;
        hYear++;
      }
      baseDay = 1;
    }

    int hDay = baseDay;

    log('Converted Gregorian Date: $year-$month-$day to Hijri Date: $hYear-$hMonth-$hDay');
    log('Indices - CJDN: $cjdn, MCJDN: $mcjdn, ILN: $iln, Index: $i');
    log('Month Length: $monthLength, Base Day: $baseDay');

    return (year: hYear, month: hMonth, day: hDay);
  }

  // Updated to follow HijriCalendar's adjustment approach
  int? _ummalquraDataIndex(int index) {
    if (index < 0 || index >= _ummAlQuraDateArray.length) {
      throw ArgumentError(
          "Valid date should be between 1356 AH (14 March 1937 CE) to 1500 AH (16 November 2077 CE)");
    }

    // Add the adjustment to the base value instead of replacing it
    if (_adjustments.containsKey(index + 16260)) {
      return _ummAlQuraDateArray[index] + _adjustments[index + 16260]!;
    }

    return _ummAlQuraDateArray[index];
  }

  int getJdn(int year, int month, int day) {
    return _getCJDN(year, month, day);
  }

  int getILN(int year, int month) {
    return ((year - 1) * 12) + month;
  }

  int _getCJDN(int year, int month, int day) {
    int index = _getNewMoonIndex(year, month);
    int mcjdn = _getMCJDN(day, index);
    return mcjdn + 2400000;
  }

  int _getMCJDN(int day, int index) {
    return day + _ummalquraDataIndex(index - 1)! - 1;
  }

  int _getNewMoonIndex(int year, int month) {
    int cYears = year - 1;
    int totalMonths = (cYears * 12) + 1 + (month - 1);
    return totalMonths - 16260;
  }

  int _calculateWeekday(int cjdn) {
    // Use HijriCalendar's _gMod approach for weekday calculation
    int wd = _gMod(cjdn + 1, 7);
    return wd == 0 ? 7 : wd;
  }

  // Helper method from HijriCalendar
  int _gMod(int n, int m) {
    // generalized modulo function (n mod m) also valid for negative values of n
    return ((n % m) + m) % m;
  }

  int getWeekday(int year, int month, int day) {
    final cjdn = _getCJDN(year, month, day);
    return _calculateWeekday(cjdn);
  }

  // Updated to follow HijriCalendar's getDaysInMonth approach
  int getDaysInMonth(int year, int month) {
    int i = _getNewMoonIndex(year, month);
    return _ummalquraDataIndex(i)! - _ummalquraDataIndex(i - 1)!;
  }

  // Hijri Date Validation - simplified to match HijriCalendar
  void isValidHijri(int year, int month, int day) {
    if (month < 1 || month > 12) {
      throw ArgumentError("Hijri month must be between 1 and 12");
    }
    if (day < 1 || day > 30) {
      throw ArgumentError("Hijri day must be between 1 and 30");
    }
    // Additional validation: check if day is valid for the specific month
    if (day > getDaysInMonth(year, month)) {
      throw ArgumentError(
          "Day $day is not valid for month $month in year $year");
    }
  }

  static List<int> _updateUmmAlQuraDataForIndia(List<int> ummAlQuraDateArray) {
    final newData = List<int>.from(ummAlQuraDateArray);
    for (int i = 0; i < newData.length; i++) {
      newData[i] = newData[i] + 1;
    }

    return newData;
  }

  HijriDateTime add(
    Duration duration, {
    required int year,
    required int month,
    required int day,
    required int hour,
    required int minute,
    required int second,
    required int millisecond,
    required int microsecond,
    required AdjustmentConfiguration adjustmentConfiguration,
  }) {
    // Convert current Hijri date to Gregorian with time components
    final gregorianBase = toGregorian(year, month, day);
    final gregorianDate = DateTime(
      gregorianBase.year,
      gregorianBase.month,
      gregorianBase.day,
      hour,
      minute,
      second,
      millisecond,
      microsecond,
    );

    // Add the duration to Gregorian date
    final newGregorianDate = gregorianDate.add(duration);

    // Convert back to Hijri
    final hijriRecord = toHijri(newGregorianDate);

    // Create new HijriDateTime with the updated time components
    return HijriDateTime._(
      hijriRecord.year,
      month: hijriRecord.month,
      day: hijriRecord.day,
      hour: newGregorianDate.hour,
      minute: newGregorianDate.minute,
      second: newGregorianDate.second,
      millisecond: newGregorianDate.millisecond,
      microsecond: newGregorianDate.microsecond,
      adjustmentConfiguration: adjustmentConfiguration,
      hijriService: this,
    );
  }

  HijriDateTime subtract(
    Duration duration, {
    required int year,
    required int month,
    required int day,
    required int hour,
    required int minute,
    required int second,
    required int millisecond,
    required int microsecond,
    required AdjustmentConfiguration adjustmentConfiguration,
  }) {
    // Reuse add by negating the duration
    return add(
      -duration,
      year: year,
      month: month,
      day: day,
      hour: hour,
      minute: minute,
      second: second,
      millisecond: millisecond,
      microsecond: microsecond,
      adjustmentConfiguration: adjustmentConfiguration,
    );
  }

  int difference(
    HijriDateTime other, {
    required int year,
    required int month,
    required int day,
    required int hour,
    required int minute,
    required int second,
    required int millisecond,
    required int microsecond,
  }) {
    // Convert both dates to Gregorian with time components
    final thisGregorianBase = toGregorian(year, month, day);
    final thisGregorian = DateTime(
      thisGregorianBase.year,
      thisGregorianBase.month,
      thisGregorianBase.day,
      hour,
      minute,
      second,
      millisecond,
      microsecond,
    );

    final otherGregorianBase = toGregorian(other.year, other.month, other.day);
    final otherGregorian = DateTime(
      otherGregorianBase.year,
      otherGregorianBase.month,
      otherGregorianBase.day,
      other.hour,
      other.minute,
      other.second,
      other.millisecond,
      other.microsecond,
    );

    // Calculate difference in days
    return thisGregorian.difference(otherGregorian).inDays;
  }

  bool isAfter(
    HijriDateTime other, {
    required int year,
    required int month,
    required int day,
    required int hour,
    required int minute,
    required int second,
    required int millisecond,
    required int microsecond,
  }) {
    // Convert both dates to Gregorian with time components
    final thisGregorianBase = toGregorian(year, month, day);
    final thisGregorian = DateTime(
      thisGregorianBase.year,
      thisGregorianBase.month,
      thisGregorianBase.day,
      hour,
      minute,
      second,
      millisecond,
      microsecond,
    );

    final otherGregorianBase = toGregorian(other.year, other.month, other.day);
    final otherGregorian = DateTime(
      otherGregorianBase.year,
      otherGregorianBase.month,
      otherGregorianBase.day,
      other.hour,
      other.minute,
      other.second,
      other.millisecond,
      other.microsecond,
    );

    // Compare the dates with time
    return thisGregorian.isAfter(otherGregorian);
  }

  bool isBefore(
    HijriDateTime other, {
    required int year,
    required int month,
    required int day,
    required int hour,
    required int minute,
    required int second,
    required int millisecond,
    required int microsecond,
  }) {
    // Convert both dates to Gregorian with time components
    final thisGregorianBase = toGregorian(year, month, day);
    final thisGregorian = DateTime(
      thisGregorianBase.year,
      thisGregorianBase.month,
      thisGregorianBase.day,
      hour,
      minute,
      second,
      millisecond,
      microsecond,
    );

    final otherGregorianBase = toGregorian(other.year, other.month, other.day);
    final otherGregorian = DateTime(
      otherGregorianBase.year,
      otherGregorianBase.month,
      otherGregorianBase.day,
      other.hour,
      other.minute,
      other.second,
      other.millisecond,
      other.microsecond,
    );

    // Compare the dates with time
    return thisGregorian.isBefore(otherGregorian);
  }
}
