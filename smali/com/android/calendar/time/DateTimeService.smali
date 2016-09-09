.class public Lcom/android/calendar/time/DateTimeService;
.super Ljava/lang/Object;
.source "DateTimeService.java"

# interfaces
.implements Lcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/calendar/time/DateTimeService;


# instance fields
.field private injectedNow:Ljava/lang/Long;

.field private mCalendarTimeZone:Lcom/android/calendar/time/TimeZoneImpl;

.field private mRecycle:Lcom/android/calendar/time/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/calendar/time/DateTimeService;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/time/DateTimeService;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-direct {v0}, Lcom/android/calendar/time/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/time/DateTimeService;->mRecycle:Lcom/android/calendar/time/Time;

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/calendar/time/DateTimeService;-><init>()V

    .line 53
    new-instance v0, Lcom/android/calendar/time/DateTimeService$1;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/time/DateTimeService$1;-><init>(Lcom/android/calendar/time/DateTimeService;Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/time/DateTimeService;->setCalendarTimeZone(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/calendar/time/DateTimeService;-><init>()V

    .line 63
    invoke-direct {p0, p1}, Lcom/android/calendar/time/DateTimeService;->setCalendarTimeZone(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/time/DateTimeService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/calendar/time/DateTimeService;->setCalendarTimeZone(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/android/calendar/time/DateTimeService;
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/android/calendar/time/DateTimeService;->sInstance:Lcom/android/calendar/time/DateTimeService;

    const-string v1, "DateTimeService#initialize(...) must be called first"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "DateTimeService.getInstance() must be called on main thread"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 83
    sget-object v0, Lcom/android/calendar/time/DateTimeService;->sInstance:Lcom/android/calendar/time/DateTimeService;

    return-object v0

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNewInstance(Landroid/content/Context;)Lcom/android/calendar/time/DateTimeService;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/android/calendar/time/DateTimeService;

    invoke-direct {v0, p0}, Lcom/android/calendar/time/DateTimeService;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getNewInstance(Ljava/lang/String;)Lcom/android/calendar/time/DateTimeService;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/android/calendar/time/DateTimeService;

    invoke-direct {v0, p0}, Lcom/android/calendar/time/DateTimeService;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 67
    const-class v1, Lcom/android/calendar/time/DateTimeService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/calendar/time/DateTimeService;->sInstance:Lcom/android/calendar/time/DateTimeService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 72
    :goto_0
    monitor-exit v1

    return-void

    .line 71
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/calendar/time/DateTimeService;

    invoke-direct {v0, p0}, Lcom/android/calendar/time/DateTimeService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/calendar/time/DateTimeService;->sInstance:Lcom/android/calendar/time/DateTimeService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/calendar/time/DateTimeService;->sInstance:Lcom/android/calendar/time/DateTimeService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCalendarTimeZone(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 296
    invoke-static {p1}, Lcom/android/calendar/time/TimeZoneImpl;->getTimeZone(Ljava/lang/String;)Lcom/android/calendar/time/TimeZoneImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/time/DateTimeService;->mCalendarTimeZone:Lcom/android/calendar/time/TimeZoneImpl;

    .line 297
    return-void
.end method


# virtual methods
.method public calendarTimeZone()Lcom/android/calendar/time/TimeZoneImpl;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/calendar/time/DateTimeService;->mCalendarTimeZone:Lcom/android/calendar/time/TimeZoneImpl;

    return-object v0
.end method

.method public convertLocalToAllDayLocal(J)J
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 229
    iget-object v0, p0, Lcom/android/calendar/time/DateTimeService;->mCalendarTimeZone:Lcom/android/calendar/time/TimeZoneImpl;

    iget-object v0, v0, Lcom/android/calendar/time/TimeZoneImpl;->mTimeZone:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 230
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 232
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 233
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 234
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 235
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 237
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public convertLocalToAllDayUtc(J)J
    .locals 5

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/calendar/time/DateTimeService;->mCalendarTimeZone:Lcom/android/calendar/time/TimeZoneImpl;

    iget-object v0, v0, Lcom/android/calendar/time/TimeZoneImpl;->mTimeZone:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 254
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 256
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 257
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 258
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    .line 259
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    .line 260
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 258
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/Calendar;->set(III)V

    .line 262
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public dateTimeForMillis(J)Lcom/android/calendar/time/DateTimeImpl;
    .locals 3

    .prologue
    .line 164
    new-instance v0, Lcom/android/calendar/time/DateTimeImpl;

    iget-object v1, p0, Lcom/android/calendar/time/DateTimeService;->mCalendarTimeZone:Lcom/android/calendar/time/TimeZoneImpl;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/calendar/time/DateTimeImpl;-><init>(JLcom/google/calendar/v2/client/service/api/time/TimeZone;)V

    return-object v0
.end method

.method public dateTimeForMillis(JLjava/lang/String;)Lcom/android/calendar/time/DateTimeImpl;
    .locals 3

    .prologue
    .line 175
    new-instance v0, Lcom/android/calendar/time/DateTimeImpl;

    invoke-static {p3}, Lcom/android/calendar/time/TimeZoneImpl;->getTimeZone(Ljava/lang/String;)Lcom/android/calendar/time/TimeZoneImpl;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/calendar/time/DateTimeImpl;-><init>(JLcom/google/calendar/v2/client/service/api/time/TimeZone;)V

    return-object v0
.end method

.method public fromLocalTime(Lcom/google/calendar/v2/client/service/api/time/DateTime;ZLcom/google/calendar/v2/client/service/api/time/TimeZone;)J
    .locals 4

    .prologue
    .line 211
    if-nez p2, :cond_0

    .line 212
    new-instance v0, Lcom/android/calendar/time/DateTimeImpl;

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, p3}, Lcom/android/calendar/time/DateTimeImpl;-><init>(JLcom/google/calendar/v2/client/service/api/time/TimeZone;)V

    invoke-virtual {v0}, Lcom/android/calendar/time/DateTimeImpl;->getMillis()J

    move-result-wide v0

    .line 215
    :goto_0
    return-wide v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/calendar/time/DateTimeService;->mCalendarTimeZone:Lcom/android/calendar/time/TimeZoneImpl;

    invoke-virtual {v1}, Lcom/android/calendar/time/TimeZoneImpl;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/android/calendar/Utils;->convertAlldayLocalToUTC(Lcom/android/calendar/time/Time;JLjava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getMillis(IIIII)J
    .locals 7

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/calendar/time/DateTimeService;->mRecycle:Lcom/android/calendar/time/Time;

    iget-object v1, p0, Lcom/android/calendar/time/DateTimeService;->mCalendarTimeZone:Lcom/android/calendar/time/TimeZoneImpl;

    invoke-virtual {v1}, Lcom/android/calendar/time/TimeZoneImpl;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/time/Time;->timezone:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/android/calendar/time/DateTimeService;->mRecycle:Lcom/android/calendar/time/Time;

    const/4 v1, 0x0

    move v2, p5

    move v3, p4

    move v4, p3

    move v5, p2

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/time/Time;->set(IIIIII)V

    .line 146
    iget-object v0, p0, Lcom/android/calendar/time/DateTimeService;->mRecycle:Lcom/android/calendar/time/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRecycleTimeForMillis(J)Lcom/android/calendar/time/Time;
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/calendar/time/DateTimeService;->mRecycle:Lcom/android/calendar/time/Time;

    iget-object v1, p0, Lcom/android/calendar/time/DateTimeService;->mCalendarTimeZone:Lcom/android/calendar/time/TimeZoneImpl;

    invoke-virtual {v1}, Lcom/android/calendar/time/TimeZoneImpl;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/time/Time;->timezone:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/android/calendar/time/DateTimeService;->mRecycle:Lcom/android/calendar/time/Time;

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/time/Time;->set(J)V

    .line 155
    iget-object v0, p0, Lcom/android/calendar/time/DateTimeService;->mRecycle:Lcom/android/calendar/time/Time;

    return-object v0
.end method

.method public injectNow(J)V
    .locals 1

    .prologue
    .line 112
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/time/DateTimeService;->injectedNow:Ljava/lang/Long;

    .line 113
    return-void
.end method

.method public now()Lcom/android/calendar/time/DateTimeImpl;
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/calendar/time/DateTimeService;->injectedNow:Ljava/lang/Long;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 121
    :goto_0
    new-instance v2, Lcom/android/calendar/time/DateTimeImpl;

    iget-object v3, p0, Lcom/android/calendar/time/DateTimeService;->mCalendarTimeZone:Lcom/android/calendar/time/TimeZoneImpl;

    invoke-direct {v2, v0, v1, v3}, Lcom/android/calendar/time/DateTimeImpl;-><init>(JLcom/google/calendar/v2/client/service/api/time/TimeZone;)V

    return-object v2

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/time/DateTimeService;->injectedNow:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public onCalendarPropertyChanged(ILjava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 281
    if-nez p1, :cond_1

    .line 282
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 283
    check-cast p2, Ljava/lang/String;

    .line 284
    invoke-direct {p0, p2}, Lcom/android/calendar/time/DateTimeService;->setCalendarTimeZone(Ljava/lang/String;)V

    .line 291
    :goto_0
    return-void

    .line 286
    :cond_0
    sget-object v0, Lcom/android/calendar/time/DateTimeService;->TAG:Ljava/lang/String;

    const-string v1, "Wrong time zone property format, should be a String."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 289
    :cond_1
    sget-object v0, Lcom/android/calendar/time/DateTimeService;->TAG:Ljava/lang/String;

    const-string v1, "Unexpected property passed to onCalendarPropertyChanged."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public toDateTimeImpl(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/android/calendar/time/DateTimeImpl;
    .locals 4

    .prologue
    .line 271
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    instance-of v0, p1, Lcom/android/calendar/time/DateTimeImpl;

    if-eqz v0, :cond_0

    .line 273
    check-cast p1, Lcom/android/calendar/time/DateTimeImpl;

    .line 276
    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Lcom/android/calendar/time/DateTimeImpl;

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/android/calendar/time/DateTimeImpl;-><init>(JLcom/google/calendar/v2/client/service/api/time/TimeZone;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public toLocalTime(JZ)Lcom/android/calendar/time/DateTimeImpl;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/calendar/time/DateTimeService;->mCalendarTimeZone:Lcom/android/calendar/time/TimeZoneImpl;

    invoke-virtual {v0}, Lcom/android/calendar/time/TimeZoneImpl;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/calendar/time/DateTimeService;->toTimeZone(JZLjava/lang/String;)Lcom/android/calendar/time/DateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public toTimeZone(JZLjava/lang/String;)Lcom/android/calendar/time/DateTimeImpl;
    .locals 5

    .prologue
    .line 192
    if-nez p3, :cond_0

    .line 193
    new-instance v0, Lcom/android/calendar/time/DateTimeImpl;

    invoke-static {p4}, Lcom/android/calendar/time/TimeZoneImpl;->getTimeZone(Ljava/lang/String;)Lcom/android/calendar/time/TimeZoneImpl;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/calendar/time/DateTimeImpl;-><init>(JLcom/google/calendar/v2/client/service/api/time/TimeZone;)V

    .line 197
    :goto_0
    return-object v0

    .line 196
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/calendar/time/DateTimeService;->mCalendarTimeZone:Lcom/android/calendar/time/TimeZoneImpl;

    invoke-virtual {v1}, Lcom/android/calendar/time/TimeZoneImpl;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Lcom/android/calendar/time/Time;JLjava/lang/String;)J

    move-result-wide v2

    .line 197
    new-instance v0, Lcom/android/calendar/time/DateTimeImpl;

    iget-object v1, p0, Lcom/android/calendar/time/DateTimeService;->mCalendarTimeZone:Lcom/android/calendar/time/TimeZoneImpl;

    invoke-direct {v0, v2, v3, v1}, Lcom/android/calendar/time/DateTimeImpl;-><init>(JLcom/google/calendar/v2/client/service/api/time/TimeZone;)V

    goto :goto_0
.end method

.method public today()Lcom/android/calendar/time/DateTimeImpl;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-virtual {p0}, Lcom/android/calendar/time/DateTimeService;->now()Lcom/android/calendar/time/DateTimeImpl;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1}, Lcom/android/calendar/time/DateTimeImpl;->withTime(III)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/time/DateTimeService;->toDateTimeImpl(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/android/calendar/time/DateTimeImpl;

    move-result-object v0

    return-object v0
.end method
