#include <time.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <locale.h>
#include <assert.h>

int getWeekNumber(const struct tm*);

clock_t clock(void) {
  return -1;
}

struct timeval {
  int tv_sec;     /* seconds */
  int tv_usec;    /* microseconds */
};

struct timezone {
  int tz_minuteswest;     /* minutes west of Greenwich */
  int tz_dsttime;         /* type of DST correction */
};

static BOOL isLeapYear(int year) {
  return (((year % 4) == 0) && ((year % 100) != 0)) || ((year % 400) == 0);
}

time_t time(time_t* timePtr) {
  time_t time;

#ifdef __LINUX__
  register_rax = 201L;
  register_rdi = (unsigned long)&time;
  syscall();
#endif

#ifdef __WINDOWS__
  int year;
  short month, monthDay;
  short hour, min, sec;

  register_ah = 0x2As;
  interrupt(0x21s);
  year = register_cx - 1900;
  month = register_dh - 1s;
  monthDay = register_dl;

  register_ah = 0x2Cs;
  interrupt(0x21s);
  hour = register_ch;
  min = register_cl;
  sec = register_dh;

  { struct lconv* localeConvPtr = localeconv();
    if (localeConvPtr != NULL) {
      hour -= localeConvPtr->winterTimeZone;
    }
  }

  { const int daysOfMonths[] = {31, isLeapYear(year) ? 29 : 28, 31,
                                30, 31, 30, 31, 31, 30, 31, 30, 31};
    int yearDay = monthDay - 1, monthIndex;

    for (monthIndex = 0; monthIndex < month; ++monthIndex) {
      yearDay += daysOfMonths[monthIndex];
    }

    { struct tm s = {sec, min, hour, monthDay, month, year, 0, yearDay, 0};
      time = mktime(&s);
    }
  }
#endif

  if (timePtr != NULL) {
    *timePtr = time;
  }

  return time;
}

time_t mktime(struct tm* tp) {
  if (tp != NULL) {
    const long leapDays = (tp->tm_year - 69) / 4;
    const long totalDays = 365 * (tp->tm_year - 70) + leapDays + tp->tm_yday;
    return (86400L * totalDays) + (3600L * tp->tm_hour) +
           (60L * tp->tm_min) + tp->tm_sec;
  }

  return 0;
}

static struct tm g_timeStruct;

struct tm* gmtime(const time_t* timePtr) {
  if (timePtr != NULL) {
    time_t time = *timePtr;
    const long secondsOfDay = time % 86400L,
               secondsOfHour = secondsOfDay % 3600;
    g_timeStruct.tm_hour = secondsOfDay / 3600;
    g_timeStruct.tm_min = secondsOfHour / 60;
    g_timeStruct.tm_sec = secondsOfHour % 60;

    // January 1, 1970, was a Thursday
    { long totalDays = time / 86400L;
      
      if (totalDays < 3) {
        g_timeStruct.tm_wday = totalDays + 4;
      }
      else {
        g_timeStruct.tm_wday = (totalDays - 3) % 7;
      }

      { int year = 1970 + (totalDays / 365);
        const int leapDays = (year - 1969) / 4;
        totalDays %= 365;
        totalDays -= leapDays;

        if (totalDays < 0) {
          --year;

          if (isLeapYear(year)) {
            totalDays += 366;
          }
          else {
            totalDays += 365;
          }
        }

        g_timeStruct.tm_year = year - 1900;
        g_timeStruct.tm_yday = totalDays;

        { const int daysOfMonths[] = {31, isLeapYear(year) ? 29 : 28, 31,
                                      30, 31, 30, 31, 31, 30, 31, 30, 31};
          int month = 0;
          while (totalDays >= daysOfMonths[month]) {
            totalDays -= daysOfMonths[month++];
          }

          g_timeStruct.tm_mon = month;
          g_timeStruct.tm_mday = totalDays + 1;
          g_timeStruct.tm_isdst = -1;
          return &g_timeStruct;
        }
      }
    }
  }

  return NULL;
}

struct tm* localtime(const time_t* timePtr) {
  struct tm* tmPtr = gmtime(timePtr);
  time_t t = *timePtr;
  struct lconv* localeConvPtr = localeconv();

  if (localeConvPtr != NULL) {
    int timeZone = (tmPtr->tm_isdst == 1) ? localeConvPtr->summerTimeZone
                                          : localeConvPtr->winterTimeZone;
    t += (3600l * timeZone);
  }

  return gmtime(&t);
}

double difftime(time_t time1, time_t time2) {
  return (double) (time2 - time1);
}

static char g_timeString[256];

static char* g_shortDayList[] = {"Sun", "Mon", "Tue", "Wed",
                                 "Thu", "Fri", "Sat"};
static char* g_longDayList[] = {"Sunday", "Monday", "Tuesday", "Wednesday",
                                "Thursday", "Friday", "Saturday"};
