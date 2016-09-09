.class public Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;
.super Ljava/lang/Object;
.source "ConsistencyChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$EventMapBuilder;,
        Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;
    }
.end annotation


# static fields
.field private static final JSON_FACTORY:Lcom/google/api/client/json/JsonFactory;

.field private static final NO_CUSTOM_DIMENSIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NO_LABEL:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

.field private final mCalendarId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mFeedUpdatedTime:J

.field private final mManualCheck:Z

.field private final mSyncState:Lcom/google/android/syncadapters/calendar/CalendarSyncState;

.field private mTimeMaxMs:J

.field private mTimeMinMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    const-class v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    .line 161
    sput-object v1, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->NO_LABEL:Ljava/lang/String;

    .line 162
    sput-object v1, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->NO_CUSTOM_DIMENSIONS:Ljava/util/Map;

    .line 188
    new-instance v0, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;

    invoke-direct {v0}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->JSON_FACTORY:Lcom/google/api/client/json/JsonFactory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/syncadapters/calendar/CalendarSyncState;Z)V
    .locals 2

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NotImplementedYet: ConsistencyChecker only supports calendars with ids equal to the account name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    invoke-static {}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->getInstance()Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    .line 226
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mContext:Landroid/content/Context;

    .line 227
    iput-object p2, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mAccount:Landroid/accounts/Account;

    .line 228
    iput-object p3, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mCalendarId:Ljava/lang/String;

    .line 229
    iput-object p4, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mSyncState:Lcom/google/android/syncadapters/calendar/CalendarSyncState;

    .line 230
    iput-boolean p5, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mManualCheck:Z

    .line 231
    return-void
.end method

.method static synthetic access$000(Lcom/google/api/services/calendar/model/EventDateTime;)J
    .locals 2

    .prologue
    .line 67
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->getUtcMillis(Lcom/google/api/services/calendar/model/EventDateTime;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;Ljava/lang/String;JJ)V
    .locals 0

    .prologue
    .line 67
    invoke-direct/range {p0 .. p5}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->registerAttemptAsFailed(Ljava/lang/String;JJ)V

    return-void
.end method

.method private buildBucket(ZLjava/lang/String;Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;)Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;
    .locals 2

    .prologue
    .line 663
    new-instance v1, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;

    invoke-direct {v1}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;-><init>()V

    .line 664
    if-eqz p1, :cond_0

    const-string v0, "ALLDAY"

    :goto_0
    iput-object v0, v1, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;->eventTimeType:Ljava/lang/String;

    .line 665
    invoke-virtual {p3}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;->differentFields()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;->differentFields:Ljava/util/List;

    .line 666
    invoke-virtual {p3}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;->inconsistencyClass()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;->classification:Ljava/lang/String;

    .line 667
    iput-object p2, v1, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;->eventRecurrence:Ljava/lang/String;

    .line 668
    return-object v1

    .line 664
    :cond_0
    const-string v0, "TIMED"

    goto :goto_0
.end method

