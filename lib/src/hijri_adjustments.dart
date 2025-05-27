// // Global adjustments map based on https://webspace.science.uu.nl/~gent0113/islam/ummalqura.htm
// data with actual ILN values
final knownAdjustments = {
  // 1424 - 1 Ramadan adjustment
  17084: 1, // 27 Oct 2003 instead of 26 Oct 2003

  // 1425 - 1 Shawwal, 1 Dhul Hijjah and 10 Dhul Hijjah adjustments
  17097: -1, // 13 Nov 2004 instead of 14 Nov 2004
  17099: -1, // 11 Jan 2005 instead of 12 Jan 2005 and 20 Jan 2005 instead of 21 Jan 2005

  // 1427 - 1 Ramadan, 1 Dhul Hijjah and 10 Dhul Hijjah adjustments
  17120: -1, // 23 Sep 2006 instead of 24 Sep 2006
  17123: -1, // 21 Dec 2006 instead of 22 Dec 2006 and 30 Dec 2006 instead of 31 Dec 2006

  // 1428 - 1 Shawwal, 1 Dhul Hijjah and 10 Dhul Hijjah adjustments
  17133: -1, // 12 Oct 2007 instead of 13 Oct 2007
  17135: -1, // 10 Dec 2007 instead of 11 Dec 2007 and 19 Dec 2007 instead of 20 Dec 2007

  // 1429 - 1 Shawwal adjustment
  17145: -1, // 30 Sep 2008 instead of 1 Oct 2008

  // 1433 - 1 Muharram adjustment
  17184: 1, // 27 Nov 2011 instead of 26 Nov 2011

  // 1434 - 1 Ramadan adjustment
  17204: 1, // 10 Jul 2013 instead of 9 Jul 2013

  // 1435 - 1 Muharram adjustment
  17208: 1, // 5 Nov 2013 instead of 4 Nov 2013
  17216: 1, // 29 Jun 2014 instead of 28 Jun 2014

  // 1436 - 1 Dhul Hijjah and 10 Dhul Hijjah adjustments
  17231: 1, // 15 Sep 2015 instead of 14 Sep 2015 and 24 Sep 2015 instead of 23 Sep 2015

  // 1437 - 1 Muharram, 1 Dhul Hijjah, and 10 Dhul Hijjah adjustments
  17232: 1, // 15 Oct 2015 instead of 14 Oct 2015
  17243: 1, // 3 Sep 2016 instead of 2 Sep 2016 and 12 Sep 2016 instead of 11 Sep 2016

  // 1439 - 1 Ramadan adjustment
  17264: 1, // 17 May 2018 instead of 16 May 2018

  // 1443 - 1 Muharram adjustment
  17304: 1, // 10 Aug 2021 instead of 9 Aug 2021
};