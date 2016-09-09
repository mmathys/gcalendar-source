.class public Lcom/google/android/syncadapters/calendar/CalendarSyncThrottle;
.super Ljava/lang/Object;
.source "CalendarSyncThrottle.java"


# static fields
.field static sCalendarSyncIntervalsMs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static initialize(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 90
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncThrottle;->sCalendarSyncIntervalsMs:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncThrottle;->sCalendarSyncIntervalsMs:Landroid/util/SparseArray;

    .line 96
    sget-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->HOLIDAYS_CALENDARS_RARE_SYNC:Lcom/google/android/calendar/experiments/Experiment;

    invoke-virtual {v0, p0}, Lcom/google/android/calendar/experiments/Experiment;->isActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncThrottle;->sCalendarSyncIntervalsMs:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-wide/32 v2, 0x21795600

    .line 98
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    :cond_2
    sget-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->BIRTHDAYS_CALENDARS_RARE_SYNC:Lcom/google/android/calendar/experiments/Experiment;

    invoke-virtual {v0, p0}, Lcom/google/android/calendar/experiments/Experiment;->isActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncThrottle;->sCalendarSyncIntervalsMs:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-wide/32 v2, 0x7b98a00

    .line 102
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 101
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static shouldBeSyncedBasedOnFrequency(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/syncadapters/calendar/FeedState;)Z
    .locals 12

    .prologue
    .line 60
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncThrottle;->initialize(Landroid/content/Context;)V

    .line 62
    if-nez p2, :cond_1

    .line 63
    const/4 v0, 0x1

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 67
    invoke-virtual {p2}, Lcom/google/android/syncadapters/calendar/FeedState;->getLastSyncDate()J

    move-result-wide v4

    .line 68
    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 69
    const-string v0, "CalendarSyncThrottle"

    const-string v1, "Last sync is in the future for feed %s: updated at %s (current is %s)."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "CalendarSyncThrottle"

    .line 70
    invoke-static {v8, p1}, Lcom/android/calendarcommon2/LogUtils;->sanitizeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    const/4 v4, 0x2

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 71
    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v4

    .line 69
    invoke-static {v0, v1, v6}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 72
    const/4 v0, 0x1

    goto :goto_0

    .line 75
    :cond_2
    sub-long v6, v2, v4

    .line 77
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/CalendarType;->calculateType(Ljava/lang/String;)I

    move-result v0

    .line 78
    sget-object v1, Lcom/google/android/syncadapters/calendar/CalendarSyncThrottle;->sCalendarSyncIntervalsMs:Landroid/util/SparseArray;

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v0, v8}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 80
    cmp-long v0, v6, v8

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    .line 81
    :goto_1
    if-nez v0, :cond_0

    .line 82
    const-string v1, "CalendarSyncThrottle"

    const-string v6, "Suggested to skip sync for feed %s: updated at %s (current is %s), update interval is %s hour(s)."

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v7, v10

    const/4 v10, 0x1

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 83
    invoke-virtual {v11}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v10

    const/4 v4, 0x2

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 84
    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v4

    const/4 v2, 0x3

    const-wide/32 v4, 0x36ee80

    div-long v4, v8, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v2

    .line 82
    invoke-static {v1, v6, v7}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 80
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static shouldBeSyncedBasedOnVisibility(Ljava/lang/String;ZZZ)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 42
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move v0, v2

    .line 43
    :goto_0
    if-nez v0, :cond_1

    .line 44
    const-string v3, "CalendarSyncThrottle"

    const-string v4, "Suggested to skip sync for feed %s: local manual sync for invisible calendar."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {v3, v4, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 48
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 42
    goto :goto_0
.end method
