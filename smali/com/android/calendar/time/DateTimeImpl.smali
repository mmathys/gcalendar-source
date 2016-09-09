.class public Lcom/android/calendar/time/DateTimeImpl;
.super Lcom/google/calendar/v2/client/service/impl/time/BaseDateTimeImpl;
.source "DateTimeImpl.java"


# static fields
.field private static final INITIAL_CAPACITY:I = 0x32


# instance fields
.field private mFormatter:Ljava/util/Formatter;

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private final mTime:Lcom/android/calendar/time/Time;

.field private final mTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;


# direct methods
.method public constructor <init>(JLcom/google/calendar/v2/client/service/api/time/TimeZone;)V
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/time/BaseDateTimeImpl;-><init>()V

    .line 50
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-interface {p3}, Lcom/google/calendar/v2/client/service/api/time/TimeZone;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/time/DateTimeImpl;->mTime:Lcom/android/calendar/time/Time;

    .line 52
    iget-object v0, p0, Lcom/android/calendar/time/DateTimeImpl;->mTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/time/Time;->set(J)V

    .line 53
    iput-object p3, p0, Lcom/android/calendar/time/DateTimeImpl;->mTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    .line 54
    return-void
.end method

.method private constructor <init>(Lcom/android/calendar/time/Time;Lcom/google/calendar/v2/client/service/api/time/TimeZone;)V
    .locals 3

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/time/BaseDateTimeImpl;-><init>()V

    .line 57
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p1, Lcom/android/calendar/time/Time;->timezone:Ljava/lang/String;

    invoke-interface {p2}, Lcom/google/calendar/v2/client/service/api/time/TimeZone;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 60
    iput-object p1, p0, Lcom/android/calendar/time/DateTimeImpl;->mTime:Lcom/android/calendar/time/Time;

    .line 61
    iput-object p2, p0, Lcom/android/calendar/time/DateTimeImpl;->mTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/time/DateTimeImpl;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 63
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/calendar/time/DateTimeImpl;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/calendar/time/DateTimeImpl;->mFormatter:Ljava/util/Formatter;

    .line 64
    return-void
.end method

.method private getFormatter()Ljava/util/Formatter;
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/calendar/time/DateTimeImpl;->mFormatter:Ljava/util/Formatter;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/time/DateTimeImpl;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 250
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/calendar/time/DateTimeImpl;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/calendar/time/DateTimeImpl;->mFormatter:Ljava/util/Formatter;

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/time/DateTimeImpl;->mFormatter:Ljava/util/Formatter;

    return-object v0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/time/DateTimeImpl;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0
.end method

.method private offsetPeriod(Lcom/google/calendar/v2/client/service/api/time/Period;I)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 8

    .prologue
    .line 203
    new-instance v0, Lcom/android/calendar/time/Time;

    iget-object v1, p0, Lcom/android/calendar/time/DateTimeImpl;->mTime:Lcom/android/calendar/time/Time;

    invoke-direct {v0, v1}, Lcom/android/calendar/time/Time;-><init>(Lcom/android/calendar/time/Time;)V

    .line 204
    iget v1, v0, Lcom/android/calendar/time/Time;->year:I

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/time/Period;->getYears()I

    move-result v2

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/calendar/time/Time;->year:I

    .line 205
    iget v1, v0, Lcom/android/calendar/time/Time;->month:I

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/time/Period;->getMonths()I

    move-result v2

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/calendar/time/Time;->month:I

    .line 206
    iget v1, v0, Lcom/android/calendar/time/Time;->monthDay:I

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/time/Period;->getWeeks()I

    move-result v2

    mul-int/2addr v2, p2

    mul-int/lit8 v2, v2, 0x7

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/calendar/time/Time;->monthDay:I

    .line 207
    iget v1, v0, Lcom/android/calendar/time/Time;->monthDay:I

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/time/Period;->getDays()I

    move-result v2

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/calendar/time/Time;->monthDay:I

    .line 208
    iget v1, v0, Lcom/android/calendar/time/Time;->hour:I

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/time/Period;->getHours()I

    move-result v2

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/calendar/time/Time;->hour:I

    .line 209
    iget v1, v0, Lcom/android/calendar/time/Time;->minute:I

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/time/Period;->getMinutes()I

    move-result v2

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/calendar/time/Time;->minute:I

    .line 210
    iget v1, v0, Lcom/android/calendar/time/Time;->second:I

    int-to-long v2, v1

    int-to-long v4, p2

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/time/Period;->getMillis()J

    move-result-wide v6

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, v0, Lcom/android/calendar/time/Time;->second:I

    .line 211
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/time/Time;->normalize(Z)J

    .line 213
    new-instance v1, Lcom/android/calendar/time/DateTimeImpl;

    invoke-virtual {p0}, Lcom/android/calendar/time/DateTimeImpl;->getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/calendar/time/DateTimeImpl;-><init>(Lcom/android/calendar/time/Time;Lcom/google/calendar/v2/client/service/api/time/TimeZone;)V

    return-object v1
