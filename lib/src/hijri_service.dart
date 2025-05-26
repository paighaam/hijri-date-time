part of 'hijri_date_time.dart';

typedef JDNs = ({int mcjdn, int cjdn, int jdn});

typedef _HijriDateTimeRecord = ({int year, int month, int day});

class _HijriService {
  _HijriService(final Map<int, int>? adjustments) {
    _adjustments = adjustments ?? <int, int>{};
  }

  late final Map<int, int> _adjustments;

  void updateAdjustments(Map<int, int> adjustments) {
    _adjustments.addAll(adjustments);
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
    //var wd = _gMod(julianDate + 1, 7) + 1;
    int month = e - (e > 13.5 ? 13 : 1);
    int year = c - (month > 2.5 ? 4716 : 4715);
    if (year <= 0) {
      year--;
    } // No year zero
    return DateTime(year, month, day);
  }

  // Gregorian to Hijri Conversion Helper
  _HijriDateTimeRecord toHijri(DateTime dateTime) {
    final year = dateTime.year;
    final month = dateTime.month;
    final day = dateTime.day;

    int cjdn = _calculateChronologicalJulianDayNumber(year, month, day);
    int mcjdn = cjdn - 2400000;
    int iln = _findLunaticIndex(mcjdn);

    int hYear = ((iln - 1) / 12).floor() + 1;
    int hMonth = iln - 12 * (hYear - 1);

    // Get the index for Umm al-Qura calculation
    int index = _getNewMoonIndex(hYear, hMonth) - 1;

    // Modify the adjustment logic
    int adjustment = 0;
    if (_adjustments.containsKey(iln)) {
      adjustment = _adjustments[iln]!; // Use the actual adjustment value
    }

    // Calculate hDay with adjustment
    int hDay = mcjdn - _ummalquraDataIndex(index)! + 1 + adjustment;

    // Handle month boundary cases
    if (hDay > getDaysInMonth(hYear, hMonth)) {
      hDay = 1;
      hMonth++;
      if (hMonth > 12) {
        hMonth = 1;
        hYear++;
      }
    } else if (hDay < 1) {
      hMonth--;
      if (hMonth < 1) {
        hMonth = 12;
        hYear--;
      }
      hDay = getDaysInMonth(hYear, hMonth);
    }

    // Debug output
    log('Converted Gregorian Date: $year-$month-$day to Hijri Date: $hYear-$hMonth-$hDay');
    log('Indices - CJDN: $cjdn, MCJDN: $mcjdn, ILN: $iln, Index: $index, Adjustment: $adjustment');

    return (year: hYear, month: hMonth, day: hDay);
  }

  // Helpers for Hijri Calendar Calculations
  int _calculateChronologicalJulianDayNumber(int year, int month, int day) {
    if (month < 3) {
      year -= 1;
      month += 12;
    }
    int a = (year / 100).floor();
    int jgc = a - (a / 4).floor() - 2;
    return (365.25 * (year + 4716)).floor() +
        (30.6001 * (month + 1)).floor() +
        day -
        jgc -
        1524;
  }

  int _findLunaticIndex(int mcjdn) {
    for (int i = 0; i < _ummAlquraDateArray.length; i++) {
      if (_ummalquraDataIndex(i)! > mcjdn) return i + 16260;
    }
    throw ArgumentError("Date out of supported range");
  }

  int? _ummalquraDataIndex(int index) {
    if (index < 0 || index >= _ummAlquraDateArray.length) {
      throw ArgumentError("Date out of supported range");
    }

    if ( _adjustments.containsKey(index + 16260)) {
      return _adjustments[index + 16260];
    }

    return _ummAlquraDateArray[index];
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
    return getILN(year, month) - 16260;
  }

  int _calculateWeekday(int cjdn) {
    int wd = ((cjdn + 1) % 7).toInt();
    return wd == 0 ? 7 : wd;
  }

  int getWeekday(int year, int month, int day) {
    final cjdn = _getCJDN(year, month, day);
    return _calculateWeekday(cjdn);
  }

  int getDaysInMonth(int year, int month) {
    // Calculate the array index for the current month, following the established pattern.
    int currentIndex = _getNewMoonIndex(year, month) - 1;

    // Get the (adjusted) MCJDN for the start of the current month.
    // _ummalquraDataIndex will throw an ArgumentError if 'currentIndex' is out of bounds
    // (e.g., if _ummAlquraDateArray doesn't cover this month).
    int startMCJDNCurrentMonth;
    try {
      startMCJDNCurrentMonth = _ummalquraDataIndex(currentIndex)!;
    } catch (e) {
      // Rethrow or handle: if current month's start can't be found, its length is undefined by this method.
      // For example, if year/month is outside the range of _ummAlquraDateArray.
      // The original function had fallback logic; this one requires data.
      // print("Error getting start MCJDN for current month $year-$month: $e");
      throw ArgumentError("Cannot determine start of current month ($year-$month) due to data range or error: $e");
    }


    // Determine the next Hijri month
    int nextHijriYear, nextHijriMonth;
    if (month == 12) {
      nextHijriYear = year + 1;
      nextHijriMonth = 1;
    } else {
      nextHijriYear = year;
      nextHijriMonth = month + 1;
    }

    // Calculate the array index for the next month.
    int nextIndex = _getNewMoonIndex(nextHijriYear, nextHijriMonth) - 1;

    // Get the (adjusted) MCJDN for the start of the next month.
    // _ummalquraDataIndex will throw if 'nextIndex' is out of bounds.
    // This is crucial: if the next month is outside the data array's range,
    // we cannot accurately determine the current month's length using this method.
    int startMCJDNNextMonth;
    try {
      startMCJDNNextMonth = _ummalquraDataIndex(nextIndex)!;
    } catch (e) {
      // If the next month's start can't be determined, the length of the current month
      // (which depends on adjustments up to the next month's start) cannot be calculated this way.
      // The original function would return a static 29/30. This version would error.
      // This is a design choice: strict adherence to adjustment-based calculation vs. fallback.
      // print("Error getting start MCJDN for next month $nextHijriYear-$nextHijriMonth: $e");
      throw ArgumentError("Cannot determine start of next month ($nextHijriYear-$nextHijriMonth) to calculate length of ($year-$month) due to data range or error: $e");
    }


    // The number of days in the current month is the difference between the start MCJDN of the next month
    // and the start MCJDN of the current month.
    return startMCJDNNextMonth - startMCJDNCurrentMonth;
  }

  // Hijri Date Validation
  void isValidHijri(int year, int month, int day) {
    if (year < 1 || year > 1500) {
      throw ArgumentError("Hijri year out of supported range (1-1500)");
    }
    if (month < 1 || month > 12) {
      throw ArgumentError("Hijri month must be between 1 and 12");
    }
    if (day < 1 || day > getDaysInMonth(year, month)) {
      throw ArgumentError(
          "Day $day is not valid for month $month in year $year");
    }
  }
}