.method private checkConsistency(Ljava/util/Map;Ljava/util/Map;Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/api/services/calendar/model/Event;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/api/services/calendar/model/Event;",
            ">;",
            "Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 421
    if-nez p1, :cond_0

    .line 422
    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v3, "Client events map was null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 423
    const/4 v2, 0x0

    .line 582
    :goto_0
    return v2

    .line 425
    :cond_0
    if-nez p2, :cond_1

    .line 426
    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v3, "Backend events map was null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 427
    const/4 v2, 0x0

    goto :goto_0

    .line 430
    :cond_1
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;->statistics:Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;

    .line 432
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 434
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 436
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 437
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 438
    if-nez v3, :cond_2

    .line 439
    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v3, "Event with null key found in client events map."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 443
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/services/calendar/model/Event;

    .line 450
    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/Event;->getUpdated()Lcom/google/api/client/util/DateTime;

    move-result-object v4

    .line 451
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/google/api/client/util/DateTime;->getValue()J

    move-result-wide v4

    move-wide v6, v4

    .line 453
    :goto_2
    const-string v4, "dirty"

    invoke-virtual {v2, v4}, Lcom/google/api/services/calendar/model/Event;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    move v8, v4

    .line 454
    :goto_3
    const-string v4, "event_id"

    invoke-virtual {v2, v4}, Lcom/google/api/services/calendar/model/Event;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 455
    const-string v5, "cc:mark"

    invoke-virtual {v2, v5}, Lcom/google/api/services/calendar/model/Event;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_3

    .line 456
    invoke-interface {v12, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_3
    const/4 v5, 0x1

    move v9, v5

    .line 457
    :goto_4
    const-string v5, "event_id"

    invoke-virtual {v2, v5}, Lcom/google/api/services/calendar/model/Event;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const-string v5, "cc:mark"

    invoke-virtual {v2, v5}, Lcom/google/api/services/calendar/model/Event;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/api/services/calendar/model/Event;

    .line 460
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mManualCheck:Z

    if-nez v14, :cond_8

    if-eqz v9, :cond_8

    .line 461
    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->skippedEvents:Ljava/lang/Long;

    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->skippedEvents:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->skippedEvents:Ljava/lang/Long;

    .line 519
    :cond_4
    :goto_5
    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->checkedEvents:Ljava/lang/Long;

    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->checkedEvents:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->checkedEvents:Ljava/lang/Long;

    goto/16 :goto_1

    .line 452
    :cond_5
    const-wide/high16 v4, -0x8000000000000000L

    move-wide v6, v4

    goto :goto_2

    .line 453
    :cond_6
    const/4 v4, 0x0

    move v8, v4

    goto :goto_3

    .line 456
    :cond_7
    const/4 v5, 0x0

    move v9, v5

    goto :goto_4

    .line 462
    :cond_8
    if-eqz v5, :cond_c

    .line 464
    invoke-static {v2, v5}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator;->compareEvents(Lcom/google/api/services/calendar/model/Event;Lcom/google/api/services/calendar/model/Event;)Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;

    move-result-object v9

    .line 465
    invoke-virtual {v9}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;->isConsistent()Z

    move-result v14

    .line 466
    invoke-virtual {v5}, Lcom/google/api/services/calendar/model/Event;->getUpdated()Lcom/google/api/client/util/DateTime;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/api/client/util/DateTime;->getValue()J

    move-result-wide v16

    .line 467
    if-nez v14, :cond_4

    .line 468
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mFeedUpdatedTime:J

    cmp-long v14, v16, v14

    if-lez v14, :cond_9

    .line 469
    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v4, "Backend Event updated after feed update (+%d). Key = %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mFeedUpdatedTime:J

    sub-long v8, v16, v8

    .line 470
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    .line 469
    invoke-static {v2, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 471
    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->failedEvents:Ljava/lang/Long;

    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->failedEvents:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->failedEvents:Ljava/lang/Long;

    goto :goto_5

    .line 472
    :cond_9
    if-eqz v8, :cond_a

    .line 473
    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v4, "Client Event modified after sync (dirty). Key = %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v2, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 474
    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->failedEvents:Ljava/lang/Long;

    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->failedEvents:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->failedEvents:Ljava/lang/Long;

    goto/16 :goto_5

    .line 475
    :cond_a
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mFeedUpdatedTime:J

    cmp-long v8, v6, v14

    if-lez v8, :cond_b

    .line 476
    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v4, "Client Event updated after feed update time. (+%d) Key = %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mFeedUpdatedTime:J

    sub-long/2addr v6, v14

    .line 478
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    aput-object v3, v5, v6

    .line 476
    invoke-static {v2, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 479
    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->failedEvents:Ljava/lang/Long;

    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->failedEvents:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->failedEvents:Ljava/lang/Long;

    goto/16 :goto_5

    .line 481
    :cond_b
    invoke-interface {v12, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 482
    const/4 v4, 0x0

    .line 483
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v9}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->getBucket(Lcom/google/api/services/calendar/model/Event;ZLcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;)Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;

    move-result-object v4

    .line 484
    move-object/from16 v0, p3

    invoke-static {v0, v2, v5, v4}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->reportAttributeMismatch(Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;Lcom/google/api/services/calendar/model/Event;Lcom/google/api/services/calendar/model/Event;Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;)V

    .line 485
    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v5, "Inconsistent event. Key = %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v2, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 486
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->insertInconsistency(Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;Ljava/util/Map;)V

    .line 487
    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->inconsistentEvents:Ljava/lang/Long;

    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->inconsistentEvents:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->inconsistentEvents:Ljava/lang/Long;

    .line 488
    invoke-virtual {v9}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;->shouldReport()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 489
    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->eventsToReport:Ljava/lang/Long;

    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->eventsToReport:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->eventsToReport:Ljava/lang/Long;

    goto/16 :goto_5

    .line 494
    :cond_c
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mFeedUpdatedTime:J

    cmp-long v5, v6, v14

    if-lez v5, :cond_d

    .line 495
    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v4, "Missing Client Event modified after feed update time. (+%d) Key = %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mFeedUpdatedTime:J

    sub-long/2addr v6, v14

    .line 497
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    aput-object v3, v5, v6

    .line 495
    invoke-static {v2, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 498
    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->failedEvents:Ljava/lang/Long;

    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->failedEvents:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->failedEvents:Ljava/lang/Long;

    goto/16 :goto_5

    .line 499
    :cond_d
    if-eqz v8, :cond_e

    .line 500
    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v4, "Missing Client Event modified after sync (dirty). Key = %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v2, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 502
    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->failedEvents:Ljava/lang/Long;

    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->failedEvents:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->failedEvents:Ljava/lang/Long;

    goto/16 :goto_5

    .line 503
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->isOverfetched(Lcom/google/api/services/calendar/model/Event;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 504
    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v4, "Client-only Event appears overfetched. Key = %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v2, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 506
    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->overfetchedClientEvents:Ljava/lang/Long;

    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->overfetchedClientEvents:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->overfetchedClientEvents:Ljava/lang/Long;

    goto/16 :goto_5

    .line 508
    :cond_f
    invoke-interface {v12, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 509
    sget-object v4, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v5, "Event for Key ( %s ) not found on the server"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 510
    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator;->UNCLASSIFIED:Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->getBucket(Lcom/google/api/services/calendar/model/Event;ZLcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;)Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;

    move-result-object v3

    .line 512
    const-string v4, "MismatchEventDeviceOnly"

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->reportMissingEvent(Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;Lcom/google/api/services/calendar/model/Event;Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;Ljava/lang/String;)V

    .line 514
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->insertInconsistency(Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;Ljava/util/Map;)V

    .line 515
    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->inconsistentEvents:Ljava/lang/Long;

    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->inconsistentEvents:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->inconsistentEvents:Ljava/lang/Long;

    .line 516
    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->eventsToReport:Ljava/lang/Long;

    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->eventsToReport:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->eventsToReport:Ljava/lang/Long;

    goto/16 :goto_5

    .line 522
    :cond_10
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 523
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 524
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 525
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/services/calendar/model/Event;

    .line 526
    if-nez v3, :cond_11

    .line 527
    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v3, "Event with null key found in server events map."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_6

    .line 532
    :cond_11
    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/Event;->getUpdated()Lcom/google/api/client/util/DateTime;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/client/util/DateTime;->getValue()J

    move-result-wide v6

    .line 533
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mFeedUpdatedTime:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_12

    .line 534
    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v5, "Missing Backend Event modified after sync (+%d). Key = %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mFeedUpdatedTime:J

    sub-long/2addr v6, v14

    .line 535
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v8, v9

    const/4 v6, 0x1

    aput-object v3, v8, v6

    .line 534
    invoke-static {v2, v5, v8}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 536
    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->failedEvents:Ljava/lang/Long;

    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->failedEvents:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->failedEvents:Ljava/lang/Long;

    goto :goto_6

    .line 539
    :cond_12
    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->isCancelled(Lcom/google/api/services/calendar/model/Event;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 540
    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v5, "Consistency check ignores cancelled event with key ( %s )"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v2, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 556
    :goto_7
    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->checkedEvents:Ljava/lang/Long;

    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->checkedEvents:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->checkedEvents:Ljava/lang/Long;

    goto/16 :goto_6

    .line 542
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->isOverfetched(Lcom/google/api/services/calendar/model/Event;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 543
    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v5, "Server-only Event appears overfetched. Key = %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v2, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 545
    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->overfetchedBackendEvents:Ljava/lang/Long;

    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->overfetchedBackendEvents:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->overfetchedBackendEvents:Ljava/lang/Long;

    goto :goto_7

    .line 547
    :cond_14
    sget-object v5, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v6, "Event with key ( %s ) not found on a client"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-static {v5, v6, v7}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 548
    const/4 v3, 0x1

    sget-object v5, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator;->UNCLASSIFIED:Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v5}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->getBucket(Lcom/google/api/services/calendar/model/Event;ZLcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;)Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;

    move-result-object v3

    .line 550
    const-string v5, "MismatchEventServerOnly"

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3, v5}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->reportMissingEvent(Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;Lcom/google/api/services/calendar/model/Event;Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;Ljava/lang/String;)V

    .line 552
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->insertInconsistency(Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;Ljava/util/Map;)V

    .line 553
    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->inconsistentEvents:Ljava/lang/Long;

    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->inconsistentEvents:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->inconsistentEvents:Ljava/lang/Long;

    .line 554
    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->eventsToReport:Ljava/lang/Long;

    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->eventsToReport:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->eventsToReport:Ljava/lang/Long;

    goto :goto_7

    .line 560
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mManualCheck:Z

    if-nez v2, :cond_1b

    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->failedEvents:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1b

    .line 561
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    const-string v4, "SessionDone"

    sget-object v5, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->NO_LABEL:Ljava/lang/String;

    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->checkedEvents:Ljava/lang/Long;

    .line 562
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v8, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->NO_CUSTOM_DIMENSIONS:Ljava/util/Map;

    .line 561
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logConsistencyCheckerEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 563
    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->inconsistentEvents:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_16

    .line 564
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    const-string v4, "StoreInconsistent"

    sget-object v5, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->NO_LABEL:Ljava/lang/String;

    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->inconsistentEvents:Ljava/lang/Long;

    .line 565
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v8, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->NO_CUSTOM_DIMENSIONS:Ljava/util/Map;

    .line 564
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logConsistencyCheckerEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 566
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->logInconsistencyEvent(Ljava/util/Map;)V

    .line 568
    :cond_16
    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->overfetchedClientEvents:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_17

    .line 569
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    const-string v4, "ClientOverFetch"

    sget-object v5, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->NO_LABEL:Ljava/lang/String;

    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->overfetchedClientEvents:Ljava/lang/Long;

    .line 570
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v8, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->NO_CUSTOM_DIMENSIONS:Ljava/util/Map;

    .line 569
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logConsistencyCheckerEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 572
    :cond_17
    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->overfetchedBackendEvents:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_18

    .line 573
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    const-string v4, "BackendOverFetch"

    sget-object v5, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->NO_LABEL:Ljava/lang/String;

    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->overfetchedBackendEvents:Ljava/lang/Long;

    .line 574
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v8, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->NO_CUSTOM_DIMENSIONS:Ljava/util/Map;

    .line 573
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logConsistencyCheckerEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 576
    :cond_18
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->markEventsAsReported(Ljava/util/Set;)V

    .line 582
    :cond_19
    :goto_8
    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->failedEvents:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1c

    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->eventsToReport:Ljava/lang/Long;

    .line 583
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mManualCheck:Z

    if-eqz v2, :cond_1c

    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->inconsistentEvents:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1c

    :cond_1a
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 577
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mManualCheck:Z

    if-nez v2, :cond_19

    .line 578
    const-string v3, "FailedModifiedAfterSync"

    iget-object v2, v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->failedEvents:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->registerAttemptAsFailed(Ljava/lang/String;JJ)V

    goto :goto_8

    .line 583
    :cond_1c
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private fetchFeedUpdateTime()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 342
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mSyncState:Lcom/google/android/syncadapters/calendar/CalendarSyncState;

    if-nez v2, :cond_0

    .line 343
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v2, "Aborting check: SyncState == null"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 363
    :goto_0
    return v0

    .line 346
    :cond_0
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mSyncState:Lcom/google/android/syncadapters/calendar/CalendarSyncState;

    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mCalendarId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->getFeedState(Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/FeedState;

    move-result-object v2

    .line 347
    if-nez v2, :cond_1

    .line 348
    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v3, "Aborting check: FeedState(%s) == null"

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mCalendarId:Ljava/lang/String;

    .line 349
    invoke-static {v4, v5}, Lcom/android/calendarcommon2/LogUtils;->sanitizeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 348
    invoke-static {v2, v3, v1}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 352
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/syncadapters/calendar/FeedState;->getUpdatedTime()Ljava/lang/String;

    move-result-object v3

    .line 353
    if-eqz v3, :cond_2

    .line 355
    :try_start_0
    invoke-static {v3}, Lcom/google/api/client/util/DateTime;->parseRfc3339(Ljava/lang/String;)Lcom/google/api/client/util/DateTime;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/util/DateTime;->getValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mFeedUpdatedTime:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 356
    goto :goto_0

    .line 357
    :catch_0
    move-exception v2

    .line 358
    sget-object v4, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v5, "Aborting check: couldn\'t parse FEED_UPDATED_TIME = %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    invoke-static {v4, v2, v5, v1}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 361
    :cond_2
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v2, "Aborting check: FEED_UPDATE_TIME == null"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private getBackendEventType(Lcom/google/api/services/calendar/model/Event;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 651
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getOriginalStartTime()Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 652
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getPhantom()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    const-string v0, "RECURRING"

    .line 658
    :goto_0
    return-object v0

    .line 655
    :cond_0
    const-string v0, "EXCEPTION"

    goto :goto_0

    .line 658
    :cond_1
    const-string v0, "SINGLE"

    goto :goto_0
.end method

.method private getBucket(Lcom/google/api/services/calendar/model/Event;ZLcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;)Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;
    .locals 2

    .prologue
    .line 630
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getStart()Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/EventDateTime;->getDate()Lcom/google/api/client/util/DateTime;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 632
    :goto_0
    if-eqz p2, :cond_1

    .line 633
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->getBackendEventType(Lcom/google/api/services/calendar/model/Event;)Ljava/lang/String;

    move-result-object v0

    .line 637
    :goto_1
    invoke-direct {p0, v1, v0, p3}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->buildBucket(ZLjava/lang/String;Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;)Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;

    move-result-object v0

    return-object v0

    .line 630
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 635
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->getClientEventType(Lcom/google/api/services/calendar/model/Event;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getClientEventType(Lcom/google/api/services/calendar/model/Event;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 641
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getRecurrence()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 642
    const-string v0, "RECURRING"

    .line 646
    :goto_0
    return-object v0

    .line 643
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getOriginalStartTime()Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 644
    const-string v0, "EXCEPTION"

    goto :goto_0

    .line 646
    :cond_1
    const-string v0, "SINGLE"

    goto :goto_0
.end method

.method private getExtraCustomDimensionsMap(Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 894
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 895
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;->eventTimeType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;->eventRecurrence:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, " "

    .line 899
    invoke-static {v2}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;->differentFields:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 898
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    return-object v0
.end method

.method private getNextMidnightTimeMillis(J)J
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 673
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 674
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 675
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 676
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 677
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 678
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 679
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 680
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private getPerAccountPreferences()Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    .line 709
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mContext:Landroid/content/Context;

    .line 710
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 709
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 711
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mCalendarId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_preferences"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 712
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 714
    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->migratePreferences(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    .line 715
    return-object v1
.end method

.method private static getUtcMillis(Lcom/google/api/services/calendar/model/EventDateTime;)J
    .locals 2

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventDateTime;->getDateTime()Lcom/google/api/client/util/DateTime;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventDateTime;->getDate()Lcom/google/api/client/util/DateTime;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/DateTime;

    .line 613
    invoke-virtual {v0}, Lcom/google/api/client/util/DateTime;->getValue()J

    move-result-wide v0

    .line 612
    return-wide v0
.end method

.method private insertInconsistency(Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x1

    .line 879
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    :goto_0
    return-void

    .line 882
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private isBatteryLevelSatisfactory(Landroid/content/Intent;)Z
    .locals 6

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 850
    const-string v2, "scale"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 852
    if-gtz v2, :cond_1

    .line 853
    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v3, "Unable to retrieve battery scale or wrong state. Still trying to check consistency."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 873
    :cond_0
    :goto_0
    return v0

    .line 858
    :cond_1
    const-string v3, "level"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 860
    if-gez v3, :cond_2

    .line 861
    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v3, "Unable to retrieve battery level or wrong state. Still trying to check consistency."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 867
    :cond_2
    int-to-double v4, v3

    int-to-double v2, v2

    div-double v2, v4, v2

    .line 868
    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 869
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v2, "Battery level too low to perform consistency check."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 871
    goto :goto_0
.end method

.method private static isCancelled(Lcom/google/api/services/calendar/model/Event;)Z
    .locals 2

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDeviceCharging()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 827
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 828
    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 829
    if-nez v3, :cond_0

    .line 830
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v2, "Skipping store consistency checking. Failed to retrieve battery state."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 846
    :goto_0
    return v0

    .line 834
    :cond_0
    const-string v2, "status"

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 835
    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    :cond_1
    move v2, v1

    .line 837
    :goto_1
    if-nez v2, :cond_3

    .line 838
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v2, "Skipping store consistency checking. Device is not charging."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_2
    move v2, v0

    .line 835
    goto :goto_1

    .line 841
    :cond_3
    invoke-direct {p0, v3}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->isBatteryLevelSatisfactory(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 842
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v2, "Skipping store consistency checking."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_4
    move v0, v1

    .line 846
    goto :goto_0
.end method

.method private isOverfetched(Lcom/google/api/services/calendar/model/Event;)Z
    .locals 6

    .prologue
    .line 617
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getStart()Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->getUtcMillis(Lcom/google/api/services/calendar/model/EventDateTime;)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getEnd()Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->getUtcMillis(Lcom/google/api/services/calendar/model/EventDateTime;)J

    move-result-wide v2

    .line 618
    iget-wide v4, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mTimeMinMs:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mTimeMinMs:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    :cond_0
    iget-wide v2, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mTimeMaxMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiConnected()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 798
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    .line 799
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 800
    if-nez v0, :cond_0

    .line 801
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v2, "Skipping store consistency checking. Failed to retrieve connectivity manager."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 823
    :goto_0
    return v0

    .line 806
    :cond_0
    const/4 v3, 0x1

    .line 807
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 808
    if-nez v0, :cond_1

    .line 809
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v2, "Skipping store consistency checking. Failed to retrieve network information."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 812
    goto :goto_0

    .line 814
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 815
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v2, "Skipping store consistency checking. WiFi not connected."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 816
    goto :goto_0

    .line 818
    :catch_0
    move-exception v0

    .line 819
    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE not granted"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 820
    goto :goto_0

    :cond_2
    move v0, v2

    .line 823
    goto :goto_0
.end method

.method private logInconsistencyEvent(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 887
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;

    .line 888
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    iget-object v2, v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;->category:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;->classification:Ljava/lang/String;

    .line 889
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v0}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->getExtraCustomDimensionsMap(Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;)Ljava/util/Map;

    move-result-object v6

    .line 888
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logConsistencyCheckerEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    goto :goto_0

    .line 891
    :cond_0
    return-void
.end method

.method private logReportToAFile(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 978
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v1, "Not trying to send report - reporting disabled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 980
    return-void
.end method

.method private markEventsAsReported(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 587
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 588
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 589
    const-string v0, "name"

    const-string v3, "cc:mark"

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v0, "value"

    const-string v3, "1"

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 592
    const-string v4, "event_id"

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mAccount:Landroid/accounts/Account;

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v4, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    .line 594
    invoke-virtual {v0, v4}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 595
    invoke-virtual {v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 593
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->checkRuntimePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 599
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v2, "Insufficient permissions"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "com.android.calendar"

    .line 602
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 604
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 608
    :goto_1
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 609
    return-void

    .line 605
    :catch_0
    move-exception v0

    .line 606
    :goto_2
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v3, "Marking events as reported"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 605
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private static migratePreferences(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 688
    const-string v0, "LAST_CONSISTENCY_SKIP_LOGGED"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    :goto_0
    return-void

    .line 692
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 693
    const-string v1, "TRIES_SINCE_LAST_SKIP_LOGGED"

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 694
    const-string v1, "TRIES_SINCE_LAST_SKIP_LOGGED"

    const-string v2, "TRIES_SINCE_LAST_SKIP_LOGGED"

    const/4 v3, 0x0

    .line 695
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 694
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 697
    :cond_1
    const-string v1, "LAST_CONSISTENCY_CHECK_TIME"

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 698
    const-string v1, "LAST_CONSISTENCY_CHECK_TIME"

    const-string v2, "LAST_CONSISTENCY_CHECK_TIME"

    .line 699
    invoke-interface {p0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 698
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 701
    :cond_2
    const-string v1, "LAST_CONSISTENCY_SKIP_LOGGED"

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 702
    const-string v1, "LAST_CONSISTENCY_SKIP_LOGGED"

    const-string v2, "LAST_CONSISTENCY_SKIP_LOGGED"

    .line 703
    invoke-interface {p0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 702
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 705
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private registerAttemptAndLogIfAppropriate(JLandroid/content/SharedPreferences;Z)V
    .locals 9

    .prologue
    .line 733
    const-string v0, "TRIES_SINCE_LAST_SKIP_LOGGED"

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz p4, :cond_3

    .line 734
    const/4 v0, 0x0

    :goto_0
    add-int v4, v1, v0

    .line 735
    const-string v0, "LAST_CONSISTENCY_SKIP_LOGGED"

    invoke-interface {p3, v0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 736
    const-string v0, "LAST_CONSISTENCY_CHECK_TIME"

    const-wide/16 v6, -0x1

    invoke-interface {p3, v0, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 738
    const-wide/32 v6, 0x240c8400

    add-long/2addr v0, v6

    const-wide/32 v6, 0x5265c00

    add-long/2addr v0, v6

    cmp-long v0, p1, v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    move v1, v0

    .line 740
    :goto_1
    const-wide/32 v6, 0x5265c00

    add-long/2addr v6, v2

    cmp-long v0, p1, v6

    if-lez v0, :cond_5

    const/4 v0, 0x1

    .line 742
    :goto_2
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 744
    if-eqz p4, :cond_0

    .line 745
    const-string v5, "LAST_CONSISTENCY_CHECK_TIME"

    invoke-interface {v7, v5, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 748
    :cond_0
    if-lez v4, :cond_6

    if-nez p4, :cond_1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 750
    :cond_1
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    const-string v2, "SessionSkipped"

    sget-object v3, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->NO_LABEL:Ljava/lang/String;

    int-to-long v4, v4

    sget-object v6, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->NO_CUSTOM_DIMENSIONS:Ljava/util/Map;

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logConsistencyCheckerEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 752
    const-string v0, "LAST_CONSISTENCY_SKIP_LOGGED"

    invoke-interface {v7, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 753
    const-string v0, "TRIES_SINCE_LAST_SKIP_LOGGED"

    const/4 v1, 0x0

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 765
    :cond_2
    :goto_3
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 766
    return-void

    .line 734
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 738
    :cond_4
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    .line 740
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 755
    :cond_6
    if-nez p4, :cond_7

    .line 757
    const-string v0, "TRIES_SINCE_LAST_SKIP_LOGGED"

    invoke-interface {v7, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 759
    :cond_7
    cmp-long v0, v2, p1

    if-nez v0, :cond_2

    .line 761
    const-string v0, "LAST_CONSISTENCY_SKIP_LOGGED"

    invoke-interface {v7, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_3
.end method

.method private registerAttemptAsFailed(Ljava/lang/String;JJ)V
    .locals 10

    .prologue
    .line 769
    iget-boolean v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mManualCheck:Z

    if-eqz v0, :cond_0

    .line 770
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->requestOutputOfShortStatus(I)V

    .line 783
    :goto_0
    return-void

    .line 774
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 775
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->getPerAccountPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 777
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    sget-object v3, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->NO_LABEL:Ljava/lang/String;

    sget-object v6, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->NO_CUSTOM_DIMENSIONS:Ljava/util/Map;

    move-object v2, p1

    move-wide v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logConsistencyCheckerEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 781
    const-wide/32 v2, 0x240c8400

    sub-long v2, v8, v2

    add-long/2addr v2, p4

    .line 782
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LAST_CONSISTENCY_CHECK_TIME"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private static reportAttributeMismatch(Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;Lcom/google/api/services/calendar/model/Event;Lcom/google/api/services/calendar/model/Event;Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;)V
    .locals 2

    .prologue
    .line 906
    if-nez p0, :cond_0

    .line 916
    :goto_0
    return-void

    .line 910
    :cond_0
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Inconsistency;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Inconsistency;-><init>()V

    .line 911
    const-string v1, "MismatchEventDifferent"

    iput-object v1, p3, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;->category:Ljava/lang/String;

    .line 912
    iput-object p3, v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Inconsistency;->bucket:Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;

    .line 913
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->strippedEventForReport(Lcom/google/api/services/calendar/model/Event;)Lcom/google/api/services/calendar/model/Event;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Inconsistency;->clientEvent:Lcom/google/api/services/calendar/model/Event;

    .line 914
    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->strippedEventForReport(Lcom/google/api/services/calendar/model/Event;)Lcom/google/api/services/calendar/model/Event;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Inconsistency;->backendEvent:Lcom/google/api/services/calendar/model/Event;

    .line 915
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;->inconsistencies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static reportMissingEvent(Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;Lcom/google/api/services/calendar/model/Event;Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 944
    if-nez p0, :cond_0

    .line 953
    :goto_0
    return-void

    .line 948
    :cond_0
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Inconsistency;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Inconsistency;-><init>()V

    .line 949
    iput-object p3, p2, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;->category:Ljava/lang/String;

    .line 950
    iput-object p2, v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Inconsistency;->bucket:Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;

    .line 951
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->strippedEventForReport(Lcom/google/api/services/calendar/model/Event;)Lcom/google/api/services/calendar/model/Event;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Inconsistency;->event:Lcom/google/api/services/calendar/model/Event;

    .line 952
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;->inconsistencies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private requestOutputOfShortStatus(I)V
    .locals 3

    .prologue
    .line 400
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/DebugReportingManager;->ACTION_SHORT_STATUS:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mContext:Landroid/content/Context;

    const-string v2, "com.google.android.calendar.timely.report.DebugReportingService"

    .line 401
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/DebugReportingManager;->EXTRA_STATUS_CODE:Ljava/lang/String;

    .line 402
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/DebugReportingManager;->EXTRA_CALENDAR_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mCalendarId:Ljava/lang/String;

    .line 403
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 405
    return-void
.end method

.method private requirementsSatisfied()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 719
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 720
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->getPerAccountPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 722
    invoke-direct {p0, v2, v3, v1}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->wasLastCheckLongEnoughAgo(JLandroid/content/SharedPreferences;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 728
    :goto_0
    return v0

    .line 726
    :cond_0
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->isWifiConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->isDeviceCharging()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    .line 727
    :cond_1
    invoke-direct {p0, v2, v3, v1, v0}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->registerAttemptAndLogIfAppropriate(JLandroid/content/SharedPreferences;Z)V

    goto :goto_0
.end method

.method private static strippedEventForReport(Lcom/google/api/services/calendar/model/Event;)Lcom/google/api/services/calendar/model/Event;
    .locals 2

    .prologue
    .line 919
    new-instance v0, Lcom/google/api/services/calendar/model/Event;

    invoke-direct {v0}, Lcom/google/api/services/calendar/model/Event;-><init>()V

    .line 921
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/Event;->setId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    .line 922
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getRecurringEventId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/Event;->setRecurringEventId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    .line 924
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getEtag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/Event;->setEtag(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    .line 925
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getUpdated()Lcom/google/api/client/util/DateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/Event;->setUpdated(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/calendar/model/Event;

    .line 927
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/Event;->setStatus(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    .line 929
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getStart()Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/Event;->setStart(Lcom/google/api/services/calendar/model/EventDateTime;)Lcom/google/api/services/calendar/model/Event;

    .line 930
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getOriginalStartTime()Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/Event;->setOriginalStartTime(Lcom/google/api/services/calendar/model/EventDateTime;)Lcom/google/api/services/calendar/model/Event;

    .line 931
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getEnd()Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/Event;->setEnd(Lcom/google/api/services/calendar/model/EventDateTime;)Lcom/google/api/services/calendar/model/Event;

    .line 932
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getRecurrence()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/Event;->setRecurrence(Ljava/util/List;)Lcom/google/api/services/calendar/model/Event;

    .line 934
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getOrganizer()Lcom/google/api/services/calendar/model/Event$Organizer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/Event;->setOrganizer(Lcom/google/api/services/calendar/model/Event$Organizer;)Lcom/google/api/services/calendar/model/Event;

    .line 936
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/Event;->setLocation(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    .line 938
    return-object v0
.end method

.method private wasLastCheckLongEnoughAgo(JLandroid/content/SharedPreferences;)Z
    .locals 7

    .prologue
    const-wide/16 v4, -0x1

    const/4 v0, 0x0

    .line 786
    const-string v1, "LAST_CONSISTENCY_CHECK_TIME"

    invoke-interface {p3, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 789
    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const-wide/32 v4, 0x240c8400

    add-long/2addr v2, v4

    cmp-long v1, v2, p1

    if-lez v1, :cond_0

    .line 790
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v2, "Skipping store consistency checking. Last sync less than a week ago."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 793
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method compareEventsIfBothFetched(Ljava/util/Map;Ljava/util/Map;Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/api/services/calendar/model/Event;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/api/services/calendar/model/Event;",
            ">;",
            "Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 373
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 374
    invoke-static {}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;->appVersion:Ljava/lang/String;

    .line 375
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mCalendarId:Ljava/lang/String;

    iput-object v1, p3, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;->account:Ljava/lang/String;

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p3, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;->deviceDate:Ljava/lang/Long;

    .line 377
    iget-wide v2, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mFeedUpdatedTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p3, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;->feedUpdatedTime:Ljava/lang/Long;

    .line 379
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->checkConsistency(Ljava/util/Map;Ljava/util/Map;Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;)Z

    move-result v2

    .line 381
    if-eqz v2, :cond_0

    .line 383
    :try_start_0
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->JSON_FACTORY:Lcom/google/api/client/json/JsonFactory;

    invoke-virtual {v1, p3}, Lcom/google/api/client/json/JsonFactory;->toPrettyString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->logReportToAFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mManualCheck:Z

    if-eqz v1, :cond_2

    .line 389
    iget-object v1, p3, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;->statistics:Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;

    iget-object v1, v1, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->failedEvents:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    .line 390
    const/4 v0, 0x2

    .line 394
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->requestOutputOfShortStatus(I)V

    .line 397
    :cond_2
    return-void

    .line 384
    :catch_0
    move-exception v1

    .line 385
    sget-object v3, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;

    const-string v4, "Converting report to String"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 392
    :cond_3
    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public performConsistencyCheckIfPossible()V
    .locals 11

    .prologue
    const-wide/32 v6, 0x5265c00

    .line 282
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->fetchFeedUpdateTime()Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mManualCheck:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->requirementsSatisfied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 293
    iget-boolean v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mManualCheck:Z

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x1e

    .line 294
    :goto_1
    iget-boolean v2, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mManualCheck:Z

    if-eqz v2, :cond_4

    const-wide/16 v2, 0x3c

    .line 297
    :goto_2
    mul-long/2addr v0, v6

    sub-long v0, v4, v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->getNextMidnightTimeMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mTimeMinMs:J

    .line 298
    mul-long v0, v2, v6

    add-long/2addr v0, v4

    invoke-direct {p0, v0, v1}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->getNextMidnightTimeMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mTimeMaxMs:J

    .line 300
    new-instance v1, Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;

    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mCalendarId:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mTimeMinMs:J

    iget-wide v6, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mTimeMaxMs:J

    iget-boolean v8, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mManualCheck:Z

    invoke-direct/range {v1 .. v8}, Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;-><init>(Landroid/content/Context;Ljava/lang/String;JJZ)V

    .line 302
    new-instance v3, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;

    iget-object v4, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mCalendarId:Ljava/lang/String;

    iget-wide v6, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mTimeMinMs:J

    iget-wide v8, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mTimeMaxMs:J

    iget-boolean v10, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->mManualCheck:Z

    invoke-direct/range {v3 .. v10}, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;-><init>(Landroid/content/Context;Ljava/lang/String;JJZ)V

    .line 305
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 306
    new-instance v2, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$EventMapBuilder;

    invoke-direct {v2, v1}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$EventMapBuilder;-><init>(Ljava/util/concurrent/Callable;)V

    .line 307
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v7

    .line 308
    new-instance v2, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$EventMapBuilder;

    invoke-direct {v2, v3}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$EventMapBuilder;-><init>(Ljava/util/concurrent/Callable;)V

    .line 309
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v6

    .line 310
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 312
    new-instance v0, Ljava/lang/Thread;

    new-instance v4, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$1;

    move-object v5, p0

    move-object v8, v1

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$1;-><init>(Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;)V

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 337
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 293
    :cond_3
    const-wide/16 v0, 0x1

    goto :goto_1

    .line 294
    :cond_4
    const-wide/16 v2, 0x6

    goto :goto_2
.end method
