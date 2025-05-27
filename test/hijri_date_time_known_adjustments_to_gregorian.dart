import 'package:flutter_test/flutter_test.dart';
import 'package:hijri_date_time/hijri_date_time.dart';
import 'package:hijri_date_time/src/hijri_adjustments.dart';

void main() {
  group('Known Adjustments to Gregorian Tests', () {
    test('1424 - 1 Ramadan adjustment', () {
      // With adjustment
      var hijriDate =
          HijriDateTime(1424, 9, 1, 0, 0, 0, 0, 0, knownAdjustments);
      var gregDate = hijriDate.toGregorian();
      expect(gregDate.year, equals(2003));
      expect(gregDate.month, equals(10));
      expect(gregDate.day, equals(27)); // Adjusted from 26 Oct 2003

      // Without adjustment
      var hijriDateNoAdj = HijriDateTime(1424, 9, 1);
      var gregDateNoAdj = hijriDateNoAdj.toGregorian();
      expect(gregDateNoAdj.year, equals(2003));
      expect(gregDateNoAdj.month, equals(10));
      expect(gregDateNoAdj.day, equals(26)); // Computed
    });

    test('1425 - 1 Shawwal, 1 Dhul Hijjah and 10 Dhul Hijjah adjustments', () {
      // 1 Shawwal 1425
      var hijriDate =
          HijriDateTime(1425, 10, 1, 0, 0, 0, 0, 0, knownAdjustments);
      var gregDate = hijriDate.toGregorian();
      expect(gregDate.year, equals(2004));
      expect(gregDate.month, equals(11));
      expect(gregDate.day, equals(13)); // Adjusted from 14 Nov 2004

      var hijriDateNoAdj = HijriDateTime(1425, 10, 1);
      var gregDateNoAdj = hijriDateNoAdj.toGregorian();
      expect(gregDateNoAdj.year, equals(2004));
      expect(gregDateNoAdj.month, equals(11));
      expect(gregDateNoAdj.day, equals(14)); // Computed

      // 1 Dhul Hijjah 1425
      hijriDate = HijriDateTime(1425, 12, 1, 0, 0, 0, 0, 0, knownAdjustments);
      gregDate = hijriDate.toGregorian();
      expect(gregDate.year, equals(2005));
      expect(gregDate.month, equals(1));
      expect(gregDate.day, equals(11)); // Adjusted from 12 Jan 2005

      hijriDateNoAdj = HijriDateTime(1425, 12, 1);
      gregDateNoAdj = hijriDateNoAdj.toGregorian();
      expect(gregDateNoAdj.year, equals(2005));
      expect(gregDateNoAdj.month, equals(1));
      expect(gregDateNoAdj.day, equals(12)); // Computed

      // 10 Dhul Hijjah 1425
      hijriDate = HijriDateTime(1425, 12, 10, 0, 0, 0, 0, 0, knownAdjustments);
      gregDate = hijriDate.toGregorian();
      expect(gregDate.year, equals(2005));
      expect(gregDate.month, equals(1));
      expect(gregDate.day, equals(20)); // Adjusted from 21 Jan 2005

      hijriDateNoAdj = HijriDateTime(1425, 12, 10);
      gregDateNoAdj = hijriDateNoAdj.toGregorian();
      expect(gregDateNoAdj.year, equals(2005));
      expect(gregDateNoAdj.month, equals(1));
      expect(gregDateNoAdj.day, equals(21)); // Computed
    });

    test('1427 - 1 Ramadan, 1 Dhul Hijjah and 10 Dhul Hijjah adjustments', () {
      // 1 Ramadan 1427
      var hijriDate =
          HijriDateTime(1427, 9, 1, 0, 0, 0, 0, 0, knownAdjustments);
      var gregDate = hijriDate.toGregorian();
      expect(gregDate.year, equals(2006));
      expect(gregDate.month, equals(9));
      expect(gregDate.day, equals(23)); // Adjusted from 24 Sep 2006

      var hijriDateNoAdj = HijriDateTime(1427, 9, 1);
      var gregDateNoAdj = hijriDateNoAdj.toGregorian();
      expect(gregDateNoAdj.year, equals(2006));
      expect(gregDateNoAdj.month, equals(9));
      expect(gregDateNoAdj.day, equals(24)); // Computed

      // 1 Dhul Hijjah 1427
      hijriDate = HijriDateTime(1427, 12, 1, 0, 0, 0, 0, 0, knownAdjustments);
      gregDate = hijriDate.toGregorian();
      expect(gregDate.year, equals(2006));
      expect(gregDate.month, equals(12));
      expect(gregDate.day, equals(21)); // Adjusted from 22 Dec 2006

      hijriDateNoAdj = HijriDateTime(1427, 12, 1);
      gregDateNoAdj = hijriDateNoAdj.toGregorian();
      expect(gregDateNoAdj.year, equals(2006));
      expect(gregDateNoAdj.month, equals(12));
      expect(gregDateNoAdj.day, equals(22)); // Computed

      // 10 Dhul Hijjah 1427
      hijriDate = HijriDateTime(1427, 12, 10, 0, 0, 0, 0, 0, knownAdjustments);
      gregDate = hijriDate.toGregorian();
      expect(gregDate.year, equals(2006));
      expect(gregDate.month, equals(12));
      expect(gregDate.day, equals(30)); // Adjusted from 31 Dec 2006

      hijriDateNoAdj = HijriDateTime(1427, 12, 10);
      gregDateNoAdj = hijriDateNoAdj.toGregorian();
      expect(gregDateNoAdj.year, equals(2006));
      expect(gregDateNoAdj.month, equals(12));
      expect(gregDateNoAdj.day, equals(31)); // Computed
    });

    test('1428 - 1 Shawwal, 1 Dhul Hijjah and 10 Dhul Hijjah adjustments', () {
      // 1 Shawwal 1428
      var hijriDate =
          HijriDateTime(1428, 10, 1, 0, 0, 0, 0, 0, knownAdjustments);
      var gregDate = hijriDate.toGregorian();
      expect(gregDate.year, equals(2007));
      expect(gregDate.month, equals(10));
      expect(gregDate.day, equals(12)); // Adjusted from 13 Oct 2007

      var hijriDateNoAdj = HijriDateTime(1428, 10, 1);
      var gregDateNoAdj = hijriDateNoAdj.toGregorian();
      expect(gregDateNoAdj.year, equals(2007));
      expect(gregDateNoAdj.month, equals(10));
      expect(gregDateNoAdj.day, equals(13)); // Computed

      // 1 Dhul Hijjah 1428
      hijriDate = HijriDateTime(1428, 12, 1, 0, 0, 0, 0, 0, knownAdjustments);
      gregDate = hijriDate.toGregorian();
      expect(gregDate.year, equals(2007));
      expect(gregDate.month, equals(12));
      expect(gregDate.day, equals(10)); // Adjusted from 11 Dec 2007

      hijriDateNoAdj = HijriDateTime(1428, 12, 1);
      gregDateNoAdj = hijriDateNoAdj.toGregorian();
      expect(gregDateNoAdj.year, equals(2007));
      expect(gregDateNoAdj.month, equals(12));
      expect(gregDateNoAdj.day, equals(11)); // Computed

      // 10 Dhul Hijjah 1428
      hijriDate = HijriDateTime(1428, 12, 10, 0, 0, 0, 0, 0, knownAdjustments);
      gregDate = hijriDate.toGregorian();
      expect(gregDate.year, equals(2007));
      expect(gregDate.month, equals(12));
      expect(gregDate.day, equals(19)); // Adjusted from 20 Dec 2007

      hijriDateNoAdj = HijriDateTime(1428, 12, 10);
      gregDateNoAdj = hijriDateNoAdj.toGregorian();
      expect(gregDateNoAdj.year, equals(2007));
      expect(gregDateNoAdj.month, equals(12));
      expect(gregDateNoAdj.day, equals(20)); // Computed
    });

    test('1429 - 1 Shawwal adjustment', () {
      // With adjustment
      var hijriDate =
          HijriDateTime(1429, 10, 1, 0, 0, 0, 0, 0, knownAdjustments);
      var gregDate = hijriDate.toGregorian();
      expect(gregDate.year, equals(2008));
      expect(gregDate.month, equals(9));
      expect(gregDate.day, equals(30)); // Adjusted from 1 Oct 2008

      // Without adjustment
      var hijriDateNoAdj = HijriDateTime(1429, 10, 1);
      var gregDateNoAdj = hijriDateNoAdj.toGregorian();
      expect(gregDateNoAdj.year, equals(2008));
      expect(gregDateNoAdj.month, equals(10));
      expect(gregDateNoAdj.day, equals(1)); // Computed
    });

    test('1433 - 1 Muharram adjustment', () {
      // With adjustment
      var hijriDate =
          HijriDateTime(1433, 1, 1, 0, 0, 0, 0, 0, knownAdjustments);
      var gregDate = hijriDate.toGregorian();
      expect(gregDate.year, equals(2011));
      expect(gregDate.month, equals(11));
      expect(gregDate.day, equals(27)); // Adjusted from 26 Nov 2011

      // Without adjustment
      var hijriDateNoAdj = HijriDateTime(1433, 1, 1);
      var gregDateNoAdj = hijriDateNoAdj.toGregorian();
      expect(gregDateNoAdj.year, equals(2011));
      expect(gregDateNoAdj.month, equals(11));
      expect(gregDateNoAdj.day, equals(26)); // Computed
    });

    test('1434 - 1 Ramadan adjustment', () {
      // With adjustment
      var hijriDate =
          HijriDateTime(1434, 9, 1, 0, 0, 0, 0, 0, knownAdjustments);
      var gregDate = hijriDate.toGregorian();
      expect(gregDate.year, equals(2013));
      expect(gregDate.month, equals(7));
      expect(gregDate.day, equals(10)); // Adjusted from 9 Jul 2013

      // Without adjustment
      var hijriDateNoAdj = HijriDateTime(1434, 9, 1);
      var gregDateNoAdj = hijriDateNoAdj.toGregorian();
      expect(gregDateNoAdj.year, equals(2013));
      expect(gregDateNoAdj.month, equals(7));
      expect(gregDateNoAdj.day, equals(9)); // Computed
    });

    test('1435 - 1 Muharram and 1 Ramadan adjustments', () {
      // 1 Muharram 1435
      // With adjustment
      var hijriDate =
          HijriDateTime(1435, 1, 1, 0, 0, 0, 0, 0, knownAdjustments);
      var gregDate = hijriDate.toGregorian();
      expect(gregDate.year, equals(2013));
      expect(gregDate.month, equals(11));
      expect(gregDate.day, equals(5)); // Adjusted from 4 Nov 2013

      // Without adjustment
      var hijriDateNoAdj = HijriDateTime(1435, 1, 1);
      var gregDateNoAdj = hijriDateNoAdj.toGregorian();
      expect(gregDateNoAdj.year, equals(2013));
      expect(gregDateNoAdj.month, equals(11));
      expect(gregDateNoAdj.day, equals(4)); // Computed

      // 1 Ramadan 1435
      hijriDate = HijriDateTime(1435, 9, 1, 0, 0, 0, 0, 0, knownAdjustments);
      gregDate = hijriDate.toGregorian();
      expect(gregDate.year, equals(2014));
      expect(gregDate.month, equals(6));
      expect(gregDate.day, equals(29)); // Adjusted from 28 Jun 2014

      hijriDateNoAdj = HijriDateTime(1435, 9, 1);
      gregDateNoAdj = hijriDateNoAdj.toGregorian();
      expect(gregDateNoAdj.year, equals(2014));
      expect(gregDateNoAdj.month, equals(6));
      expect(gregDateNoAdj.day, equals(28)); // Computed
    });

    test('1436 - 1 Dhul Hijjah and 10 Dhul Hijjah adjustments', () {
      // 1 Dhul Hijjah 1436
      // With adjustment
      var hijriDate =
          HijriDateTime(1436, 12, 1, 0, 0, 0, 0, 0, knownAdjustments);
      var gregDate = hijriDate.toGregorian();
      expect(gregDate.year, equals(2015));
      expect(gregDate.month, equals(9));
      expect(gregDate.day, equals(15)); // Adjusted from 14 Sep 2015

      // Without adjustment
      var hijriDateNoAdj = HijriDateTime(1436, 12, 1);
      var gregDateNoAdj = hijriDateNoAdj.toGregorian();
      expect(gregDateNoAdj.year, equals(2015));
      expect(gregDateNoAdj.month, equals(9));
      expect(gregDateNoAdj.day, equals(14)); // Computed

      // 10 Dhul Hijjah 1436
      hijriDate = HijriDateTime(1436, 12, 10, 0, 0, 0, 0, 0, knownAdjustments);
      gregDate = hijriDate.toGregorian();
      expect(gregDate.year, equals(2015));
      expect(gregDate.month, equals(9));
      expect(gregDate.day, equals(24)); // Adjusted from 23 Sep 2015

      hijriDateNoAdj = HijriDateTime(1436, 12, 10);
      gregDateNoAdj = hijriDateNoAdj.toGregorian();
      expect(gregDateNoAdj.year, equals(2015));
      expect(gregDateNoAdj.month, equals(9));
      expect(gregDateNoAdj.day, equals(23)); // Computed
    });

    test('1437 - 1 Muharram, 1 Dhul Hijjah and 10 Dhul Hijjah adjustments', () {
      // 1 Muharram 1437
      // With adjustment
      var hijriDate =
          HijriDateTime(1437, 1, 1, 0, 0, 0, 0, 0, knownAdjustments);
      var gregDate = hijriDate.toGregorian();
      expect(gregDate.year, equals(2015));
      expect(gregDate.month, equals(10));
      expect(gregDate.day, equals(15)); // Adjusted from 14 Oct 2015

      // Without adjustment
      var hijriDateNoAdj = HijriDateTime(1437, 1, 1);
      var gregDateNoAdj = hijriDateNoAdj.toGregorian();
      expect(gregDateNoAdj.year, equals(2015));
      expect(gregDateNoAdj.month, equals(10));
      expect(gregDateNoAdj.day, equals(14)); // Computed

      // 1 Dhul Hijjah 1437
      hijriDate = HijriDateTime(1437, 12, 1, 0, 0, 0, 0, 0, knownAdjustments);
      gregDate = hijriDate.toGregorian();
      expect(gregDate.year, equals(2016));
      expect(gregDate.month, equals(9));
      expect(gregDate.day, equals(3)); // Adjusted from 2 Sep 2016

      hijriDateNoAdj = HijriDateTime(1437, 12, 1);
      gregDateNoAdj = hijriDateNoAdj.toGregorian();
      expect(gregDateNoAdj.year, equals(2016));
      expect(gregDateNoAdj.month, equals(9));
      expect(gregDateNoAdj.day, equals(2)); // Computed

      // 10 Dhul Hijjah 1437
      hijriDate = HijriDateTime(1437, 12, 10, 0, 0, 0, 0, 0, knownAdjustments);
      gregDate = hijriDate.toGregorian();
      expect(gregDate.year, equals(2016));
      expect(gregDate.month, equals(9));
      expect(gregDate.day, equals(12)); // Adjusted from 11 Sep 2016

      hijriDateNoAdj = HijriDateTime(1437, 12, 10);
      gregDateNoAdj = hijriDateNoAdj.toGregorian();
      expect(gregDateNoAdj.year, equals(2016));
      expect(gregDateNoAdj.month, equals(9));
      expect(gregDateNoAdj.day, equals(11)); // Computed
    });

    test('1439 - 1 Ramadan adjustment', () {
      // With adjustment
      var hijriDate =
          HijriDateTime(1439, 9, 1, 0, 0, 0, 0, 0, knownAdjustments);
      var gregDate = hijriDate.toGregorian();
      expect(gregDate.year, equals(2018));
      expect(gregDate.month, equals(5));
      expect(gregDate.day, equals(17)); // Adjusted from 16 May 2018

      // Without adjustment
      var hijriDateNoAdj = HijriDateTime(1439, 9, 1);
      var gregDateNoAdj = hijriDateNoAdj.toGregorian();
      expect(gregDateNoAdj.year, equals(2018));
      expect(gregDateNoAdj.month, equals(5));
      expect(gregDateNoAdj.day, equals(16)); // Computed
    });

    test('1443 - 1 Muharram adjustment', () {
      // With adjustment
      var hijriDate =
          HijriDateTime(1443, 1, 1, 0, 0, 0, 0, 0, knownAdjustments);
      var gregDate = hijriDate.toGregorian();
      expect(gregDate.year, equals(2021));
      expect(gregDate.month, equals(8));
      expect(gregDate.day, equals(10)); // Adjusted from 9 Aug 2021

      // Without adjustment
      var hijriDateNoAdj = HijriDateTime(1443, 1, 1);
      var gregDateNoAdj = hijriDateNoAdj.toGregorian();
      expect(gregDateNoAdj.year, equals(2021));
      expect(gregDateNoAdj.month, equals(8));
      expect(gregDateNoAdj.day, equals(9)); // Computed
    });
  });
}
