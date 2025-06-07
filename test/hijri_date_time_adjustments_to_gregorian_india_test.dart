import 'package:flutter_test/flutter_test.dart';
import 'package:hijri_date_time/hijri_date_time.dart';
import 'package:hijri_date_time/src/adjustment_configuration/hijri_adjustment_configuration.dart';

void main() {
  const indiaNoAdjustments = IndiaHijriAdjustmentConfiguration(adjustments: {});
  const indiaAdjustments =
      IndiaHijriAdjustmentConfiguration(adjustments: indiaHijriAdjustments);

  group('Known India Adjustments to Gregorian Tests', () {
    group('1421 AH Tests', () {
      test('1 Muharram 1421 - With and Without Adjustment', () {
        // Without adjustment
        final hijriWithout =
            HijriDateTime(1421, month: 1, day: 1, adjustmentConfiguration: indiaNoAdjustments);
        final gregorianWithout = hijriWithout.toGregorian();
        expect(gregorianWithout, equals(DateTime(2000, 4, 7)));

        // With adjustment
        final hijriWith =
            HijriDateTime(1421, month: 1, day: 1, adjustmentConfiguration: indiaAdjustments);
        final gregorianWith = hijriWith.toGregorian();
        expect(gregorianWith, equals(DateTime(2000, 4, 6)));
      });

      test('1 Ramadan 1421 - With and Without Adjustment', () {
        // Without adjustment
        final hijriWithout =
            HijriDateTime(1421, month: 9, day: 1, adjustmentConfiguration: indiaNoAdjustments);
        final gregorianWithout = hijriWithout.toGregorian();
        expect(gregorianWithout, equals(DateTime(2000, 11, 28)));

        // With adjustment
        final hijriWith =
            HijriDateTime(1421, month: 9, day: 1, adjustmentConfiguration: indiaAdjustments);
        final gregorianWith = hijriWith.toGregorian();
        expect(gregorianWith, equals(DateTime(2000, 11, 27)));
      });

      test('1 Shawwal 1421 - With and Without Adjustment', () {
        // Without adjustment
        final hijriWithout =
            HijriDateTime(1421, month: 10, day: 1, adjustmentConfiguration: indiaNoAdjustments);
        final gregorianWithout = hijriWithout.toGregorian();
        expect(gregorianWithout, equals(DateTime(2000, 12, 28)));

        // With adjustment
        final hijriWith =
            HijriDateTime(1421, month: 10, day: 1, adjustmentConfiguration: indiaAdjustments);
        final gregorianWith = hijriWith.toGregorian();
        expect(gregorianWith, equals(DateTime(2000, 12, 27)));
      });

      test('1 Dhul Hijjah 1421 - With and Without Adjustment', () {
        // Without adjustment
        final hijriWithout =
            HijriDateTime(1421, month: 12, day: 1, adjustmentConfiguration: indiaNoAdjustments);
        final gregorianWithout = hijriWithout.toGregorian();
        expect(gregorianWithout, equals(DateTime(2001, 2, 25)));

        // With adjustment
        final hijriWith =
            HijriDateTime(1421, month: 12, day: 1, adjustmentConfiguration: indiaAdjustments);
        final gregorianWith = hijriWith.toGregorian();
        expect(gregorianWith, equals(DateTime(2001, 2, 24)));
      });

      test('10 Dhul Hijjah 1421 - With and Without Adjustment', () {
        // Without adjustment
        final hijriWithout =
            HijriDateTime(1421, month: 12, day: 10, adjustmentConfiguration: indiaNoAdjustments);
        final gregorianWithout = hijriWithout.toGregorian();
        expect(gregorianWithout, equals(DateTime(2001, 3, 6)));

        // With adjustment
        final hijriWith =
            HijriDateTime(1421, month: 12, day: 10, adjustmentConfiguration: indiaAdjustments);
        final gregorianWith = hijriWith.toGregorian();
        expect(gregorianWith, equals(DateTime(2001, 3, 5)));
      });
    });

    group('1422 AH Tests', () {
      test('1 Muharram 1422 - With and Without Adjustment', () {
        // Without adjustment
        final hijriWithout =
            HijriDateTime(1422, month: 1, day: 1, adjustmentConfiguration: indiaNoAdjustments);
        final gregorianWithout = hijriWithout.toGregorian();
        expect(gregorianWithout, equals(DateTime(2001, 3, 27)));

        // With adjustment
        final hijriWith =
            HijriDateTime(1422, month: 1, day: 1, adjustmentConfiguration: indiaAdjustments);
        final gregorianWith = hijriWith.toGregorian();
        expect(gregorianWith, equals(DateTime(2001, 3, 26)));
      });
    });

    group('1423 AH Tests', () {
      test('1 Muharram 1423 - With and Without Adjustment', () {
        // Without adjustment
        final hijriWithout =
            HijriDateTime(1423, month: 1, day: 1, adjustmentConfiguration: indiaNoAdjustments);
        final gregorianWithout = hijriWithout.toGregorian();
        expect(gregorianWithout, equals(DateTime(2002, 3, 16)));

        // With adjustment
        final hijriWith =
            HijriDateTime(1423, month: 1, day: 1, adjustmentConfiguration: indiaAdjustments);
        final gregorianWith = hijriWith.toGregorian();
        expect(gregorianWith, equals(DateTime(2002, 3, 15)));
      });

      test('1 Ramadan 1423 - With and Without Adjustment', () {
        // Without adjustment
        final hijriWithout =
            HijriDateTime(1423, month: 9, day: 1, adjustmentConfiguration: indiaNoAdjustments);
        final gregorianWithout = hijriWithout.toGregorian();
        expect(gregorianWithout, equals(DateTime(2002, 11, 7)));

        // With adjustment
        final hijriWith =
            HijriDateTime(1423, month: 9, day: 1, adjustmentConfiguration: indiaAdjustments);
        final gregorianWith = hijriWith.toGregorian();
        expect(gregorianWith, equals(DateTime(2002, 11, 6)));
      });
    });

    group('1428 AH Tests', () {
      test('1 Ramadan 1428 - With and Without Adjustment', () {
        // Without adjustment
        final hijriWithout =
            HijriDateTime(1428, month: 9, day: 1, adjustmentConfiguration: indiaNoAdjustments);
        final gregorianWithout = hijriWithout.toGregorian();
        expect(gregorianWithout, equals(DateTime(2007, 9, 14)));

        // With adjustment
        final hijriWith =
            HijriDateTime(1428, month: 9, day: 1, adjustmentConfiguration: indiaAdjustments);
        final gregorianWith = hijriWith.toGregorian();
        expect(gregorianWith, equals(DateTime(2007, 9, 13)));
      });

      test('1 Shawwal 1428 - With and Without Adjustment', () {
        // Without adjustment
        final hijriWithout =
            HijriDateTime(1428, month: 10, day: 1, adjustmentConfiguration: indiaNoAdjustments);
        final gregorianWithout = hijriWithout.toGregorian();
        expect(gregorianWithout, equals(DateTime(2007, 10, 14)));

        // With adjustment
        final hijriWith =
            HijriDateTime(1428, month: 10, day: 1, adjustmentConfiguration: indiaAdjustments);
        final gregorianWith = hijriWith.toGregorian();
        expect(gregorianWith, equals(DateTime(2007, 10, 13)));
      });

      test('1 Dhul Hijjah 1428 - With and Without Adjustment', () {
        // Without adjustment
        final hijriWithout =
            HijriDateTime(1428, month: 12, day: 1, adjustmentConfiguration: indiaNoAdjustments);
        final gregorianWithout = hijriWithout.toGregorian();
        expect(gregorianWithout, equals(DateTime(2007, 12, 12)));

        // With adjustment
        final hijriWith =
            HijriDateTime(1428, month: 12, day: 1, adjustmentConfiguration: indiaAdjustments);
        final gregorianWith = hijriWith.toGregorian();
        expect(gregorianWith, equals(DateTime(2007, 12, 11)));
      });

      test('10 Dhul Hijjah 1428 - With and Without Adjustment', () {
        // Without adjustment
        final hijriWithout =
            HijriDateTime(1428, month: 12, day: 10, adjustmentConfiguration: indiaNoAdjustments);
        final gregorianWithout = hijriWithout.toGregorian();
        expect(gregorianWithout, equals(DateTime(2007, 12, 21)));

        // With adjustment
        final hijriWith =
            HijriDateTime(1428, month: 12, day: 10, adjustmentConfiguration: indiaAdjustments);
        final gregorianWith = hijriWith.toGregorian();
        expect(gregorianWith, equals(DateTime(2007, 12, 20)));
      });
    });

    group('1429 AH Tests', () {
      test('1 Muharram 1429 - With and Without Adjustment', () {
        // Without adjustment
        final hijriWithout =
            HijriDateTime(1429, month: 1, day: 1, adjustmentConfiguration: indiaNoAdjustments);
        final gregorianWithout = hijriWithout.toGregorian();
        expect(gregorianWithout, equals(DateTime(2008, 1, 11)));

        // With adjustment
        final hijriWith =
            HijriDateTime(1429, month: 1, day: 1, adjustmentConfiguration: indiaAdjustments);
        final gregorianWith = hijriWith.toGregorian();
        expect(gregorianWith, equals(DateTime(2008, 1, 10)));
      });
    });

    group('1430 AH Tests', () {
      test('1 Muharram 1430 - With and Without Adjustment', () {
        // Without adjustment
        final hijriWithout =
            HijriDateTime(1430, month: 1, day: 1, adjustmentConfiguration: indiaNoAdjustments);
        final gregorianWithout = hijriWithout.toGregorian();
        expect(gregorianWithout, equals(DateTime(2008, 12, 30)));

        // With adjustment
        final hijriWith =
            HijriDateTime(1430, month: 1, day: 1, adjustmentConfiguration: indiaAdjustments);
        final gregorianWith = hijriWith.toGregorian();
        expect(gregorianWith, equals(DateTime(2008, 12, 29)));
      });

      test('1 Ramadan 1430 - With and Without Adjustment', () {
        // Without adjustment
        final hijriWithout =
            HijriDateTime(1430, month: 9, day: 1, adjustmentConfiguration: indiaNoAdjustments);
        final gregorianWithout = hijriWithout.toGregorian();
        expect(gregorianWithout, equals(DateTime(2009, 8, 23)));

        // With adjustment
        final hijriWith =
            HijriDateTime(1430, month: 9, day: 1, adjustmentConfiguration: indiaAdjustments);
        final gregorianWith = hijriWith.toGregorian();
        expect(gregorianWith, equals(DateTime(2009, 8, 22)));
      });
    });

    group('1431 AH Tests', () {
      test('1 Muharram 1431 - With and Without Adjustment', () {
        // Without adjustment
        final hijriWithout =
            HijriDateTime(1431, month: 1, day: 1, adjustmentConfiguration: indiaNoAdjustments);
        final gregorianWithout = hijriWithout.toGregorian();
        expect(gregorianWithout, equals(DateTime(2009, 12, 19)));

        // With adjustment
        final hijriWith =
            HijriDateTime(1431, month: 1, day: 1, adjustmentConfiguration: indiaAdjustments);
        final gregorianWith = hijriWith.toGregorian();
        expect(gregorianWith, equals(DateTime(2009, 12, 18)));
      });

      test('1 Shawwal 1431 - With and Without Adjustment', () {
        // Without adjustment
        final hijriWithout =
            HijriDateTime(1431, month: 10, day: 1, adjustmentConfiguration: indiaNoAdjustments);
        final gregorianWithout = hijriWithout.toGregorian();
        expect(gregorianWithout, equals(DateTime(2010, 9, 11)));

        // With adjustment
        final hijriWith =
            HijriDateTime(1431, month: 10, day: 1, adjustmentConfiguration: indiaAdjustments);
        final gregorianWith = hijriWith.toGregorian();
        expect(gregorianWith, equals(DateTime(2010, 9, 10)));
      });
    });

    group('1434 AH Tests', () {
      test('1 Ramadan 1434 - With and Without Adjustment', () {
        // Without adjustment
        final hijriWithout =
            HijriDateTime(1434, month: 9, day: 1, adjustmentConfiguration: indiaNoAdjustments);
        final gregorianWithout = hijriWithout.toGregorian();
        expect(gregorianWithout, equals(DateTime(2013, 7, 10)));

        // With adjustment
        final hijriWith =
            HijriDateTime(1434, month: 9, day: 1, adjustmentConfiguration: indiaAdjustments);
        final gregorianWith = hijriWith.toGregorian();
        expect(gregorianWith, equals(DateTime(2013, 7, 11)));
      });
    });

    group('1435 AH Tests', () {
      test('1 Ramadan 1435 - With and Without Adjustment', () {
        // Without adjustment
        final hijriWithout =
            HijriDateTime(1435, month: 9, day: 1, adjustmentConfiguration: indiaNoAdjustments);
        final gregorianWithout = hijriWithout.toGregorian();
        expect(gregorianWithout, equals(DateTime(2014, 6, 29)));

        // With adjustment
        final hijriWith =
            HijriDateTime(1435, month: 9, day: 1, adjustmentConfiguration: indiaAdjustments);
        final gregorianWith = hijriWith.toGregorian();
        expect(gregorianWith, equals(DateTime(2014, 6, 30)));
      });
    });

    group('1441 AH Tests', () {
      test('1 Ramadan 1441 - With and Without Adjustment', () {
        // Without adjustment
        final hijriWithout =
            HijriDateTime(1441, month: 9, day: 1, adjustmentConfiguration: indiaNoAdjustments);
        final gregorianWithout = hijriWithout.toGregorian();
        expect(gregorianWithout, equals(DateTime(2020, 4, 25)));

        // With adjustment
        final hijriWith =
            HijriDateTime(1441, month: 9, day: 1, adjustmentConfiguration: indiaAdjustments);
        final gregorianWith = hijriWith.toGregorian();
        expect(gregorianWith, equals(DateTime(2020, 4, 24)));
      });
    });

    group('1444 AH Tests', () {
      test('1 Muharram 1444 - With and Without Adjustment', () {
        // Without adjustment
        final hijriWithout =
            HijriDateTime(1444, month: 1, day: 1, adjustmentConfiguration: indiaNoAdjustments);
        final gregorianWithout = hijriWithout.toGregorian();
        expect(gregorianWithout, equals(DateTime(2022, 7, 31)));

        // With adjustment
        final hijriWith =
            HijriDateTime(1444, month: 1, day: 1, adjustmentConfiguration: indiaAdjustments);
        final gregorianWith = hijriWith.toGregorian();
        expect(gregorianWith, equals(DateTime(2022, 7, 30)));
      });
    });
  });
}
