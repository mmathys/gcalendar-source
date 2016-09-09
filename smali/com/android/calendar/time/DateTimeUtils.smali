.class public Lcom/android/calendar/time/DateTimeUtils;
.super Ljava/lang/Object;
.source "DateTimeUtils.java"


# static fields
.field private static sIsTest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/calendar/time/DateTimeUtils;->sIsTest:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDayOfWeek(Lcom/google/calendar/v2/client/service/api/time/DateTime;)I
    .locals 1

    .prologue
    .line 200
    sget-boolean v0, Lcom/android/calendar/time/DateTimeUtils;->sIsTest:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/calendar/time/DateTimeUtils;->getDayOfWeekForTest(Lcom/google/calendar/v2/client/service/api/time/DateTime;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getDayOfWeek()I

    move-result v0

    goto :goto_0
.end method

.method private static getDayOfWeekForTest(Lcom/google/calendar/v2/client/service/api/time/DateTime;)I
    .locals 4

    .prologue
    const/4 v0, 0x7

    .line 212
    .line 213
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/time/TimeZone;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 212
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 214
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 215
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 216
    packed-switch v1, :pswitch_data_0

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown day of the week"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :pswitch_0
    const/4 v0, 0x1

    .line 230
    :goto_0
    :pswitch_1
    return v0

    .line 220
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 222
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 224
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 226
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 228
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static getFutureDateTimeForTask(Landroid/content/Context;)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/android/calendar/time/DateTimeUtils;->getNowDateTime(Landroid/content/Context;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->getFutureDateTimeForTask(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public static getFutureDateTimeForTask(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    const/16 v0, 0x8

    invoke-interface {p0, v0, v2, v2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withTime(III)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 58
    invoke-interface {p0, v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->isBefore(Lcom/google/calendar/v2/client/service/api/time/Instant;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-object v0

    .line 61
    :cond_1
    const/16 v0, 0xd

    invoke-interface {p0, v0, v2, v2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withTime(III)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 62
    invoke-interface {p0, v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->isBefore(Lcom/google/calendar/v2/client/service/api/time/Instant;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    const/16 v0, 0x12

    invoke-interface {p0, v0, v2, v2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withTime(III)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 66
    invoke-interface {p0, v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->isBefore(Lcom/google/calendar/v2/client/service/api/time/Instant;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/time/Period;->hours(I)Lcom/google/calendar/v2/client/service/api/time/Period;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->plusPeriod(Lcom/google/calendar/v2/client/service/api/time/Period;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getHourOfDay()I

    move-result v1

    invoke-interface {v0, v1, v2, v2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withTime(III)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNowDateTime(Landroid/content/Context;)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 1

    .prologue
    .line 183
    invoke-static {p0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->getNowDateTime(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public static getNowDateTime(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 4

    .prologue
    .line 175
    invoke-static {p0}, Lcom/android/calendar/time/TimeZoneImpl;->getTimeZone(Ljava/lang/String;)Lcom/android/calendar/time/TimeZoneImpl;

    move-result-object v0

    .line 176
    new-instance v1, Lcom/android/calendar/time/DateTimeImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0}, Lcom/android/calendar/time/DateTimeImpl;-><init>(JLcom/google/calendar/v2/client/service/api/time/TimeZone;)V

    return-object v1
.end method

.method public static getTimeOnGivenFutureDateForTask(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-static {p0}, Lcom/android/calendar/time/DateTimeUtils;->roundDownToMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1, v2, v2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withTime(III)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public static isAllDayToday(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/time/DateTime;Z)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 101
    if-nez p2, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    invoke-static {p0}, Lcom/android/calendar/time/DateTimeUtils;->getNowDateTime(Landroid/content/Context;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v1

    .line 106
    invoke-static {v1}, Lcom/android/calendar/time/DateTimeUtils;->roundDownToMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v2

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Lcom/google/calendar/v2/client/service/api/time/Duration;->standardMinutes(J)Lcom/google/calendar/v2/client/service/api/time/Duration;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->minusDuration(Lcom/google/calendar/v2/client/service/api/time/Duration;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v2

    .line 107
    invoke-static {v1}, Lcom/android/calendar/time/DateTimeUtils;->roundUpToMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v1

    .line 109
    invoke-interface {p1, v2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->isAfter(Lcom/google/calendar/v2/client/service/api/time/Instant;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->isBefore(Lcom/google/calendar/v2/client/service/api/time/Instant;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isFuture(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/time/DateTime;Z)Z
    .locals 4

    .prologue
    .line 86
    invoke-static {p0}, Lcom/android/calendar/time/DateTimeUtils;->getNowDateTime(Landroid/content/Context;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 88
    if-eqz p2, :cond_0

    .line 91
    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->roundUpToMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Lcom/google/calendar/v2/client/service/api/time/Duration;->standardMinutes(J)Lcom/google/calendar/v2/client/service/api/time/Duration;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->minusDuration(Lcom/google/calendar/v2/client/service/api/time/Duration;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 94
    :cond_0
    invoke-interface {p1, v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->isAfter(Lcom/google/calendar/v2/client/service/api/time/Instant;)Z

    move-result v0

    return v0
.end method

.method public static isFutureOrAllDayToday(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/time/DateTime;Z)Z
    .locals 4

    .prologue
    .line 117
    invoke-static {p0}, Lcom/android/calendar/time/DateTimeUtils;->getNowDateTime(Landroid/content/Context;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 119
    if-eqz p2, :cond_0

    .line 122
    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->roundDownToMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Lcom/google/calendar/v2/client/service/api/time/Duration;->standardMinutes(J)Lcom/google/calendar/v2/client/service/api/time/Duration;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->minusDuration(Lcom/google/calendar/v2/client/service/api/time/Duration;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 125
    :cond_0
    invoke-interface {p1, v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->isAfter(Lcom/google/calendar/v2/client/service/api/time/Instant;)Z

    move-result v0

    return v0
.end method

.method public static roundDownToMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 1

    .prologue
    .line 154
    if-nez p0, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withMillisOfDay(I)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public static roundUpToHour(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getHourOfDay()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0, v1, v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withTime(III)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public static roundUpToMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 2

    .prologue
    .line 144
    if-nez p0, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/time/Period;->days(I)Lcom/google/calendar/v2/client/service/api/time/Period;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->plusPeriod(Lcom/google/calendar/v2/client/service/api/time/Period;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withMillisOfDay(I)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public static roundUpToMidnightOfNextDayOfWeek(Lcom/google/calendar/v2/client/service/api/time/DateTime;I)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 1

    .prologue
    .line 166
    :cond_0
    invoke-static {p0}, Lcom/android/calendar/time/DateTimeUtils;->roundUpToMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object p0

    .line 167
    invoke-static {p0}, Lcom/android/calendar/time/DateTimeUtils;->getDayOfWeek(Lcom/google/calendar/v2/client/service/api/time/DateTime;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 168
    return-object p0
.end method

.method public static setIsTest(Z)V
    .locals 0

    .prologue
    .line 193
    sput-boolean p0, Lcom/android/calendar/time/DateTimeUtils;->sIsTest:Z

    .line 194
    return-void
.end method
