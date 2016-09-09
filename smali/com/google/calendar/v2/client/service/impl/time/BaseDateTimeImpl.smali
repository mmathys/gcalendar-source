.class public abstract Lcom/google/calendar/v2/client/service/impl/time/BaseDateTimeImpl;
.super Lcom/google/calendar/v2/client/service/api/time/BaseInstant;
.source "BaseDateTimeImpl.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/time/DateTime;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/api/time/BaseInstant;-><init>()V

    return-void
.end method

.method private checkDayOfWeek(I)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 36
    if-lt p1, v0, :cond_0

    const/4 v1, 0x7

    if-gt p1, v1, :cond_0

    :goto_0
    const-string v1, "dayOfWeek"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 38
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dateEquals(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Z
    .locals 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/time/BaseDateTimeImpl;->getYear()I

    move-result v0

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getYear()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/time/BaseDateTimeImpl;->getMonthOfYear()I

    move-result v0

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMonthOfYear()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/time/BaseDateTimeImpl;->getDayOfMonth()I

    move-result v0

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getDayOfMonth()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 23
    :goto_0
    return v0

    .line 25
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDayOfYear()I
    .locals 5

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/time/BaseDateTimeImpl;->getYear()I

    move-result v2

    .line 43
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/time/BaseDateTimeImpl;->getMonthOfYear()I

    move-result v3

    .line 44
    const/4 v1, 0x0

    .line 45
    const/4 v0, 0x1

    :goto_0
    if-ge v0, v3, :cond_0

    .line 46
    invoke-static {v2, v0}, Lcom/google/calendar/v2/client/service/api/time/GregorianChronology;->monthLength(II)I

    move-result v4

    add-int/2addr v1, v4

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/time/BaseDateTimeImpl;->getDayOfMonth()I

    move-result v0

    add-int/2addr v0, v1

    .line 49
    return v0
.end method

.method public getTimeZoneOffset()I
    .locals 4

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/time/BaseDateTimeImpl;->getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/time/BaseDateTimeImpl;->getMillis()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/calendar/v2/client/service/api/time/TimeZone;->getOffset(J)I

    move-result v0

    return v0
.end method

.method public timeEquals(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Z
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/time/BaseDateTimeImpl;->getHourOfDay()I

    move-result v0

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getHourOfDay()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/time/BaseDateTimeImpl;->getMinuteOfHour()I

    move-result v0

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMinuteOfHour()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/time/BaseDateTimeImpl;->getSecondOfMinute()I

    move-result v0

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getSecondOfMinute()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 30
    :goto_0
    return v0

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public withDayOfMonth(I)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/time/BaseDateTimeImpl;->getYear()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/time/BaseDateTimeImpl;->getMonthOfYear()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/calendar/v2/client/service/impl/time/BaseDateTimeImpl;->withDate(III)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfYear(I)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 6

    .prologue
    const/16 v2, 0xc

    const/4 v1, 0x1

    .line 81
    const/4 v0, -0x2

    if-lt p1, v0, :cond_0

    const/16 v0, 0x171

    if-gt p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/time/BaseDateTimeImpl;->getYear()I

    move-result v3

    .line 85
    invoke-static {v3, v1}, Lcom/google/calendar/v2/client/service/api/time/GregorianChronology;->monthLength(II)I

    move-result v0

    .line 86
    if-ge p1, v1, :cond_3

    .line 88
    add-int/lit8 v1, p1, 0x1f

    .line 90
    add-int/lit8 v0, v3, -0x1

    move v5, v2

    move v2, v1

    move v1, v5

    .line 103
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/calendar/v2/client/service/impl/time/BaseDateTimeImpl;->withDate(III)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    return-object v0

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 92
    :goto_2
    if-le v3, v4, :cond_2

    .line 93
    sub-int p1, v3, v4

    .line 94
    add-int/lit8 v1, v1, 0x1

    .line 96
    if-le v1, v2, :cond_1

    .line 97
    add-int/lit8 v1, v1, -0xc

    .line 98
    add-int/lit8 v0, v0, 0x1

    .line 100
    :cond_1
    invoke-static {v0, v1}, Lcom/google/calendar/v2/client/service/api/time/GregorianChronology;->monthLength(II)I

    move-result v3

    move v4, v3

    move v3, p1

    goto :goto_2

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    move v4, v0

    move v0, v3

    move v3, p1

    goto :goto_2
.end method

.method public withIsoDayOfWeek(I)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/calendar/v2/client/service/impl/time/BaseDateTimeImpl;->checkDayOfWeek(I)V

    .line 55
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/time/BaseDateTimeImpl;->getDayOfWeek()I

    move-result v0

    .line 56
    if-ne v0, p1, :cond_0

    .line 59
    :goto_0
    return-object p0

    :cond_0
    sub-int v0, p1, v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/time/Period;->days(I)Lcom/google/calendar/v2/client/service/api/time/Period;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/calendar/v2/client/service/impl/time/BaseDateTimeImpl;->plusPeriod(Lcom/google/calendar/v2/client/service/api/time/Period;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public withMonthAndDay(II)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/time/BaseDateTimeImpl;->getYear()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/calendar/v2/client/service/impl/time/BaseDateTimeImpl;->withDate(III)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withStartOfWeek(I)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1}, Lcom/google/calendar/v2/client/service/impl/time/BaseDateTimeImpl;->checkDayOfWeek(I)V

    .line 65
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/time/BaseDateTimeImpl;->getDayOfWeek()I

    move-result v0

    .line 66
    sub-int v0, p1, v0

    .line 67
    if-lez v0, :cond_0

    .line 68
    add-int/lit8 v0, v0, -0x7

    .line 71
    :cond_0
    if-eqz v0, :cond_1

    .line 73
    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/time/Period;->days(I)Lcom/google/calendar/v2/client/service/api/time/Period;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->plusPeriod(Lcom/google/calendar/v2/client/service/api/time/Period;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object p0

    .line 75
    :cond_1
    invoke-interface {p0, v1, v1, v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withTime(III)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    return-object v0
.end method
