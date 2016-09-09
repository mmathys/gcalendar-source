.class public Lcom/android/calendar/time/Time;
.super Ljava/lang/Object;
.source "Time.java"


# static fields
.field public static final EPOCH_JULIAN_DAY:I = 0x253d8c

.field public static final FRIDAY:I = 0x5

.field public static final MONDAY:I = 0x1

.field public static final SATURDAY:I = 0x6

.field private static final STRICT:Z = false

.field public static final SUNDAY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CalTime"

.field public static final THURSDAY:I = 0x4

.field public static final TIMEZONE_UTC:Ljava/lang/String; = "UTC"

.field public static final TUESDAY:I = 0x2

.field public static final WEDNESDAY:I = 0x3


# instance fields
.field public allDay:Z

.field public gmtoff:J

.field public hour:I

.field public isDst:I

.field private final mImpl:Landroid/text/format/Time;

.field private mUtcTemp:Landroid/text/format/Time;

.field public minute:I

.field public month:I

.field public monthDay:I

.field public second:I

.field public timezone:Ljava/lang/String;

.field public weekDay:I

.field public year:I

.field public yearDay:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/android/calendar/time/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/time/Time;->newZeroImpl(Ljava/lang/String;)Landroid/text/format/Time;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/time/Time;-><init>(Landroid/text/format/Time;)V

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/text/format/Time;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/time/Time;->isDst:I

    .line 72
    iput-object p1, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    .line 73
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->copyFieldsFromImpl()V

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/time/Time;)V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p1, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    invoke-direct {p0, v0}, Lcom/android/calendar/time/Time;-><init>(Landroid/text/format/Time;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    invoke-static {p1}, Lcom/android/calendar/time/Time;->newZeroImpl(Ljava/lang/String;)Landroid/text/format/Time;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/time/Time;-><init>(Landroid/text/format/Time;)V

    .line 69
    return-void
.end method

.method public static calculateDayHourMillis(IILjava/lang/String;Lcom/android/calendar/time/Time;)J
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/android/calendar/time/Time;->calculateDayHourMinuteMillis(IIILjava/lang/String;Lcom/android/calendar/time/Time;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateDayHourMinuteMillis(IIILjava/lang/String;Lcom/android/calendar/time/Time;)J
    .locals 2

    .prologue
    .line 95
    if-nez p4, :cond_0

    .line 96
    new-instance p4, Lcom/android/calendar/time/Time;

    invoke-direct {p4, p3}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 98
    :cond_0
    iput-object p3, p4, Lcom/android/calendar/time/Time;->timezone:Ljava/lang/String;

    .line 99
    invoke-virtual {p4, p0}, Lcom/android/calendar/time/Time;->setJulianDaySafe(I)V

    .line 100
    iput p1, p4, Lcom/android/calendar/time/Time;->hour:I

    .line 101
    iput p2, p4, Lcom/android/calendar/time/Time;->minute:I

    .line 102
    const/4 v0, 0x0

    iput v0, p4, Lcom/android/calendar/time/Time;->second:I

    .line 104
    invoke-virtual {p4}, Lcom/android/calendar/time/Time;->toMillisWithFallback()J

    move-result-wide v0

    return-wide v0
.end method

.method private checkMillis(J)J
    .locals 1

    .prologue
    .line 201
    return-wide p1
.end method

.method private copyFieldsFromImpl()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    invoke-direct {p0, v0}, Lcom/android/calendar/time/Time;->copyTimeFieldsFrom(Landroid/text/format/Time;)V

    .line 124
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    iget-boolean v0, v0, Landroid/text/format/Time;->allDay:Z

    iput-boolean v0, p0, Lcom/android/calendar/time/Time;->allDay:Z

    .line 125
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/time/Time;->timezone:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    iput v0, p0, Lcom/android/calendar/time/Time;->yearDay:I

    .line 128
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    iput v0, p0, Lcom/android/calendar/time/Time;->weekDay:I

    .line 129
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    iput-wide v0, p0, Lcom/android/calendar/time/Time;->gmtoff:J

    .line 130
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->isDst:I

    iput v0, p0, Lcom/android/calendar/time/Time;->isDst:I

    .line 131
    return-void
.end method

.method private copyTimeFieldsFrom(Landroid/text/format/Time;)V
    .locals 1

    .prologue
    .line 134
    iget v0, p1, Landroid/text/format/Time;->year:I

    iput v0, p0, Lcom/android/calendar/time/Time;->year:I

    .line 135
    iget v0, p1, Landroid/text/format/Time;->month:I

    iput v0, p0, Lcom/android/calendar/time/Time;->month:I

    .line 136
    iget v0, p1, Landroid/text/format/Time;->monthDay:I

    iput v0, p0, Lcom/android/calendar/time/Time;->monthDay:I

    .line 137
    iget v0, p1, Landroid/text/format/Time;->hour:I

    iput v0, p0, Lcom/android/calendar/time/Time;->hour:I

    .line 138
    iget v0, p1, Landroid/text/format/Time;->minute:I

    iput v0, p0, Lcom/android/calendar/time/Time;->minute:I

    .line 139
    iget v0, p1, Landroid/text/format/Time;->second:I

    iput v0, p0, Lcom/android/calendar/time/Time;->second:I

    .line 140
    return-void
.end method

.method private crash()Ljava/lang/RuntimeException;
    .locals 6

    .prologue
    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 206
    const-string v1, "CalTime"

    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/calendar/time/Time;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 207
    return-object v0
.end method

.method private fixAllDay(Landroid/text/format/Time;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 183
    iget-boolean v0, p1, Landroid/text/format/Time;->allDay:Z

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/text/format/Time;->hour:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/text/format/Time;->minute:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/text/format/Time;->second:I

    if-eqz v0, :cond_1

    .line 184
    :cond_0
    const-string v0, "CalTime"

    const-string v1, "Bad allDay for %04d-%02d-%02d %02d:%02d:%02d"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Landroid/text/format/Time;->year:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget v4, p1, Landroid/text/format/Time;->month:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p1, Landroid/text/format/Time;->monthDay:I

    .line 185
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p1, Landroid/text/format/Time;->hour:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p1, Landroid/text/format/Time;->minute:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p1, Landroid/text/format/Time;->second:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 184
    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 186
    iput-boolean v5, p1, Landroid/text/format/Time;->allDay:Z

    .line 188
    :cond_1
    return-void
.end method

.method public static getCurrentTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJulianDay(JJ)I
    .locals 2

    .prologue
    .line 299
    invoke-static {p0, p1, p2, p3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    return v0
.end method

.method public static getJulianDay(JLjava/util/TimeZone;)I
    .locals 4

    .prologue
    .line 307
    .line 308
    invoke-virtual {p2, p0, p1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 307
    invoke-static {p0, p1, v0, v1}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v0

    return v0
.end method

.method private getUtcTemp()Landroid/text/format/Time;
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mUtcTemp:Landroid/text/format/Time;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/time/Time;->mUtcTemp:Landroid/text/format/Time;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mUtcTemp:Landroid/text/format/Time;

    return-object v0
.end method

.method private static newZeroImpl(Ljava/lang/String;)Landroid/text/format/Time;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private setToNoon(Landroid/text/format/Time;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 271
    const/16 v0, 0xc

    iput v0, p1, Landroid/text/format/Time;->hour:I

    .line 272
    iput v1, p1, Landroid/text/format/Time;->minute:I

    .line 273
    iput v1, p1, Landroid/text/format/Time;->second:I

    .line 274
    iput-boolean v1, p1, Landroid/text/format/Time;->allDay:Z

    .line 275
    return-void
.end method

.method private writeFieldsToImpl()V
    .locals 4

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    invoke-direct {p0, v0}, Lcom/android/calendar/time/Time;->writeTimeFieldsTo(Landroid/text/format/Time;)V

    .line 212
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    iget-boolean v1, p0, Lcom/android/calendar/time/Time;->allDay:Z

    iput-boolean v1, v0, Landroid/text/format/Time;->allDay:Z

    .line 213
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/time/Time;->timezone:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    iget v1, p0, Lcom/android/calendar/time/Time;->yearDay:I

    iput v1, v0, Landroid/text/format/Time;->yearDay:I

    .line 216
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    iget v1, p0, Lcom/android/calendar/time/Time;->weekDay:I

    iput v1, v0, Landroid/text/format/Time;->weekDay:I

    .line 217
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    iget-wide v2, p0, Lcom/android/calendar/time/Time;->gmtoff:J

    iput-wide v2, v0, Landroid/text/format/Time;->gmtoff:J

    .line 218
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    iget v1, p0, Lcom/android/calendar/time/Time;->isDst:I

    iput v1, v0, Landroid/text/format/Time;->isDst:I

    .line 219
    return-void
.end method

.method private writeTimeFieldsTo(Landroid/text/format/Time;)V
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/android/calendar/time/Time;->year:I

    iput v0, p1, Landroid/text/format/Time;->year:I

    .line 223
    iget v0, p0, Lcom/android/calendar/time/Time;->month:I

    iput v0, p1, Landroid/text/format/Time;->month:I

    .line 224
    iget v0, p0, Lcom/android/calendar/time/Time;->monthDay:I

    iput v0, p1, Landroid/text/format/Time;->monthDay:I

    .line 225
    iget v0, p0, Lcom/android/calendar/time/Time;->hour:I

    iput v0, p1, Landroid/text/format/Time;->hour:I

    .line 226
    iget v0, p0, Lcom/android/calendar/time/Time;->minute:I

    iput v0, p1, Landroid/text/format/Time;->minute:I

    .line 227
    iget v0, p0, Lcom/android/calendar/time/Time;->second:I

    iput v0, p1, Landroid/text/format/Time;->second:I

    .line 228
    return-void
.end method

.method private writeTimezoneToImpl()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/time/Time;->timezone:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 232
    return-void
.end method


# virtual methods
.method public asAndroidTime()Landroid/text/format/Time;
    .locals 2

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->writeFieldsToImpl()V

    .line 359
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    return-object v0
.end method

.method public format(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/android/calendar/time/Time;->asAndroidTime()Landroid/text/format/Time;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format2445()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/android/calendar/time/Time;->asAndroidTime()Landroid/text/format/Time;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWeekNumber()I
    .locals 1

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->writeFieldsToImpl()V

    .line 364
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->getWeekNumber()I

    move-result v0

    return v0
.end method

.method public normalize(Z)J
    .locals 2

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->writeFieldsToImpl()V

    .line 144
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    invoke-virtual {v0, p1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/time/Time;->checkMillis(J)J

    move-result-wide v0

    .line 145
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->copyFieldsFromImpl()V

    .line 146
    return-wide v0
.end method

.method public normalizeSafe()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 156
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->writeFieldsToImpl()V

    .line 158
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 159
    iget-object v2, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    invoke-direct {p0, v2}, Lcom/android/calendar/time/Time;->fixAllDay(Landroid/text/format/Time;)V

    .line 160
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->getUtcTemp()Landroid/text/format/Time;

    move-result-object v0

    .line 162
    invoke-direct {p0, v0}, Lcom/android/calendar/time/Time;->writeTimeFieldsTo(Landroid/text/format/Time;)V

    .line 163
    iget-boolean v1, p0, Lcom/android/calendar/time/Time;->allDay:Z

    iput-boolean v1, v0, Landroid/text/format/Time;->allDay:Z

    .line 164
    invoke-virtual {v0, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 165
    invoke-direct {p0, v0}, Lcom/android/calendar/time/Time;->copyTimeFieldsFrom(Landroid/text/format/Time;)V

    .line 166
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->writeFieldsToImpl()V

    .line 167
    iget-object v1, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    invoke-direct {p0, v1}, Lcom/android/calendar/time/Time;->setToNoon(Landroid/text/format/Time;)V

    .line 168
    iget-object v1, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/calendar/time/Time;->checkMillis(J)J

    .line 169
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->copyFieldsFromImpl()V

    .line 170
    invoke-direct {p0, v0}, Lcom/android/calendar/time/Time;->copyTimeFieldsFrom(Landroid/text/format/Time;)V

    .line 171
    iget-boolean v0, v0, Landroid/text/format/Time;->allDay:Z

    iput-boolean v0, p0, Lcom/android/calendar/time/Time;->allDay:Z

    .line 172
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->writeFieldsToImpl()V

    .line 173
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    invoke-direct {p0, v0}, Lcom/android/calendar/time/Time;->fixAllDay(Landroid/text/format/Time;)V

    .line 174
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    iget-boolean v0, v0, Landroid/text/format/Time;->allDay:Z

    iput-boolean v0, p0, Lcom/android/calendar/time/Time;->allDay:Z

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->copyFieldsFromImpl()V

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->writeTimezoneToImpl()V

    .line 369
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    invoke-virtual {v0, p1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 370
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    invoke-virtual {v0, p1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    move-result v0

    .line 371
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->copyFieldsFromImpl()V

    .line 372
    return v0
.end method

.method public set(III)V
    .locals 1

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->writeFieldsToImpl()V

    .line 288
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    invoke-virtual {v0, p1, p2, p3}, Landroid/text/format/Time;->set(III)V

    .line 289
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->copyFieldsFromImpl()V

    .line 290
    return-void
.end method

.method public set(IIIIII)V
    .locals 7

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->writeFieldsToImpl()V

    .line 294
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 295
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->copyFieldsFromImpl()V

    .line 296
    return-void
.end method

.method public set(J)V
    .locals 3

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/time/Time;->checkMillis(J)J

    .line 109
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->writeTimezoneToImpl()V

    .line 110
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 111
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/time/Time;->checkMillis(J)J

    .line 112
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->copyFieldsFromImpl()V

    .line 113
    return-void
.end method

.method public set(Lcom/android/calendar/time/Time;)V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p1, Lcom/android/calendar/time/Time;->timezone:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/time/Time;->timezone:Ljava/lang/String;

    .line 117
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->writeTimezoneToImpl()V

    .line 118
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    iget-object v1, p1, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 119
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->copyFieldsFromImpl()V

    .line 120
    return-void
.end method

.method public setJulianDay(I)J
    .locals 2

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->writeFieldsToImpl()V

    .line 313
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    invoke-virtual {v0, p1}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/time/Time;->checkMillis(J)J

    move-result-wide v0

    .line 317
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->copyFieldsFromImpl()V

    .line 318
    return-wide v0
.end method

.method public setJulianDaySafe(I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 326
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->writeFieldsToImpl()V

    .line 327
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    invoke-virtual {v0, p1}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v0

    .line 331
    iget-wide v2, p0, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 333
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 334
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/time/Time;->checkMillis(J)J

    .line 340
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->copyFieldsFromImpl()V

    .line 341
    return-void
.end method

.method public setToNow()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 236
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->copyFieldsFromImpl()V

    .line 237
    return-void
.end method

.method public switchTimezone(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->writeFieldsToImpl()V

    .line 345
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    invoke-virtual {v0, p1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 346
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->copyFieldsFromImpl()V

    .line 347
    return-void
.end method

.method public toMillis(Z)J
    .locals 2

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->writeFieldsToImpl()V

    .line 241
    iget-object v0, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    invoke-virtual {v0, p1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/time/Time;->checkMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toMillisWithFallback()J
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v0, 0x1

    .line 250
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->writeFieldsToImpl()V

    .line 251
    iget-object v1, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    invoke-virtual {v1, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 252
    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    move-wide v0, v2

    .line 267
    :goto_0
    return-wide v0

    .line 256
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->getUtcTemp()Landroid/text/format/Time;

    move-result-object v1

    .line 257
    invoke-direct {p0, v1}, Lcom/android/calendar/time/Time;->writeTimeFieldsTo(Landroid/text/format/Time;)V

    .line 258
    invoke-virtual {v1, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 259
    invoke-direct {p0, v1}, Lcom/android/calendar/time/Time;->setToNoon(Landroid/text/format/Time;)V

    .line 260
    invoke-virtual {v1, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 261
    sub-long/2addr v2, v4

    .line 262
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->writeFieldsToImpl()V

    .line 263
    iget-object v1, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    invoke-direct {p0, v1}, Lcom/android/calendar/time/Time;->setToNoon(Landroid/text/format/Time;)V

    .line 264
    iget-object v1, p0, Lcom/android/calendar/time/Time;->mImpl:Landroid/text/format/Time;

    invoke-virtual {v1, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    .line 265
    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 266
    invoke-direct {p0}, Lcom/android/calendar/time/Time;->writeFieldsToImpl()V

    .line 267
    add-long v0, v4, v2

    goto :goto_0

    .line 265
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 377
    const-string v0, "Time:%04d-%02d-%02d %02d:%02d:%02d ad:%s dst:%s tz:%s"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/calendar/time/Time;->year:I

    .line 378
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/calendar/time/Time;->month:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/calendar/time/Time;->monthDay:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/calendar/time/Time;->hour:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/android/calendar/time/Time;->minute:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/android/calendar/time/Time;->second:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/android/calendar/time/Time;->allDay:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/android/calendar/time/Time;->isDst:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/android/calendar/time/Time;->timezone:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 377
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
