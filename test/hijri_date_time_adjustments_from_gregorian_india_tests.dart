import 'package:flutter_test/flutter_test.dart';
import 'package:hijri_date_time/hijri_date_time.dart';
import 'package:hijri_date_time/src/adjustment_configuration/hijri_adjustment_configuration.dart';

// Helper to compute ILN for a given Hijri date (Islamic Lunar Number)
int getILN(int year, int month) => ((year - 1) * 12) + month;

// Helper to log Hijri date and its ILN and adjustment
void logHijriDebug(
    DateTime date, AdjustmentConfiguration adjustmentConfiguration) {
  final hijri = HijriDateTime.fromGregorian(date,
      adjustmentConfiguration: adjustmentConfiguration);
  final year = hijri.year;
  final month = hijri.month;
  final day = hijri.day;
  final iln = getILN(year, month);
  print(
      'Gregorian: \x1B[36m$date\x1B[0m => Hijri: $year-$month-$day, ILN: $iln, Adj: \x1B[33m${adjustmentConfiguration.adjustments[iln]}\x1B[0m');
}

void main() {
  final indiaNoAdjustment = IndiaHijriAdjustmentConfiguration(adjustments: {});
  final indiaAdjustment =
      IndiaHijriAdjustmentConfiguration(adjustments: indiaHijriAdjustments);

  group('Known India Adjustments from Gregorian Tests', () {
    group('1421 AH Tests', () {
      test('1 Muharram 1421 - With and Without Adjustment', () {
        // Without adjustment (computed: 2000-04-07)
        final dateWithout = DateTime(2000, 4, 7);
        final withoutAdj = HijriDateTime.fromGregorian(
          dateWithout,
          adjustmentConfiguration: indiaNoAdjustment,
        );

        logHijriDebug(dateWithout, indiaNoAdjustment);
        expect(withoutAdj.year, equals(1421));
        expect(withoutAdj.month, equals(1)); // Muharram
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2000-04-06)
        final dateWith = DateTime(2000, 4, 6);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: indiaAdjustment,
        );

        logHijriDebug(dateWith, indiaAdjustment);
        expect(withAdj.year, equals(1421));
        expect(withAdj.month, equals(1)); // Muharram
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(indiaAdjustment);

        logHijriDebug(dateWithout, indiaAdjustment);
        expect(updatedHijri.year, equals(1421));
        expect(updatedHijri.month, equals(1)); // Muharram
        expect(updatedHijri.day, equals(1));
      });

      test('1 Ramadan 1421 - With and Without Adjustment', () {
        // Without adjustment (computed: 2000-11-28)
        final dateWithout = DateTime(2000, 11, 28);
        final withoutAdj = HijriDateTime.fromGregorian(
          dateWithout,
          adjustmentConfiguration: indiaNoAdjustment,
        );
        logHijriDebug(dateWithout, indiaAdjustment);
        expect(withoutAdj.year, equals(1421));
        expect(withoutAdj.month, equals(9)); // Ramadan
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2000-11-27)
        final dateWith = DateTime(2000, 11, 27);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: indiaAdjustment,
        );
        logHijriDebug(dateWith, indiaAdjustment);
        expect(withAdj.year, equals(1421));
        expect(withAdj.month, equals(9)); // Ramadan
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(indiaAdjustment);
        logHijriDebug(dateWithout, indiaAdjustment);
        expect(updatedHijri.year, equals(1421));
        expect(updatedHijri.month, equals(9)); // Ramadan
        expect(updatedHijri.day, equals(1));
      });

      test('1 Shawwal 1421 - With and Without Adjustment', () {
        // Without adjustment (computed: 2000-12-28)
        final dateWithout = DateTime(2000, 12, 28);
        final withoutAdj = HijriDateTime.fromGregorian(
          dateWithout,
          adjustmentConfiguration: indiaNoAdjustment,
        );
        logHijriDebug(dateWithout, indiaNoAdjustment);
        expect(withoutAdj.year, equals(1421));
        expect(withoutAdj.month, equals(10)); // Shawwal
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2000-12-27)
        final dateWith = DateTime(2000, 12, 27);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: indiaAdjustment,
        );
        logHijriDebug(dateWith, indiaAdjustment);
        expect(withAdj.year, equals(1421));
        expect(withAdj.month, equals(10)); // Shawwal
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(indiaAdjustment);
        logHijriDebug(dateWithout, indiaAdjustment);
        expect(updatedHijri.year, equals(1421));
        expect(updatedHijri.month, equals(10)); // Shawwal
        expect(updatedHijri.day, equals(1));
      });

      test('1 Dhul Hijjah 1421 - With and Without Adjustment', () {
        // Without adjustment (computed: 2001-02-25)
        final dateWithout = DateTime(2001, 2, 25);
        final withoutAdj = HijriDateTime.fromGregorian(
          dateWithout,
          adjustmentConfiguration: indiaNoAdjustment,
        );
        logHijriDebug(dateWithout, indiaNoAdjustment);
        expect(withoutAdj.year, equals(1421));
        expect(withoutAdj.month, equals(12)); // Dhul Hijjah
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2001-02-24)
        final dateWith = DateTime(2001, 2, 24);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: indiaAdjustment,
        );
        logHijriDebug(dateWith, indiaAdjustment);
        expect(withAdj.year, equals(1421));
        expect(withAdj.month, equals(12)); // Dhul Hijjah
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(indiaAdjustment);
        logHijriDebug(dateWithout, indiaAdjustment);
        expect(updatedHijri.year, equals(1421));
        expect(updatedHijri.month, equals(12)); // Dhul Hijjah
        expect(updatedHijri.day, equals(1));
      });

      test('10 Dhul Hijjah 1421 - With and Without Adjustment', () {
        // Without adjustment (computed: 2001-03-06)
        final dateWithout = DateTime(2001, 3, 6);
        final withoutAdj = HijriDateTime.fromGregorian(
          dateWithout,
          adjustmentConfiguration: indiaNoAdjustment,
        );
        logHijriDebug(dateWithout, indiaNoAdjustment);
        expect(withoutAdj.year, equals(1421));
        expect(withoutAdj.month, equals(12)); // Dhul Hijjah
        expect(withoutAdj.day, equals(10));

        // With adjustment (announced: 2001-03-05)
        final dateWith = DateTime(2001, 3, 5);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: indiaAdjustment,
        );
        logHijriDebug(dateWith, indiaAdjustment);
        expect(withAdj.year, equals(1421));
        expect(withAdj.month, equals(12)); // Dhul Hijjah
        expect(withAdj.day, equals(10));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(indiaAdjustment);
        logHijriDebug(dateWithout, indiaAdjustment);
        expect(updatedHijri.year, equals(1421));
        expect(updatedHijri.month, equals(12)); // Dhul Hijjah
        expect(updatedHijri.day, equals(10));
      });
    });

    group('1422 AH Tests', () {
      test('1 Muharram 1422 - With and Without Adjustment', () {
        // Without adjustment (computed: 2001-03-27)
        final dateWithout = DateTime(2001, 3, 27);
        final withoutAdj = HijriDateTime.fromGregorian(
          dateWithout,
          adjustmentConfiguration: indiaNoAdjustment,
        );
        logHijriDebug(dateWithout, indiaNoAdjustment);
        expect(withoutAdj.year, equals(1422));
        expect(withoutAdj.month, equals(1)); // Muharram
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2001-03-26)
        final dateWith = DateTime(2001, 3, 26);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: indiaAdjustment,
        );
        logHijriDebug(dateWith, indiaAdjustment);
        expect(withAdj.year, equals(1422));
        expect(withAdj.month, equals(1)); // Muharram
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(indiaAdjustment);
        logHijriDebug(dateWithout, indiaAdjustment);
        expect(updatedHijri.year, equals(1422));
        expect(updatedHijri.month, equals(1)); // Muharram
        expect(updatedHijri.day, equals(1));
      });
    });

    group('1423 AH Tests', () {
      test('1 Muharram 1423 - With and Without Adjustment', () {
        // Without adjustment (computed: 2002-03-16)
        final dateWithout = DateTime(2002, 3, 16);
        final withoutAdj = HijriDateTime.fromGregorian(
          dateWithout,
          adjustmentConfiguration: indiaNoAdjustment,
        );
        logHijriDebug(dateWithout, indiaNoAdjustment);
        expect(withoutAdj.year, equals(1423));
        expect(withoutAdj.month, equals(1)); // Muharram
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2002-03-15)
        final dateWith = DateTime(2002, 3, 15);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: indiaAdjustment,
        );
        logHijriDebug(dateWith, indiaAdjustment);
        expect(withAdj.year, equals(1423));
        expect(withAdj.month, equals(1)); // Muharram
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(indiaAdjustment);
        logHijriDebug(dateWithout, indiaAdjustment);
        expect(updatedHijri.year, equals(1423));
        expect(updatedHijri.month, equals(1)); // Muharram
        expect(updatedHijri.day, equals(1));
      });

      test('1 Ramadan 1423 - With and Without Adjustment', () {
        // Without adjustment (computed: 2002-11-07)
        final dateWithout = DateTime(2002, 11, 7);
        final withoutAdj = HijriDateTime.fromGregorian(
          dateWithout,
          adjustmentConfiguration: indiaNoAdjustment,
        );
        logHijriDebug(dateWithout, indiaNoAdjustment);
        expect(withoutAdj.year, equals(1423));
        expect(withoutAdj.month, equals(9)); // Ramadan
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2002-11-06)
        final dateWith = DateTime(2002, 11, 6);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: indiaAdjustment,
        );
        logHijriDebug(dateWith, indiaAdjustment);
        expect(withAdj.year, equals(1423));
        expect(withAdj.month, equals(9)); // Ramadan
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(indiaAdjustment);
        logHijriDebug(dateWithout, indiaAdjustment);
        expect(updatedHijri.year, equals(1423));
        expect(updatedHijri.month, equals(9)); // Ramadan
        expect(updatedHijri.day, equals(1));
      });
    });

    group('1428 AH Tests', () {
      test('1 Ramadan 1428 - With and Without Adjustment', () {
        // Without adjustment (computed: 2007-09-14)
        final dateWithout = DateTime(2007, 9, 14);
        final withoutAdj = HijriDateTime.fromGregorian(
          dateWithout,
          adjustmentConfiguration: indiaNoAdjustment,
        );
        logHijriDebug(dateWithout, indiaNoAdjustment);
        expect(withoutAdj.year, equals(1428));
        expect(withoutAdj.month, equals(9)); // Ramadan
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2007-09-13)
        final dateWith = DateTime(2007, 9, 13);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: indiaAdjustment,
        );
        logHijriDebug(dateWith, indiaAdjustment);
        expect(withAdj.year, equals(1428));
        expect(withAdj.month, equals(9)); // Ramadan
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(indiaAdjustment);
        logHijriDebug(dateWithout, indiaAdjustment);
        expect(updatedHijri.year, equals(1428));
        expect(updatedHijri.month, equals(9)); // Ramadan
        expect(updatedHijri.day, equals(1));
      });

      test('1 Shawwal 1428 - With and Without Adjustment', () {
        // Without adjustment (computed: 2007-10-14)
        final dateWithout = DateTime(2007, 10, 14);
        final withoutAdj = HijriDateTime.fromGregorian(
          dateWithout,
          adjustmentConfiguration: indiaNoAdjustment,
        );
        logHijriDebug(dateWithout, indiaNoAdjustment);
        expect(withoutAdj.year, equals(1428));
        expect(withoutAdj.month, equals(10)); // Shawwal
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2007-10-13)
        final dateWith = DateTime(2007, 10, 13);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: indiaAdjustment,
        );
        logHijriDebug(dateWith, indiaAdjustment);
        expect(withAdj.year, equals(1428));
        expect(withAdj.month, equals(10)); // Shawwal
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(indiaAdjustment);
        logHijriDebug(dateWithout, indiaAdjustment);
        expect(updatedHijri.year, equals(1428));
        expect(updatedHijri.month, equals(10)); // Shawwal
        expect(updatedHijri.day, equals(1));
      });

      test('1 Dhul Hijjah 1428 - With and Without Adjustment', () {
        // Without adjustment (computed: 2007-12-12)
        final dateWithout = DateTime(2007, 12, 12);
        final withoutAdj = HijriDateTime.fromGregorian(
          dateWithout,
          adjustmentConfiguration: indiaNoAdjustment,
        );
        logHijriDebug(dateWithout, indiaNoAdjustment);
        expect(withoutAdj.year, equals(1428));
        expect(withoutAdj.month, equals(12)); // Dhul Hijjah
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2007-12-11)
        final dateWith = DateTime(2007, 12, 11);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: indiaAdjustment,
        );
        logHijriDebug(dateWith, indiaAdjustment);
        expect(withAdj.year, equals(1428));
        expect(withAdj.month, equals(12)); // Dhul Hijjah
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(indiaAdjustment);
        logHijriDebug(dateWithout, indiaAdjustment);
        expect(updatedHijri.year, equals(1428));
        expect(updatedHijri.month, equals(12)); // Dhul Hijjah
        expect(updatedHijri.day, equals(1));
      });

      test('10 Dhul Hijjah 1428 - With and Without Adjustment', () {
        // Without adjustment (computed: 2007-12-21)
        final dateWithout = DateTime(2007, 12, 21);
        final withoutAdj = HijriDateTime.fromGregorian(
          dateWithout,
          adjustmentConfiguration: indiaNoAdjustment,
        );
        logHijriDebug(dateWithout, indiaNoAdjustment);
        expect(withoutAdj.year, equals(1428));
        expect(withoutAdj.month, equals(12)); // Dhul Hijjah
        expect(withoutAdj.day, equals(10));

        // With adjustment (announced: 2007-12-20)
        final dateWith = DateTime(2007, 12, 20);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: indiaAdjustment,
        );
        logHijriDebug(dateWith, indiaAdjustment);
        expect(withAdj.year, equals(1428));
        expect(withAdj.month, equals(12)); // Dhul Hijjah
        expect(withAdj.day, equals(10));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(indiaAdjustment);
        logHijriDebug(dateWithout, indiaAdjustment);
        expect(updatedHijri.year, equals(1428));
        expect(updatedHijri.month, equals(12)); // Dhul Hijjah
        expect(updatedHijri.day, equals(10));
      });
    });

    group('1429 AH Tests', () {
      test('1 Muharram 1429 - With and Without Adjustment', () {
        // Without adjustment (computed: 2008-01-11)
        final dateWithout = DateTime(2008, 1, 11);
        final withoutAdj = HijriDateTime.fromGregorian(
          dateWithout,
          adjustmentConfiguration: indiaNoAdjustment,
        );
        logHijriDebug(dateWithout, indiaNoAdjustment);
        expect(withoutAdj.year, equals(1429));
        expect(withoutAdj.month, equals(1)); // Muharram
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2008-01-10)
        final dateWith = DateTime(2008, 1, 10);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: indiaAdjustment,
        );
        logHijriDebug(dateWith, indiaAdjustment);
        expect(withAdj.year, equals(1429));
        expect(withAdj.month, equals(1)); // Muharram
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(indiaAdjustment);
        logHijriDebug(dateWithout, indiaAdjustment);
        expect(updatedHijri.year, equals(1429));
        expect(updatedHijri.month, equals(1)); // Muharram
        expect(updatedHijri.day, equals(1));
      });
    });

    group('1430 AH Tests', () {
      test('1 Muharram 1430 - With and Without Adjustment', () {
        // Without adjustment (computed: 2008-12-30)
        final dateWithout = DateTime(2008, 12, 30);
        final withoutAdj = HijriDateTime.fromGregorian(
          dateWithout,
          adjustmentConfiguration: indiaNoAdjustment,
        );
        logHijriDebug(dateWithout, indiaNoAdjustment);
        expect(withoutAdj.year, equals(1430));
        expect(withoutAdj.month, equals(1)); // Muharram
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2008-12-29)
        final dateWith = DateTime(2008, 12, 29);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: indiaAdjustment,
        );
        logHijriDebug(dateWith, indiaAdjustment);
        expect(withAdj.year, equals(1430));
        expect(withAdj.month, equals(1)); // Muharram
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(indiaAdjustment);
        logHijriDebug(dateWithout, indiaAdjustment);
        expect(updatedHijri.year, equals(1430));
        expect(updatedHijri.month, equals(1)); // Muharram
        expect(updatedHijri.day, equals(1));
      });

      test('1 Ramadan 1430 - With and Without Adjustment', () {
        // Without adjustment (computed: 2009-08-23)
        final dateWithout = DateTime(2009, 8, 23);
        final withoutAdj = HijriDateTime.fromGregorian(
          dateWithout,
          adjustmentConfiguration: indiaNoAdjustment,
        );
        logHijriDebug(dateWithout, indiaNoAdjustment);
        expect(withoutAdj.year, equals(1430));
        expect(withoutAdj.month, equals(9)); // Ramadan
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2009-08-22)
        final dateWith = DateTime(2009, 8, 22);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: indiaAdjustment,
        );
        logHijriDebug(dateWith, indiaAdjustment);
        expect(withAdj.year, equals(1430));
        expect(withAdj.month, equals(9)); // Ramadan
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(indiaAdjustment);
        logHijriDebug(dateWithout, indiaAdjustment);
        expect(updatedHijri.year, equals(1430));
        expect(updatedHijri.month, equals(9)); // Ramadan
        expect(updatedHijri.day, equals(1));
      });
    });

    group('1431 AH Tests', () {
      test('1 Muharram 1431 - With and Without Adjustment', () {
        // Without adjustment (computed: 2009-12-19)
        final dateWithout = DateTime(2009, 12, 19);
        final withoutAdj = HijriDateTime.fromGregorian(
          dateWithout,
          adjustmentConfiguration: indiaNoAdjustment,
        );
        logHijriDebug(dateWithout, indiaNoAdjustment);
        expect(withoutAdj.year, equals(1431));
        expect(withoutAdj.month, equals(1)); // Muharram
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2009-12-18)
        final dateWith = DateTime(2009, 12, 18);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: indiaAdjustment,
        );
        logHijriDebug(dateWith, indiaAdjustment);
        expect(withAdj.year, equals(1431));
        expect(withAdj.month, equals(1)); // Muharram
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(indiaAdjustment);
        logHijriDebug(dateWithout, indiaAdjustment);
        expect(updatedHijri.year, equals(1431));
        expect(updatedHijri.month, equals(1)); // Muharram
        expect(updatedHijri.day, equals(1));
      });

      test('1 Shawwal 1431 - With and Without Adjustment', () {
        // Without adjustment (computed: 2010-09-11)
        final dateWithout = DateTime(2010, 9, 11);
        final withoutAdj = HijriDateTime.fromGregorian(
          dateWithout,
          adjustmentConfiguration: indiaNoAdjustment,
        );
        logHijriDebug(dateWithout, indiaNoAdjustment);
        expect(withoutAdj.year, equals(1431));
        expect(withoutAdj.month, equals(10)); // Shawwal
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2010-09-10)
        final dateWith = DateTime(2010, 9, 10);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: indiaAdjustment,
        );
        logHijriDebug(dateWith, indiaAdjustment);
        expect(withAdj.year, equals(1431));
        expect(withAdj.month, equals(10)); // Shawwal
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(indiaAdjustment);
        logHijriDebug(dateWithout, indiaAdjustment);
        expect(updatedHijri.year, equals(1431));
        expect(updatedHijri.month, equals(10)); // Shawwal
        expect(updatedHijri.day, equals(1));
      });
    });

    group('1434 AH Tests', () {
      test('1 Ramadan 1434 - With and Without Adjustment', () {
        // Without adjustment (computed: 2013-07-10)
        final dateWithout = DateTime(2013, 7, 10);
        final withoutAdj = HijriDateTime.fromGregorian(
          dateWithout,
          adjustmentConfiguration: indiaNoAdjustment,
        );
        logHijriDebug(dateWithout, indiaNoAdjustment);
        expect(withoutAdj.year, equals(1434));
        expect(withoutAdj.month, equals(9)); // Ramadan
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2013-07-11)
        final dateWith = DateTime(2013, 7, 11);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: indiaAdjustment,
        );
        logHijriDebug(dateWith, indiaAdjustment);
        expect(withAdj.year, equals(1434));
        expect(withAdj.month, equals(9)); // Ramadan
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(indiaAdjustment);
        logHijriDebug(dateWithout, indiaAdjustment);
        expect(updatedHijri.year, equals(1434));
        expect(updatedHijri.month, equals(9)); // Ramadan
        expect(updatedHijri.day, equals(1));
      });
    });

    group('1435 AH Tests', () {
      test('1 Ramadan 1435 - With and Without Adjustment', () {
        // Without adjustment (computed: 2014-06-28)
        final dateWithout = DateTime(2014, 6, 29);
        final withoutAdj = HijriDateTime.fromGregorian(
          dateWithout,
          adjustmentConfiguration: indiaNoAdjustment,
        );
        logHijriDebug(dateWithout, indiaNoAdjustment);
        expect(withoutAdj.year, equals(1435));
        expect(withoutAdj.month, equals(9)); // Ramadan
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2014-06-29)
        final dateWith = DateTime(2014, 6, 30);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: indiaAdjustment,
        );
        logHijriDebug(dateWith, indiaAdjustment);
        expect(withAdj.year, equals(1435));
        expect(withAdj.month, equals(9)); // Ramadan
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(indiaAdjustment);
        logHijriDebug(dateWithout, indiaAdjustment);
        expect(updatedHijri.year, equals(1435));
        expect(updatedHijri.month, equals(9)); // Ramadan
        expect(updatedHijri.day, equals(1));
      });
    });

    group('1441 AH Tests', () {
      test('1 Ramadan 1441 - With and Without Adjustment', () {
        // Without adjustment (computed: 2020-04-25)
        final dateWithout = DateTime(2020, 4, 25);
        final withoutAdj = HijriDateTime.fromGregorian(
          dateWithout,
          adjustmentConfiguration: indiaNoAdjustment,
        );
        logHijriDebug(dateWithout, indiaNoAdjustment);
        expect(withoutAdj.year, equals(1441));
        expect(withoutAdj.month, equals(9)); // Ramadan
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2020-04-24)
        final dateWith = DateTime(2020, 4, 24);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: indiaAdjustment,
        );
        logHijriDebug(dateWith, indiaAdjustment);
        expect(withAdj.year, equals(1441));
        expect(withAdj.month, equals(9)); // Ramadan
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(indiaAdjustment);
        logHijriDebug(dateWithout, indiaAdjustment);
        expect(updatedHijri.year, equals(1441));
        expect(updatedHijri.month, equals(9)); // Ramadan
        expect(updatedHijri.day, equals(1));
      });
    });

    group('1444 AH Tests', () {
      test('1 Muharram 1444 - With and Without Adjustment', () {
        // Without adjustment (computed: 2022-07-31)
        final dateWithout = DateTime(2022, 7, 31);
        final withoutAdj = HijriDateTime.fromGregorian(
          dateWithout,
          adjustmentConfiguration: indiaNoAdjustment,
        );
        logHijriDebug(dateWithout, indiaNoAdjustment);
        expect(withoutAdj.year, equals(1444));
        expect(withoutAdj.month, equals(1)); // Muharram
        expect(withoutAdj.day, equals(1));

        // With adjustment (announced: 2022-07-30)
        final dateWith = DateTime(2022, 7, 30);
        final withAdj = HijriDateTime.fromGregorian(
          dateWith,
          adjustmentConfiguration: indiaAdjustment,
        );
        logHijriDebug(dateWith, indiaAdjustment);
        expect(withAdj.year, equals(1444));
        expect(withAdj.month, equals(1)); // Muharram
        expect(withAdj.day, equals(1));

        // With updateAdjustments
        final updatedHijri =
            withoutAdj.updateAdjustmentConfiguration(indiaAdjustment);
        logHijriDebug(dateWithout, indiaAdjustment);
        expect(updatedHijri.year, equals(1444));
        expect(updatedHijri.month, equals(1)); // Muharram
        expect(updatedHijri.day, equals(1));
      });
    });
  });
}
