import 'package:flutter_test/flutter_test.dart';
import 'package:hijri_date_time/hijri_date_time.dart';

void main() {
  group('Known HijriDateTime Conversions From Gregorian', () {
    group('1420-1424 Hijri Years', () {
      test('1420 Hijri Dates', () {
        // 1 Muharram 1420
        var hijriDate = HijriDateTime.fromGregorian(DateTime(1999, 4, 17));
        expect(hijriDate.year, equals(1420));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1420
        hijriDate = HijriDateTime.fromGregorian(DateTime(1999, 6, 26));
        expect(hijriDate.year, equals(1420));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1420
        hijriDate = HijriDateTime.fromGregorian(DateTime(1999, 12, 9));
        expect(hijriDate.year, equals(1420));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1420
        hijriDate = HijriDateTime.fromGregorian(DateTime(2000, 1, 8));
        expect(hijriDate.year, equals(1420));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1420
        hijriDate = HijriDateTime.fromGregorian(DateTime(2000, 3, 16));
        expect(hijriDate.year, equals(1420));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1421 Hijri Dates', () {
        // 1 Muharram 1421
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2000, 4, 6));
        expect(hijriDate.year, equals(1421));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1421
        hijriDate = HijriDateTime.fromGregorian(DateTime(2000, 6, 14));
        expect(hijriDate.year, equals(1421));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1421
        hijriDate = HijriDateTime.fromGregorian(DateTime(2000, 11, 27));
        expect(hijriDate.year, equals(1421));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1421
        hijriDate = HijriDateTime.fromGregorian(DateTime(2000, 12, 27));
        expect(hijriDate.year, equals(1421));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1421
        hijriDate = HijriDateTime.fromGregorian(DateTime(2001, 3, 5));
        expect(hijriDate.year, equals(1421));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1422 Hijri Dates', () {
        // 1 Muharram 1422
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2001, 3, 26));
        expect(hijriDate.year, equals(1422));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1422
        hijriDate = HijriDateTime.fromGregorian(DateTime(2001, 6, 4));
        expect(hijriDate.year, equals(1422));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1422
        hijriDate = HijriDateTime.fromGregorian(DateTime(2001, 11, 16));
        expect(hijriDate.year, equals(1422));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1422
        hijriDate = HijriDateTime.fromGregorian(DateTime(2001, 12, 16));
        expect(hijriDate.year, equals(1422));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1422
        hijriDate = HijriDateTime.fromGregorian(DateTime(2002, 2, 22));
        expect(hijriDate.year, equals(1422));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1423 Hijri Dates', () {
        // 1 Muharram 1423
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2002, 3, 15));
        expect(hijriDate.year, equals(1423));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1423
        hijriDate = HijriDateTime.fromGregorian(DateTime(2002, 5, 24));
        expect(hijriDate.year, equals(1423));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1423
        hijriDate = HijriDateTime.fromGregorian(DateTime(2002, 11, 6));
        expect(hijriDate.year, equals(1423));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1423
        hijriDate = HijriDateTime.fromGregorian(DateTime(2002, 12, 5));
        expect(hijriDate.year, equals(1423));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1423
        hijriDate = HijriDateTime.fromGregorian(DateTime(2003, 2, 11));
        expect(hijriDate.year, equals(1423));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1424 Hijri Dates', () {
        // 1 Muharram 1424
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2003, 3, 4));
        expect(hijriDate.year, equals(1424));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1424
        hijriDate = HijriDateTime.fromGregorian(DateTime(2003, 5, 13));
        expect(hijriDate.year, equals(1424));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1424
        hijriDate = HijriDateTime.fromGregorian(DateTime(2003, 10, 26));
        expect(hijriDate.year, equals(1424));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1424
        hijriDate = HijriDateTime.fromGregorian(DateTime(2003, 11, 25));
        expect(hijriDate.year, equals(1424));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1424
        hijriDate = HijriDateTime.fromGregorian(DateTime(2004, 2, 1));
        expect(hijriDate.year, equals(1424));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });
    });

    group('1425-1429 Hijri Years', () {
      test('1425 Hijri Dates', () {
        // 1 Muharram 1425
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2004, 2, 21));
        expect(hijriDate.year, equals(1425));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1425
        hijriDate = HijriDateTime.fromGregorian(DateTime(2004, 5, 1));
        expect(hijriDate.year, equals(1425));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1425
        hijriDate = HijriDateTime.fromGregorian(DateTime(2004, 10, 15));
        expect(hijriDate.year, equals(1425));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1425
        hijriDate = HijriDateTime.fromGregorian(DateTime(2004, 11, 14));
        expect(hijriDate.year, equals(1425));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1425
        hijriDate = HijriDateTime.fromGregorian(DateTime(2005, 1, 21));
        expect(hijriDate.year, equals(1425));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1426 Hijri Dates', () {
        // 1 Muharram 1426
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2005, 2, 10));
        expect(hijriDate.year, equals(1426));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1426
        hijriDate = HijriDateTime.fromGregorian(DateTime(2005, 4, 21));
        expect(hijriDate.year, equals(1426));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1426
        hijriDate = HijriDateTime.fromGregorian(DateTime(2005, 10, 4));
        expect(hijriDate.year, equals(1426));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1426
        hijriDate = HijriDateTime.fromGregorian(DateTime(2005, 11, 3));
        expect(hijriDate.year, equals(1426));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1426
        hijriDate = HijriDateTime.fromGregorian(DateTime(2006, 1, 10));
        expect(hijriDate.year, equals(1426));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1427 Hijri Dates', () {
        // 1 Muharram 1427
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2006, 1, 31));
        expect(hijriDate.year, equals(1427));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1427
        hijriDate = HijriDateTime.fromGregorian(DateTime(2006, 4, 10));
        expect(hijriDate.year, equals(1427));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1427
        hijriDate = HijriDateTime.fromGregorian(DateTime(2006, 9, 24));
        expect(hijriDate.year, equals(1427));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1427
        hijriDate = HijriDateTime.fromGregorian(DateTime(2006, 10, 23));
        expect(hijriDate.year, equals(1427));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1427
        hijriDate = HijriDateTime.fromGregorian(DateTime(2006, 12, 31));
        expect(hijriDate.year, equals(1427));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1428 Hijri Dates', () {
        // 1 Muharram 1428
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2007, 1, 20));
        expect(hijriDate.year, equals(1428));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1428
        hijriDate = HijriDateTime.fromGregorian(DateTime(2007, 3, 31));
        expect(hijriDate.year, equals(1428));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1428
        hijriDate = HijriDateTime.fromGregorian(DateTime(2007, 9, 13));
        expect(hijriDate.year, equals(1428));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1428
        hijriDate = HijriDateTime.fromGregorian(DateTime(2007, 10, 13));
        expect(hijriDate.year, equals(1428));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1428
        hijriDate = HijriDateTime.fromGregorian(DateTime(2007, 12, 20));
        expect(hijriDate.year, equals(1428));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1429 Hijri Dates', () {
        // 1 Muharram 1429
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2008, 1, 10));
        expect(hijriDate.year, equals(1429));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1429
        hijriDate = HijriDateTime.fromGregorian(DateTime(2008, 3, 20));
        expect(hijriDate.year, equals(1429));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1429
        hijriDate = HijriDateTime.fromGregorian(DateTime(2008, 9, 1));
        expect(hijriDate.year, equals(1429));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1429
        hijriDate = HijriDateTime.fromGregorian(DateTime(2008, 10, 1));
        expect(hijriDate.year, equals(1429));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1429
        hijriDate = HijriDateTime.fromGregorian(DateTime(2008, 12, 8));
        expect(hijriDate.year, equals(1429));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });
    });

    group('1430-1434 Hijri Years', () {
      test('1430 Hijri Dates', () {
        // 1 Muharram 1430
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2008, 12, 29));
        expect(hijriDate.year, equals(1430));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1430
        hijriDate = HijriDateTime.fromGregorian(DateTime(2009, 3, 9));
        expect(hijriDate.year, equals(1430));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1430
        hijriDate = HijriDateTime.fromGregorian(DateTime(2009, 8, 22));
        expect(hijriDate.year, equals(1430));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1430
        hijriDate = HijriDateTime.fromGregorian(DateTime(2009, 9, 20));
        expect(hijriDate.year, equals(1430));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1430
        hijriDate = HijriDateTime.fromGregorian(DateTime(2009, 11, 27));
        expect(hijriDate.year, equals(1430));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1431 Hijri Dates', () {
        // 1 Muharram 1431
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2009, 12, 18));
        expect(hijriDate.year, equals(1431));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1431
        hijriDate = HijriDateTime.fromGregorian(DateTime(2010, 2, 26));
        expect(hijriDate.year, equals(1431));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1431
        hijriDate = HijriDateTime.fromGregorian(DateTime(2010, 8, 11));
        expect(hijriDate.year, equals(1431));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1431
        hijriDate = HijriDateTime.fromGregorian(DateTime(2010, 9, 10));
        expect(hijriDate.year, equals(1431));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1431
        hijriDate = HijriDateTime.fromGregorian(DateTime(2010, 11, 16));
        expect(hijriDate.year, equals(1431));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1432 Hijri Dates', () {
        // 1 Muharram 1432
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2010, 12, 7));
        expect(hijriDate.year, equals(1432));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1432
        hijriDate = HijriDateTime.fromGregorian(DateTime(2011, 2, 15));
        expect(hijriDate.year, equals(1432));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1432
        hijriDate = HijriDateTime.fromGregorian(DateTime(2011, 8, 1));
        expect(hijriDate.year, equals(1432));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1432
        hijriDate = HijriDateTime.fromGregorian(DateTime(2011, 8, 30));
        expect(hijriDate.year, equals(1432));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1432
        hijriDate = HijriDateTime.fromGregorian(DateTime(2011, 11, 6));
        expect(hijriDate.year, equals(1432));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1433 Hijri Dates', () {
        // 1 Muharram 1433
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2011, 11, 26));
        expect(hijriDate.year, equals(1433));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1433
        hijriDate = HijriDateTime.fromGregorian(DateTime(2012, 2, 4));
        expect(hijriDate.year, equals(1433));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1433
        hijriDate = HijriDateTime.fromGregorian(DateTime(2012, 7, 20));
        expect(hijriDate.year, equals(1433));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1433
        hijriDate = HijriDateTime.fromGregorian(DateTime(2012, 8, 19));
        expect(hijriDate.year, equals(1433));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1433
        hijriDate = HijriDateTime.fromGregorian(DateTime(2012, 10, 26));
        expect(hijriDate.year, equals(1433));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1434 Hijri Dates', () {
        // 1 Muharram 1434
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2012, 11, 15));
        expect(hijriDate.year, equals(1434));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1434
        hijriDate = HijriDateTime.fromGregorian(DateTime(2013, 1, 24));
        expect(hijriDate.year, equals(1434));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1434
        hijriDate = HijriDateTime.fromGregorian(DateTime(2013, 7, 9));
        expect(hijriDate.year, equals(1434));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1434
        hijriDate = HijriDateTime.fromGregorian(DateTime(2013, 8, 8));
        expect(hijriDate.year, equals(1434));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1434
        hijriDate = HijriDateTime.fromGregorian(DateTime(2013, 10, 15));
        expect(hijriDate.year, equals(1434));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });
    });

    group('1435-1439 Hijri Years', () {
      test('1435 Hijri Dates', () {
        // 1 Muharram 1435
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2013, 11, 4));
        expect(hijriDate.year, equals(1435));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1435
        hijriDate = HijriDateTime.fromGregorian(DateTime(2014, 1, 13));
        expect(hijriDate.year, equals(1435));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1435
        hijriDate = HijriDateTime.fromGregorian(DateTime(2014, 6, 28));
        expect(hijriDate.year, equals(1435));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1435
        hijriDate = HijriDateTime.fromGregorian(DateTime(2014, 7, 28));
        expect(hijriDate.year, equals(1435));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1435
        hijriDate = HijriDateTime.fromGregorian(DateTime(2014, 10, 4));
        expect(hijriDate.year, equals(1435));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1436 Hijri Dates', () {
        // 1 Muharram 1436
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2014, 10, 25));
        expect(hijriDate.year, equals(1436));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1436
        hijriDate = HijriDateTime.fromGregorian(DateTime(2015, 1, 3));
        expect(hijriDate.year, equals(1436));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1436
        hijriDate = HijriDateTime.fromGregorian(DateTime(2015, 6, 18));
        expect(hijriDate.year, equals(1436));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1436
        hijriDate = HijriDateTime.fromGregorian(DateTime(2015, 7, 17));
        expect(hijriDate.year, equals(1436));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1436
        hijriDate = HijriDateTime.fromGregorian(DateTime(2015, 9, 23));
        expect(hijriDate.year, equals(1436));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1437 Hijri Dates', () {
        // 1 Muharram 1437
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2015, 10, 14));
        expect(hijriDate.year, equals(1437));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1437
        hijriDate = HijriDateTime.fromGregorian(DateTime(2015, 12, 23));
        expect(hijriDate.year, equals(1437));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1437
        hijriDate = HijriDateTime.fromGregorian(DateTime(2016, 6, 6));
        expect(hijriDate.year, equals(1437));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1437
        hijriDate = HijriDateTime.fromGregorian(DateTime(2016, 7, 6));
        expect(hijriDate.year, equals(1437));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1437
        hijriDate = HijriDateTime.fromGregorian(DateTime(2016, 9, 11));
        expect(hijriDate.year, equals(1437));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1438 Hijri Dates', () {
        // 1 Muharram 1438
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2016, 10, 2));
        expect(hijriDate.year, equals(1438));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1438
        hijriDate = HijriDateTime.fromGregorian(DateTime(2016, 12, 11));
        expect(hijriDate.year, equals(1438));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1438
        hijriDate = HijriDateTime.fromGregorian(DateTime(2017, 5, 27));
        expect(hijriDate.year, equals(1438));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1438
        hijriDate = HijriDateTime.fromGregorian(DateTime(2017, 6, 25));
        expect(hijriDate.year, equals(1438));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1438
        hijriDate = HijriDateTime.fromGregorian(DateTime(2017, 9, 1));
        expect(hijriDate.year, equals(1438));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1439 Hijri Dates', () {
        // 1 Muharram 1439
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2017, 9, 21));
        expect(hijriDate.year, equals(1439));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1439
        hijriDate = HijriDateTime.fromGregorian(DateTime(2017, 11, 30));
        expect(hijriDate.year, equals(1439));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1439
        hijriDate = HijriDateTime.fromGregorian(DateTime(2018, 5, 16));
        expect(hijriDate.year, equals(1439));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1439
        hijriDate = HijriDateTime.fromGregorian(DateTime(2018, 6, 15));
        expect(hijriDate.year, equals(1439));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1439
        hijriDate = HijriDateTime.fromGregorian(DateTime(2018, 8, 21));
        expect(hijriDate.year, equals(1439));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });
    });

    group('1440-1444 Hijri Years', () {
      test('1440 Hijri Dates', () {
        // 1 Muharram 1440
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2018, 9, 11));
        expect(hijriDate.year, equals(1440));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1440
        hijriDate = HijriDateTime.fromGregorian(DateTime(2018, 11, 20));
        expect(hijriDate.year, equals(1440));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1440
        hijriDate = HijriDateTime.fromGregorian(DateTime(2019, 5, 6));
        expect(hijriDate.year, equals(1440));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1440
        hijriDate = HijriDateTime.fromGregorian(DateTime(2019, 6, 4));
        expect(hijriDate.year, equals(1440));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1440
        hijriDate = HijriDateTime.fromGregorian(DateTime(2019, 8, 11));
        expect(hijriDate.year, equals(1440));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1441 Hijri Dates', () {
        // 1 Muharram 1441
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2019, 8, 31));
        expect(hijriDate.year, equals(1441));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1441
        hijriDate = HijriDateTime.fromGregorian(DateTime(2019, 11, 9));
        expect(hijriDate.year, equals(1441));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1441
        hijriDate = HijriDateTime.fromGregorian(DateTime(2020, 4, 24));
        expect(hijriDate.year, equals(1441));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1441
        hijriDate = HijriDateTime.fromGregorian(DateTime(2020, 5, 24));
        expect(hijriDate.year, equals(1441));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1441
        hijriDate = HijriDateTime.fromGregorian(DateTime(2020, 7, 31));
        expect(hijriDate.year, equals(1441));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1442 Hijri Dates', () {
        // 1 Muharram 1442
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2020, 8, 20));
        expect(hijriDate.year, equals(1442));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1442
        hijriDate = HijriDateTime.fromGregorian(DateTime(2020, 10, 29));
        expect(hijriDate.year, equals(1442));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1442
        hijriDate = HijriDateTime.fromGregorian(DateTime(2021, 4, 13));
        expect(hijriDate.year, equals(1442));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1442
        hijriDate = HijriDateTime.fromGregorian(DateTime(2021, 5, 13));
        expect(hijriDate.year, equals(1442));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1442
        hijriDate = HijriDateTime.fromGregorian(DateTime(2021, 7, 20));
        expect(hijriDate.year, equals(1442));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1443 Hijri Dates', () {
        // 1 Muharram 1443
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2021, 8, 9));
        expect(hijriDate.year, equals(1443));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1443
        hijriDate = HijriDateTime.fromGregorian(DateTime(2021, 10, 18));
        expect(hijriDate.year, equals(1443));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1443
        hijriDate = HijriDateTime.fromGregorian(DateTime(2022, 4, 2));
        expect(hijriDate.year, equals(1443));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1443
        hijriDate = HijriDateTime.fromGregorian(DateTime(2022, 5, 2));
        expect(hijriDate.year, equals(1443));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1443
        hijriDate = HijriDateTime.fromGregorian(DateTime(2022, 7, 9));
        expect(hijriDate.year, equals(1443));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1444 Hijri Dates', () {
        // 1 Muharram 1444
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2022, 7, 30));
        expect(hijriDate.year, equals(1444));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1444
        hijriDate = HijriDateTime.fromGregorian(DateTime(2022, 10, 8));
        expect(hijriDate.year, equals(1444));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1444
        hijriDate = HijriDateTime.fromGregorian(DateTime(2023, 3, 23));
        expect(hijriDate.year, equals(1444));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1444
        hijriDate = HijriDateTime.fromGregorian(DateTime(2023, 4, 21));
        expect(hijriDate.year, equals(1444));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1444
        hijriDate = HijriDateTime.fromGregorian(DateTime(2023, 6, 28));
        expect(hijriDate.year, equals(1444));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });
    });

    group('1445-1446 Hijri Years', () {
      test('1445 Hijri Dates', () {
        // 1 Muharram 1445
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2023, 7, 19));
        expect(hijriDate.year, equals(1445));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1445
        hijriDate = HijriDateTime.fromGregorian(DateTime(2023, 9, 27));
        expect(hijriDate.year, equals(1445));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1445
        hijriDate = HijriDateTime.fromGregorian(DateTime(2024, 3, 11));
        expect(hijriDate.year, equals(1445));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1445
        hijriDate = HijriDateTime.fromGregorian(DateTime(2024, 4, 10));
        expect(hijriDate.year, equals(1445));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1445
        hijriDate = HijriDateTime.fromGregorian(DateTime(2024, 6, 16));
        expect(hijriDate.year, equals(1445));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });

      test('1446 Hijri Dates', () {
        // 1 Muharram 1446
        var hijriDate = HijriDateTime.fromGregorian(DateTime(2024, 7, 7));
        expect(hijriDate.year, equals(1446));
        expect(hijriDate.month, equals(1));
        expect(hijriDate.day, equals(1));

        // 12 Rabi al-Awwal 1446
        hijriDate = HijriDateTime.fromGregorian(DateTime(2024, 9, 15));
        expect(hijriDate.year, equals(1446));
        expect(hijriDate.month, equals(3));
        expect(hijriDate.day, equals(12));

        // 1 Ramadan 1446
        hijriDate = HijriDateTime.fromGregorian(DateTime(2025, 3, 1));
        expect(hijriDate.year, equals(1446));
        expect(hijriDate.month, equals(9));
        expect(hijriDate.day, equals(1));

        // 1 Shawwal 1446
        hijriDate = HijriDateTime.fromGregorian(DateTime(2025, 3, 30));
        expect(hijriDate.year, equals(1446));
        expect(hijriDate.month, equals(10));
        expect(hijriDate.day, equals(1));

        // 10 Dhul Hijjah 1446
        hijriDate = HijriDateTime.fromGregorian(DateTime(2025, 6, 6));
        expect(hijriDate.year, equals(1446));
        expect(hijriDate.month, equals(12));
        expect(hijriDate.day, equals(10));
      });
    });
  });
}
