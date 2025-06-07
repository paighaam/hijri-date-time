import 'package:flutter_test/flutter_test.dart';
import 'package:hijri_date_time/hijri_date_time.dart';

void main() {
  group('Known HijriDateTime Conversions To Gregorian', () {
    group('1420-1424 Hijri Years', () {
      test('1420 Hijri Dates', () {
        // 1 Muharram 1420
        var hijriDate = HijriDateTime(1420, month: 1, day: 1);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(1999));
        expect(gregDate.month, equals(4));
        expect(gregDate.day, equals(17));

        // 12 Rabi al-Awwal 1420
        hijriDate = HijriDateTime(1420, month: 3, day: 12);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(1999));
        expect(gregDate.month, equals(6));
        expect(gregDate.day, equals(26));

        // 1 Ramadan 1420
        hijriDate = HijriDateTime(1420, month: 9, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(1999));
        expect(gregDate.month, equals(12));
        expect(gregDate.day, equals(9));

        // 1 Shawwal 1420
        hijriDate = HijriDateTime(1420, month: 10, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2000));
        expect(gregDate.month, equals(1));
        expect(gregDate.day, equals(8));

        // 10 Dhul Hijjah 1420
        hijriDate = HijriDateTime(1420, month: 12, day: 10);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2000));
        expect(gregDate.month, equals(3));
        expect(gregDate.day, equals(16));
      });

      test('1421 Hijri Dates', () {
        // 1 Muharram 1421
        var hijriDate = HijriDateTime(1421, month: 1, day: 1);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2000));
        expect(gregDate.month, equals(4));
        expect(gregDate.day, equals(6));

        // 12 Rabi al-Awwal 1421
        hijriDate = HijriDateTime(1421, month: 3, day: 12);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2000));
        expect(gregDate.month, equals(6));
        expect(gregDate.day, equals(14));

        // 1 Ramadan 1421
        hijriDate = HijriDateTime(1421, month: 9, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2000));
        expect(gregDate.month, equals(11));
        expect(gregDate.day, equals(27));

        // 1 Shawwal 1421
        hijriDate = HijriDateTime(1421, month: 10, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2000));
        expect(gregDate.month, equals(12));
        expect(gregDate.day, equals(27));

        // 10 Dhul Hijjah 1421
        hijriDate = HijriDateTime(1421, month: 12, day: 10);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2001));
        expect(gregDate.month, equals(3));
        expect(gregDate.day, equals(5));
      });

      test('1422 Hijri Dates', () {
        // 1 Muharram 1422
        var hijriDate = HijriDateTime(1422, month: 1, day: 1);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2001));
        expect(gregDate.month, equals(3));
        expect(gregDate.day, equals(26));

        // 12 Rabi al-Awwal 1422
        hijriDate = HijriDateTime(1422, month: 3, day: 12);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2001));
        expect(gregDate.month, equals(6));
        expect(gregDate.day, equals(4));

        // 1 Ramadan 1422
        hijriDate = HijriDateTime(1422, month: 9, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2001));
        expect(gregDate.month, equals(11));
        expect(gregDate.day, equals(16));

        // 1 Shawwal 1422
        hijriDate = HijriDateTime(1422, month: 10, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2001));
        expect(gregDate.month, equals(12));
        expect(gregDate.day, equals(16));

        // 10 Dhul Hijjah 1422
        hijriDate = HijriDateTime(1422, month: 12, day: 10);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2002));
        expect(gregDate.month, equals(2));
        expect(gregDate.day, equals(22));
      });

      test('1423 Hijri Dates', () {
        // 1 Muharram 1423
        var hijriDate = HijriDateTime(1423, month: 1, day: 1);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2002));
        expect(gregDate.month, equals(3));
        expect(gregDate.day, equals(15));

        // 12 Rabi al-Awwal 1423
        hijriDate = HijriDateTime(1423, month: 3, day: 12);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2002));
        expect(gregDate.month, equals(5));
        expect(gregDate.day, equals(24));

        // 1 Ramadan 1423
        hijriDate = HijriDateTime(1423, month: 9, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2002));
        expect(gregDate.month, equals(11));
        expect(gregDate.day, equals(6));

        // 1 Shawwal 1423
        hijriDate = HijriDateTime(1423, month: 10, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2002));
        expect(gregDate.month, equals(12));
        expect(gregDate.day, equals(5));

        // 10 Dhul Hijjah 1423
        hijriDate = HijriDateTime(1423, month: 12, day: 10);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2003));
        expect(gregDate.month, equals(2));
        expect(gregDate.day, equals(11));
      });

      test('1424 Hijri Dates', () {
        // 1 Muharram 1424
        var hijriDate = HijriDateTime(1424, month: 1, day: 1);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2003));
        expect(gregDate.month, equals(3));
        expect(gregDate.day, equals(4));

        // 12 Rabi al-Awwal 1424
        hijriDate = HijriDateTime(1424, month: 3, day: 12);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2003));
        expect(gregDate.month, equals(5));
        expect(gregDate.day, equals(13));

        // 1 Ramadan 1424
        hijriDate = HijriDateTime(1424, month: 9, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2003));
        expect(gregDate.month, equals(10));
        expect(gregDate.day, equals(26));

        // 1 Shawwal 1424
        hijriDate = HijriDateTime(1424, month: 10, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2003));
        expect(gregDate.month, equals(11));
        expect(gregDate.day, equals(25));

        // 10 Dhul Hijjah 1424
        hijriDate = HijriDateTime(1424, month: 12, day: 10);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2004));
        expect(gregDate.month, equals(2));
        expect(gregDate.day, equals(1));
      });
    });

    group('1425-1429 Hijri Years', () {
      test('1425 Hijri Dates', () {
        // 1 Muharram 1425
        var hijriDate = HijriDateTime(1425, month: 1, day: 1);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2004));
        expect(gregDate.month, equals(2));
        expect(gregDate.day, equals(21));

        // 12 Rabi al-Awwal 1425
        hijriDate = HijriDateTime(1425, month: 3, day: 12);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2004));
        expect(gregDate.month, equals(5));
        expect(gregDate.day, equals(1));

        // 1 Ramadan 1425
        hijriDate = HijriDateTime(1425, month: 9, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2004));
        expect(gregDate.month, equals(10));
        expect(gregDate.day, equals(15));

        // 1 Shawwal 1425
        hijriDate = HijriDateTime(1425, month: 10, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2004));
        expect(gregDate.month, equals(11));
        expect(gregDate.day, equals(14));

        // 10 Dhul Hijjah 1425
        hijriDate = HijriDateTime(1425, month: 12, day: 10);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2005));
        expect(gregDate.month, equals(1));
        expect(gregDate.day, equals(21));
      });

      test('1426 Hijri Dates', () {
        // 1 Muharram 1426
        var hijriDate = HijriDateTime(1426, month: 1, day: 1);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2005));
        expect(gregDate.month, equals(2));
        expect(gregDate.day, equals(10));

        // 12 Rabi al-Awwal 1426
        hijriDate = HijriDateTime(1426, month: 3, day: 12);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2005));
        expect(gregDate.month, equals(4));
        expect(gregDate.day, equals(21));

        // 1 Ramadan 1426
        hijriDate = HijriDateTime(1426, month: 9, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2005));
        expect(gregDate.month, equals(10));
        expect(gregDate.day, equals(4));

        // 1 Shawwal 1426
        hijriDate = HijriDateTime(1426, month: 10, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2005));
        expect(gregDate.month, equals(11));
        expect(gregDate.day, equals(3));

        // 10 Dhul Hijjah 1426
        hijriDate = HijriDateTime(1426, month: 12, day: 10);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2006));
        expect(gregDate.month, equals(1));
        expect(gregDate.day, equals(10));
      });

      test('1427 Hijri Dates', () {
        // 1 Muharram 1427
        var hijriDate = HijriDateTime(1427, month: 1, day: 1);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2006));
        expect(gregDate.month, equals(1));
        expect(gregDate.day, equals(31));

        // 12 Rabi al-Awwal 1427
        hijriDate = HijriDateTime(1427, month: 3, day: 12);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2006));
        expect(gregDate.month, equals(4));
        expect(gregDate.day, equals(10));

        // 1 Ramadan 1427
        hijriDate = HijriDateTime(1427, month: 9, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2006));
        expect(gregDate.month, equals(9));
        expect(gregDate.day, equals(24));

        // 1 Shawwal 1427
        hijriDate = HijriDateTime(1427, month: 10, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2006));
        expect(gregDate.month, equals(10));
        expect(gregDate.day, equals(23));

        // 10 Dhul Hijjah 1427
        hijriDate = HijriDateTime(1427, month: 12, day: 10);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2006));
        expect(gregDate.month, equals(12));
        expect(gregDate.day, equals(31));
      });

      test('1428 Hijri Dates', () {
        // 1 Muharram 1428
        var hijriDate = HijriDateTime(1428, month: 1, day: 1);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2007));
        expect(gregDate.month, equals(1));
        expect(gregDate.day, equals(20));

        // 12 Rabi al-Awwal 1428
        hijriDate = HijriDateTime(1428, month: 3, day: 12);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2007));
        expect(gregDate.month, equals(3));
        expect(gregDate.day, equals(31));

        // 1 Ramadan 1428
        hijriDate = HijriDateTime(1428, month: 9, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2007));
        expect(gregDate.month, equals(9));
        expect(gregDate.day, equals(13));

        // 1 Shawwal 1428
        hijriDate = HijriDateTime(1428, month: 10, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2007));
        expect(gregDate.month, equals(10));
        expect(gregDate.day, equals(13));

        // 10 Dhul Hijjah 1428
        hijriDate = HijriDateTime(1428, month: 12, day: 10);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2007));
        expect(gregDate.month, equals(12));
        expect(gregDate.day, equals(20));
      });

      test('1429 Hijri Dates', () {
        // 1 Muharram 1429
        var hijriDate = HijriDateTime(1429, month: 1, day: 1);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2008));
        expect(gregDate.month, equals(1));
        expect(gregDate.day, equals(10));

        // 12 Rabi al-Awwal 1429
        hijriDate = HijriDateTime(1429, month: 3, day: 12);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2008));
        expect(gregDate.month, equals(3));
        expect(gregDate.day, equals(20));

        // 1 Ramadan 1429
        hijriDate = HijriDateTime(1429, month: 9, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2008));
        expect(gregDate.month, equals(9));
        expect(gregDate.day, equals(1));

        // 1 Shawwal 1429
        hijriDate = HijriDateTime(1429, month: 10, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2008));
        expect(gregDate.month, equals(10));
        expect(gregDate.day, equals(1));

        // 10 Dhul Hijjah 1429
        hijriDate = HijriDateTime(1429, month: 12, day: 10);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2008));
        expect(gregDate.month, equals(12));
        expect(gregDate.day, equals(8));
      });
    });

    group('1430-1434 Hijri Years', () {
      test('1430 Hijri Dates', () {
        // 1 Muharram 1430
        var hijriDate = HijriDateTime(1430, month: 1, day: 1);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2008));
        expect(gregDate.month, equals(12));
        expect(gregDate.day, equals(29));

        // 12 Rabi al-Awwal 1430
        hijriDate = HijriDateTime(1430, month: 3, day: 12);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2009));
        expect(gregDate.month, equals(3));
        expect(gregDate.day, equals(9));

        // 1 Ramadan 1430
        hijriDate = HijriDateTime(1430, month: 9, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2009));
        expect(gregDate.month, equals(8));
        expect(gregDate.day, equals(22));

        // 1 Shawwal 1430
        hijriDate = HijriDateTime(1430, month: 10, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2009));
        expect(gregDate.month, equals(9));
        expect(gregDate.day, equals(20));

        // 10 Dhul Hijjah 1430
        hijriDate = HijriDateTime(1430, month: 12, day: 10);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2009));
        expect(gregDate.month, equals(11));
        expect(gregDate.day, equals(27));
      });

      test('1431 Hijri Dates', () {
        // 1 Muharram 1431
        var hijriDate = HijriDateTime(1431, month: 1, day: 1);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2009));
        expect(gregDate.month, equals(12));
        expect(gregDate.day, equals(18));

        // 12 Rabi al-Awwal 1431
        hijriDate = HijriDateTime(1431, month: 3, day: 12);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2010));
        expect(gregDate.month, equals(2));
        expect(gregDate.day, equals(26));

        // 1 Ramadan 1431
        hijriDate = HijriDateTime(1431, month: 9, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2010));
        expect(gregDate.month, equals(8));
        expect(gregDate.day, equals(11));

        // 1 Shawwal 1431
        hijriDate = HijriDateTime(1431, month: 10, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2010));
        expect(gregDate.month, equals(9));
        expect(gregDate.day, equals(10));

        // 10 Dhul Hijjah 1431
        hijriDate = HijriDateTime(1431, month: 12, day: 10);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2010));
        expect(gregDate.month, equals(11));
        expect(gregDate.day, equals(16));
      });

      test('1432 Hijri Dates', () {
        // 1 Muharram 1432
        var hijriDate = HijriDateTime(1432, month: 1, day: 1);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2010));
        expect(gregDate.month, equals(12));
        expect(gregDate.day, equals(7));

        // 12 Rabi al-Awwal 1432
        hijriDate = HijriDateTime(1432, month: 3, day: 12);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2011));
        expect(gregDate.month, equals(2));
        expect(gregDate.day, equals(15));

        // 1 Ramadan 1432
        hijriDate = HijriDateTime(1432, month: 9, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2011));
        expect(gregDate.month, equals(8));
        expect(gregDate.day, equals(1));

        // 1 Shawwal 1432
        hijriDate = HijriDateTime(1432, month: 10, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2011));
        expect(gregDate.month, equals(8));
        expect(gregDate.day, equals(30));

        // 10 Dhul Hijjah 1432
        hijriDate = HijriDateTime(1432, month: 12, day: 10);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2011));
        expect(gregDate.month, equals(11));
        expect(gregDate.day, equals(6));
      });

      test('1433 Hijri Dates', () {
        // 1 Muharram 1433
        var hijriDate = HijriDateTime(1433, month: 1, day: 1);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2011));
        expect(gregDate.month, equals(11));
        expect(gregDate.day, equals(26));

        // 12 Rabi al-Awwal 1433
        hijriDate = HijriDateTime(1433, month: 3, day: 12);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2012));
        expect(gregDate.month, equals(2));
        expect(gregDate.day, equals(4));

        // 1 Ramadan 1433
        hijriDate = HijriDateTime(1433, month: 9, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2012));
        expect(gregDate.month, equals(7));
        expect(gregDate.day, equals(20));

        // 1 Shawwal 1433
        hijriDate = HijriDateTime(1433, month: 10, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2012));
        expect(gregDate.month, equals(8));
        expect(gregDate.day, equals(19));

        // 10 Dhul Hijjah 1433
        hijriDate = HijriDateTime(1433, month: 12, day: 10);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2012));
        expect(gregDate.month, equals(10));
        expect(gregDate.day, equals(26));
      });

      test('1434 Hijri Dates', () {
        // 1 Muharram 1434
        var hijriDate = HijriDateTime(1434, month: 1, day: 1);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2012));
        expect(gregDate.month, equals(11));
        expect(gregDate.day, equals(15));

        // 12 Rabi al-Awwal 1434
        hijriDate = HijriDateTime(1434, month: 3, day: 12);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2013));
        expect(gregDate.month, equals(1));
        expect(gregDate.day, equals(24));

        // 1 Ramadan 1434
        hijriDate = HijriDateTime(1434, month: 9, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2013));
        expect(gregDate.month, equals(7));
        expect(gregDate.day, equals(9));

        // 1 Shawwal 1434
        hijriDate = HijriDateTime(1434, month: 10, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2013));
        expect(gregDate.month, equals(8));
        expect(gregDate.day, equals(8));

        // 10 Dhul Hijjah 1434
        hijriDate = HijriDateTime(1434, month: 12, day: 10);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2013));
        expect(gregDate.month, equals(10));
        expect(gregDate.day, equals(15));
      });
    });

    group('1435-1439 Hijri Years', () {
      test('1435 Hijri Dates', () {
        // 1 Muharram 1435
        var hijriDate = HijriDateTime(1435, month: 1, day: 1);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2013));
        expect(gregDate.month, equals(11));
        expect(gregDate.day, equals(4));

        // 12 Rabi al-Awwal 1435
        hijriDate = HijriDateTime(1435, month: 3, day: 12);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2014));
        expect(gregDate.month, equals(1));
        expect(gregDate.day, equals(13));

        // 1 Ramadan 1435
        hijriDate = HijriDateTime(1435, month: 9, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2014));
        expect(gregDate.month, equals(6));
        expect(gregDate.day, equals(28));

        // 1 Shawwal 1435
        hijriDate = HijriDateTime(1435, month: 10, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2014));
        expect(gregDate.month, equals(7));
        expect(gregDate.day, equals(28));

        // 10 Dhul Hijjah 1435
        hijriDate = HijriDateTime(1435, month: 12, day: 10);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2014));
        expect(gregDate.month, equals(10));
        expect(gregDate.day, equals(4));
      });

      test('1436 Hijri Dates', () {
        // 1 Muharram 1436
        var hijriDate = HijriDateTime(1436, month: 1, day: 1);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2014));
        expect(gregDate.month, equals(10));
        expect(gregDate.day, equals(25));

        // 12 Rabi al-Awwal 1436
        hijriDate = HijriDateTime(1436, month: 3, day: 12);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2015));
        expect(gregDate.month, equals(1));
        expect(gregDate.day, equals(3));

        // 1 Ramadan 1436
        hijriDate = HijriDateTime(1436, month: 9, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2015));
        expect(gregDate.month, equals(6));
        expect(gregDate.day, equals(18));

        // 1 Shawwal 1436
        hijriDate = HijriDateTime(1436, month: 10, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2015));
        expect(gregDate.month, equals(7));
        expect(gregDate.day, equals(17));

        // 10 Dhul Hijjah 1436
        hijriDate = HijriDateTime(1436, month: 12, day: 10);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2015));
        expect(gregDate.month, equals(9));
        expect(gregDate.day, equals(23));
      });

      test('1437 Hijri Dates', () {
        // 1 Muharram 1437
        var hijriDate = HijriDateTime(1437, month: 1, day: 1);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2015));
        expect(gregDate.month, equals(10));
        expect(gregDate.day, equals(14));

        // 12 Rabi al-Awwal 1437
        hijriDate = HijriDateTime(1437, month: 3, day: 12);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2015));
        expect(gregDate.month, equals(12));
        expect(gregDate.day, equals(23));

        // 1 Ramadan 1437
        hijriDate = HijriDateTime(1437, month: 9, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2016));
        expect(gregDate.month, equals(6));
        expect(gregDate.day, equals(6));

        // 1 Shawwal 1437
        hijriDate = HijriDateTime(1437, month: 10, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2016));
        expect(gregDate.month, equals(7));
        expect(gregDate.day, equals(6));

        // 10 Dhul Hijjah 1437
        hijriDate = HijriDateTime(1437, month: 12, day: 10);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2016));
        expect(gregDate.month, equals(9));
        expect(gregDate.day, equals(11));
      });

      test('1438 Hijri Dates', () {
        // 1 Muharram 1438
        var hijriDate = HijriDateTime(1438, month: 1, day: 1);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2016));
        expect(gregDate.month, equals(10));
        expect(gregDate.day, equals(2));

        // 12 Rabi al-Awwal 1438
        hijriDate = HijriDateTime(1438, month: 3, day: 12);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2016));
        expect(gregDate.month, equals(12));
        expect(gregDate.day, equals(11));

        // 1 Ramadan 1438
        hijriDate = HijriDateTime(1438, month: 9, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2017));
        expect(gregDate.month, equals(5));
        expect(gregDate.day, equals(27));

        // 1 Shawwal 1438
        hijriDate = HijriDateTime(1438, month: 10, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2017));
        expect(gregDate.month, equals(6));
        expect(gregDate.day, equals(25));

        // 10 Dhul Hijjah 1438
        hijriDate = HijriDateTime(1438, month: 12, day: 10);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2017));
        expect(gregDate.month, equals(9));
        expect(gregDate.day, equals(1));
      });

      test('1439 Hijri Dates', () {
        // 1 Muharram 1439
        var hijriDate = HijriDateTime(1439, month: 1, day: 1);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2017));
        expect(gregDate.month, equals(9));
        expect(gregDate.day, equals(21));

        // 12 Rabi al-Awwal 1439
        hijriDate = HijriDateTime(1439, month: 3, day: 12);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2017));
        expect(gregDate.month, equals(11));
        expect(gregDate.day, equals(30));

        // 1 Ramadan 1439
        hijriDate = HijriDateTime(1439, month: 9, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2018));
        expect(gregDate.month, equals(5));
        expect(gregDate.day, equals(16));

        // 1 Shawwal 1439
        hijriDate = HijriDateTime(1439, month: 10, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2018));
        expect(gregDate.month, equals(6));
        expect(gregDate.day, equals(15));

        // 10 Dhul Hijjah 1439
        hijriDate = HijriDateTime(1439, month: 12, day: 10);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2018));
        expect(gregDate.month, equals(8));
        expect(gregDate.day, equals(21));
      });
    });

    group('1440-1444 Hijri Years', () {
      test('1440 Hijri Dates', () {
        // 1 Muharram 1440
        var hijriDate = HijriDateTime(1440, month: 1, day: 1);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2018));
        expect(gregDate.month, equals(9));
        expect(gregDate.day, equals(11));

        // 12 Rabi al-Awwal 1440
        hijriDate = HijriDateTime(1440, month: 3, day: 12);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2018));
        expect(gregDate.month, equals(11));
        expect(gregDate.day, equals(20));

        // 1 Ramadan 1440
        hijriDate = HijriDateTime(1440, month: 9, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2019));
        expect(gregDate.month, equals(5));
        expect(gregDate.day, equals(6));

        // 1 Shawwal 1440
        hijriDate = HijriDateTime(1440, month: 10, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2019));
        expect(gregDate.month, equals(6));
        expect(gregDate.day, equals(4));

        // 10 Dhul Hijjah 1440
        hijriDate = HijriDateTime(1440, month: 12, day: 10);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2019));
        expect(gregDate.month, equals(8));
        expect(gregDate.day, equals(11));
      });

      test('1441 Hijri Dates', () {
        // 1 Muharram 1441
        var hijriDate = HijriDateTime(1441, month: 1, day: 1);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2019));
        expect(gregDate.month, equals(8));
        expect(gregDate.day, equals(31));

        // 12 Rabi al-Awwal 1441
        hijriDate = HijriDateTime(1441, month: 3, day: 12);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2019));
        expect(gregDate.month, equals(11));
        expect(gregDate.day, equals(9));

        // 1 Ramadan 1441
        hijriDate = HijriDateTime(1441, month: 9, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2020));
        expect(gregDate.month, equals(4));
        expect(gregDate.day, equals(24));

        // 1 Shawwal 1441
        hijriDate = HijriDateTime(1441, month: 10, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2020));
        expect(gregDate.month, equals(5));
        expect(gregDate.day, equals(24));

        // 10 Dhul Hijjah 1441
        hijriDate = HijriDateTime(1441, month: 12, day: 10);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2020));
        expect(gregDate.month, equals(7));
        expect(gregDate.day, equals(31));
      });

      test('1442 Hijri Dates', () {
        // 1 Muharram 1442
        var hijriDate = HijriDateTime(1442, month: 1, day: 1);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2020));
        expect(gregDate.month, equals(8));
        expect(gregDate.day, equals(20));

        // 12 Rabi al-Awwal 1442
        hijriDate = HijriDateTime(1442, month: 3, day: 12);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2020));
        expect(gregDate.month, equals(10));
        expect(gregDate.day, equals(29));

        // 1 Ramadan 1442
        hijriDate = HijriDateTime(1442, month: 9, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2021));
        expect(gregDate.month, equals(4));
        expect(gregDate.day, equals(13));

        // 1 Shawwal 1442
        hijriDate = HijriDateTime(1442, month: 10, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2021));
        expect(gregDate.month, equals(5));
        expect(gregDate.day, equals(13));

        // 10 Dhul Hijjah 1442
        hijriDate = HijriDateTime(1442, month: 12, day: 10);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2021));
        expect(gregDate.month, equals(7));
        expect(gregDate.day, equals(20));
      });

      test('1443 Hijri Dates', () {
        // 1 Muharram 1443
        var hijriDate = HijriDateTime(1443, month: 1, day: 1);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2021));
        expect(gregDate.month, equals(8));
        expect(gregDate.day, equals(9));

        // 12 Rabi al-Awwal 1443
        hijriDate = HijriDateTime(1443, month: 3, day: 12);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2021));
        expect(gregDate.month, equals(10));
        expect(gregDate.day, equals(18));

        // 1 Ramadan 1443
        hijriDate = HijriDateTime(1443, month: 9, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2022));
        expect(gregDate.month, equals(4));
        expect(gregDate.day, equals(2));

        // 1 Shawwal 1443
        hijriDate = HijriDateTime(1443, month: 10, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2022));
        expect(gregDate.month, equals(5));
        expect(gregDate.day, equals(2));

        // 10 Dhul Hijjah 1443
        hijriDate = HijriDateTime(1443, month: 12, day: 10);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2022));
        expect(gregDate.month, equals(7));
        expect(gregDate.day, equals(9));
      });

      test('1444 Hijri Dates', () {
        // 1 Muharram 1444
        var hijriDate = HijriDateTime(1444, month: 1, day: 1);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2022));
        expect(gregDate.month, equals(7));
        expect(gregDate.day, equals(30));

        // 12 Rabi al-Awwal 1444
        hijriDate = HijriDateTime(1444, month: 3, day: 12);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2022));
        expect(gregDate.month, equals(10));
        expect(gregDate.day, equals(8));

        // 1 Ramadan 1444
        hijriDate = HijriDateTime(1444, month: 9, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2023));
        expect(gregDate.month, equals(3));
        expect(gregDate.day, equals(23));

        // 1 Shawwal 1444
        hijriDate = HijriDateTime(1444, month: 10, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2023));
        expect(gregDate.month, equals(4));
        expect(gregDate.day, equals(21));

        // 10 Dhul Hijjah 1444
        hijriDate = HijriDateTime(1444, month: 12, day: 10);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2023));
        expect(gregDate.month, equals(6));
        expect(gregDate.day, equals(28));
      });
    });

    group('1445-1446 Hijri Years', () {
      test('1445 Hijri Dates', () {
        // 1 Muharram 1445
        var hijriDate = HijriDateTime(1445, month: 1, day: 1);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2023));
        expect(gregDate.month, equals(7));
        expect(gregDate.day, equals(19));

        // 12 Rabi al-Awwal 1445
        hijriDate = HijriDateTime(1445, month: 3, day: 12);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2023));
        expect(gregDate.month, equals(9));
        expect(gregDate.day, equals(27));

        // 1 Ramadan 1445
        hijriDate = HijriDateTime(1445, month: 9, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2024));
        expect(gregDate.month, equals(3));
        expect(gregDate.day, equals(11));

        // 1 Shawwal 1445
        hijriDate = HijriDateTime(1445, month: 10, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2024));
        expect(gregDate.month, equals(4));
        expect(gregDate.day, equals(10));

        // 10 Dhul Hijjah 1445
        hijriDate = HijriDateTime(1445, month: 12, day: 10);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2024));
        expect(gregDate.month, equals(6));
        expect(gregDate.day, equals(16));
      });

      test('1446 Hijri Dates', () {
        // 1 Muharram 1446
        var hijriDate = HijriDateTime(1446, month: 1, day: 1);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2024));
        expect(gregDate.month, equals(7));
        expect(gregDate.day, equals(7));

        // 12 Rabi al-Awwal 1446
        hijriDate = HijriDateTime(1446, month: 3, day: 12);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2024));
        expect(gregDate.month, equals(9));
        expect(gregDate.day, equals(15));

        // 1 Ramadan 1446
        hijriDate = HijriDateTime(1446, month: 9, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2025));
        expect(gregDate.month, equals(3));
        expect(gregDate.day, equals(1));

        // 1 Shawwal 1446
        hijriDate = HijriDateTime(1446, month: 10, day: 1);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2025));
        expect(gregDate.month, equals(3));
        expect(gregDate.day, equals(30));

        // 10 Dhul Hijjah 1446
        hijriDate = HijriDateTime(1446, month: 12, day: 10);
        gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2025));
        expect(gregDate.month, equals(6));
        expect(gregDate.day, equals(6));
      });
    });
  });
}
