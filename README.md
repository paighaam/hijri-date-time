# HijriDateTime

A Dart package for handling Hijri (Islamic) calendar dates with support for various regional adjustments and configurations.

## Features

- Convert between Gregorian and Hijri dates
- Support for different regional adjustments (Global, India)
- Configurable adjustment settings
- Built-in support for Umm al-Qura calendar
- Accurate date calculations with ILN (Islamic Lunar Number) support

## Getting started

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  hijri_date_time: ^1.0.0
```

## Usage

### Constructors

HijriDateTime provides several ways to create a date:

```dart
// Create from specific Hijri date
final hijriDate = HijriDateTime(1445, 9, 1); // 1 Ramadan 1445

// Create from current date
final now = HijriDateTime.now();

// Create from Gregorian date
final fromGregorian = HijriDateTime.fromGregorian(DateTime(2024, 3, 11));
```

### Adjustments

HijriDateTime supports different adjustment configurations to handle regional variations in Hijri dates:

1. **Default Configuration**
   ```dart
   final defaultDate = HijriDateTime(1445, 9, 1,
     adjustmentConfiguration: DefaultHijriAdjustmentConfiguration());
   ```

2. **Global Configuration**
   ```dart
   final globalDate = HijriDateTime(1445, 9, 1,
     adjustmentConfiguration: GlobalHijriAdjustmentConfiguration());
   ```

3. **India Configuration**
   ```dart
   final indiaDate = HijriDateTime(1445, 9, 1,
     adjustmentConfiguration: IndiaHijriAdjustmentConfiguration(
       adjustments: indiaHijriAdjustments
     ));
   ```

### Global Configuration

The global configuration uses adjustments based on the Umm al-Qura calendar data from [webspace.science.uu.nl](https://webspace.science.uu.nl/~gent0113/islam/ummalqura.htm). These adjustments handle various date corrections for important Islamic dates like:

- Ramadan start
- Eid al-Fitr
- Eid al-Adha
- Muharram

### India Adjustments

The India configuration includes specific adjustments for the Indian subcontinent, where dates are typically offset by one day. The adjustments are based on the "Hijri - India Corrections.csv" data and include corrections for:

- 1st of Muharram
- 1st of Ramadan
- 1st of Shawwal
- 1st of Dhu al-Hijjah
- 10th of Dhu al-Hijjah

### ILN (Islamic Lunar Number)

The package uses ILN for accurate date calculations. ILN is a continuous number that represents the Islamic lunar month, calculated as:

```dart
int iln = ((year - 1) * 12) + month;
```

You can access the ILN of any date:

```dart
final date = HijriDateTime(1445, 9, 1);
print(date.iln); // Prints the Islamic Lunar Number
```

### Date Properties

```dart
final date = HijriDateTime(1445, 9, 1);

// Access date components
print(date.year);      // 1445
print(date.month);     // 9
print(date.day);       // 1
print(date.weekday);   // Day of week (1-7)
print(date.monthLength); // Number of days in the month

// Convert to Gregorian
final gregorian = date.toGregorian();
```

### Updating Adjustments

You can update the adjustment configuration for an existing date:

```dart
final date = HijriDateTime(1445, 9, 1);
final updatedDate = date.updateAdjustmentConfiguration(
  GlobalHijriAdjustmentConfiguration()
);
```

## Additional information

The package uses the Umm al-Qura calendar data for accurate date calculations and includes adjustments for various regions. The date range supported is from 1356 AH (14 March 1937 CE) to 1500 AH (16 November 2077 CE).

For more information about the Umm al-Qura calendar and adjustments, visit:
- [Umm al-Qura Calendar](https://webspace.science.uu.nl/~gent0113/islam/ummalqura.htm)
- [Hijri Calendar](https://en.wikipedia.org/wiki/Islamic_calendar)
