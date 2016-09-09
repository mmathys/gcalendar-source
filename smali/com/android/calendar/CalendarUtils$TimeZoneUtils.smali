.class public Lcom/android/calendar/CalendarUtils$TimeZoneUtils;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeZoneUtils"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;
    }
.end annotation


# static fields
.field public static final CALENDAR_CACHE_POJECTION:[Ljava/lang/String;

.field private static final TIMEZONE_INSTANCES_ARGS:[Ljava/lang/String;

.field private static final TIMEZONE_TYPE_ARGS:[Ljava/lang/String;

.field private static volatile mFirstTZRequest:Z

.field private static mFormatter:Ljava/util/Formatter;

.field private static mHandler:Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

.field private static volatile mHomeTZ:Ljava/lang/String;

.field private static mSB:Ljava/lang/StringBuilder;

.field private static mTZCallbacks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mTZQueryInProgress:Z

.field private static mToken:I

.field private static volatile mUseHomeTZ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "timezoneType"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->TIMEZONE_TYPE_ARGS:[Ljava/lang/String;

    .line 53
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "timezoneInstances"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->TIMEZONE_INSTANCES_ARGS:[Ljava/lang/String;

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "key"

    aput-object v1, v0, v3

    const-string v1, "value"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->CALENDAR_CACHE_POJECTION:[Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    .line 60
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mFormatter:Ljava/util/Formatter;

    .line 61
    sput-boolean v4, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    .line 62
    sput-boolean v3, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    .line 64
    sput-boolean v3, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    .line 65
    invoke-static {}, Lcom/android/calendar/time/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    .line 68
    sput v4, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mToken:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .prologue
    .line 51
    sput-boolean p0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    return p0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .prologue
    .line 51
    sput-boolean p0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    return p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    .prologue
    .line 51
    sput-boolean p0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    return p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 51
    sput-object p0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 8

    .prologue
    .line 185
    and-int/lit16 v0, p6, 0x2000

    if-eqz v0, :cond_0

    .line 186
    const-string v7, "UTC"

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    .line 190
    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 188
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;Z)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public formatDateRange(Landroid/content/Context;JJILjava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 158
    sget-object v8, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    monitor-enter v8

    .line 159
    :try_start_0
    sget-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 160
    sget-object v1, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mFormatter:Ljava/util/Formatter;

    move-object v0, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v8

    .line 160
    return-object v0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/lang/String;
    .locals 11

    .prologue
    .line 196
    move/from16 v0, p7

    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_0

    .line 197
    const-string v9, "UTC"

    :goto_0
    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    .line 202
    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v2

    .line 203
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    return-object v2

    .line 199
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method

.method public getTimeZone(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 336
    sget-boolean v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    if-eqz v0, :cond_0

    .line 337
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;Z)Ljava/lang/String;

    .line 339
    :cond_0
    sget-boolean v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/calendar/time/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;Z)Ljava/lang/String;
    .locals 9

    .prologue
    .line 289
    sget-object v8, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    monitor-enter v8

    .line 290
    :try_start_0
    sget-boolean v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    if-eqz v0, :cond_1

    .line 291
    invoke-static {p1}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 292
    const-string v1, "preferences_home_tz_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    .line 293
    const-string v1, "preferences_home_tz"

    invoke-static {}, Lcom/android/calendar/time/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    .line 296
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 297
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    .line 298
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    .line 304
    sget-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;-><init>(Lcom/android/calendar/CalendarUtils$TimeZoneUtils;Landroid/content/ContentResolver;)V

    sput-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    .line 307
    :cond_0
    sget-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/CalendarContract$CalendarCache;->URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->CALENDAR_CACHE_POJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_1
    sget-boolean v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 312
    sget-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_2
    :goto_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    sget-boolean v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    :goto_1
    return-object v0

    .line 313
    :cond_3
    if-eqz p3, :cond_2

    :try_start_1
    sget-boolean v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 315
    sget-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    if-nez v0, :cond_4

    .line 316
    new-instance v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;-><init>(Lcom/android/calendar/CalendarUtils$TimeZoneUtils;Landroid/content/ContentResolver;)V

    sput-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    .line 318
    :cond_4
    sget-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    invoke-virtual {v0, p2}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 321
    :cond_5
    invoke-static {}, Lcom/android/calendar/time/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public setTimeZone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 219
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    const-string v1, "CalendarUtils"

    const-string v2, "Empty time zone, nothing to be done."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    sget-object v3, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    monitor-enter v3

    .line 225
    :try_start_0
    const-string v4, "auto"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 226
    sget-boolean v4, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v4, :cond_2

    move v0, v1

    .line 229
    :cond_2
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    .line 237
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    if-eqz v0, :cond_0

    .line 240
    invoke-static {p1}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 241
    const-string v3, "preferences_home_tz_enabled"

    sget-boolean v4, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    invoke-static {v0, v3, v4}, Lcom/android/calendar/CalendarUtils;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 242
    const-string v3, "preferences_home_tz"

    sget-object v4, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/android/calendar/CalendarUtils;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 246
    sget-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    if-eqz v0, :cond_3

    .line 247
    sget-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v3, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mToken:I

    invoke-virtual {v0, v3}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->cancelOperation(I)V

    .line 250
    :cond_3
    new-instance v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;-><init>(Lcom/android/calendar/CalendarUtils$TimeZoneUtils;Landroid/content/ContentResolver;)V

    sput-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    .line 253
    sget v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mToken:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mToken:I

    if-nez v0, :cond_4

    .line 254
    sput v1, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mToken:I

    .line 258
    :cond_4
    const-string v1, "value"

    sget-boolean v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v0, :cond_8

    const-string v0, "home"

    :goto_2
    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    sget-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v1, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mToken:I

    sget-object v3, Landroid/provider/CalendarContract$CalendarCache;->URI:Landroid/net/Uri;

    const-string v5, "key=?"

    sget-object v6, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->TIMEZONE_TYPE_ARGS:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 264
    sget-boolean v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v0, :cond_0

    .line 265
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 266
    const-string v0, "value"

    sget-object v1, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v1, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mToken:I

    sget-object v3, Landroid/provider/CalendarContract$CalendarCache;->URI:Landroid/net/Uri;

    const-string v5, "key=?"

    sget-object v6, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->TIMEZONE_INSTANCES_ARGS:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 231
    :cond_5
    :try_start_1
    sget-boolean v4, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v4, :cond_6

    sget-object v4, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    move v0, v1

    .line 234
    :cond_7
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    .line 235
    sput-object p2, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    goto/16 :goto_1

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 259
    :cond_8
    const-string v0, "auto"

    goto :goto_2
.end method
