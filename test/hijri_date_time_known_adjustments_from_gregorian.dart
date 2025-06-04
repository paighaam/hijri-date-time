import 'dart:developer';

import 'package:flutter_test/flutter_test.dart';
import 'package:hijri_date_time/hijri_date_time.dart';
import 'package:hijri_date_time/src/adjustment_configuration/hijri_adjustment_configuration.dart';

// Helper to compute ILN for a given Hijri date
int getILN(int year, int month) => ((year - 1) * 12) + month;



void logHijriDebug(
    DateTime date, AdjustmentConfiguration adjustmentConfiguration) {
  final hijri = HijriDateTime.fromGregorian(date,
      adjustmentConfiguration: adjustmentConfiguration);
  final year = hijri.year;
  final month = hijri.month;
  final day = hijri.day;
  final iln = getILN(year, month);
  log(
      'Gregorian: \x1B[36m$date\x1B[0m => Hijri: $year-$month-$day, ILN: $iln, Adj: \x1B[33m${adjustmentConfiguration.adjustments[iln]}\x1B[0m');
}

void main() {
  const globalAdjustments = GlobalHijriAdjustmentConfiguration();
  const hijriAdjustments = DefaultHijriAdjustmentConfiguration();

  group('Known Hijri Adjustments Tests', () {
    group('1424 AH Tests', () {
      test('1 Ramadan 1424 - With and Without Adjustment', () {
        // Without adjustment (computed: 2003-10-26)
        final dateWithout = DateTime(2003, 10, 26);
        final withoutAdj = HijriDateTime.fromGregorian(dateWithout);
        logHijriDebug(dateWithout, hijriAdjustments);
        expect(withoutAdj.year, equals(1424));
        expect(withoutAdj.month, equals(9)); // Ramadan
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2003-10-27)
        final dateWith = DateTime(2003, 10, 27);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: globalAdjustments,
        );
        logHijriDebug(dateWith, hijriAdjustments);
        expect(withAdj.year, equals(1424));
        expect(withAdj.month, equals(9)); // Ramadan
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(globalAdjustments);
        logHijriDebug(dateWithout, globalAdjustments);
        expect(updatedHijri.year, equals(1424));
        expect(updatedHijri.month, equals(9)); // Ramadan
        expect(updatedHijri.day, equals(1));
      });
    });

    group('1425 AH Tests', () {
      test('1 Shawwal 1425 - With and Without Adjustment', () {
        // Without adjustment (computed: 2004-11-14)
        final dateWithout = DateTime(2004, 11, 14);
        final withoutAdj = HijriDateTime.fromGregorian(dateWithout);
        logHijriDebug(dateWithout, globalAdjustments);
        expect(withoutAdj.year, equals(1425));
        expect(withoutAdj.month, equals(10)); // Shawwal
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2004-11-13)
        final dateWith = DateTime(2004, 11, 13);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: globalAdjustments,
        );
        logHijriDebug(dateWith, globalAdjustments);
        expect(withAdj.year, equals(1425));
        expect(withAdj.month, equals(10)); // Shawwal
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(globalAdjustments);
        logHijriDebug(dateWithout, globalAdjustments);
        expect(updatedHijri.year, equals(1425));
        expect(updatedHijri.month, equals(10)); // Shawwal
        expect(updatedHijri.day, equals(1));
      });

      test('1 Dhul Hijjah 1425 - With and Without Adjustment', () {
        // Without adjustment (computed: 2005-01-12)
        final dateWithout = DateTime(2005, 1, 12);
        final withoutAdj = HijriDateTime.fromGregorian(dateWithout);
        logHijriDebug(dateWithout, hijriAdjustments);
        expect(withoutAdj.year, equals(1425));
        expect(withoutAdj.month, equals(12)); // Dhul Hijjah
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2005-01-11)
        final dateWith = DateTime(2005, 1, 11);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: globalAdjustments,
        );
        logHijriDebug(dateWith, globalAdjustments);
        expect(withAdj.year, equals(1425));
        expect(withAdj.month, equals(12)); // Dhul Hijjah
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(globalAdjustments);
        logHijriDebug(dateWithout, globalAdjustments);
        expect(updatedHijri.year, equals(1425));
        expect(updatedHijri.month, equals(12)); // Dhul Hijjah
        expect(updatedHijri.day, equals(1));
      });

      test('10 Dhul Hijjah 1425 - With and Without Adjustment', () {
        // Without adjustment (computed: 2005-01-21)
        final dateWithout = DateTime(2005, 1, 21);
        final withoutAdj = HijriDateTime.fromGregorian(dateWithout);
        logHijriDebug(dateWithout, hijriAdjustments);
        expect(withoutAdj.year, equals(1425));
        expect(withoutAdj.month, equals(12)); // Dhul Hijjah
        expect(withoutAdj.day, equals(10));

        // With adjustment (announced: 2005-01-20)
        final dateWith = DateTime(2005, 1, 20);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: globalAdjustments,
        );
        logHijriDebug(dateWith, globalAdjustments);
        expect(withAdj.year, equals(1425));
        expect(withAdj.month, equals(12)); // Dhul Hijjah
        expect(withAdj.day, equals(10));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(globalAdjustments);
        logHijriDebug(dateWithout, globalAdjustments);
        expect(updatedHijri.year, equals(1425));
        expect(updatedHijri.month, equals(12)); // Dhul Hijjah
        expect(updatedHijri.day, equals(10));
      });
    });

    group('1427 AH Tests', () {
      test('1 Ramadan 1427 - With and Without Adjustment', () {
        // Without adjustment (computed: 2006-09-24)
        final dateWithout = DateTime(2006, 9, 24);
        final withoutAdj = HijriDateTime.fromGregorian(dateWithout);
        logHijriDebug(dateWithout, hijriAdjustments);
        expect(withoutAdj.year, equals(1427));
        expect(withoutAdj.month, equals(9)); // Ramadan
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2006-09-23)
        final dateWith = DateTime(2006, 9, 23);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: globalAdjustments,
        );
        logHijriDebug(dateWith, globalAdjustments);
        expect(withAdj.year, equals(1427));
        expect(withAdj.month, equals(9)); // Ramadan
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(globalAdjustments);
        logHijriDebug(dateWithout, globalAdjustments);
        expect(updatedHijri.year, equals(1427));
        expect(updatedHijri.month, equals(9)); // Ramadan
        expect(updatedHijri.day, equals(1));
      });

      test('1 Dhul Hijjah 1427 - With and Without Adjustment', () {
        // Without adjustment (computed: 2006-12-22)
        final dateWithout = DateTime(2006, 12, 22);
        final withoutAdj = HijriDateTime.fromGregorian(dateWithout);
        logHijriDebug(dateWithout, hijriAdjustments);
        expect(withoutAdj.year, equals(1427));
        expect(withoutAdj.month, equals(12)); // Dhul Hijjah
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2006-12-21)
        final dateWith = DateTime(2006, 12, 21);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: globalAdjustments,
        );
        logHijriDebug(dateWith, globalAdjustments);
        expect(withAdj.year, equals(1427));
        expect(withAdj.month, equals(12)); // Dhul Hijjah
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(globalAdjustments);
        logHijriDebug(dateWithout, globalAdjustments);
        expect(updatedHijri.year, equals(1427));
        expect(updatedHijri.month, equals(12)); // Dhul Hijjah
        expect(updatedHijri.day, equals(1));
      });

      test('10 Dhul Hijjah 1427 - With and Without Adjustment', () {
        // Without adjustment (computed: 2006-12-31)
        final dateWithout = DateTime(2006, 12, 31);
        final withoutAdj = HijriDateTime.fromGregorian(dateWithout);
        logHijriDebug(dateWithout, hijriAdjustments);
        expect(withoutAdj.year, equals(1427));
        expect(withoutAdj.month, equals(12)); // Dhul Hijjah
        expect(withoutAdj.day, equals(10));

        // With adjustment (announced: 2006-12-30)
        final dateWith = DateTime(2006, 12, 30);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: globalAdjustments,
        );
        logHijriDebug(dateWith, globalAdjustments);
        expect(withAdj.year, equals(1427));
        expect(withAdj.month, equals(12)); // Dhul Hijjah
        expect(withAdj.day, equals(10));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(globalAdjustments);
        logHijriDebug(dateWithout, globalAdjustments);
        expect(updatedHijri.year, equals(1427));
        expect(updatedHijri.month, equals(12)); // Dhul Hijjah
        expect(updatedHijri.day, equals(10));
      });
    });

    group('1428 AH Tests', () {
      test('1 Shawwal 1428 - With and Without Adjustment', () {
        // Without adjustment (computed: 2007-10-13)
        final dateWithout = DateTime(2007, 10, 13);
        final withoutAdj = HijriDateTime.fromGregorian(dateWithout);
        logHijriDebug(dateWithout, hijriAdjustments);
        expect(withoutAdj.year, equals(1428));
        expect(withoutAdj.month, equals(10)); // Shawwal
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2007-10-12)
        final dateWith = DateTime(2007, 10, 12);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: globalAdjustments,
        );
        logHijriDebug(dateWith, globalAdjustments);
        expect(withAdj.year, equals(1428));
        expect(withAdj.month, equals(10)); // Shawwal
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(globalAdjustments);
        logHijriDebug(dateWithout, globalAdjustments);
        expect(updatedHijri.year, equals(1428));
        expect(updatedHijri.month, equals(10)); // Shawwal
        expect(updatedHijri.day, equals(1));
      });

      test('1 Dhul Hijjah 1428 - With and Without Adjustment', () {
        // Without adjustment (computed: 2007-12-11)
        final dateWithout = DateTime(2007, 12, 11);
        final withoutAdj = HijriDateTime.fromGregorian(dateWithout);
        logHijriDebug(dateWithout, hijriAdjustments);
        expect(withoutAdj.year, equals(1428));
        expect(withoutAdj.month, equals(12)); // Dhul Hijjah
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2007-12-10)
        final dateWith = DateTime(2007, 12, 10);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: globalAdjustments,
        );
        logHijriDebug(dateWith, globalAdjustments);
        expect(withAdj.year, equals(1428));
        expect(withAdj.month, equals(12)); // Dhul Hijjah
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(globalAdjustments);
        logHijriDebug(dateWithout, globalAdjustments);
        expect(updatedHijri.year, equals(1428));
        expect(updatedHijri.month, equals(12)); // Dhul Hijjah
        expect(updatedHijri.day, equals(1));
      });

      test('10 Dhul Hijjah 1428 - With and Without Adjustment', () {
        // Without adjustment (computed: 2007-12-20)
        final dateWithout = DateTime(2007, 12, 20);
        final withoutAdj = HijriDateTime.fromGregorian(dateWithout);
        logHijriDebug(dateWithout, hijriAdjustments);
        expect(withoutAdj.year, equals(1428));
        expect(withoutAdj.month, equals(12)); // Dhul Hijjah
        expect(withoutAdj.day, equals(10));

        // With adjustment (announced: 2007-12-19)
        final dateWith = DateTime(2007, 12, 19);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: globalAdjustments,
        );
        logHijriDebug(dateWith, globalAdjustments);
        expect(withAdj.year, equals(1428));
        expect(withAdj.month, equals(12)); // Dhul Hijjah
        expect(withAdj.day, equals(10));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(globalAdjustments);
        logHijriDebug(dateWithout, globalAdjustments);
        expect(updatedHijri.year, equals(1428));
        expect(updatedHijri.month, equals(12)); // Dhul Hijjah
        expect(updatedHijri.day, equals(10));
      });
    });

    group('1429 AH Tests', () {
      test('1 Shawwal 1429 - With and Without Adjustment', () {
        // Without adjustment (computed: 2008-10-01)
        final dateWithout = DateTime(2008, 10, 1);
        final withoutAdj = HijriDateTime.fromGregorian(dateWithout);
        logHijriDebug(dateWithout, hijriAdjustments);
        expect(withoutAdj.year, equals(1429));
        expect(withoutAdj.month, equals(10)); // Shawwal
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2008-09-30)
        final dateWith = DateTime(2008, 9, 30);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: globalAdjustments,
        );
        logHijriDebug(dateWith, globalAdjustments);
        expect(withAdj.year, equals(1429));
        expect(withAdj.month, equals(10)); // Shawwal
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(globalAdjustments);
        logHijriDebug(dateWithout, globalAdjustments);
        expect(updatedHijri.year, equals(1429));
        expect(updatedHijri.month, equals(10)); // Shawwal
        expect(updatedHijri.day, equals(1));
      });
    });

    group('1433 AH Tests', () {
      test('1 Muharram 1433 - With and Without Adjustment', () {
        // Without adjustment (computed: 2011-11-26)
        final dateWithout = DateTime(2011, 11, 26);
        final withoutAdj = HijriDateTime.fromGregorian(dateWithout);
        logHijriDebug(dateWithout, hijriAdjustments);
        expect(withoutAdj.year, equals(1433));
        expect(withoutAdj.month, equals(1)); // Muharram
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2011-11-27)
        final dateWith = DateTime(2011, 11, 27);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: globalAdjustments,
        );
        logHijriDebug(dateWith, globalAdjustments);
        expect(withAdj.year, equals(1433));
        expect(withAdj.month, equals(1)); // Muharram
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(globalAdjustments);
        logHijriDebug(dateWithout, globalAdjustments);
        expect(updatedHijri.year, equals(1433));
        expect(updatedHijri.month, equals(1)); // Muharram
        expect(updatedHijri.day, equals(1));
      });
    });

    group('1434 AH Tests', () {
      test('1 Ramadan 1434 - With and Without Adjustment', () {
        // Without adjustment (computed: 2013-07-09)
        final dateWithout = DateTime(2013, 7, 9);
        final withoutAdj = HijriDateTime.fromGregorian(dateWithout);
        logHijriDebug(dateWithout, hijriAdjustments);
        expect(withoutAdj.year, equals(1434));
        expect(withoutAdj.month, equals(9)); // Ramadan
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2013-07-10)
        final dateWith = DateTime(2013, 7, 10);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: globalAdjustments,
        );
        logHijriDebug(dateWith, globalAdjustments);
        expect(withAdj.year, equals(1434));
        expect(withAdj.month, equals(9)); // Ramadan
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(globalAdjustments);
        logHijriDebug(dateWithout, globalAdjustments);
        expect(updatedHijri.year, equals(1434));
        expect(updatedHijri.month, equals(9)); // Ramadan
        expect(updatedHijri.day, equals(1));
      });
    });

    group('1435 AH Tests', () {
      test('1 Muharram 1435 - With and Without Adjustment', () {
        // Without adjustment (computed: 2013-11-04)
        final dateWithout = DateTime(2013, 11, 4);
        final withoutAdj = HijriDateTime.fromGregorian(dateWithout);
        logHijriDebug(dateWithout, hijriAdjustments);
        expect(withoutAdj.year, equals(1435));
        expect(withoutAdj.month, equals(1)); // Muharram
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2013-11-05)
        final dateWith = DateTime(2013, 11, 5);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: globalAdjustments,
        );
        logHijriDebug(dateWith, globalAdjustments);
        expect(withAdj.year, equals(1435));
        expect(withAdj.month, equals(1)); // Muharram
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(globalAdjustments);
        logHijriDebug(dateWithout, globalAdjustments);
        expect(updatedHijri.year, equals(1435));
        expect(updatedHijri.month, equals(1)); // Muharram
        expect(updatedHijri.day, equals(1));
      });

      test('1 Ramadan 1435 - With and Without Adjustment', () {
        // Without adjustment (computed: 2014-06-28)
        final dateWithout = DateTime(2014, 6, 28);
        final withoutAdj = HijriDateTime.fromGregorian(dateWithout);
        logHijriDebug(dateWithout, hijriAdjustments);
        expect(withoutAdj.year, equals(1435));
        expect(withoutAdj.month, equals(9)); // Ramadan
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2014-06-29)
        final dateWith = DateTime(2014, 6, 29);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: globalAdjustments,
        );
        logHijriDebug(dateWith, globalAdjustments);
        expect(withAdj.year, equals(1435));
        expect(withAdj.month, equals(9)); // Ramadan
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(globalAdjustments);
        logHijriDebug(dateWithout, globalAdjustments);
        expect(updatedHijri.year, equals(1435));
        expect(updatedHijri.month, equals(9)); // Ramadan
        expect(updatedHijri.day, equals(1));
      });
    });

    group('1436 AH Tests', () {
      test('1 Dhul Hijjah 1436 - With and Without Adjustment', () {
        // Without adjustment (computed: 2015-09-14)
        final dateWithout = DateTime(2015, 9, 14);
        final withoutAdj = HijriDateTime.fromGregorian(dateWithout);
        logHijriDebug(dateWithout, hijriAdjustments);
        expect(withoutAdj.year, equals(1436));
        expect(withoutAdj.month, equals(12)); // Dhul Hijjah
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2015-09-15)
        final dateWith = DateTime(2015, 9, 15);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: globalAdjustments,
        );
        logHijriDebug(dateWith, globalAdjustments);
        expect(withAdj.year, equals(1436));
        expect(withAdj.month, equals(12)); // Dhul Hijjah
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(globalAdjustments);
        logHijriDebug(dateWithout, globalAdjustments);
        expect(updatedHijri.year, equals(1436));
        expect(updatedHijri.month, equals(12)); // Dhul Hijjah
        expect(updatedHijri.day, equals(1));
      });

      test('10 Dhul Hijjah 1436 - With and Without Adjustment', () {
        // Without adjustment (computed: 2015-09-23)
        final dateWithout = DateTime(2015, 9, 23);
        final withoutAdj = HijriDateTime.fromGregorian(dateWithout);
        logHijriDebug(dateWithout, hijriAdjustments);
        expect(withoutAdj.year, equals(1436));
        expect(withoutAdj.month, equals(12)); // Dhul Hijjah
        expect(withoutAdj.day, equals(10));

        // With adjustment (announced: 2015-09-24)
        final dateWith = DateTime(2015, 9, 24);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: globalAdjustments,
        );
        logHijriDebug(dateWith, globalAdjustments);
        expect(withAdj.year, equals(1436));
        expect(withAdj.month, equals(12)); // Dhul Hijjah
        expect(withAdj.day, equals(10));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(globalAdjustments);
        logHijriDebug(dateWithout, globalAdjustments);
        expect(updatedHijri.year, equals(1436));
        expect(updatedHijri.month, equals(12)); // Dhul Hijjah
        expect(updatedHijri.day, equals(10));
      });
    });

    group('1437 AH Tests', () {
      test('1 Muharram 1437 - With and Without Adjustment', () {
        // Without adjustment (computed: 2015-10-14)
        final dateWithout = DateTime(2015, 10, 14);
        final withoutAdj = HijriDateTime.fromGregorian(dateWithout);
        logHijriDebug(dateWithout, hijriAdjustments);
        expect(withoutAdj.year, equals(1437));
        expect(withoutAdj.month, equals(1)); // Muharram
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2015-10-15)
        final dateWith = DateTime(2015, 10, 15);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: globalAdjustments,
        );
        logHijriDebug(dateWith, globalAdjustments);
        expect(withAdj.year, equals(1437));
        expect(withAdj.month, equals(1)); // Muharram
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(globalAdjustments);
        logHijriDebug(dateWithout, globalAdjustments);
        expect(updatedHijri.year, equals(1437));
        expect(updatedHijri.month, equals(1)); // Muharram
        expect(updatedHijri.day, equals(1));
      });

      test('1 Dhul Hijjah 1437 - With and Without Adjustment', () {
        // Without adjustment (computed: 2016-09-02)
        final dateWithout = DateTime(2016, 9, 2);
        final withoutAdj = HijriDateTime.fromGregorian(dateWithout);
        logHijriDebug(dateWithout, hijriAdjustments);
        expect(withoutAdj.year, equals(1437));
        expect(withoutAdj.month, equals(12)); // Dhul Hijjah
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2016-09-03)
        final dateWith = DateTime(2016, 9, 3);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: globalAdjustments,
        );
        logHijriDebug(dateWith, globalAdjustments);
        expect(withAdj.year, equals(1437));
        expect(withAdj.month, equals(12)); // Dhul Hijjah
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(globalAdjustments);
        logHijriDebug(dateWithout, globalAdjustments);
        expect(updatedHijri.year, equals(1437));
        expect(updatedHijri.month, equals(12)); // Dhul Hijjah
        expect(updatedHijri.day, equals(1));
      });

      test('10 Dhul Hijjah 1437 - With and Without Adjustment', () {
        // Without adjustment (computed: 2016-09-11)
        final dateWithout = DateTime(2016, 9, 11);
        final withoutAdj = HijriDateTime.fromGregorian(dateWithout);
        logHijriDebug(dateWithout, hijriAdjustments);
        expect(withoutAdj.year, equals(1437));
        expect(withoutAdj.month, equals(12)); // Dhul Hijjah
        expect(withoutAdj.day, equals(10));

        // With adjustment (announced: 2016-09-12)
        final dateWith = DateTime(2016, 9, 12);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: globalAdjustments,
        );
        logHijriDebug(dateWith, globalAdjustments);
        expect(withAdj.year, equals(1437));
        expect(withAdj.month, equals(12)); // Dhul Hijjah
        expect(withAdj.day, equals(10));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(globalAdjustments);
        logHijriDebug(dateWithout, globalAdjustments);
        expect(updatedHijri.year, equals(1437));
        expect(updatedHijri.month, equals(12)); // Dhul Hijjah
        expect(updatedHijri.day, equals(10));
      });
    });

    group('1439 AH Tests', () {
      test('1 Ramadan 1439 - With and Without Adjustment', () {
        // Without adjustment (computed: 2018-05-16)
        final dateWithout = DateTime(2018, 5, 16);
        final withoutAdj = HijriDateTime.fromGregorian(dateWithout);
        logHijriDebug(dateWithout, hijriAdjustments);
        expect(withoutAdj.year, equals(1439));
        expect(withoutAdj.month, equals(9)); // Ramadan
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2018-05-17)
        final dateWith = DateTime(2018, 5, 17);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: globalAdjustments,
        );
        logHijriDebug(dateWith, globalAdjustments);
        expect(withAdj.year, equals(1439));
        expect(withAdj.month, equals(9)); // Ramadan
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(globalAdjustments);
        logHijriDebug(dateWithout, globalAdjustments);
        expect(updatedHijri.year, equals(1439));
        expect(updatedHijri.month, equals(9)); // Ramadan
        expect(updatedHijri.day, equals(1));
      });
    });

    group('1443 AH Tests', () {
      test('1 Muharram 1443 - With and Without Adjustment', () {
        // Without adjustment (computed: 2021-08-09)
        final dateWithout = DateTime(2021, 8, 9);
        final withoutAdj = HijriDateTime.fromGregorian(dateWithout);
        logHijriDebug(dateWithout, hijriAdjustments);
        expect(withoutAdj.year, equals(1443));
        expect(withoutAdj.month, equals(1)); // Muharram
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2021-08-10)
        final dateWith = DateTime(2021, 8, 10);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: globalAdjustments,
        );
        logHijriDebug(dateWith, globalAdjustments);
        expect(withAdj.year, equals(1443));
        expect(withAdj.month, equals(1)); // Muharram
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(globalAdjustments);
        logHijriDebug(dateWithout, globalAdjustments);
        expect(updatedHijri.year, equals(1443));
        expect(updatedHijri.month, equals(1)); // Muharram
        expect(updatedHijri.day, equals(1));
      });
    });
  });
}