.end method


# virtual methods
.method public formatDate(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 217
    const/16 v6, 0x16

    .line 219
    invoke-virtual {p0}, Lcom/android/calendar/time/DateTimeImpl;->getMillis()J

    move-result-wide v2

    .line 220
    invoke-virtual {p0}, Lcom/android/calendar/time/DateTimeImpl;->getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/TimeZone;->getId()Ljava/lang/String;

    move-result-object v7

    .line 221
    invoke-direct {p0}, Lcom/android/calendar/time/DateTimeImpl;->getFormatter()Ljava/util/Formatter;

    move-result-object v1

    move-object v0, p1

    move-wide v4, v2

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    return-object v0
.end method

.method public formatTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 226
    const/16 v6, 0xa01

    .line 229
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    const/16 v6, 0xa81

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/time/DateTimeImpl;->getMillis()J

    move-result-wide v2

    .line 233
    invoke-virtual {p0}, Lcom/android/calendar/time/DateTimeImpl;->getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/TimeZone;->getId()Ljava/lang/String;

    move-result-object v7

    .line 234
    invoke-direct {p0}, Lcom/android/calendar/time/DateTimeImpl;->getFormatter()Ljava/util/Formatter;

    move-result-object v1

    move-object v0, p1

    move-wide v4, v2

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/calendar/time/DateTimeImpl;->mTime:Lcom/android/calendar/time/Time;

    iget v0, v0, Lcom/android/calendar/time/Time;->monthDay:I

    return v0
.end method

.method public getDayOfWeek()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/calendar/time/DateTimeImpl;->mTime:Lcom/android/calendar/time/Time;

    iget v0, v0, Lcom/android/calendar/time/Time;->weekDay:I

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x7

    .line 88
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/time/DateTimeImpl;->mTime:Lcom/android/calendar/time/Time;

    iget v0, v0, Lcom/android/calendar/time/Time;->weekDay:I

    goto :goto_0
.end method

.method public getHourOfDay()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/calendar/time/DateTimeImpl;->mTime:Lcom/android/calendar/time/Time;

    iget v0, v0, Lcom/android/calendar/time/Time;->hour:I

    return v0
.end method

.method public getJulianDay()I
    .locals 4

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/calendar/time/DateTimeImpl;->getMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/calendar/time/DateTimeImpl;->mTime:Lcom/android/calendar/time/Time;

    iget-wide v2, v2, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v0

    return v0
.end method

.method public getMillis()J
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/calendar/time/DateTimeImpl;->mTime:Lcom/android/calendar/time/Time;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinuteOfHour()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/time/DateTimeImpl;->mTime:Lcom/android/calendar/time/Time;

    iget v0, v0, Lcom/android/calendar/time/Time;->minute:I

    return v0
.end method

.method public getMonthOfYear()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/time/DateTimeImpl;->mTime:Lcom/android/calendar/time/Time;

    iget v0, v0, Lcom/android/calendar/time/Time;->month:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getSecondOfMinute()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/calendar/time/DateTimeImpl;->mTime:Lcom/android/calendar/time/Time;

    iget v0, v0, Lcom/android/calendar/time/Time;->second:I

    return v0
.end method

.method public getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/calendar/time/DateTimeImpl;->mTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/calendar/time/DateTimeImpl;->mTime:Lcom/android/calendar/time/Time;

    iget v0, v0, Lcom/android/calendar/time/Time;->year:I

    return v0
.end method

.method public minusDuration(Lcom/google/calendar/v2/client/service/api/time/Duration;)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 6

    .prologue
    .line 148
    new-instance v0, Lcom/android/calendar/time/DateTimeImpl;

    invoke-virtual {p0}, Lcom/android/calendar/time/DateTimeImpl;->getMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/time/Duration;->getMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {p0}, Lcom/android/calendar/time/DateTimeImpl;->getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/android/calendar/time/DateTimeImpl;-><init>(JLcom/google/calendar/v2/client/service/api/time/TimeZone;)V

    return-object v0
.end method

.method public bridge synthetic minusDuration(Lcom/google/calendar/v2/client/service/api/time/Duration;)Lcom/google/calendar/v2/client/service/api/time/Instant;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/calendar/time/DateTimeImpl;->minusDuration(Lcom/google/calendar/v2/client/service/api/time/Duration;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public minusPeriod(Lcom/google/calendar/v2/client/service/api/time/Period;)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 1

    .prologue
    .line 158
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/time/DateTimeImpl;->offsetPeriod(Lcom/google/calendar/v2/client/service/api/time/Period;I)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusDuration(Lcom/google/calendar/v2/client/service/api/time/Duration;)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 6

    .prologue
    .line 143
    new-instance v0, Lcom/android/calendar/time/DateTimeImpl;

    invoke-virtual {p0}, Lcom/android/calendar/time/DateTimeImpl;->getMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/time/Duration;->getMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {p0}, Lcom/android/calendar/time/DateTimeImpl;->getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/android/calendar/time/DateTimeImpl;-><init>(JLcom/google/calendar/v2/client/service/api/time/TimeZone;)V

    return-object v0
.end method

.method public bridge synthetic plusDuration(Lcom/google/calendar/v2/client/service/api/time/Duration;)Lcom/google/calendar/v2/client/service/api/time/Instant;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/calendar/time/DateTimeImpl;->plusDuration(Lcom/google/calendar/v2/client/service/api/time/Duration;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusPeriod(Lcom/google/calendar/v2/client/service/api/time/Period;)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/time/DateTimeImpl;->offsetPeriod(Lcom/google/calendar/v2/client/service/api/time/Period;I)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/calendar/time/DateTimeImpl;->mTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0}, Lcom/android/calendar/time/Time;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withDate(III)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 3

    .prologue
    .line 189
    new-instance v0, Lcom/android/calendar/time/Time;

    iget-object v1, p0, Lcom/android/calendar/time/DateTimeImpl;->mTime:Lcom/android/calendar/time/Time;

    invoke-direct {v0, v1}, Lcom/android/calendar/time/Time;-><init>(Lcom/android/calendar/time/Time;)V

    .line 191
    iput p1, v0, Lcom/android/calendar/time/Time;->year:I

    .line 192
    add-int/lit8 v1, p2, -0x1

    iput v1, v0, Lcom/android/calendar/time/Time;->month:I

    .line 193
    iput p3, v0, Lcom/android/calendar/time/Time;->monthDay:I

    .line 195
    invoke-virtual {v0}, Lcom/android/calendar/time/Time;->normalizeSafe()V

    .line 197
    new-instance v1, Lcom/android/calendar/time/DateTimeImpl;

    invoke-virtual {p0}, Lcom/android/calendar/time/DateTimeImpl;->getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/calendar/time/DateTimeImpl;-><init>(Lcom/android/calendar/time/Time;Lcom/google/calendar/v2/client/service/api/time/TimeZone;)V

    return-object v1
.end method

.method public withMillisOfDay(I)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 163
    new-instance v0, Lcom/android/calendar/time/Time;

    iget-object v1, p0, Lcom/android/calendar/time/DateTimeImpl;->mTime:Lcom/android/calendar/time/Time;

    invoke-direct {v0, v1}, Lcom/android/calendar/time/Time;-><init>(Lcom/android/calendar/time/Time;)V

    .line 165
    iput v2, v0, Lcom/android/calendar/time/Time;->hour:I

    .line 166
    iput v2, v0, Lcom/android/calendar/time/Time;->minute:I

    .line 167
    div-int/lit16 v1, p1, 0x3e8

    iput v1, v0, Lcom/android/calendar/time/Time;->second:I

    .line 169
    invoke-virtual {v0}, Lcom/android/calendar/time/Time;->normalizeSafe()V

    .line 171
    new-instance v1, Lcom/android/calendar/time/DateTimeImpl;

    invoke-virtual {p0}, Lcom/android/calendar/time/DateTimeImpl;->getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/calendar/time/DateTimeImpl;-><init>(Lcom/android/calendar/time/Time;Lcom/google/calendar/v2/client/service/api/time/TimeZone;)V

    return-object v1
.end method

.method public withTime(III)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 3

    .prologue
    .line 176
    new-instance v0, Lcom/android/calendar/time/Time;

    iget-object v1, p0, Lcom/android/calendar/time/DateTimeImpl;->mTime:Lcom/android/calendar/time/Time;

    invoke-direct {v0, v1}, Lcom/android/calendar/time/Time;-><init>(Lcom/android/calendar/time/Time;)V

    .line 178
    iput p1, v0, Lcom/android/calendar/time/Time;->hour:I

    .line 179
    iput p2, v0, Lcom/android/calendar/time/Time;->minute:I

    .line 180
    iput p3, v0, Lcom/android/calendar/time/Time;->second:I

    .line 182
    invoke-virtual {v0}, Lcom/android/calendar/time/Time;->normalizeSafe()V

    .line 184
    new-instance v1, Lcom/android/calendar/time/DateTimeImpl;

    invoke-virtual {p0}, Lcom/android/calendar/time/DateTimeImpl;->getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/calendar/time/DateTimeImpl;-><init>(Lcom/android/calendar/time/Time;Lcom/google/calendar/v2/client/service/api/time/TimeZone;)V

    return-object v1
.end method

.method public withTimeZone(Lcom/google/calendar/v2/client/service/api/time/TimeZone;)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 4

    .prologue
    .line 108
    new-instance v0, Lcom/android/calendar/time/DateTimeImpl;

    invoke-virtual {p0}, Lcom/android/calendar/time/DateTimeImpl;->getMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, p1}, Lcom/android/calendar/time/DateTimeImpl;-><init>(JLcom/google/calendar/v2/client/service/api/time/TimeZone;)V

    return-object v0
.end method

.method public withTimeZoneRetainFields(Lcom/google/calendar/v2/client/service/api/time/TimeZone;)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 12

    .prologue
    const/16 v11, 0xc

    const/16 v10, 0xb

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 113
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 114
    invoke-virtual {p0}, Lcom/android/calendar/time/DateTimeImpl;->getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/time/TimeZone;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/calendar/time/DateTimeImpl;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 116
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 117
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 118
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 119
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 120
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 121
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/TimeZone;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 122
    invoke-virtual {v0, v7, v1}, Ljava/util/Calendar;->set(II)V

    .line 123
    invoke-virtual {v0, v8, v2}, Ljava/util/Calendar;->set(II)V

    .line 124
    invoke-virtual {v0, v9, v3}, Ljava/util/Calendar;->set(II)V

    .line 125
    invoke-virtual {v0, v10, v4}, Ljava/util/Calendar;->set(II)V

    .line 126
    invoke-virtual {v0, v11, v5}, Ljava/util/Calendar;->set(II)V

    .line 127
    new-instance v1, Lcom/android/calendar/time/DateTimeImpl;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p1}, Lcom/android/calendar/time/DateTimeImpl;-><init>(JLcom/google/calendar/v2/client/service/api/time/TimeZone;)V

    return-object v1
.end method
