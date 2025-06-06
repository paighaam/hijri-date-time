import 'package:flutter_test/flutter_test.dart';
import 'package:hijri_date_time/hijri_date_time.dart';
import 'package:hijri_date_time/src/adjustment_configuration/hijri_adjustment_configuration.dart';

void main() {
  final indiaAdjustment = IndiaHijriAdjustmentConfiguration(adjustments: {});

  group(
      'Known HijriDateTime Conversions From Gregorian - India Adjustment (+1 day)',
      () {
    group('1420-1424 Hijri Years', () {
      test('1420 Hijri Dates', () {
        // 1 Muharram 1420
        var hijriDate = HijriDateTime.fromGregorian(DateTime(1999, 4, 18),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1420));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1420
        hijriDate = HijriDateTime.fromGregorian(DateTime(1999, 6, 27),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1420));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1420
        hijriDate = HijriDateTime.fromGregorian(DateTime(1999, 12, 10),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1420));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1420
        hijriDate = HijriDateTime.fromGregorian(DateTime(2000, 1, 9),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1420));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1420
        hijriDate = HijriDateTime.fromGregorian(DateTime(2000, 3, 17),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1420));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1421 Hijri Dates', () {
        // 1 Muharram 1421
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2000, 4, 7),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1421));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1421
        hijriDate = HijriDateTime.fromGregorian(DateTime(2000, 6, 15),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1421));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1421
        hijriDate = HijriDateTime.fromGregorian(DateTime(2000, 11, 28),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1421));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1421
        hijriDate = HijriDateTime.fromGregorian(DateTime(2000, 12, 28),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1421));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1421
        hijriDate = HijriDateTime.fromGregorian(DateTime(2001, 3, 6),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1421));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1422 Hijri Dates', () {
        // 1 Muharram 1422
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2001, 3, 27),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1422));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1422
        hijriDate = HijriDateTime.fromGregorian(DateTime(2001, 6, 5),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1422));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1422
        hijriDate = HijriDateTime.fromGregorian(DateTime(2001, 11, 17),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1422));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1422
        hijriDate = HijriDateTime.fromGregorian(DateTime(2001, 12, 17),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1422));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1422
        hijriDate = HijriDateTime.fromGregorian(DateTime(2002, 2, 23),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1422));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1423 Hijri Dates', () {
        // 1 Muharram 1423
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2002, 3, 16),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1423));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1423
        hijriDate = HijriDateTime.fromGregorian(DateTime(2002, 5, 25),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1423));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1423
        hijriDate = HijriDateTime.fromGregorian(DateTime(2002, 11, 7),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1423));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1423
        hijriDate = HijriDateTime.fromGregorian(DateTime(2002, 12, 6),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1423));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1423
        hijriDate = HijriDateTime.fromGregorian(DateTime(2003, 2, 12),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1423));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1424 Hijri Dates', () {
        // 1 Muharram 1424
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2003, 3, 5),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1424));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1424
        hijriDate = HijriDateTime.fromGregorian(DateTime(2003, 5, 14),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1424));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1424
        hijriDate = HijriDateTime.fromGregorian(DateTime(2003, 10, 27),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1424));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1424
        hijriDate = HijriDateTime.fromGregorian(DateTime(2003, 11, 26),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1424));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1424
        hijriDate = HijriDateTime.fromGregorian(DateTime(2004, 2, 2),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1424));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });
    });

    group('1425-1429 Hijri Years', () {
      test('1425 Hijri Dates', () {
        // 1 Muharram 1425
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2004, 2, 22),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1425));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1425
        hijriDate = HijriDateTime.fromGregorian(DateTime(2004, 5, 2),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1425));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1425
        hijriDate = HijriDateTime.fromGregorian(DateTime(2004, 10, 16),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1425));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1425
        hijriDate = HijriDateTime.fromGregorian(DateTime(2004, 11, 15),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1425));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1425
        hijriDate = HijriDateTime.fromGregorian(DateTime(2005, 1, 22),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1425));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1426 Hijri Dates', () {
        // 1 Muharram 1426
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2005, 2, 11),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1426));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1426
        hijriDate = HijriDateTime.fromGregorian(DateTime(2005, 4, 22),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1426));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1426
        hijriDate = HijriDateTime.fromGregorian(DateTime(2005, 10, 5),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1426));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1426
        hijriDate = HijriDateTime.fromGregorian(DateTime(2005, 11, 4),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1426));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1426
        hijriDate = HijriDateTime.fromGregorian(DateTime(2006, 1, 11),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1426));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1427 Hijri Dates', () {
        // 1 Muharram 1427
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2006, 2, 1),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1427));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1427
        hijriDate = HijriDateTime.fromGregorian(DateTime(2006, 4, 11),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1427));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1427
        hijriDate = HijriDateTime.fromGregorian(DateTime(2006, 9, 25),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1427));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1427
        hijriDate = HijriDateTime.fromGregorian(DateTime(2006, 10, 24),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1427));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1427
        hijriDate = HijriDateTime.fromGregorian(DateTime(2007, 1, 1),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1427));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1428 Hijri Dates', () {
        // 1 Muharram 1428
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2007, 1, 21),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1428));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1428
        hijriDate = HijriDateTime.fromGregorian(DateTime(2007, 4, 1),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1428));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1428
        hijriDate = HijriDateTime.fromGregorian(DateTime(2007, 9, 14),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1428));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1428
        hijriDate = HijriDateTime.fromGregorian(DateTime(2007, 10, 14),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1428));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1428
        hijriDate = HijriDateTime.fromGregorian(DateTime(2007, 12, 21),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1428));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1429 Hijri Dates', () {
        // 1 Muharram 1429
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2008, 1, 11),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1429));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1429
        hijriDate = HijriDateTime.fromGregorian(DateTime(2008, 3, 21),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1429));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1429
        hijriDate = HijriDateTime.fromGregorian(DateTime(2008, 9, 2),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1429));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1429
        hijriDate = HijriDateTime.fromGregorian(DateTime(2008, 10, 2),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1429));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1429
        hijriDate = HijriDateTime.fromGregorian(DateTime(2008, 12, 9),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1429));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });
    });

    group('1430-1434 Hijri Years', () {
      test('1430 Hijri Dates', () {
        // 1 Muharram 1430
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2008, 12, 30),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1430));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1430
        hijriDate = HijriDateTime.fromGregorian(DateTime(2009, 3, 10),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1430));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1430
        hijriDate = HijriDateTime.fromGregorian(DateTime(2009, 8, 23),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1430));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1430
        hijriDate = HijriDateTime.fromGregorian(DateTime(2009, 9, 21),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1430));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1430
        hijriDate = HijriDateTime.fromGregorian(DateTime(2009, 11, 28),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1430));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1431 Hijri Dates', () {
        // 1 Muharram 1431
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2009, 12, 19),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1431));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1431
        hijriDate = HijriDateTime.fromGregorian(DateTime(2010, 2, 27),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1431));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1431
        hijriDate = HijriDateTime.fromGregorian(DateTime(2010, 8, 12),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1431));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1431
        hijriDate = HijriDateTime.fromGregorian(DateTime(2010, 9, 11),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1431));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1431
        hijriDate = HijriDateTime.fromGregorian(DateTime(2010, 11, 17),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1431));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1432 Hijri Dates', () {
        // 1 Muharram 1432
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2010, 12, 8),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1432));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1432
        hijriDate = HijriDateTime.fromGregorian(DateTime(2011, 2, 16),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1432));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1432
        hijriDate = HijriDateTime.fromGregorian(DateTime(2011, 8, 2),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1432));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1432
        hijriDate = HijriDateTime.fromGregorian(DateTime(2011, 8, 31),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1432));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1432
        hijriDate = HijriDateTime.fromGregorian(DateTime(2011, 11, 7),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1432));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1433 Hijri Dates', () {
        // 1 Muharram 1433
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2011, 11, 27),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1433));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1433
        hijriDate = HijriDateTime.fromGregorian(DateTime(2012, 2, 5),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1433));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1433
        hijriDate = HijriDateTime.fromGregorian(DateTime(2012, 7, 21),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1433));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1433
        hijriDate = HijriDateTime.fromGregorian(DateTime(2012, 8, 20),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1433));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1433
        hijriDate = HijriDateTime.fromGregorian(DateTime(2012, 10, 27),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1433));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1434 Hijri Dates', () {
        // 1 Muharram 1434
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2012, 11, 16),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1434));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1434
        hijriDate = HijriDateTime.fromGregorian(DateTime(2013, 1, 25),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1434));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1434
        hijriDate = HijriDateTime.fromGregorian(DateTime(2013, 7, 10),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1434));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1434
        hijriDate = HijriDateTime.fromGregorian(DateTime(2013, 8, 9),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1434));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1434
        hijriDate = HijriDateTime.fromGregorian(DateTime(2013, 10, 16),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1434));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });
    });

    group('1435-1439 Hijri Years', () {
      test('1435 Hijri Dates', () {
        // 1 Muharram 1435
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2013, 11, 5),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1435));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1435
        hijriDate = HijriDateTime.fromGregorian(DateTime(2014, 1, 14),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1435));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1435
        hijriDate = HijriDateTime.fromGregorian(DateTime(2014, 6, 29),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1435));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1435
        hijriDate = HijriDateTime.fromGregorian(DateTime(2014, 7, 29),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1435));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1435
        hijriDate = HijriDateTime.fromGregorian(DateTime(2014, 10, 5),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1435));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1436 Hijri Dates', () {
        // 1 Muharram 1436
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2014, 10, 26),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1436));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1436
        hijriDate = HijriDateTime.fromGregorian(DateTime(2015, 1, 4),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1436));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1436
        hijriDate = HijriDateTime.fromGregorian(DateTime(2015, 6, 19),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1436));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1436
        hijriDate = HijriDateTime.fromGregorian(DateTime(2015, 7, 18),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1436));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1436
        hijriDate = HijriDateTime.fromGregorian(DateTime(2015, 9, 24),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1436));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1437 Hijri Dates', () {
        // 1 Muharram 1437
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2015, 10, 15),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1437));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1437
        hijriDate = HijriDateTime.fromGregorian(DateTime(2015, 12, 24),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1437));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1437
        hijriDate = HijriDateTime.fromGregorian(DateTime(2016, 6, 7),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1437));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1437
        hijriDate = HijriDateTime.fromGregorian(DateTime(2016, 7, 7),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1437));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1437
        hijriDate = HijriDateTime.fromGregorian(DateTime(2016, 9, 12),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1437));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1438 Hijri Dates', () {
        // 1 Muharram 1438
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2016, 10, 3),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1438));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1438
        hijriDate = HijriDateTime.fromGregorian(DateTime(2016, 12, 12),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1438));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1438
        hijriDate = HijriDateTime.fromGregorian(DateTime(2017, 5, 28),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1438));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1438
        hijriDate = HijriDateTime.fromGregorian(DateTime(2017, 6, 26),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1438));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1438
        hijriDate = HijriDateTime.fromGregorian(DateTime(2017, 9, 2),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1438));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1439 Hijri Dates', () {
        // 1 Muharram 1439
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2017, 9, 22),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1439));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1439
        hijriDate = HijriDateTime.fromGregorian(DateTime(2017, 12, 1),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1439));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1439
        hijriDate = HijriDateTime.fromGregorian(DateTime(2018, 5, 17),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1439));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1439
        hijriDate = HijriDateTime.fromGregorian(DateTime(2018, 6, 16),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1439));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1439
        hijriDate = HijriDateTime.fromGregorian(DateTime(2018, 8, 22),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1439));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });
    });

    group('1440-1444 Hijri Years', () {
      test('1440 Hijri Dates', () {
        // 1 Muharram 1440
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2018, 9, 12),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1440));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1440
        hijriDate = HijriDateTime.fromGregorian(DateTime(2018, 11, 21),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1440));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1440
        hijriDate = HijriDateTime.fromGregorian(DateTime(2019, 5, 7),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1440));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1440
        hijriDate = HijriDateTime.fromGregorian(DateTime(2019, 6, 5),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1440));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1440
        hijriDate = HijriDateTime.fromGregorian(DateTime(2019, 8, 12),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1440));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1441 Hijri Dates', () {
        // 1 Muharram 1441
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2019, 9, 1),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1441));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1441
        hijriDate = HijriDateTime.fromGregorian(DateTime(2019, 11, 10),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1441));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1441
        hijriDate = HijriDateTime.fromGregorian(DateTime(2020, 4, 25),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1441));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1441
        hijriDate = HijriDateTime.fromGregorian(DateTime(2020, 5, 25),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1441));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1441
        hijriDate = HijriDateTime.fromGregorian(DateTime(2020, 8, 1),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1441));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1442 Hijri Dates', () {
        // 1 Muharram 1442
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2020, 8, 21),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1442));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1442
        hijriDate = HijriDateTime.fromGregorian(DateTime(2020, 10, 30),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1442));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1442
        hijriDate = HijriDateTime.fromGregorian(DateTime(2021, 4, 14),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1442));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1442
        hijriDate = HijriDateTime.fromGregorian(DateTime(2021, 5, 14),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1442));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1442
        hijriDate = HijriDateTime.fromGregorian(DateTime(2021, 7, 21),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1442));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1443 Hijri Dates', () {
        // 1 Muharram 1443
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2021, 8, 10),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1443));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1443
        hijriDate = HijriDateTime.fromGregorian(DateTime(2021, 10, 19),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1443));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1443
        hijriDate = HijriDateTime.fromGregorian(DateTime(2022, 4, 3),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1443));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1443
        hijriDate = HijriDateTime.fromGregorian(DateTime(2022, 5, 3),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1443));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1443
        hijriDate = HijriDateTime.fromGregorian(DateTime(2022, 7, 10),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1443));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1444 Hijri Dates', () {
        // 1 Muharram 1444
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2022, 7, 31),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1444));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1444
        hijriDate = HijriDateTime.fromGregorian(DateTime(2022, 10, 9),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1444));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1444
        hijriDate = HijriDateTime.fromGregorian(DateTime(2023, 3, 24),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1444));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1444
        hijriDate = HijriDateTime.fromGregorian(DateTime(2023, 4, 22),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1444));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1444
        hijriDate = HijriDateTime.fromGregorian(DateTime(2023, 6, 29),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1444));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });
    });

    group('1445-1446 Hijri Years', () {
      test('1445 Hijri Dates', () {
        // 1 Muharram 1445
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2023, 7, 20),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1445));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1445
        hijriDate = HijriDateTime.fromGregorian(DateTime(2023, 9, 28),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1445));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1445
        hijriDate = HijriDateTime.fromGregorian(DateTime(2024, 3, 12),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1445));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1445
        hijriDate = HijriDateTime.fromGregorian(DateTime(2024, 4, 11),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1445));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1445
        hijriDate = HijriDateTime.fromGregorian(DateTime(2024, 6, 17),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1445));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1446 Hijri Dates', () {
        // 1 Muharram 1446
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2024, 7, 8),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1446));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1446
        hijriDate = HijriDateTime.fromGregorian(DateTime(2024, 9, 16),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1446));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1446
        hijriDate = HijriDateTime.fromGregorian(DateTime(2025, 3, 2),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1446));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1446
        hijriDate = HijriDateTime.fromGregorian(DateTime(2025, 3, 31),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1446));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1446
        hijriDate = HijriDateTime.fromGregorian(DateTime(2025, 6, 7),
            adjustmentConfiguration: indiaAdjustment);
        expect(hijriDate.year, equals(1446));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });
    });
  });
}
