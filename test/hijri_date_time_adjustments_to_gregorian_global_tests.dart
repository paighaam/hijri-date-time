import 'package:flutter_test/flutter_test.dart';
import 'package:hijri_date_time/hijri_date_time.dart';
import 'package:hijri_date_time/src/adjustment_configuration/hijri_adjustment_configuration.dart';

void main() {
  const globalAdjustments = GlobalHijriAdjustmentConfiguration();

  group('Known Global Adjustments to Gregorian Tests', () {
    group('1424 AH Tests', () {
      test('1 Ramadan 1424 - With and Without Adjustment', () {
        // Without adjustment
        var hijriDateNoAdj = HijriDateTime(1424, 9, 1);
        var gregDateNoAdj = hijriDateNoAdj.toGregorian();
        expect(gregDateNoAdj.year, equals(2003));
        expect(gregDateNoAdj.month, equals(10));
        expect(gregDateNoAdj.day, equals(26)); // Computed

        // With adjustment
        var hijriDate =
            HijriDateTime(1424, 9, 1, 0, 0, 0, 0, 0, globalAdjustments);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2003));
        expect(gregDate.month, equals(10));
        expect(gregDate.day, equals(27)); // Adjusted from 26 Oct 2003

        // With updateAdjustments
        var updatedHijriDate =
            hijriDateNoAdj.updateAdjustmentConfiguration(globalAdjustments);
        var updatedGregDate = updatedHijriDate.toGregorian();
        expect(updatedGregDate.year, equals(2003));
        expect(updatedGregDate.month, equals(10));
        expect(updatedGregDate.day, equals(27)); // Adjusted from 26 Oct 2003
      });
    });

    group('1425 AH Tests', () {
      test('1 Shawwal 1425 - With and Without Adjustment', () {
        // Without adjustment
        var hijriDateNoAdj = HijriDateTime(1425, 10, 1);
        var gregDateNoAdj = hijriDateNoAdj.toGregorian();
        expect(gregDateNoAdj.year, equals(2004));
        expect(gregDateNoAdj.month, equals(11));
        expect(gregDateNoAdj.day, equals(14)); // Computed

        // With adjustment
        var hijriDate =
            HijriDateTime(1425, 10, 1, 0, 0, 0, 0, 0, globalAdjustments);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2004));
        expect(gregDate.month, equals(11));
        expect(gregDate.day, equals(13)); // Adjusted from 14 Nov 2004

        // With updateAdjustments
        var updatedHijriDate =
            hijriDateNoAdj.updateAdjustmentConfiguration(globalAdjustments);
        var updatedGregDate = updatedHijriDate.toGregorian();
        expect(updatedGregDate.year, equals(2004));
        expect(updatedGregDate.month, equals(11));
        expect(updatedGregDate.day, equals(13)); // Adjusted from 14 Nov 2004
      });

      test('1 Dhul Hijjah 1425 - With and Without Adjustment', () {
        // Without adjustment
        var hijriDateNoAdj = HijriDateTime(1425, 12, 1);
        var gregDateNoAdj = hijriDateNoAdj.toGregorian();
        expect(gregDateNoAdj.year, equals(2005));
        expect(gregDateNoAdj.month, equals(1));
        expect(gregDateNoAdj.day, equals(12)); // Computed

        // With adjustment
        var hijriDate =
            HijriDateTime(1425, 12, 1, 0, 0, 0, 0, 0, globalAdjustments);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2005));
        expect(gregDate.month, equals(1));
        expect(gregDate.day, equals(11)); // Adjusted from 12 Jan 2005

        // With updateAdjustments
        var updatedHijriDate =
            hijriDateNoAdj.updateAdjustmentConfiguration(globalAdjustments);
        var updatedGregDate = updatedHijriDate.toGregorian();
        expect(updatedGregDate.year, equals(2005));
        expect(updatedGregDate.month, equals(1));
        expect(updatedGregDate.day, equals(11)); // Adjusted from 12 Jan 2005
      });

      test('10 Dhul Hijjah 1425 - With and Without Adjustment', () {
        // Without adjustment
        var hijriDateNoAdj = HijriDateTime(1425, 12, 10);
        var gregDateNoAdj = hijriDateNoAdj.toGregorian();
        expect(gregDateNoAdj.year, equals(2005));
        expect(gregDateNoAdj.month, equals(1));
        expect(gregDateNoAdj.day, equals(21)); // Computed

        // With adjustment
        var hijriDate =
            HijriDateTime(1425, 12, 10, 0, 0, 0, 0, 0, globalAdjustments);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2005));
        expect(gregDate.month, equals(1));
        expect(gregDate.day, equals(20)); // Adjusted from 21 Jan 2005

        // With updateAdjustments
        var updatedHijriDate =
            hijriDateNoAdj.updateAdjustmentConfiguration(globalAdjustments);
        var updatedGregDate = updatedHijriDate.toGregorian();
        expect(updatedGregDate.year, equals(2005));
        expect(updatedGregDate.month, equals(1));
        expect(updatedGregDate.day, equals(20)); // Adjusted from 21 Jan 2005
      });
    });

    group('1427 AH Tests', () {
      test('1 Ramadan 1427 - With and Without Adjustment', () {
        // Without adjustment
        var hijriDateNoAdj = HijriDateTime(1427, 9, 1);
        var gregDateNoAdj = hijriDateNoAdj.toGregorian();
        expect(gregDateNoAdj.year, equals(2006));
        expect(gregDateNoAdj.month, equals(9));
        expect(gregDateNoAdj.day, equals(24)); // Computed

        // With adjustment
        var hijriDate =
            HijriDateTime(1427, 9, 1, 0, 0, 0, 0, 0, globalAdjustments);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2006));
        expect(gregDate.month, equals(9));
        expect(gregDate.day, equals(23)); // Adjusted from 24 Sep 2006

        // With updateAdjustments
        var updatedHijriDate =
            hijriDateNoAdj.updateAdjustmentConfiguration(globalAdjustments);
        var updatedGregDate = updatedHijriDate.toGregorian();
        expect(updatedGregDate.year, equals(2006));
        expect(updatedGregDate.month, equals(9));
        expect(updatedGregDate.day, equals(23)); // Adjusted from 24 Sep 2006
      });

      test('1 Dhul Hijjah 1427 - With and Without Adjustment', () {
        // Without adjustment
        var hijriDateNoAdj = HijriDateTime(1427, 12, 1);
        var gregDateNoAdj = hijriDateNoAdj.toGregorian();
        expect(gregDateNoAdj.year, equals(2006));
        expect(gregDateNoAdj.month, equals(12));
        expect(gregDateNoAdj.day, equals(22)); // Computed

        // With adjustment
        var hijriDate =
            HijriDateTime(1427, 12, 1, 0, 0, 0, 0, 0, globalAdjustments);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2006));
        expect(gregDate.month, equals(12));
        expect(gregDate.day, equals(21)); // Adjusted from 22 Dec 2006

        // With updateAdjustments
        var updatedHijriDate =
            hijriDateNoAdj.updateAdjustmentConfiguration(globalAdjustments);
        var updatedGregDate = updatedHijriDate.toGregorian();
        expect(updatedGregDate.year, equals(2006));
        expect(updatedGregDate.month, equals(12));
        expect(updatedGregDate.day, equals(21)); // Adjusted from 22 Dec 2006
      });

      test('10 Dhul Hijjah 1427 - With and Without Adjustment', () {
        // Without adjustment
        var hijriDateNoAdj = HijriDateTime(1427, 12, 10);
        var gregDateNoAdj = hijriDateNoAdj.toGregorian();
        expect(gregDateNoAdj.year, equals(2006));
        expect(gregDateNoAdj.month, equals(12));
        expect(gregDateNoAdj.day, equals(31)); // Computed

        // With adjustment
        var hijriDate =
            HijriDateTime(1427, 12, 10, 0, 0, 0, 0, 0, globalAdjustments);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2006));
        expect(gregDate.month, equals(12));
        expect(gregDate.day, equals(30)); // Adjusted from 31 Dec 2006

        // With updateAdjustments
        var updatedHijriDate =
            hijriDateNoAdj.updateAdjustmentConfiguration(globalAdjustments);
        var updatedGregDate = updatedHijriDate.toGregorian();
        expect(updatedGregDate.year, equals(2006));
        expect(updatedGregDate.month, equals(12));
        expect(updatedGregDate.day, equals(30)); // Adjusted from 31 Dec 2006
      });
    });

    group('1428 AH Tests', () {
      test('1 Shawwal 1428 - With and Without Adjustment', () {
        // Without adjustment
        var hijriDateNoAdj = HijriDateTime(1428, 10, 1);
        var gregDateNoAdj = hijriDateNoAdj.toGregorian();
        expect(gregDateNoAdj.year, equals(2007));
        expect(gregDateNoAdj.month, equals(10));
        expect(gregDateNoAdj.day, equals(13)); // Computed

        // With adjustment
        var hijriDate =
            HijriDateTime(1428, 10, 1, 0, 0, 0, 0, 0, globalAdjustments);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2007));
        expect(gregDate.month, equals(10));
        expect(gregDate.day, equals(12)); // Adjusted from 13 Oct 2007

        // With updateAdjustments
        var updatedHijriDate =
            hijriDateNoAdj.updateAdjustmentConfiguration(globalAdjustments);
        var updatedGregDate = updatedHijriDate.toGregorian();
        expect(updatedGregDate.year, equals(2007));
        expect(updatedGregDate.month, equals(10));
        expect(updatedGregDate.day, equals(12)); // Adjusted from 13 Oct 2007
      });

      test('1 Dhul Hijjah 1428 - With and Without Adjustment', () {
        // Without adjustment
        var hijriDateNoAdj = HijriDateTime(1428, 12, 1);
        var gregDateNoAdj = hijriDateNoAdj.toGregorian();
        expect(gregDateNoAdj.year, equals(2007));
        expect(gregDateNoAdj.month, equals(12));
        expect(gregDateNoAdj.day, equals(11)); // Computed

        // With adjustment
        var hijriDate =
            HijriDateTime(1428, 12, 1, 0, 0, 0, 0, 0, globalAdjustments);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2007));
        expect(gregDate.month, equals(12));
        expect(gregDate.day, equals(10)); // Adjusted from 11 Dec 2007

        // With updateAdjustments
        var updatedHijriDate =
            hijriDateNoAdj.updateAdjustmentConfiguration(globalAdjustments);
        var updatedGregDate = updatedHijriDate.toGregorian();
        expect(updatedGregDate.year, equals(2007));
        expect(updatedGregDate.month, equals(12));
        expect(updatedGregDate.day, equals(10)); // Adjusted from 11 Dec 2007
      });

      test('10 Dhul Hijjah 1428 - With and Without Adjustment', () {
        // Without adjustment
        var hijriDateNoAdj = HijriDateTime(1428, 12, 10);
        var gregDateNoAdj = hijriDateNoAdj.toGregorian();
        expect(gregDateNoAdj.year, equals(2007));
        expect(gregDateNoAdj.month, equals(12));
        expect(gregDateNoAdj.day, equals(20)); // Computed

        // With adjustment
        var hijriDate =
            HijriDateTime(1428, 12, 10, 0, 0, 0, 0, 0, globalAdjustments);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2007));
        expect(gregDate.month, equals(12));
        expect(gregDate.day, equals(19)); // Adjusted from 20 Dec 2007

        // With updateAdjustments
        var updatedHijriDate =
            hijriDateNoAdj.updateAdjustmentConfiguration(globalAdjustments);
        var updatedGregDate = updatedHijriDate.toGregorian();
        expect(updatedGregDate.year, equals(2007));
        expect(updatedGregDate.month, equals(12));
        expect(updatedGregDate.day, equals(19)); // Adjusted from 20 Dec 2007
      });
    });

    group('1429 AH Tests', () {
      test('1 Shawwal 1429 - With and Without Adjustment', () {
        // Without adjustment
        var hijriDateNoAdj = HijriDateTime(1429, 10, 1);
        var gregDateNoAdj = hijriDateNoAdj.toGregorian();
        expect(gregDateNoAdj.year, equals(2008));
        expect(gregDateNoAdj.month, equals(10));
        expect(gregDateNoAdj.day, equals(1)); // Computed

        // With adjustment
        var hijriDate =
            HijriDateTime(1429, 10, 1, 0, 0, 0, 0, 0, globalAdjustments);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2008));
        expect(gregDate.month, equals(9));
        expect(gregDate.day, equals(30)); // Adjusted from 1 Oct 2008

        // With updateAdjustments
        var updatedHijriDate =
            hijriDateNoAdj.updateAdjustmentConfiguration(globalAdjustments);
        var updatedGregDate = updatedHijriDate.toGregorian();
        expect(updatedGregDate.year, equals(2008));
        expect(updatedGregDate.month, equals(9));
        expect(updatedGregDate.day, equals(30)); // Adjusted from 1 Oct 2008
      });
    });

    group('1433 AH Tests', () {
      test('1 Muharram 1433 - With and Without Adjustment', () {
        // Without adjustment
        var hijriDateNoAdj = HijriDateTime(1433, 1, 1);
        var gregDateNoAdj = hijriDateNoAdj.toGregorian();
        expect(gregDateNoAdj.year, equals(2011));
        expect(gregDateNoAdj.month, equals(11));
        expect(gregDateNoAdj.day, equals(26)); // Computed

        // With adjustment
        var hijriDate =
            HijriDateTime(1433, 1, 1, 0, 0, 0, 0, 0, globalAdjustments);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2011));
        expect(gregDate.month, equals(11));
        expect(gregDate.day, equals(27)); // Adjusted from 26 Nov 2011

        // With updateAdjustments
        var updatedHijriDate =
            hijriDateNoAdj.updateAdjustmentConfiguration(globalAdjustments);
        var updatedGregDate = updatedHijriDate.toGregorian();
        expect(updatedGregDate.year, equals(2011));
        expect(updatedGregDate.month, equals(11));
        expect(updatedGregDate.day, equals(27)); // Adjusted from 26 Nov 2011
      });
    });

    group('1434 AH Tests', () {
      test('1 Ramadan 1434 - With and Without Adjustment', () {
        // Without adjustment
        var hijriDateNoAdj = HijriDateTime(1434, 9, 1);
        var gregDateNoAdj = hijriDateNoAdj.toGregorian();
        expect(gregDateNoAdj.year, equals(2013));
        expect(gregDateNoAdj.month, equals(7));
        expect(gregDateNoAdj.day, equals(9)); // Computed

        // With adjustment
        var hijriDate =
            HijriDateTime(1434, 9, 1, 0, 0, 0, 0, 0, globalAdjustments);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2013));
        expect(gregDate.month, equals(7));
        expect(gregDate.day, equals(10)); // Adjusted from 9 Jul 2013

        // With updateAdjustments
        var updatedHijriDate =
            hijriDateNoAdj.updateAdjustmentConfiguration(globalAdjustments);
        var updatedGregDate = updatedHijriDate.toGregorian();
        expect(updatedGregDate.year, equals(2013));
        expect(updatedGregDate.month, equals(7));
        expect(updatedGregDate.day, equals(10)); // Adjusted from 9 Jul 2013
      });
    });

    group('1435 AH Tests', () {
      test('1 Muharram 1435 - With and Without Adjustment', () {
        // Without adjustment
        var hijriDateNoAdj = HijriDateTime(1435, 1, 1);
        var gregDateNoAdj = hijriDateNoAdj.toGregorian();
        expect(gregDateNoAdj.year, equals(2013));
        expect(gregDateNoAdj.month, equals(11));
        expect(gregDateNoAdj.day, equals(4)); // Computed

        // With adjustment
        var hijriDate =
            HijriDateTime(1435, 1, 1, 0, 0, 0, 0, 0, globalAdjustments);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2013));
        expect(gregDate.month, equals(11));
        expect(gregDate.day, equals(5)); // Adjusted from 4 Nov 2013

        // With updateAdjustments
        var updatedHijriDate =
            hijriDateNoAdj.updateAdjustmentConfiguration(globalAdjustments);
        var updatedGregDate = updatedHijriDate.toGregorian();
        expect(updatedGregDate.year, equals(2013));
        expect(updatedGregDate.month, equals(11));
        expect(updatedGregDate.day, equals(5)); // Adjusted from 4 Nov 2013
      });

      test('1 Ramadan 1435 - With and Without Adjustment', () {
        // Without adjustment
        var hijriDateNoAdj = HijriDateTime(1435, 9, 1);
        var gregDateNoAdj = hijriDateNoAdj.toGregorian();
        expect(gregDateNoAdj.year, equals(2014));
        expect(gregDateNoAdj.month, equals(6));
        expect(gregDateNoAdj.day, equals(28)); // Computed

        // With adjustment
        var hijriDate =
            HijriDateTime(1435, 9, 1, 0, 0, 0, 0, 0, globalAdjustments);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2014));
        expect(gregDate.month, equals(6));
        expect(gregDate.day, equals(29)); // Adjusted from 28 Jun 2014

        // With updateAdjustments
        var updatedHijriDate =
            hijriDateNoAdj.updateAdjustmentConfiguration(globalAdjustments);
        var updatedGregDate = updatedHijriDate.toGregorian();
        expect(updatedGregDate.year, equals(2014));
        expect(updatedGregDate.month, equals(6));
        expect(updatedGregDate.day, equals(29)); // Adjusted from 28 Jun 2014
      });
    });

    group('1436 AH Tests', () {
      test('1 Dhul Hijjah 1436 - With and Without Adjustment', () {
        // Without adjustment
        var hijriDateNoAdj = HijriDateTime(1436, 12, 1);
        var gregDateNoAdj = hijriDateNoAdj.toGregorian();
        expect(gregDateNoAdj.year, equals(2015));
        expect(gregDateNoAdj.month, equals(9));
        expect(gregDateNoAdj.day, equals(14)); // Computed

        // With adjustment
        var hijriDate =
            HijriDateTime(1436, 12, 1, 0, 0, 0, 0, 0, globalAdjustments);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2015));
        expect(gregDate.month, equals(9));
        expect(gregDate.day, equals(15)); // Adjusted from 14 Sep 2015

        // With updateAdjustments
        var updatedHijriDate =
            hijriDateNoAdj.updateAdjustmentConfiguration(globalAdjustments);
        var updatedGregDate = updatedHijriDate.toGregorian();
        expect(updatedGregDate.year, equals(2015));
        expect(updatedGregDate.month, equals(9));
        expect(updatedGregDate.day, equals(15)); // Adjusted from 14 Sep 2015
      });

      test('10 Dhul Hijjah 1436 - With and Without Adjustment', () {
        // Without adjustment
        var hijriDateNoAdj = HijriDateTime(1436, 12, 10);
        var gregDateNoAdj = hijriDateNoAdj.toGregorian();
        expect(gregDateNoAdj.year, equals(2015));
        expect(gregDateNoAdj.month, equals(9));
        expect(gregDateNoAdj.day, equals(23)); // Computed

        // With adjustment
        var hijriDate =
            HijriDateTime(1436, 12, 10, 0, 0, 0, 0, 0, globalAdjustments);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2015));
        expect(gregDate.month, equals(9));
        expect(gregDate.day, equals(24)); // Adjusted from 23 Sep 2015

        // With updateAdjustments
        var updatedHijriDate =
            hijriDateNoAdj.updateAdjustmentConfiguration(globalAdjustments);
        var updatedGregDate = updatedHijriDate.toGregorian();
        expect(updatedGregDate.year, equals(2015));
        expect(updatedGregDate.month, equals(9));
        expect(updatedGregDate.day, equals(24)); // Adjusted from 23 Sep 2015
      });
    });

    group('1437 AH Tests', () {
      test('1 Muharram 1437 - With and Without Adjustment', () {
        // Without adjustment
        var hijriDateNoAdj = HijriDateTime(1437, 1, 1);
        var gregDateNoAdj = hijriDateNoAdj.toGregorian();
        expect(gregDateNoAdj.year, equals(2015));
        expect(gregDateNoAdj.month, equals(10));
        expect(gregDateNoAdj.day, equals(14)); // Computed

        // With adjustment
        var hijriDate =
            HijriDateTime(1437, 1, 1, 0, 0, 0, 0, 0, globalAdjustments);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2015));
        expect(gregDate.month, equals(10));
        expect(gregDate.day, equals(15)); // Adjusted from 14 Oct 2015

        // With updateAdjustments
        var updatedHijriDate =
            hijriDateNoAdj.updateAdjustmentConfiguration(globalAdjustments);
        var updatedGregDate = updatedHijriDate.toGregorian();
        expect(updatedGregDate.year, equals(2015));
        expect(updatedGregDate.month, equals(10));
        expect(updatedGregDate.day, equals(15)); // Adjusted from 14 Oct 2015
      });

      test('1 Dhul Hijjah 1437 - With and Without Adjustment', () {
        // Without adjustment
        var hijriDateNoAdj = HijriDateTime(1437, 12, 1);
        var gregDateNoAdj = hijriDateNoAdj.toGregorian();
        expect(gregDateNoAdj.year, equals(2016));
        expect(gregDateNoAdj.month, equals(9));
        expect(gregDateNoAdj.day, equals(2)); // Computed

        // With adjustment
        var hijriDate =
            HijriDateTime(1437, 12, 1, 0, 0, 0, 0, 0, globalAdjustments);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2016));
        expect(gregDate.month, equals(9));
        expect(gregDate.day, equals(3)); // Adjusted from 2 Sep 2016

        // With updateAdjustments
        var updatedHijriDate =
            hijriDateNoAdj.updateAdjustmentConfiguration(globalAdjustments);
        var updatedGregDate = updatedHijriDate.toGregorian();
        expect(updatedGregDate.year, equals(2016));
        expect(updatedGregDate.month, equals(9));
        expect(updatedGregDate.day, equals(3)); // Adjusted from 2 Sep 2016
      });

      test('10 Dhul Hijjah 1437 - With and Without Adjustment', () {
        // Without adjustment
        var hijriDateNoAdj = HijriDateTime(1437, 12, 10);
        var gregDateNoAdj = hijriDateNoAdj.toGregorian();
        expect(gregDateNoAdj.year, equals(2016));
        expect(gregDateNoAdj.month, equals(9));
        expect(gregDateNoAdj.day, equals(11)); // Computed

        // With adjustment
        var hijriDate =
            HijriDateTime(1437, 12, 10, 0, 0, 0, 0, 0, globalAdjustments);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2016));
        expect(gregDate.month, equals(9));
        expect(gregDate.day, equals(12)); // Adjusted from 11 Sep 2016

        // With updateAdjustments
        var updatedHijriDate =
            hijriDateNoAdj.updateAdjustmentConfiguration(globalAdjustments);
        var updatedGregDate = updatedHijriDate.toGregorian();
        expect(updatedGregDate.year, equals(2016));
        expect(updatedGregDate.month, equals(9));
        expect(updatedGregDate.day, equals(12)); // Adjusted from 11 Sep 2016
      });
    });

    group('1439 AH Tests', () {
      test('1 Ramadan 1439 - With and Without Adjustment', () {
        // Without adjustment
        var hijriDateNoAdj = HijriDateTime(1439, 9, 1);
        var gregDateNoAdj = hijriDateNoAdj.toGregorian();
        expect(gregDateNoAdj.year, equals(2018));
        expect(gregDateNoAdj.month, equals(5));
        expect(gregDateNoAdj.day, equals(16)); // Computed

        // With adjustment
        var hijriDate =
            HijriDateTime(1439, 9, 1, 0, 0, 0, 0, 0, globalAdjustments);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2018));
        expect(gregDate.month, equals(5));
        expect(gregDate.day, equals(17)); // Adjusted from 16 May 2018

        // With updateAdjustments
        var updatedHijriDate =
            hijriDateNoAdj.updateAdjustmentConfiguration(globalAdjustments);
        var updatedGregDate = updatedHijriDate.toGregorian();
        expect(updatedGregDate.year, equals(2018));
        expect(updatedGregDate.month, equals(5));
        expect(updatedGregDate.day, equals(17)); // Adjusted from 16 May 2018
      });
    });

    group('1443 AH Tests', () {
      test('1 Muharram 1443 - With and Without Adjustment', () {
        // Without adjustment
        var hijriDateNoAdj = HijriDateTime(1443, 1, 1);
        var gregDateNoAdj = hijriDateNoAdj.toGregorian();
        expect(gregDateNoAdj.year, equals(2021));
        expect(gregDateNoAdj.month, equals(8));
        expect(gregDateNoAdj.day, equals(9)); // Computed

        // With adjustment
        var hijriDate =
            HijriDateTime(1443, 1, 1, 0, 0, 0, 0, 0, globalAdjustments);
        var gregDate = hijriDate.toGregorian();
        expect(gregDate.year, equals(2021));
        expect(gregDate.month, equals(8));
        expect(gregDate.day, equals(10)); // Adjusted from 9 Aug 2021

        // With updateAdjustments
        var updatedHijriDate =
            hijriDateNoAdj.updateAdjustmentConfiguration(globalAdjustments);
        var updatedGregDate = updatedHijriDate.toGregorian();
        expect(updatedGregDate.year, equals(2021));
        expect(updatedGregDate.month, equals(8));
        expect(updatedGregDate.day, equals(10)); // Adjusted from 9 Aug 2021
      });
    });
  });
}
