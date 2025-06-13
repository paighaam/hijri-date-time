import 'package:flutter_test/flutter_test.dart';
import 'package:hijri_date_time/hijri_date_time.dart';

void main() {
  group('HijriDateTime Utility Functions', () {
    test('add duration - days', () {
      final date = HijriDateTime(1445, month: 1, day: 1);
      final nextWeek = date.add(const Duration(days: 7));

      expect(nextWeek.year, 1445);
      expect(nextWeek.month, 1);
      expect(nextWeek.day, 8);
    });

    test('add duration - months', () {
      final date = HijriDateTime(1445, month: 1, day: 1);
      final nextMonth =
          date.add(const Duration(days: 29)); // Muharram has 29 days

      expect(nextMonth.year, 1445);
      expect(nextMonth.month, 2);
      expect(nextMonth.day, 1);
    });

    test('add duration - years', () {
      final date = HijriDateTime(1445, month: 1, day: 1);
      final nextYear =
          date.add(const Duration(days: 354)); // Approximate Hijri year

      expect(nextYear.year, 1446);
      expect(nextYear.month, 1);
      expect(nextYear.day, 1);
    });

    test('add duration - with time', () {
      final date = HijriDateTime(1445, month: 1, day: 1, hour: 10, minute: 30);
      final nextHour = date.add(const Duration(hours: 1));

      expect(nextHour.hour, 11);
      expect(nextHour.minute, 30);
    });

    test('subtract duration - days', () {
      final date = HijriDateTime(1445, month: 1, day: 8);
      final lastWeek = date.subtract(const Duration(days: 7));

      expect(lastWeek.year, 1445);
      expect(lastWeek.month, 1);
      expect(lastWeek.day, 1);
    });

    test('subtract duration - months', () {
      final date = HijriDateTime(1445, month: 2, day: 1);
      final lastMonth =
          date.subtract(const Duration(days: 29)); // Muharram has 29 days

      expect(lastMonth.year, 1445);
      expect(lastMonth.month, 1);
      expect(lastMonth.day, 1);
    });

    test('subtract duration - with time', () {
      final date = HijriDateTime(1445, month: 1, day: 1, hour: 10, minute: 30);
      final lastHour = date.subtract(const Duration(hours: 1));

      expect(lastHour.hour, 9);
      expect(lastHour.minute, 30);
    });

    test('difference - same day', () {
      final date1 = HijriDateTime(1445, month: 1, day: 1);
      final date2 = HijriDateTime(1445, month: 1, day: 1);

      expect(date1.difference(date2), 0);
    });

    test('difference - one day', () {
      final date1 = HijriDateTime(1445, month: 1, day: 2);
      final date2 = HijriDateTime(1445, month: 1, day: 1);

      expect(date1.difference(date2), 1);
    });

    test('difference - one month', () {
      final date1 = HijriDateTime(1445, month: 2, day: 1);
      final date2 = HijriDateTime(1445, month: 1, day: 1);

      expect(date1.difference(date2), 29); // Muharram has 29 days
    });

    test('difference - with time', () {
      final date1 = HijriDateTime(1445, month: 1, day: 1, hour: 12);
      final date2 = HijriDateTime(1445, month: 1, day: 1, hour: 6);

      expect(date1.difference(date2), 0); // Same day, different time
    });

    test('isAfter - same day different time', () {
      final date1 = HijriDateTime(1445, month: 1, day: 1, hour: 12);
      final date2 = HijriDateTime(1445, month: 1, day: 1, hour: 6);

      expect(date1.isAfter(date2), true);
    });

    test('isAfter - different day', () {
      final date1 = HijriDateTime(1445, month: 1, day: 2);
      final date2 = HijriDateTime(1445, month: 1, day: 1);

      expect(date1.isAfter(date2), true);
    });

    test('isBefore - same day different time', () {
      final date1 = HijriDateTime(1445, month: 1, day: 1, hour: 6);
      final date2 = HijriDateTime(1445, month: 1, day: 1, hour: 12);

      expect(date1.isBefore(date2), true);
    });

    test('isBefore - different day', () {
      final date1 = HijriDateTime(1445, month: 1, day: 1);
      final date2 = HijriDateTime(1445, month: 1, day: 2);

      expect(date1.isBefore(date2), true);
    });

    test('complex date operations', () {
      final date = HijriDateTime(1445, month: 1, day: 1, hour: 10, minute: 30);

      // Add 2 days and 3 hours
      final futureDate = date.add(const Duration(days: 2, hours: 3));
      expect(futureDate.day, 3);
      expect(futureDate.hour, 13);
      expect(futureDate.minute, 30);

      // Check if it's after the original date
      expect(futureDate.isAfter(date), true);

      // Calculate difference
      expect(futureDate.difference(date), 2);
    });

    test('edge cases - month boundaries', () {
      final lastDayOfMonth =
          HijriDateTime(1445, month: 1, day: 29); // Muharram 1445 has 29 days
      final nextDay = lastDayOfMonth.add(const Duration(days: 1));

      expect(nextDay.month, 2);
      expect(nextDay.day, 1);
    });

    test('edge cases - year boundaries', () {
      final lastDayOfYear = HijriDateTime(1445,
          month: 12, day: 30); // Dhu al-Hijjah 1445 has 30 days
      final nextDay = lastDayOfYear.add(const Duration(days: 1));

      expect(nextDay.year, 1446);
      expect(nextDay.month, 1);
      expect(nextDay.day, 1);
    });
  });
}
