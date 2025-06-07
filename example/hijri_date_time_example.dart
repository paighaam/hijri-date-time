import 'package:hijri_date_time/hijri_date_time.dart';

void main() {
  // Example 1: Basic date creation and conversion
  print('=== Basic Date Operations ===');
  final hijriDate = HijriDateTime(1445, month: 9, day: 1); // 1 Ramadan 1445
  print('Hijri Date: ${hijriDate.year}-${hijriDate.month}-${hijriDate.day}');

  final gregorian = hijriDate.toGregorian();
  print(
      'Gregorian Date: ${gregorian.year}-${gregorian.month}-${gregorian.day}');

  // Example 2: Current date
  print('\n=== Current Date ===');
  final now = HijriDateTime.now();
  print('Current Hijri Date: ${now.year}-${now.month}-${now.day}');
  print('Month Length: ${now.monthLength} days');
  print('Weekday: ${now.weekday}');

  // Example 3: Different adjustment configurations
  print('\n=== Different Adjustment Configurations ===');

  // Default configuration
  final defaultDate = HijriDateTime(1445, month: 9, day: 1);
  print('Default Configuration: ${defaultDate.toGregorian().toString()}');

  // Global configuration
  final globalDate = HijriDateTime(
    1445,
    month: 9,
    day: 1,
    adjustmentConfiguration: GlobalHijriAdjustmentConfiguration(),
  );
  print('Global Configuration: ${globalDate.toGregorian()}');

  // Example 4: ILN (Islamic Lunar Number)
  print('\n=== Islamic Lunar Number ===');
  print('ILN for ${hijriDate.year}-${hijriDate.month}: ${hijriDate.iln}');

  // Example 5: Date manipulation
  print('\n=== Date Manipulation ===');
  final nextMonth = HijriDateTime(1445, month: 10, day: 1);
  print('Next Month: ${nextMonth.year}-${nextMonth.month}-${nextMonth.day}');
  print('Gregorian: ${nextMonth.toGregorian()}');

  // Example 6: Important Islamic dates
  print('\n=== Important Islamic Dates ===');
  final eidAlFitr = HijriDateTime(1445, month: 10, day: 1);
  print('Eid al-Fitr 1445: ${eidAlFitr.toGregorian()}');

  final eidAlAdha = HijriDateTime(1445, month: 12, day: 10);
  print('Eid al-Adha 1445: ${eidAlAdha.toGregorian()}');

  // Example 7: Month names
  print('\n=== Month Names ===');
  print('Month name for ${hijriDate.month}: ${monthNames[hijriDate.month]}');
  print('Arabic month name: ${arMonthNames[hijriDate.month]}');

  // Example 8: Weekday names
  print('\n=== Weekday Names ===');
  print('Weekday name: ${wdNames[now.weekday]}');
  print('Arabic weekday name: ${arWkNames[now.weekday]}');
}
