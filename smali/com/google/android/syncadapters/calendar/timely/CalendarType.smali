.class public Lcom/google/android/syncadapters/calendar/timely/CalendarType;
.super Ljava/lang/Object;
.source "CalendarType.java"


# static fields
.field public static final BLACKLISTED_VIRTUAL_CALENDAR_DOMAINS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "countdown"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "daynum"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gadget"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "hebrew"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "jewish"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "moonphase"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "primes"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "stardate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sunrise"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ticker"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "weather"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "weeknum"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/CalendarType;->BLACKLISTED_VIRTUAL_CALENDAR_DOMAINS:[Ljava/lang/String;

    return-void
.end method

.method public static calculateType(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 77
    const-string v0, "resource.calendar.google.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    .line 80
    :cond_0
    const-string v0, "#contacts@group.v.calendar.google.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    const/4 v0, 0x1

    goto :goto_0

    .line 83
    :cond_1
    const-string v0, "#holiday@group.v.calendar.google.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "@holiday.calendar.google.com"

    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 87
    :cond_3
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/timely/CalendarType;->isBlacklistedLegacyCalendarId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 88
    const/4 v0, 0x3

    goto :goto_0

    .line 90
    :cond_4
    const-string v0, "group.calendar.google.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 91
    const/4 v0, 0x4

    goto :goto_0

    .line 93
    :cond_5
    const-string v0, ".calendar.google.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 94
    const/4 v0, 0x5

    goto :goto_0

    .line 96
    :cond_6
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public static isBirthdayCalendar(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 58
    invoke-static {p0, v1}, Lcom/google/android/syncadapters/calendar/timely/CalendarType;->isBirthdayCalendar(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/google/android/syncadapters/calendar/timely/CalendarType;->isBirthdayCalendar(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public static isBirthdayCalendar(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 66
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getBirthdayCalendarId(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isBlacklistedLegacyCalendarId(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 100
    const-string v2, "ht3jlfaac5lfd6263ulfh4tql8@group.calendar.google.com"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    const-string v2, "@group.v.calendar.google.com"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 106
    goto :goto_0

    .line 109
    :cond_2
    const-string v2, "#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 110
    if-gez v2, :cond_3

    move v0, v1

    .line 111
    goto :goto_0

    .line 113
    :cond_3
    const-string v3, "@"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 114
    if-gez v3, :cond_4

    move v0, v1

    .line 115
    goto :goto_0

    .line 118
    :cond_4
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 119
    sget-object v4, Lcom/google/android/syncadapters/calendar/timely/CalendarType;->BLACKLISTED_VIRTUAL_CALENDAR_DOMAINS:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_5

    aget-object v6, v4, v2

    .line 120
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    .line 125
    goto :goto_0
.end method

.method public static isHolidayCalendar(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 70
    if-nez p0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x2

    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/timely/CalendarType;->calculateType(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
