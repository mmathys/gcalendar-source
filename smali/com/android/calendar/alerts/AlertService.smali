.class public Lcom/android/calendar/alerts/AlertService;
.super Landroid/app/Service;
.source "AlertService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/alerts/AlertService$ServiceHandler;,
        Lcom/android/calendar/alerts/AlertService$NotificationPrefs;,
        Lcom/android/calendar/alerts/AlertService$NotificationInfo;,
        Lcom/android/calendar/alerts/AlertService$NotificationMgrWrapper;,
        Lcom/android/calendar/alerts/AlertService$NotificationWrapper;
    }
.end annotation


# static fields
.field private static final ACTIVE_ALERTS_SELECTION_ARGS:[Ljava/lang/String;

.field static final ALERT_PROJECTION:[Ljava/lang/String;

.field private static sReceivedProviderReminderBroadcast:Ljava/lang/Boolean;


# instance fields
.field private volatile mServiceHandler:Lcom/android/calendar/alerts/AlertService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "event_id"

    aput-object v1, v0, v4

    const-string v1, "state"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "alarmTime"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "minutes"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "end"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/alerts/AlertService;->ALERT_PROJECTION:[Ljava/lang/String;

    .line 108
    new-array v0, v5, [Ljava/lang/String;

    .line 109
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 110
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/alerts/AlertService;->ACTIVE_ALERTS_SELECTION_ARGS:[Ljava/lang/String;

    .line 138
    const/4 v0, 0x0

    sput-object v0, Lcom/android/calendar/alerts/AlertService;->sReceivedProviderReminderBroadcast:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static addNotificationOptions(Lcom/android/calendar/alerts/AlertService$NotificationWrapper;ZLjava/lang/String;ZLjava/lang/String;Z)V
    .locals 2

    .prologue
    .line 814
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->mNotification:Landroid/app/Notification;

    .line 815
    if-eqz p5, :cond_0

    .line 816
    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 817
    iget v0, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 821
    :cond_0
    if-nez p1, :cond_3

    .line 823
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 824
    iput-object p2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 831
    :cond_1
    if-eqz p3, :cond_2

    .line 832
    iget v0, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 837
    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 838
    :goto_0
    iput-object v0, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 840
    :cond_3
    return-void

    .line 838
    :cond_4
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method static dismissOldAlerts(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 294
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 296
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 297
    const-string v4, "state"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    sget-object v4, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "end<? AND state=?"

    new-array v6, v6, [Ljava/lang/String;

    .line 299
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 298
    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 301
    return-void
.end method

.method private doTimeChanged()V
    .locals 2

    .prologue
    .line 881
    invoke-virtual {p0}, Lcom/android/calendar/alerts/AlertService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 884
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertUtils;->createAlarmManager(Landroid/content/Context;)Lcom/android/calendar/alerts/AlarmManagerInterface;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/android/calendar/alerts/AlertService;->rescheduleMissedAlarms(Landroid/content/ContentResolver;Landroid/content/Context;Lcom/android/calendar/alerts/AlarmManagerInterface;)V

    .line 885
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    .line 886
    return-void
.end method

.method public static generateAlerts(Landroid/content/Context;Lcom/android/calendar/alerts/NotificationMgr;Lcom/android/calendar/alerts/AlarmManagerInterface;Landroid/content/SharedPreferences;Landroid/database/Cursor;JI)Z
    .locals 23

    .prologue
    .line 354
    const-string v4, "AlertService"

    const-string v5, "alertCursor count:%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 357
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 358
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v4, p4

    move-object/from16 v5, p0

    move-wide/from16 v6, p5

    .line 359
    invoke-static/range {v4 .. v9}, Lcom/android/calendar/alerts/AlertService;->processQuery(Landroid/database/Cursor;Landroid/content/Context;JLjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v4

    .line 362
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v5, v6

    if-nez v5, :cond_0

    .line 363
    invoke-virtual/range {p1 .. p1}, Lcom/android/calendar/alerts/NotificationMgr;->cancelAll()V

    .line 364
    const/4 v4, 0x1

    .line 439
    :goto_0
    return v4

    .line 367
    :cond_0
    const-wide v6, 0x7fffffffffffffffL

    .line 368
    const/4 v5, 0x1

    .line 369
    new-instance v20, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v4}, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Z)V

    .line 374
    move/from16 v0, p7

    invoke-static {v8, v9, v0}, Lcom/android/calendar/alerts/AlertService;->redistributeBuckets(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 376
    new-instance v21, Lcom/android/calendar/time/Time;

    invoke-direct/range {v21 .. v21}, Lcom/android/calendar/time/Time;-><init>()V

    .line 381
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide/from16 v18, v6

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/alerts/AlertService$NotificationInfo;

    .line 382
    iget-wide v11, v4, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    iget-boolean v13, v4, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->endTimeUnspecified:Z

    iget-wide v14, v4, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->endMillis:J

    iget-boolean v0, v4, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->allDay:Z

    move/from16 v16, v0

    iget-object v0, v4, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->location:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v10, p0

    invoke-static/range {v10 .. v17}, Lcom/android/calendar/alerts/AlertUtils;->formatTimeLocation(Landroid/content/Context;JZJZLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 384
    const/4 v13, 0x1

    add-int/lit8 v6, v5, 0x1

    move-object v10, v4

    move-object/from16 v12, p0

    move-object/from16 v14, v20

    move-object/from16 v15, p1

    move/from16 v16, v5

    invoke-static/range {v10 .. v16}, Lcom/android/calendar/alerts/AlertService;->postNotification(Lcom/android/calendar/alerts/AlertService$NotificationInfo;Ljava/lang/String;Landroid/content/Context;ZLcom/android/calendar/alerts/AlertService$NotificationPrefs;Lcom/android/calendar/alerts/NotificationMgr;I)V

    .line 389
    move-wide/from16 v0, p5

    move-object/from16 v2, v21

    invoke-static {v4, v0, v1, v2}, Lcom/android/calendar/alerts/AlertService;->getNextRefreshTime(Lcom/android/calendar/alerts/AlertService$NotificationInfo;JLcom/android/calendar/time/Time;)J

    move-result-wide v4

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-wide/from16 v18, v4

    move v5, v6

    .line 391
    goto :goto_2

    .line 369
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 398
    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move v6, v5

    move v5, v4

    :goto_3
    if-ltz v5, :cond_3

    .line 399
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/alerts/AlertService$NotificationInfo;

    .line 402
    iget-wide v11, v4, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    iget-boolean v13, v4, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->endTimeUnspecified:Z

    iget-wide v14, v4, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->endMillis:J

    iget-boolean v0, v4, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->allDay:Z

    move/from16 v16, v0

    iget-object v0, v4, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->location:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v10, p0

    invoke-static/range {v10 .. v17}, Lcom/android/calendar/alerts/AlertUtils;->formatTimeLocation(Landroid/content/Context;JZJZLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 404
    const/4 v13, 0x0

    add-int/lit8 v7, v6, 0x1

    move-object v10, v4

    move-object/from16 v12, p0

    move-object/from16 v14, v20

    move-object/from16 v15, p1

    move/from16 v16, v6

    invoke-static/range {v10 .. v16}, Lcom/android/calendar/alerts/AlertService;->postNotification(Lcom/android/calendar/alerts/AlertService$NotificationInfo;Ljava/lang/String;Landroid/content/Context;ZLcom/android/calendar/alerts/AlertService$NotificationPrefs;Lcom/android/calendar/alerts/NotificationMgr;I)V

    .line 408
    move-wide/from16 v0, p5

    move-object/from16 v2, v21

    invoke-static {v4, v0, v1, v2}, Lcom/android/calendar/alerts/AlertService;->getNextRefreshTime(Lcom/android/calendar/alerts/AlertService$NotificationInfo;JLcom/android/calendar/time/Time;)J

    move-result-wide v10

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v18

    .line 398
    add-int/lit8 v4, v5, -0x1

    move v5, v4

    move v6, v7

    goto :goto_3

    .line 413
    :cond_3
    move/from16 v0, p7

    if-gt v6, v0, :cond_4

    .line 414
    move-object/from16 v0, p1

    move/from16 v1, p7

    invoke-virtual {v0, v6, v1}, Lcom/android/calendar/alerts/NotificationMgr;->cancelAllBetween(II)V

    .line 415
    const-string v4, "AlertService"

    const-string v5, "Canceling leftover notification IDs %d-%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 416
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v8

    const/4 v6, 0x1

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    .line 415
    invoke-static {v4, v5, v7}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 421
    :cond_4
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v18, v4

    if-gez v4, :cond_6

    cmp-long v4, v18, p5

    if-lez v4, :cond_6

    .line 423
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/alerts/AlertUtils;->scheduleNextNotificationRefresh(Landroid/content/Context;Lcom/android/calendar/alerts/AlarmManagerInterface;J)V

    .line 424
    const-string v4, "AlertService"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 425
    sub-long v4, v18, p5

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    .line 426
    new-instance v6, Lcom/android/calendar/time/Time;

    invoke-direct {v6}, Lcom/android/calendar/time/Time;-><init>()V

    .line 427
    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Lcom/android/calendar/time/Time;->set(J)V

    .line 428
    const-string v7, "AlertService"

    const-string v8, "Scheduling next notification refresh in %d min at: %d:%02d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 429
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v9, v10

    const/4 v4, 0x1

    iget v5, v6, Lcom/android/calendar/time/Time;->hour:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v4

    const/4 v4, 0x2

    iget v5, v6, Lcom/android/calendar/time/Time;->minute:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v4

    .line 428
    invoke-static {v7, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 437
    :cond_5
    :goto_4
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/alerts/AlertUtils;->flushOldAlertsFromInternalStorage(Landroid/content/Context;)V

    .line 439
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 431
    :cond_6
    cmp-long v4, v18, p5

    if-gez v4, :cond_5

    .line 432
    const-string v4, "AlertService"

    const-string v5, "Illegal state: next notification refresh time found to be in the past."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_4
.end method

.method private static getNextRefreshTime(Lcom/android/calendar/alerts/AlertService$NotificationInfo;JLcom/android/calendar/time/Time;)J
    .locals 5

    .prologue
    .line 512
    iget-wide v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->endMillis:J

    .line 513
    iget-boolean v2, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->allDay:Z

    if-eqz v2, :cond_1

    .line 514
    iget-wide v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->endMillis:J

    .line 515
    invoke-static {}, Lcom/android/calendar/time/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    .line 514
    invoke-static {p3, v0, v1, v2}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Lcom/android/calendar/time/Time;JLjava/lang/String;)J

    move-result-wide v0

    .line 521
    :cond_0
    :goto_0
    cmp-long v2, v0, p1

    if-lez v2, :cond_2

    .line 524
    :goto_1
    return-wide v0

    .line 516
    :cond_1
    iget-boolean v2, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->endTimeUnspecified:Z

    if-eqz v2, :cond_0

    .line 517
    iget-wide v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    goto :goto_0

    .line 524
    :cond_2
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_1
.end method

.method private static getTickerText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 778
    .line 779
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 782
    :cond_0
    return-object p0
.end method

.method private static logEventIdsBumped(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/alerts/AlertService$NotificationInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/alerts/AlertService$NotificationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    if-eqz p0, :cond_0

    .line 489
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;

    .line 490
    iget-wide v4, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 491
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 494
    :cond_0
    if-eqz p1, :cond_1

    .line 495
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;

    .line 496
    iget-wide v4, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 497
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 500
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x2c

    if-ne v0, v2, :cond_2

    .line 501
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 503
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 504
    const-string v0, "AlertService"

    const-string v2, "Reached max postings, bumping event IDs {%s} to digest."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 506
    :cond_3
    return-void
.end method

.method private static postNotification(Lcom/android/calendar/alerts/AlertService$NotificationInfo;Ljava/lang/String;Landroid/content/Context;ZLcom/android/calendar/alerts/AlertService$NotificationPrefs;Lcom/android/calendar/alerts/NotificationMgr;I)V
    .locals 17

    .prologue
    .line 737
    if-eqz p3, :cond_1

    .line 738
    const/4 v15, 0x2

    .line 740
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v16

    .line 741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventName:Ljava/lang/String;

    sget v3, Lcom/android/calendar/R$string;->no_title_label:I

    .line 742
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 741
    move/from16 v0, v16

    invoke-static {v2, v0, v3}, Lcom/android/calendar/Utils;->forceTextAlignmentOrUseDefault(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 743
    new-instance v3, Lcom/android/calendar/alerts/AlertBuilder;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Lcom/android/calendar/alerts/AlertBuilder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->endMillis:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->alertMillis:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventId:J

    move-object/from16 v5, p1

    move/from16 v14, p6

    invoke-virtual/range {v3 .. v15}, Lcom/android/calendar/alerts/AlertBuilder;->makeExpandingNotification(Ljava/lang/String;Ljava/lang/String;JJJJII)Lcom/android/calendar/alerts/AlertService$NotificationWrapper;

    move-result-object v2

    .line 747
    const/4 v3, 0x1

    .line 748
    const-string v6, ""

    .line 749
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->newAlert:Z

    if-eqz v4, :cond_0

    .line 750
    move-object/from16 v0, p4

    iget-boolean v3, v0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->quietUpdate:Z

    .line 754
    invoke-virtual/range {p4 .. p4}, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->getRingtoneAndSilence()Ljava/lang/String;

    move-result-object v6

    .line 756
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->location:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/calendar/alerts/AlertService;->getTickerText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 757
    const-string v5, ""

    move/from16 v0, v16

    invoke-static {v4, v0, v5}, Lcom/android/calendar/Utils;->forceTextAlignmentOrUseDefault(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 760
    invoke-virtual/range {p4 .. p4}, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->getDefaultVibrate()Z

    move-result v5

    const/4 v7, 0x1

    .line 759
    invoke-static/range {v2 .. v7}, Lcom/android/calendar/alerts/AlertService;->addNotificationOptions(Lcom/android/calendar/alerts/AlertService$NotificationWrapper;ZLjava/lang/String;ZLjava/lang/String;Z)V

    .line 764
    move-object/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/alerts/NotificationMgr;->notify(ILcom/android/calendar/alerts/AlertService$NotificationWrapper;)V

    .line 766
    invoke-static/range {p2 .. p2}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v2

    .line 767
    sget v3, Lcom/android/calendar/R$string;->analytics_category_notification:I

    .line 768
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->analytics_action_notification_create:I

    .line 769
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 767
    move-object/from16 v0, p2

    invoke-interface {v2, v0, v3, v4}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string v3, "AlertService"

    const-string v4, "Posting individual alarm notification, eventId:%d, notificationId:%d, %s%s"

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventId:J

    .line 773
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v2

    const/4 v2, 0x1

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v2

    const/4 v7, 0x2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "quiet"

    :goto_1
    aput-object v2, v5, v7

    const/4 v6, 0x3

    if-eqz p3, :cond_3

    .line 774
    const-string v2, ", high-priority"

    :goto_2
    aput-object v2, v5, v6

    .line 771
    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 775
    return-void

    .line 738
    :cond_1
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 773
    :cond_2
    const-string v2, "LOUD"

    goto :goto_1

    .line 774
    :cond_3
    const-string v2, ""

    goto :goto_2
.end method

.method static processQuery(Landroid/database/Cursor;Landroid/content/Context;JLjava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/alerts/AlertService$NotificationInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/alerts/AlertService$NotificationInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 541
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    .line 544
    new-instance v33, Ljava/util/HashMap;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashMap;-><init>()V

    .line 545
    const/16 v26, 0x0

    move/from16 v15, v26

    .line 547
    :goto_0
    :try_start_0
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 548
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 549
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 550
    const/16 v4, 0x8

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 551
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 553
    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 554
    const/4 v4, 0x5

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 555
    const/4 v4, 0x2

    if-ne v5, v4, :cond_4

    const/4 v4, 0x1

    move/from16 v26, v4

    .line 556
    :goto_1
    if-eqz v5, :cond_5

    const/4 v4, 0x3

    if-eq v5, v4, :cond_5

    const/4 v4, 0x1

    move/from16 v20, v4

    .line 558
    :goto_2
    const/16 v4, 0x9

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 559
    const/16 v4, 0xa

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 560
    sget-object v4, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    .line 561
    move-wide/from16 v0, v22

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v34

    .line 562
    const/4 v4, 0x7

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 563
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 564
    const/4 v4, 0x6

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_6

    const/16 v24, 0x1

    .line 566
    :goto_3
    const-string v4, "endTimeUnspecified"

    .line 567
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7, v4}, Lcom/android/calendar/alerts/AlertUtils;->getExtendedProperty(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 569
    if-eqz v4, :cond_7

    const-string v5, "1"

    .line 570
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v17, 0x1

    .line 574
    :goto_4
    const/4 v4, 0x0

    .line 575
    sget-boolean v5, Lcom/android/calendar/alerts/AlertUtils;->BYPASS_DB:Z

    if-eqz v5, :cond_1e

    sub-long v28, p2, v10

    const-wide/32 v30, 0xea60

    div-long v28, v28, v30

    const-wide/16 v30, 0x1

    cmp-long v5, v28, v30

    if-gez v5, :cond_1e

    move-object/from16 v5, p1

    .line 580
    invoke-static/range {v5 .. v11}, Lcom/android/calendar/alerts/AlertUtils;->hasAlertFiredInSharedPrefs(Landroid/content/Context;JJJ)Z

    move-result v5

    .line 582
    if-nez v5, :cond_1e

    .line 583
    const/4 v4, 0x1

    move/from16 v16, v4

    .line 587
    :goto_5
    const-string v4, "AlertService"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 588
    const-string v5, "AlertService"

    const-string v25, "alertCursor result: alarmTime:%d alertId:%d eventId:%d state: %d minutes:%d declined:%b responded:%b beginTime:%d endTime:%d allDay:%b alarmTime:%d %s"

    const/16 v4, 0xc

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/4 v4, 0x0

    .line 591
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    aput-object v28, v27, v4

    const/4 v4, 0x1

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v27, v4

    const/4 v4, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v27, v4

    const/4 v4, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v27, v4

    const/4 v4, 0x4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v27, v4

    const/4 v4, 0x5

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    aput-object v21, v27, v4

    const/4 v4, 0x6

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    aput-object v20, v27, v4

    const/4 v4, 0x7

    .line 592
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v27, v4

    const/16 v4, 0x8

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v27, v4

    const/16 v4, 0x9

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    aput-object v20, v27, v4

    const/16 v4, 0xa

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v27, v4

    const/16 v20, 0xb

    sget-boolean v4, Lcom/android/calendar/alerts/AlertUtils;->BYPASS_DB:Z

    if-eqz v4, :cond_8

    .line 593
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v21, 0x18

    move/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v21, " newAlertOverride: "

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_6
    aput-object v4, v27, v20

    .line 588
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v5, v0, v1}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 596
    :cond_0
    new-instance v35, Landroid/content/ContentValues;

    invoke-direct/range {v35 .. v35}, Landroid/content/ContentValues;-><init>()V

    .line 597
    const/4 v4, -0x1

    .line 598
    const/16 v25, 0x0

    .line 610
    const/4 v5, 0x0

    .line 611
    if-eqz v24, :cond_9

    .line 612
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    .line 613
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v8, v9, v5}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Lcom/android/calendar/time/Time;JLjava/lang/String;)J

    move-result-wide v22

    .line 615
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2, v5}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Lcom/android/calendar/time/Time;JLjava/lang/String;)J

    move-result-wide v20

    move-object/from16 v27, v5

    move-wide/from16 v28, v20

    move-wide/from16 v30, v22

    .line 621
    :goto_7
    if-nez v26, :cond_a

    const/4 v5, 0x1

    .line 622
    :goto_8
    sub-long v20, p2, v18

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-ltz v20, :cond_b

    .line 623
    const/4 v4, 0x2

    move/from16 v26, v15

    .line 643
    :goto_9
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1b

    .line 644
    const-string v5, "state"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 647
    sget-boolean v5, Lcom/android/calendar/alerts/AlertUtils;->BYPASS_DB:Z

    if-eqz v5, :cond_1

    move-object/from16 v5, p1

    .line 648
    invoke-static/range {v5 .. v11}, Lcom/android/calendar/alerts/AlertUtils;->setAlertFiredInSharedPrefs(Landroid/content/Context;JJJ)V

    .line 653
    :cond_1
    :goto_a
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 656
    const-string v5, "notifyTime"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 660
    :cond_2
    invoke-virtual/range {v35 .. v35}, Landroid/content/ContentValues;->size()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2, v5, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 662
    :cond_3
    const/4 v5, 0x1

    if-eq v4, v5, :cond_f

    move/from16 v15, v26

    .line 663
    goto/16 :goto_0

    .line 555
    :cond_4
    const/4 v4, 0x0

    move/from16 v26, v4

    goto/16 :goto_1

    .line 556
    :cond_5
    const/4 v4, 0x0

    move/from16 v20, v4

    goto/16 :goto_2

    .line 564
    :cond_6
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 570
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 593
    :cond_8
    const-string v4, ""

    goto/16 :goto_6

    .line 616
    :cond_9
    if-eqz v17, :cond_1d

    .line 617
    const-wide/32 v20, 0x36ee80

    add-long v20, v20, v8

    move-object/from16 v27, v5

    move-wide/from16 v28, v20

    move-wide/from16 v30, v8

    goto :goto_7

    .line 621
    :cond_a
    const/4 v5, 0x0

    goto :goto_8

    .line 624
    :cond_b
    if-eqz v24, :cond_c

    sub-long v20, p2, v30

    const-wide/32 v22, 0x5265c00

    cmp-long v20, v20, v22

    if-ltz v20, :cond_c

    .line 626
    const/4 v4, 0x2

    move/from16 v26, v15

    goto :goto_9

    .line 627
    :cond_c
    if-eqz v5, :cond_e

    .line 628
    if-eqz v12, :cond_d

    if-eqz v16, :cond_1c

    .line 629
    :cond_d
    const/4 v4, 0x1

    .line 630
    add-int/lit8 v5, v15, 0x1

    .line 631
    const/16 v25, 0x1

    .line 636
    const-string v15, "receivedTime"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move/from16 v26, v5

    goto/16 :goto_9

    .line 639
    :cond_e
    const/4 v4, 0x2

    move/from16 v26, v15

    goto/16 :goto_9

    .line 667
    :cond_f
    new-instance v12, Lcom/android/calendar/alerts/AlertService$NotificationInfo;

    move-wide v15, v8

    move-wide/from16 v20, v10

    move-wide/from16 v22, v6

    invoke-direct/range {v12 .. v25}, Lcom/android/calendar/alerts/AlertService$NotificationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JZJJJZZ)V

    .line 671
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 672
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/alerts/AlertService$NotificationInfo;

    .line 673
    iget-wide v8, v4, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    .line 674
    if-eqz v24, :cond_10

    .line 675
    const/4 v5, 0x0

    iget-wide v8, v4, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    move-object/from16 v0, v27

    invoke-static {v5, v8, v9, v0}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Lcom/android/calendar/time/Time;JLjava/lang/String;)J

    move-result-wide v8

    .line 681
    :cond_10
    sub-long v8, v8, p2

    .line 682
    sub-long v10, v30, p2

    .line 684
    const-wide/16 v14, 0x0

    cmp-long v5, v10, v14

    if-gez v5, :cond_14

    const-wide/16 v14, 0x0

    cmp-long v5, v8, v14

    if-lez v5, :cond_14

    .line 686
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0xdbba0

    cmp-long v5, v8, v10

    if-gez v5, :cond_13

    const/4 v5, 0x1

    .line 692
    :goto_b
    if-eqz v5, :cond_1a

    .line 701
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 702
    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 703
    const-string v5, "AlertService"

    const-string v8, "Dropping alert for recurring event ID:%d, startTime:%d in favor of startTime:%d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-wide v14, v4, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventId:J

    .line 705
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-wide v14, v4, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v9, v10

    const/4 v4, 0x2

    iget-wide v10, v12, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v4

    .line 703
    invoke-static {v5, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 713
    :cond_11
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    cmp-long v4, v28, p2

    if-lez v4, :cond_16

    .line 717
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    :goto_c
    move/from16 v15, v26

    .line 723
    goto/16 :goto_0

    .line 686
    :cond_13
    const/4 v5, 0x0

    goto :goto_b

    .line 689
    :cond_14
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    cmp-long v5, v10, v8

    if-gez v5, :cond_15

    const/4 v5, 0x1

    goto :goto_b

    :cond_15
    const/4 v5, 0x0

    goto :goto_b

    .line 718
    :cond_16
    if-eqz v24, :cond_12

    if-eqz v27, :cond_12

    invoke-static/range {v30 .. v31}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 720
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_c

    .line 727
    :catchall_0
    move-exception v4

    if-eqz p0, :cond_17

    .line 728
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    :cond_17
    throw v4

    .line 725
    :cond_18
    :try_start_1
    invoke-virtual/range {v33 .. v33}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/calendar/alerts/GlobalDismissManager;->processEventIds(Landroid/content/Context;Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 727
    if-eqz p0, :cond_19

    .line 728
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    .line 731
    :cond_19
    return v15

    :cond_1a
    move/from16 v15, v26

    goto/16 :goto_0

    :cond_1b
    move v4, v12

    goto/16 :goto_a

    :cond_1c
    move/from16 v26, v15

    goto/16 :goto_9

    :cond_1d
    move-object/from16 v27, v5

    move-wide/from16 v28, v18

    move-wide/from16 v30, v8

    goto/16 :goto_7

    :cond_1e
    move/from16 v16, v4

    goto/16 :goto_5
.end method

.method static redistributeBuckets(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/alerts/AlertService$NotificationInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/alerts/AlertService$NotificationInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 454
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 456
    const/4 v0, 0x0

    .line 457
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, p2

    .line 456
    invoke-virtual {p0, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 459
    invoke-static {p1, v0}, Lcom/android/calendar/alerts/AlertService;->logEventIdsBumped(Ljava/util/List;Ljava/util/List;)V

    .line 462
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 464
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 468
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-le v0, p2, :cond_1

    .line 469
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v0, p2, v0

    .line 475
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 474
    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 477
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/alerts/AlertService;->logEventIdsBumped(Ljava/util/List;Ljava/util/List;)V

    .line 481
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 483
    :cond_1
    return-void
.end method

.method private static rescheduleMissedAlarms(Landroid/content/ContentResolver;Landroid/content/Context;Lcom/android/calendar/alerts/AlarmManagerInterface;)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 917
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 918
    const-wide/32 v0, 0x5265c00

    sub-long v8, v6, v0

    .line 919
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "alarmTime"

    aput-object v0, v2, v10

    .line 925
    sget-object v1, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "state=0 AND alarmTime<? AND alarmTime>? AND end>=?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    .line 927
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    const/4 v0, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "alarmTime ASC"

    move-object v0, p0

    .line 925
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 929
    if-nez v4, :cond_0

    .line 949
    :goto_0
    return-void

    .line 933
    :cond_0
    const-string v0, "AlertService"

    const-string v1, "missed alarms found: %d"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 936
    const-wide/16 v2, -0x1

    .line 938
    :goto_1
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 939
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 940
    cmp-long v5, v2, v0

    if-eqz v5, :cond_2

    .line 941
    const-string v2, "AlertService"

    const-string v3, "rescheduling missed alarm. alarmTime: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v5}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 942
    invoke-static {p1, p2, v0, v1}, Lcom/android/calendar/alerts/AlertUtils;->scheduleAlarm(Landroid/content/Context;Lcom/android/calendar/alerts/AlarmManagerInterface;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    move-wide v2, v0

    .line 945
    goto :goto_1

    .line 947
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move-wide v0, v2

    goto :goto_2
.end method

.method static updateAlertNotification(Landroid/content/Context;)Z
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 305
    new-instance v10, Lcom/android/calendar/alerts/AlertService$NotificationMgrWrapper;

    const-string v1, "notification"

    .line 306
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-direct {v10, v1}, Lcom/android/calendar/alerts/AlertService$NotificationMgrWrapper;-><init>(Landroid/app/NotificationManager;)V

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 308
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 310
    const-string v1, "AlertService"

    const-string v3, "Beginning updateAlertNotification"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 312
    const-string v1, "preferences_alerts"

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    const-string v0, "AlertService"

    const-string v1, "alert preference is OFF"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 317
    invoke-virtual {v10}, Lcom/android/calendar/alerts/NotificationMgr;->cancelAll()V

    move v0, v2

    .line 346
    :goto_0
    return v0

    .line 321
    :cond_0
    invoke-static {p0}, Lcom/android/calendar/Utils;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v8

    .line 322
    goto :goto_0

    .line 326
    :cond_1
    invoke-static {p0}, Lcom/android/calendar/alerts/GlobalDismissManager;->syncReceiverDismissCache(Landroid/content/Context;)V

    .line 327
    const/4 v9, 0x0

    .line 329
    :try_start_0
    sget-object v1, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/alerts/AlertService;->ALERT_PROJECTION:[Ljava/lang/String;

    const-string v3, "(state=? OR state=?) AND alarmTime<="

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/alerts/AlertService;->ACTIVE_ALERTS_SELECTION_ARGS:[Ljava/lang/String;

    const-string v5, "begin DESC, end DESC, alarmTime DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 336
    :goto_1
    if-eqz v5, :cond_2

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 337
    :cond_2
    if-eqz v5, :cond_3

    .line 338
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 341
    :cond_3
    const-string v0, "AlertService"

    const-string v1, "No fired or scheduled alerts"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 342
    invoke-virtual {v10}, Lcom/android/calendar/alerts/NotificationMgr;->cancelAll()V

    move v0, v8

    .line 343
    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    const-string v0, "AlertService"

    const-string v1, "Error occured when fetching alerts from cursor."

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v5, v9

    goto :goto_1

    .line 346
    :cond_4
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertUtils;->createAlarmManager(Landroid/content/Context;)Lcom/android/calendar/alerts/AlarmManagerInterface;

    move-result-object v3

    const/16 v8, 0x14

    move-object v1, p0

    move-object v2, v10

    move-object v4, v11

    invoke-static/range {v1 .. v8}, Lcom/android/calendar/alerts/AlertService;->generateAlerts(Landroid/content/Context;Lcom/android/calendar/alerts/NotificationMgr;Lcom/android/calendar/alerts/AlarmManagerInterface;Landroid/content/SharedPreferences;Landroid/database/Cursor;JI)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1009
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 977
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AlertService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 979
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 981
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/alerts/AlertService;->mServiceLooper:Landroid/os/Looper;

    .line 982
    new-instance v0, Lcom/android/calendar/alerts/AlertService$ServiceHandler;

    iget-object v1, p0, Lcom/android/calendar/alerts/AlertService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/alerts/AlertService$ServiceHandler;-><init>(Lcom/android/calendar/alerts/AlertService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/calendar/alerts/AlertService;->mServiceHandler:Lcom/android/calendar/alerts/AlertService$ServiceHandler;

    .line 985
    invoke-virtual {p0}, Lcom/android/calendar/alerts/AlertService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/alerts/AlertUtils;->flushOldAlertsFromInternalStorage(Landroid/content/Context;)V

    .line 986
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1004
    invoke-static {}, Lcom/android/calendar/alerts/AlertReceiver;->onServiceDestroy()V

    .line 1005
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 990
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService;->mServiceHandler:Lcom/android/calendar/alerts/AlertService$ServiceHandler;

    invoke-virtual {v0}, Lcom/android/calendar/alerts/AlertService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 991
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 995
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 996
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertService;->mServiceHandler:Lcom/android/calendar/alerts/AlertService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/calendar/alerts/AlertService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 997
    const/4 v0, 0x3

    return v0
.end method

.method processMessage(Landroid/os/Message;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 198
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 199
    const-string v0, "AlertService"

    const-string v1, "Empty or unsupported message received, ignoring."

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 204
    if-nez v0, :cond_2

    .line 205
    const-string v0, "AlertService"

    const-string v1, "Empty message received, ignoring."

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 209
    :cond_2
    invoke-static {p0}, Lcom/android/calendar/Utils;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 210
    const-string v0, "AlertService"

    const-string v1, "Calendar permissions are not granted.  Cannot process message."

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 216
    :cond_3
    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    const-string v2, "AlertService"

    const-string v3, "%d Action = %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "alarmTime"

    .line 218
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v8

    aput-object v1, v4, v9

    .line 217
    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 223
    const-string v0, "android.intent.action.EVENT_REMINDER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 225
    if-eqz v0, :cond_5

    .line 226
    sget-object v2, Lcom/android/calendar/alerts/AlertService;->sReceivedProviderReminderBroadcast:Ljava/lang/Boolean;

    if-nez v2, :cond_4

    .line 227
    const-string v2, "preference_received_provider_reminder_broadcast"

    invoke-static {p0, v2, v8}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/android/calendar/alerts/AlertService;->sReceivedProviderReminderBroadcast:Ljava/lang/Boolean;

    .line 231
    :cond_4
    sget-object v2, Lcom/android/calendar/alerts/AlertService;->sReceivedProviderReminderBroadcast:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    .line 232
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/android/calendar/alerts/AlertService;->sReceivedProviderReminderBroadcast:Ljava/lang/Boolean;

    .line 233
    const-string v2, "AlertService"

    const-string v3, "Setting key %s to: true"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "preference_received_provider_reminder_broadcast"

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 234
    const-string v2, "preference_received_provider_reminder_broadcast"

    invoke-static {p0, v2, v9}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 238
    :cond_5
    if-nez v0, :cond_6

    const-string v0, "android.intent.action.PROVIDER_CHANGED"

    .line 239
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "android.intent.action.EVENT_REMINDER"

    .line 240
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "com.android.calendar.EVENT_REMINDER_APP"

    .line 241
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "android.intent.action.MY_PACKAGE_REPLACED"

    .line 242
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 243
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 248
    :cond_6
    const-string v0, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 250
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_7
    :goto_1
    invoke-static {p0}, Lcom/android/calendar/alerts/GlobalDismissManager;->syncSenderDismissCache(Landroid/content/Context;)V

    .line 263
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    .line 285
    :goto_2
    sget-object v0, Lcom/android/calendar/alerts/AlertService;->sReceivedProviderReminderBroadcast:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/calendar/alerts/AlertService;->sReceivedProviderReminderBroadcast:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    :cond_8
    const-string v0, "AlertService"

    const-string v1, "Scheduling next alarm with AlarmScheduler. sEventReminderReceived: %s"

    new-array v2, v9, [Ljava/lang/Object;

    sget-object v3, Lcom/android/calendar/alerts/AlertService;->sReceivedProviderReminderBroadcast:Ljava/lang/Boolean;

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 289
    invoke-static {p0}, Lcom/android/calendar/alerts/AlarmScheduler;->scheduleNextAlarm(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 264
    :cond_9
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 273
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 274
    const-class v1, Lcom/android/calendar/alerts/InitAlarmsService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 275
    invoke-virtual {p0, v0}, Lcom/android/calendar/alerts/AlertService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    .line 276
    :cond_a
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 277
    invoke-direct {p0}, Lcom/android/calendar/alerts/AlertService;->doTimeChanged()V

    goto :goto_2

    .line 278
    :cond_b
    const-string v0, "removeOldReminders"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 279
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertService;->dismissOldAlerts(Landroid/content/Context;)V

    goto :goto_2

    .line 281
    :cond_c
    const-string v0, "AlertService"

    const-string v2, "Invalid action: %s"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v1, v3, v8

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 251
    :catch_0
    move-exception v0

    goto :goto_1
.end method
