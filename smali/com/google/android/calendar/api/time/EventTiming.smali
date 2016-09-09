.class public Lcom/google/android/calendar/api/time/EventTiming;
.super Ljava/lang/Object;
.source "EventTiming.java"


# instance fields
.field public final allDay:Z

.field public final endMillisUtc:J

.field public final recurrence:Lcom/google/android/calendar/api/time/Recurrence;

.field public final recurringTimeZoneId:Ljava/lang/String;

.field public final singleEndTimeZoneId:Ljava/lang/String;

.field public final singleStartTimeZoneId:Ljava/lang/String;

.field public final startMillisUtc:J


# direct methods
.method private constructor <init>(JJZLjava/lang/String;Ljava/lang/String;Lcom/google/android/calendar/api/time/Recurrence;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 46
    invoke-static {p6}, Lcom/google/android/calendar/api/time/EventTiming;->sanitizeTimeZoneId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-static {p7}, Lcom/google/android/calendar/api/time/EventTiming;->sanitizeTimeZoneId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    iput-boolean p5, p0, Lcom/google/android/calendar/api/time/EventTiming;->allDay:Z

    .line 49
    if-eqz p5, :cond_0

    .line 51
    invoke-static {p1, p2, v2}, Lcom/google/android/calendar/api/utils/TimestampHelper;->roundDownToUtcMidnight(JLjava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/calendar/api/time/EventTiming;->startMillisUtc:J

    .line 53
    invoke-static {v0, v1, v3}, Lcom/google/android/calendar/api/utils/TimestampHelper;->roundUpToUtcMidnight(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/calendar/api/time/EventTiming;->endMillisUtc:J

    .line 54
    iput-object v6, p0, Lcom/google/android/calendar/api/time/EventTiming;->singleStartTimeZoneId:Ljava/lang/String;

    .line 55
    iput-object v6, p0, Lcom/google/android/calendar/api/time/EventTiming;->singleEndTimeZoneId:Ljava/lang/String;

    .line 56
    iput-object v6, p0, Lcom/google/android/calendar/api/time/EventTiming;->recurringTimeZoneId:Ljava/lang/String;

    .line 66
    :goto_0
    iput-object p8, p0, Lcom/google/android/calendar/api/time/EventTiming;->recurrence:Lcom/google/android/calendar/api/time/Recurrence;

    .line 67
    return-void

    .line 58
    :cond_0
    iput-wide p1, p0, Lcom/google/android/calendar/api/time/EventTiming;->startMillisUtc:J

    .line 59
    iput-wide v0, p0, Lcom/google/android/calendar/api/time/EventTiming;->endMillisUtc:J

    .line 60
    iput-object v2, p0, Lcom/google/android/calendar/api/time/EventTiming;->singleStartTimeZoneId:Ljava/lang/String;

    .line 61
    iput-object v3, p0, Lcom/google/android/calendar/api/time/EventTiming;->singleEndTimeZoneId:Ljava/lang/String;

    .line 64
    iput-object v2, p0, Lcom/google/android/calendar/api/time/EventTiming;->recurringTimeZoneId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static create(Landroid/database/Cursor;)Lcom/google/android/calendar/api/time/EventTiming;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 24
    invoke-static {p0}, Lcom/google/android/calendar/api/time/RecurrenceStoreUtils;->getEventType(Landroid/database/Cursor;)I

    move-result v1

    .line 27
    if-ne v1, v6, :cond_0

    .line 28
    const/16 v1, 0x1f

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 29
    const/16 v1, 0x20

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 34
    :goto_0
    const/16 v1, 0xa

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 35
    const/16 v1, 0x1b

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 36
    const/4 v1, 0x6

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 37
    :goto_1
    invoke-static {p0}, Lcom/google/android/calendar/api/time/RecurrenceStoreUtils;->extractRecurrence(Landroid/database/Cursor;)Lcom/google/android/calendar/api/time/Recurrence;

    move-result-object v9

    .line 38
    new-instance v1, Lcom/google/android/calendar/api/time/EventTiming;

    invoke-direct/range {v1 .. v9}, Lcom/google/android/calendar/api/time/EventTiming;-><init>(JJZLjava/lang/String;Ljava/lang/String;Lcom/google/android/calendar/api/time/Recurrence;)V

    return-object v1

    .line 31
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 32
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    goto :goto_0

    :cond_1
    move v6, v0

    .line 36
    goto :goto_1
.end method

.method private static sanitizeTimeZoneId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    invoke-static {p0}, Lcom/google/android/calendar/api/utils/TimeZoneHelper;->isValidTimeZoneIdOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method
