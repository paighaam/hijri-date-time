// India adjustments map based on Hijri - India Corrections.csv
// Contains adjustments for key Hijri dates (1st of Muharram, Ramadan, Shawwal, and Dhu al-Hijjah)
// Format: ILN: adjustment_value
// Where ILN is the Islamic Lunar Number for the date
// and adjustment_value is the number of days to adjust (-1 or 1)
part of 'hijri_adjustment_configuration.dart';

const Map<int, int> indiaHijriAdjustments = {
  // 1421
  17040: -1, // 1 Muharram 1421: Announced 2000-04-06, Computed 2000-04-07
  17048: -1, // 1 Ramadan 1421: Announced 2000-11-27, Computed 2000-11-28
  17049: -1, // 1 Shawwal 1421: Announced 2000-12-27, Computed 2000-12-28
  17051: -1, // 1 Dhu al-Hijjah 1421: Announced 2001-02-24, Computed 2001-02-25
  17052: -1, // 10 Dhu al-Hijjah 1421: Announced 2001-03-05, Computed 2001-03-06
  // 1422
  17053: -1, // 1 Muharram 1422: Announced 2001-03-26, Computed 2001-03-27
  // 1423
  17064: -1, // 1 Muharram 1423: Announced 2002-03-15, Computed 2002-03-16
  17072: -1, // 1 Ramadan 1423: Announced 2002-11-06, Computed 2002-11-07
  // 1425
  17097: -1, // 1 Shawwal 1425: Announced 2004-11-14, Computed 2004-11-15
  17099: -1, // 1 Dhu al-Hijjah 1425: Announced 2005-01-12, Computed 2005-01-13
  17100: -1, // 10 Dhu al-Hijjah 1425: Announced 2005-01-21, Computed 2005-01-22
  // 1428
  17132: -1, // 1 Ramadan 1428: Announced 2007-09-13, Computed 2007-09-14
  17133: -1, // 1 Shawwal 1428: Announced 2007-10-13, Computed 2007-10-14
  17134: -1, // 1 Dhu al-Hijjah 1428: Announced 2007-12-11, Computed 2007-12-12
  17135: -1, // 10 Dhu al-Hijjah 1428: Announced 2007-12-20, Computed 2007-12-21
  // 1429
  17136: -1, // 1 Muharram 1429: Announced 2008-01-10, Computed 2008-01-11
  // 1430
  17148: -1, // 1 Muharram 1430: Announced 2008-12-29, Computed 2008-12-30
  17156: -1, // 1 Ramadan 1430: Announced 2009-08-22, Computed 2009-08-23
  // 1431
  17160: -1, // 1 Muharram 1431: Announced 2009-12-18, Computed 2009-12-19
  17169: -1, // 1 Shawwal 1431: Announced 2010-09-10, Computed 2010-09-11
  // 1434
  17204: 1, // 1 Ramadan 1434: Announced 2013-07-11, Computed 2013-07-10
  // 1435
  17216: 1, // 1 Ramadan 1435: Announced 2014-06-30, Computed 2014-06-29
  // 1441
  17288: -1, // 1 Shawwal 1441: Announced 2020-05-24, Computed 2020-05-25
  // 1444
  17316: -1, // 1 Muharram 1444: Announced 2022-07-30, Computed 2022-07-31
};