static char* g_shortMonthList[] = {"Jan", "Feb", "Mar", "Apr", "May", "Jun",
                                   "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};
static char* g_longMonthList[] = {"January", "February", "March", "April",
                                  "May", "June", "July", "August",
                                  "September", "October",
                                  "November", "December"};

char* asctime(const struct tm* tp) {
  struct lconv* localeConvPtr = NULL;
  char **shortDayList, **shortMonthList;

  if ((localeConvPtr != NULL) && (localeConvPtr->shortDayList != NULL)) {
    shortDayList = localeConvPtr->shortDayList;
  }
  else {
    shortDayList = g_shortDayList;
  }

  if ((localeConvPtr != NULL) && (localeConvPtr->shortMonthList != NULL)) {
    shortMonthList = localeConvPtr->shortMonthList;
  }
  else {
    shortMonthList = g_shortMonthList;
  }

  sprintf(g_timeString, "%s %s %i %02i:%02i:%02i %i",
          shortDayList[tp->tm_wday], shortMonthList[tp->tm_mon],
          tp->tm_mday, tp->tm_hour, tp->tm_min,
          tp->tm_sec, tp->tm_year + 1900);
  return g_timeString;
}

char* ctime(const time_t* time) {
  return asctime(localtime(time));
}

int getWeekNumber(const struct tm* tp) {
  const long leapDays = (tp->tm_year - 69) / 4;
  const int totalDays = 365 * (tp->tm_year - 70) + leapDays;
  int weekDayJanuaryFirst;

  if (totalDays < 3) {
    weekDayJanuaryFirst = totalDays + 4;
  }
  else {
    weekDayJanuaryFirst = (totalDays - 3) % 7;
  }

  { int firstWeekSize = 7 - weekDayJanuaryFirst;

    if (tp->tm_yday < firstWeekSize) {
      return 0;
    }
    else {
      return ((tp->tm_yday - firstWeekSize) / 7) + 1;
    }
  }
}

size_t strftime(char* result, size_t maxSize,
                const char* format, const struct tm* tp) {
  struct lconv* localeConvPtr = localeconv();
  char **shortDayList, **shortMonthList, **longDayList, **longMonthList;

  if ((localeConvPtr != NULL) && (localeConvPtr->shortDayList != NULL)) {
    shortDayList = localeConvPtr->shortDayList;
  }
  else {
    shortDayList = g_shortDayList;
  }

  if ((localeConvPtr != NULL) && (localeConvPtr->longDayList != NULL)) {
    longDayList = localeConvPtr->longDayList;
  }
  else {
    longDayList = g_longDayList;
  }

  if ((localeConvPtr != NULL) && (localeConvPtr->shortMonthList != NULL)) {
    shortMonthList = localeConvPtr->shortMonthList;
  }
  else {
    shortMonthList = g_shortMonthList;
  }

  if ((localeConvPtr != NULL) && (localeConvPtr->longMonthList != NULL)) {
    longMonthList = localeConvPtr->longMonthList;
  }
  else {
    longMonthList = g_longMonthList;
  }

  strcpy(result, "");
  { int index;
    const int weekNumberStartSunday = getWeekNumber(tp);
    int weekNumberStartMonday = weekNumberStartSunday;

    if (tp->tm_mday == 0) {
      --weekNumberStartMonday;
    }

    for (index = 0; format[index] != '\0'; ++index) {
      char add[20];

      if (format[index] == '%') {
        switch (format[++index]) {
          case 'a':
            strcpy(add, shortDayList[tp->tm_wday]);
            break;

          case 'A':
            strcpy(add, longDayList[tp->tm_wday]);
            break;

          case 'b':
            strcpy(add, shortMonthList[tp->tm_mon]);
            break;

          case 'B':
            strcpy(add, longMonthList[tp->tm_mon]);
            break;

          case 'c':
            sprintf(add, "%02i-%02i-%02i %02i:%02i:%02i",
                    1900 + tp->tm_year, tp->tm_mon + 1, tp->tm_mday,
                    tp->tm_hour, tp->tm_min, tp->tm_sec); 
            break;

          case 'd':
            sprintf(add, "%02i", tp->tm_mday);
            break;

          case 'H':
            sprintf(add, "%02i", tp->tm_hour);
            break;

          case 'I':
            sprintf(add, "%02i", (tp->tm_hour % 12));
            break;
	
          case 'j':
            sprintf(add, "%03i", tp->tm_yday);
            break;

          case 'm':
            sprintf(add, "%02i", tp->tm_mon + 1);
            break;

          case 'M':
            sprintf(add, "%02i", tp->tm_min);
            break;

          case 'p': 
            sprintf(add, "%s", index ? "AM" : "PM");
            break;

          case 'S':
            sprintf(add, "%02i", tp->tm_sec);
            break;

          case 'U':
            sprintf(add, "%02i", weekNumberStartSunday);
            break;

          case 'w':
            sprintf(add, "%02i", tp->tm_wday);
            break;

          case 'W':
            sprintf(add, "%02i", weekNumberStartMonday);
            break;

          case 'x':
            sprintf(add, "%02i:%02i:%02i", tp->tm_hour,
                    tp->tm_min, tp->tm_sec); 
            break;

          case 'X':
            sprintf(add, "%02i:%02i:%02i", tp->tm_hour,
                    tp->tm_min, tp->tm_sec); 
            break;

          case 'y':
            sprintf(add, "%02i", (tp->tm_year % 100));
            break;

          case 'Y':
            sprintf(add, "%02i", 1900 + tp->tm_year);
            break;

          case 'Z':
            strcpy(add, tp->tm_isdst ? "summer" : "winter");
            break;

          case '%':
            strcpy(add, "%");

          default:
            strcpy(add, "");
            break;
        }
      }
      else {
        add[0] = format[index];
        add[1] = '\0';
      }

      if ((strlen(result) + strlen(add)) < maxSize) {
        strcat(result, add);
      }
      else {
        break;
      }
    }
  }

  return strlen(result);
}
