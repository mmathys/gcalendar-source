.class public Lcom/google/android/syncadapters/calendar/SyncLog;
.super Ljava/lang/Object;
.source "SyncLog.java"


# static fields
.field private static final START_STOP_LOG_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String;

.field private static sAccountType:Ljava/lang/String;

.field private static sCachedStartTimeLog:Ljava/lang/String;

.field private static sCalendarAccess:Ljava/lang/String;

.field private static sCalendarType:Ljava/lang/String;

.field private static sCalendarVisibility:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sDeletionsInBatch:I

.field private static sDeletionsInBatchPercent:I

.field private static sDeletionsInEditableCalendars:I

.field private static sDepth:I

.field private static sEntriesInEditableCalendars:I

.field private static sFormat:Ljava/text/SimpleDateFormat;

.field private static sLineBuilder:Ljava/lang/StringBuilder;

.field private static sLocalDbQueries:I

.field private static sLocalDbQueryStart:J

.field private static sLocalDbTimeMs:J

.field private static sProcessLocalCalendarsAttempts:I

.field private static sProcessLocalEventsAttempts:I

.field private static sRemoteApiCallStart:J

.field private static sRemoteApiCalls:I

.field private static sRemoteApiTimeMs:J

.field private static sSessionLog:Ljava/lang/StringBuilder;

.field private static sStartTimesMs:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sSyncStartTimeMs:J

.field private static sSyncType:Ljava/lang/String;

.field private static sTooManyDeletionsResolution:Ljava/lang/String;

.field private static sTotalDeletions:I

.field private static sTotalDeletionsPercent:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 184
    const-class v0, Lcom/google/android/syncadapters/calendar/SyncLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/SyncLog;->TAG:Ljava/lang/String;

    .line 209
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/SyncLog;->START_STOP_LOG_LOCK:Ljava/lang/Object;

    .line 211
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sFormat:Ljava/text/SimpleDateFormat;

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sSessionLog:Ljava/lang/StringBuilder;

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sLineBuilder:Ljava/lang/StringBuilder;

    .line 217
    new-instance v0, Lcom/google/android/syncadapters/calendar/SyncLog$1;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/SyncLog$1;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sStartTimesMs:Ljava/lang/ThreadLocal;

    .line 225
    sput v4, Lcom/google/android/syncadapters/calendar/SyncLog;->sDepth:I

    .line 228
    sput v4, Lcom/google/android/syncadapters/calendar/SyncLog;->sRemoteApiCalls:I

    .line 229
    sput-wide v2, Lcom/google/android/syncadapters/calendar/SyncLog;->sRemoteApiCallStart:J

    .line 230
    sput-wide v2, Lcom/google/android/syncadapters/calendar/SyncLog;->sRemoteApiTimeMs:J

    .line 232
    sput v4, Lcom/google/android/syncadapters/calendar/SyncLog;->sLocalDbQueries:I

    .line 233
    sput-wide v2, Lcom/google/android/syncadapters/calendar/SyncLog;->sLocalDbQueryStart:J

    .line 234
    sput-wide v2, Lcom/google/android/syncadapters/calendar/SyncLog;->sLocalDbTimeMs:J

    .line 236
    sput-wide v2, Lcom/google/android/syncadapters/calendar/SyncLog;->sSyncStartTimeMs:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accessModeString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    sparse-switch p0, :sswitch_data_0

    .line 531
    const-string v0, "WTF"

    :goto_0
    return-object v0

    .line 513
    :sswitch_0
    const-string v0, "CONTRIBUTOR"

    goto :goto_0

    .line 515
    :sswitch_1
    const-string v0, "EDITOR"

    goto :goto_0

    .line 517
    :sswitch_2
    const-string v0, "FREEBUSY"

    goto :goto_0

    .line 519
    :sswitch_3
    const-string v0, "NONE"

    goto :goto_0

    .line 521
    :sswitch_4
    const-string v0, "OVERRIDE"

    goto :goto_0

    .line 523
    :sswitch_5
    const-string v0, "OWNER"

    goto :goto_0

    .line 525
    :sswitch_6
    const-string v0, "READ"

    goto :goto_0

    .line 527
    :sswitch_7
    const-string v0, "RESPOND"

    goto :goto_0

    .line 529
    :sswitch_8
    const-string v0, "ROOT"

    goto :goto_0

    .line 511
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x64 -> :sswitch_2
        0xc8 -> :sswitch_6
        0x12c -> :sswitch_7
        0x190 -> :sswitch_4
        0x1f4 -> :sswitch_0
        0x258 -> :sswitch_1
        0x2bc -> :sswitch_5
        0x320 -> :sswitch_8
    .end sparse-switch
.end method

.method private static addDeletionMetrics(Landroid/util/SparseLongArray;)V
    .locals 4

    .prologue
    .line 1016
    sget v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sDeletionsInEditableCalendars:I

    if-gtz v0, :cond_0

    .line 1024
    :goto_0
    return-void

    .line 1020
    :cond_0
    const/16 v0, 0xc

    sget v1, Lcom/google/android/syncadapters/calendar/SyncLog;->sEntriesInEditableCalendars:I

    int-to-long v2, v1

    .line 1021
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1020
    invoke-virtual {p0, v0, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1022
    const/16 v0, 0xd

    sget v1, Lcom/google/android/syncadapters/calendar/SyncLog;->sDeletionsInEditableCalendars:I

    int-to-long v2, v1

    .line 1023
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1022
    invoke-virtual {p0, v0, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_0
.end method

.method private static addProcessLocalChangesMetrics(Landroid/util/SparseLongArray;)V
    .locals 4

    .prologue
    .line 1027
    sget v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sProcessLocalCalendarsAttempts:I

    if-lez v0, :cond_0

    .line 1028
    const/16 v0, 0xe

    sget v1, Lcom/google/android/syncadapters/calendar/SyncLog;->sProcessLocalCalendarsAttempts:I

    int-to-long v2, v1

    .line 1029
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1028
    invoke-virtual {p0, v0, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1031
    :cond_0
    sget v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sProcessLocalEventsAttempts:I

    if-lez v0, :cond_1

    .line 1032
    const/16 v0, 0xf

    sget v1, Lcom/google/android/syncadapters/calendar/SyncLog;->sProcessLocalEventsAttempts:I

    int-to-long v2, v1

    .line 1033
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1032
    invoke-virtual {p0, v0, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1035
    :cond_1
    return-void
.end method

.method private static archivedFileName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 314
    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static classifyFeed(Ljava/lang/String;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    if-nez p0, :cond_0

    .line 485
    const-string v0, "NONE"

    .line 506
    :goto_0
    return-object v0

    .line 487
    :cond_0
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    const-string v0, "PRIMARY"

    goto :goto_0

    .line 490
    :cond_1
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/timely/CalendarType;->calculateType(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 506
    const-string v0, "WTF"

    goto :goto_0

    .line 492
    :pswitch_0
    const-string v0, "BIRTHDAY"

    goto :goto_0

    .line 494
    :pswitch_1
    const-string v0, "HOLIDAY"

    goto :goto_0

    .line 496
    :pswitch_2
    const-string v0, "ROOM"

    goto :goto_0

    .line 498
    :pswitch_3
    const-string v0, "GROUP"

    goto :goto_0

    .line 500
    :pswitch_4
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 502
    :pswitch_5
    const-string v0, "BLACKLISTED"

    goto :goto_0

    .line 504
    :pswitch_6
    const-string v0, "INDIVIDUAL"

    goto :goto_0

    .line 490
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method private static classifyTimingTag(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 653
    const-string v0, "DB: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    const/4 v0, 0x1

    .line 658
    :goto_0
    return v0

    .line 655
    :cond_0
    const-string v0, "API: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    const/4 v0, 0x2

    goto :goto_0

    .line 658
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static clearDeletionValues()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1054
    sput v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sDeletionsInBatch:I

    .line 1055
    sput v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sDeletionsInBatchPercent:I

    .line 1056
    sput v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sTotalDeletions:I

    .line 1057
    sput v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sTotalDeletionsPercent:I

    .line 1058
    sput v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sDeletionsInEditableCalendars:I

    .line 1059
    sput v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sEntriesInEditableCalendars:I

    .line 1060
    return-void
.end method

.method private static determineSyncType(Landroid/os/Bundle;Landroid/accounts/Account;Landroid/content/ContentProviderClient;[Lcom/google/android/syncadapters/calendar/SyncHooks;)V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 537
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getFeedId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 540
    const-string v0, "DEVICE"

    sput-object v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sSyncType:Ljava/lang/String;

    .line 541
    const-string v0, "feed"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "feed"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 542
    const-string v0, "TICKLE"

    sput-object v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sSyncType:Ljava/lang/String;

    :cond_0
    :goto_0
    move v0, v1

    .line 559
    :goto_1
    array-length v2, p3

    if-ge v0, v2, :cond_13

    .line 560
    aget-object v2, p3, v0

    invoke-interface {v2, p1, p0}, Lcom/google/android/syncadapters/calendar/SyncHooks;->isHookSpecificSync(Landroid/accounts/Account;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 561
    aget-object v2, p3, v0

    invoke-interface {v2}, Lcom/google/android/syncadapters/calendar/SyncHooks;->getHookSyncTypePrefix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/google/android/syncadapters/calendar/SyncLog;->sSyncType:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "#"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/android/syncadapters/calendar/SyncLog;->sSyncType:Ljava/lang/String;

    .line 562
    if-eqz v3, :cond_13

    .line 563
    aget-object v0, p3, v0

    invoke-interface {v0, v3}, Lcom/google/android/syncadapters/calendar/SyncHooks;->extractCalendarIdFromSubscriptionUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 571
    :goto_2
    const-string v2, "sync_extra_upsync"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 572
    const-string v4, "UPSYNC#"

    sget-object v2, Lcom/google/android/syncadapters/calendar/SyncLog;->sSyncType:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    sput-object v2, Lcom/google/android/syncadapters/calendar/SyncLog;->sSyncType:Ljava/lang/String;

    .line 575
    :cond_1
    if-nez v0, :cond_2

    .line 576
    invoke-static {v3}, Lcom/google/android/syncadapters/calendar/Utils;->parseFeedId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 578
    :cond_2
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/Utils;->isGoogleConsumerAccount(Landroid/accounts/Account;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "CONSUMER"

    :goto_4
    sput-object v2, Lcom/google/android/syncadapters/calendar/SyncLog;->sAccountType:Ljava/lang/String;

    .line 580
    sput-object v6, Lcom/google/android/syncadapters/calendar/SyncLog;->sTooManyDeletionsResolution:Ljava/lang/String;

    .line 581
    const-string v2, "deletions_override"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 582
    const-string v1, "OVERRIDE"

    sput-object v1, Lcom/google/android/syncadapters/calendar/SyncLog;->sTooManyDeletionsResolution:Ljava/lang/String;

    .line 587
    :cond_3
    :goto_5
    invoke-static {v0, p1}, Lcom/google/android/syncadapters/calendar/SyncLog;->classifyFeed(Ljava/lang/String;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/syncadapters/calendar/SyncLog;->sCalendarType:Ljava/lang/String;

    .line 589
    if-nez v3, :cond_f

    .line 590
    const-string v0, "NA"

    sput-object v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sCalendarVisibility:Ljava/lang/String;

    .line 591
    const-string v0, "NA"

    sput-object v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sCalendarAccess:Ljava/lang/String;

    .line 617
    :cond_4
    :goto_6
    return-void

    .line 543
    :cond_5
    const-string v0, "sync_periodic"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 544
    const-string v0, "PERIODIC"

    sput-object v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sSyncType:Ljava/lang/String;

    goto/16 :goto_0

    .line 545
    :cond_6
    const-string v0, "sync_default"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 546
    const-string v0, "DEFAULT"

    sput-object v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sSyncType:Ljava/lang/String;

    goto/16 :goto_0

    .line 547
    :cond_7
    const-string v0, "moveWindow"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 548
    const-string v0, "MOVE-WINDOW"

    sput-object v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sSyncType:Ljava/lang/String;

    goto/16 :goto_0

    .line 549
    :cond_8
    const-string v0, "force"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 550
    const-string v0, "MANUAL"

    sput-object v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sSyncType:Ljava/lang/String;

    goto/16 :goto_0

    .line 551
    :cond_9
    const-string v0, "upload"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 552
    const-string v0, "UPLOAD"

    sput-object v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sSyncType:Ljava/lang/String;

    goto/16 :goto_0

    .line 553
    :cond_a
    const-string v0, "feed_internal"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    const-string v0, "IN-APP"

    sput-object v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sSyncType:Ljava/lang/String;

    goto/16 :goto_0

    .line 559
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 572
    :cond_c
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 578
    :cond_d
    const-string v2, "DASHER"

    goto/16 :goto_4

    .line 583
    :cond_e
    const-string v2, "discard_deletions"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 584
    const-string v1, "DISCARD"

    sput-object v1, Lcom/google/android/syncadapters/calendar/SyncLog;->sTooManyDeletionsResolution:Ljava/lang/String;

    goto :goto_5

    .line 595
    :cond_f
    const-string v1, "WTF"

    sput-object v1, Lcom/google/android/syncadapters/calendar/SyncLog;->sCalendarVisibility:Ljava/lang/String;

    .line 596
    const-string v1, "WTF"

    sput-object v1, Lcom/google/android/syncadapters/calendar/SyncLog;->sCalendarAccess:Ljava/lang/String;

    .line 600
    :try_start_0
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "calendar_access_level"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "visible"

    aput-object v4, v2, v3

    sget-object v3, Lcom/google/android/syncadapters/calendar/Utils;->WHERE_ACCOUNT_AND_TYPE:Ljava/lang/String;

    const-string v4, "ownerAccount"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x7

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v7, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const/4 v5, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 605
    if-eqz v6, :cond_10

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_10

    .line 606
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 607
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->accessModeString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sCalendarAccess:Ljava/lang/String;

    .line 608
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "VISIBLE"

    :goto_7
    sput-object v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sCalendarVisibility:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    :cond_10
    if-eqz v6, :cond_4

    .line 614
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6

    .line 608
    :cond_11
    :try_start_1
    const-string v0, "INVISIBLE"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    .line 610
    :catch_0
    move-exception v0

    .line 611
    :try_start_2
    sget-object v1, Lcom/google/android/syncadapters/calendar/SyncLog;->TAG:Ljava/lang/String;

    const-string v2, "Getting feed info"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 613
    if-eqz v6, :cond_4

    .line 614
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6

    .line 613
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_12

    .line 614
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_12
    throw v0

    :cond_13
    move-object v0, v6

    goto/16 :goto_2
.end method

.method public static endSync(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;Z)V
    .locals 9

    .prologue
    .line 936
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/google/android/syncadapters/calendar/SyncLog;->sSyncStartTimeMs:J

    sub-long v4, v0, v2

    .line 937
    invoke-static {p2, p3}, Lcom/google/android/syncadapters/calendar/SyncLog;->getSyncStatus(Landroid/content/SyncResult;Z)Ljava/lang/String;

    move-result-object v0

    .line 939
    invoke-static {}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->getInstance()Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    move-result-object v1

    .line 941
    invoke-static {}, Lcom/google/android/syncadapters/calendar/SyncLog;->getDeletionDimensions()Landroid/util/SparseArray;

    move-result-object v7

    .line 942
    const/16 v2, 0x18

    invoke-virtual {v7, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 944
    new-instance v8, Landroid/util/SparseLongArray;

    invoke-direct {v8}, Landroid/util/SparseLongArray;-><init>()V

    .line 945
    const/16 v0, 0xa

    sget-wide v2, Lcom/google/android/syncadapters/calendar/SyncLog;->sRemoteApiTimeMs:J

    invoke-virtual {v8, v0, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 946
    const/16 v0, 0xb

    sget-wide v2, Lcom/google/android/syncadapters/calendar/SyncLog;->sLocalDbTimeMs:J

    invoke-virtual {v8, v0, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 947
    invoke-static {v8}, Lcom/google/android/syncadapters/calendar/SyncLog;->addDeletionMetrics(Landroid/util/SparseLongArray;)V

    .line 948
    invoke-static {v8}, Lcom/google/android/syncadapters/calendar/SyncLog;->addProcessLocalChangesMetrics(Landroid/util/SparseLongArray;)V

    .line 950
    const-string v2, "End"

    sget-object v3, Lcom/google/android/syncadapters/calendar/SyncLog;->sSyncType:Ljava/lang/String;

    move-object v6, p2

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logSyncLogEvent(Ljava/lang/String;Ljava/lang/String;JLandroid/content/SyncResult;Landroid/util/SparseArray;Landroid/util/SparseLongArray;)V

    .line 952
    sget-object v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sSyncType:Ljava/lang/String;

    const-string v2, "Total sync time"

    invoke-virtual {v1, v0, v2, v4, v5}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logSyncLogTiming(Ljava/lang/String;Ljava/lang/String;J)V

    .line 976
    return-void
.end method

.method static getBucket(J)Ljava/lang/String;
    .locals 6

    .prologue
    .line 449
    const-wide/16 v0, 0xa

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 451
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 459
    :goto_0
    return-object v0

    .line 453
    :cond_0
    const-wide/32 v0, 0x186a0

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    .line 455
    const-string v0, "100000+"

    goto :goto_0

    .line 457
    :cond_1
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    long-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    .line 458
    long-to-double v2, p0

    long-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    mul-long/2addr v0, v2

    .line 459
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getCombinedLogs(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/ByteArrayOutputStream;
    .locals 5

    .prologue
    .line 288
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 289
    :goto_0
    if-ltz p2, :cond_1

    .line 290
    invoke-static {p1, p2}, Lcom/google/android/syncadapters/calendar/SyncLog;->archivedFileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 294
    invoke-static {v0, v1}, Lcom/google/android/gms/common/util/IOUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 295
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :cond_0
    :goto_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    sget-object v2, Lcom/google/android/syncadapters/calendar/SyncLog;->TAG:Ljava/lang/String;

    const-string v3, "Reading a logfile"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 301
    :cond_1
    return-object v1
.end method

.method public static getCombinedSyncHistoryByteArray(Landroid/content/Context;)[B
    .locals 2

    .prologue
    .line 309
    const-string v0, "sync_history"

    const/16 v1, 0xa

    invoke-static {p0, v0, v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->getCombinedLogs(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 309
    return-object v0
.end method

.method public static getCombinedSyncLogByteArray(Landroid/content/Context;)[B
    .locals 2

    .prologue
    .line 305
    const-string v0, "sync_log"

    const/4 v1, 0x5

    invoke-static {p0, v0, v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->getCombinedLogs(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static getDebugString(Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;Lcom/google/api/services/calendar/model/Event;Landroid/content/Entity;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 797
    if-eqz p0, :cond_0

    .line 798
    const-string v1, "Calendar[ syncId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->calendarSyncId:Ljava/lang/String;

    .line 799
    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/SyncLog;->sanitizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ] "

    .line 800
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    :cond_0
    if-eqz p1, :cond_7

    .line 803
    const-string v1, "Event[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getRecurringEventId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 805
    const-string v1, "recurringEventId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 806
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getRecurringEventId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    .line 807
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    :cond_1
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getHabitInstance()Lcom/google/api/services/calendar/model/EventHabitInstance;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 810
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getHabitInstance()Lcom/google/api/services/calendar/model/EventHabitInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/EventHabitInstance;->getParentId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 811
    const-string v1, "habitParentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 812
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getHabitInstance()Lcom/google/api/services/calendar/model/EventHabitInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/EventHabitInstance;->getParentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    .line 813
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    :cond_2
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getSequence()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 816
    const-string v1, "sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 817
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getSequence()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    .line 818
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    :cond_3
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getUpdated()Lcom/google/api/client/util/DateTime;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 821
    const-string v1, "updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 822
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getUpdated()Lcom/google/api/client/util/DateTime;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/util/DateTime;->toStringRfc3339()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    .line 823
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    :cond_4
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getEtag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 826
    const-string v1, "etag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 827
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getEtag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    .line 828
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    :cond_5
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 831
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 832
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    .line 833
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    :cond_6
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    :cond_7
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 838
    invoke-virtual {p2}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 839
    const-string v2, "Entity[ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 841
    const-string v2, "id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    .line 842
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    .line 843
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    :cond_8
    const-string v2, "original_id"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 846
    const-string v2, "original_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "original_id"

    .line 847
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    .line 848
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    :cond_9
    const-string v2, "_sync_id"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 851
    const-string v2, "sync_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_sync_id"

    .line 852
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    .line 853
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    :cond_a
    const-string v2, "original_sync_id"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 856
    const-string v2, "original_sync_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "original_sync_id"

    .line 857
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    .line 858
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    :cond_b
    const-string v2, "sync_data2"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 861
    const-string v2, "sequence="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sync_data2"

    .line 862
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    .line 863
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    :cond_c
    const-string v2, "sync_data5"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 866
    const-string v2, "updated="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sync_data5"

    .line 867
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    .line 868
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    :cond_d
    const-string v2, "sync_data4"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 871
    const-string v2, "etag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sync_data4"

    .line 872
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    .line 873
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    :cond_e
    const-string v2, "calendar_id"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 876
    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "calendar_id"

    .line 877
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    .line 878
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    :cond_f
    const-string v2, "cal_sync1"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 881
    const-string v2, "calendar_sync_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cal_sync1"

    .line 882
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->sanitizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    .line 883
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    :cond_10
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDeletionDimensions()Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 997
    sget v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sTotalDeletions:I

    if-gtz v0, :cond_0

    .line 999
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1012
    :goto_0
    return-object v0

    .line 1001
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 1003
    const/16 v1, 0xd

    sget v2, Lcom/google/android/syncadapters/calendar/SyncLog;->sDeletionsInBatch:I

    int-to-long v2, v2

    .line 1004
    invoke-static {v2, v3}, Lcom/google/android/syncadapters/calendar/SyncLog;->getBucket(J)Ljava/lang/String;

    move-result-object v2

    .line 1003
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1005
    const/16 v1, 0xe

    sget v2, Lcom/google/android/syncadapters/calendar/SyncLog;->sDeletionsInBatchPercent:I

    .line 1006
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1005
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1007
    const/16 v1, 0xf

    sget v2, Lcom/google/android/syncadapters/calendar/SyncLog;->sTotalDeletions:I

    int-to-long v2, v2

    .line 1008
    invoke-static {v2, v3}, Lcom/google/android/syncadapters/calendar/SyncLog;->getBucket(J)Ljava/lang/String;

    move-result-object v2

    .line 1007
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1009
    const/16 v1, 0x10

    sget v2, Lcom/google/android/syncadapters/calendar/SyncLog;->sTotalDeletionsPercent:I

    .line 1010
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1009
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static getLastStartedSyncAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    sget-object v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public static getLastStartedSyncCalendarAccess()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    sget-object v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sCalendarAccess:Ljava/lang/String;

    return-object v0
.end method

.method public static getLastStartedSyncCalendarType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    sget-object v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sCalendarType:Ljava/lang/String;

    return-object v0
.end method

.method public static getLastStartedSyncCalendarVisibility()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    sget-object v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sCalendarVisibility:Ljava/lang/String;

    return-object v0
.end method

.method public static getLastStartedSyncType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    sget-object v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sSyncType:Ljava/lang/String;

    return-object v0
.end method

.method public static getLastTooManyDeletionsResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    sget-object v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sTooManyDeletionsResolution:Ljava/lang/String;

    return-object v0
.end method

.method private static getSyncStatus(Landroid/content/SyncResult;Z)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1039
    if-eqz p1, :cond_0

    .line 1040
    const-string v0, "CANCEL"

    .line 1046
    :goto_0
    return-object v0

    .line 1042
    :cond_0
    invoke-virtual {p0}, Landroid/content/SyncResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1043
    const-string v0, "ERROR"

    goto :goto_0

    .line 1045
    :cond_1
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 1046
    iget-wide v0, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const-string v0, "WARNING"

    goto :goto_0

    :cond_2
    const-string v0, "SUCCESS"

    goto :goto_0
.end method

.method static hasDefaultPeriodic(Ljava/lang/Iterable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/content/PeriodicSync;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1071
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/PeriodicSync;

    .line 1072
    iget-object v2, v0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    iget-object v0, v0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1073
    :cond_1
    const/4 v0, 0x1

    .line 1076
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasSyncLogs(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 260
    const-string v0, "sync_log"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method static hasTimelyPeriodic(Ljava/lang/Iterable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/content/PeriodicSync;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1081
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/PeriodicSync;

    .line 1082
    iget-object v2, v0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v0, v0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    const-string v2, "sync_periodic"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    const/4 v0, 0x1

    .line 1086
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 256
    sput-object p0, Lcom/google/android/syncadapters/calendar/SyncLog;->sContext:Landroid/content/Context;

    .line 257
    return-void
.end method

.method public static varargs log([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 748
    return-void
.end method

.method public static logError(Ljava/lang/Throwable;Landroid/content/Entity;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 779
    invoke-static {p0, v0, v0, p1, p2}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;Lcom/google/api/services/calendar/model/Event;Landroid/content/Entity;Ljava/lang/String;)V

    .line 780
    return-void
.end method

.method public static logError(Ljava/lang/Throwable;Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;Lcom/google/api/services/calendar/model/Event;Landroid/content/Entity;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 775
    invoke-static {p1, p2, p3}, Lcom/google/android/syncadapters/calendar/SyncLog;->getDebugString(Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;Lcom/google/api/services/calendar/model/Event;Landroid/content/Entity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 776
    return-void
.end method

.method public static logError(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 761
    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 762
    return-void
.end method

.method public static varargs logError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 765
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 766
    sget-object v1, Lcom/google/android/syncadapters/calendar/SyncLog;->TAG:Ljava/lang/String;

    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, p0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 768
    return-void
.end method

.method public static sanitizeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 757
    sget-object v0, Lcom/google/android/syncadapters/calendar/SyncLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/calendarcommon2/LogUtils;->sanitizeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static saveDeletionValues(III)V
    .locals 1

    .prologue
    .line 406
    sget v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sDeletionsInBatch:I

    if-le p0, v0, :cond_0

    .line 407
    sput p0, Lcom/google/android/syncadapters/calendar/SyncLog;->sDeletionsInBatch:I

    .line 408
    mul-int/lit8 v0, p0, 0x64

    div-int/2addr v0, p2

    sput v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sDeletionsInBatchPercent:I

    .line 410
    :cond_0
    sget v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sTotalDeletions:I

    if-le p1, v0, :cond_1

    .line 411
    sput p1, Lcom/google/android/syncadapters/calendar/SyncLog;->sTotalDeletions:I

    .line 412
    mul-int/lit8 v0, p1, 0x64

    div-int/2addr v0, p2

    sput v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sTotalDeletionsPercent:I

    .line 414
    :cond_1
    return-void
.end method

.method public static saveDeletionValuesForEditableCalendars(II)V
    .locals 0

    .prologue
    .line 423
    sput p0, Lcom/google/android/syncadapters/calendar/SyncLog;->sDeletionsInEditableCalendars:I

    .line 424
    sput p1, Lcom/google/android/syncadapters/calendar/SyncLog;->sEntriesInEditableCalendars:I

    .line 425
    return-void
.end method

.method public static saveProcessLocalChangesAttempts(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 435
    if-eqz p0, :cond_0

    .line 436
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sProcessLocalCalendarsAttempts:I

    .line 438
    :cond_0
    if-eqz p1, :cond_1

    .line 439
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sProcessLocalEventsAttempts:I

    .line 441
    :cond_1
    return-void
.end method

.method public static start(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 685
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/SyncLog;->classifyTimingTag(Ljava/lang/String;)I

    move-result v0

    .line 686
    if-eq v0, v2, :cond_0

    if-eq v0, v3, :cond_0

    .line 708
    :goto_0
    return-void

    .line 689
    :cond_0
    sget-object v1, Lcom/google/android/syncadapters/calendar/SyncLog;->START_STOP_LOG_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 690
    if-ne v0, v3, :cond_2

    .line 691
    :try_start_0
    sget v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sRemoteApiCalls:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sRemoteApiCalls:I

    if-ne v0, v2, :cond_1

    .line 692
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcom/google/android/syncadapters/calendar/SyncLog;->sRemoteApiCallStart:J

    .line 707
    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 694
    :cond_2
    if-ne v0, v2, :cond_1

    .line 695
    :try_start_1
    sget v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sLocalDbQueries:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sLocalDbQueries:I

    if-ne v0, v2, :cond_1

    .line 696
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcom/google/android/syncadapters/calendar/SyncLog;->sLocalDbQueryStart:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static startSync(Landroid/os/Bundle;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;[Lcom/google/android/syncadapters/calendar/SyncHooks;)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 342
    :try_start_0
    invoke-static {p0, p1, p2, p4}, Lcom/google/android/syncadapters/calendar/SyncLog;->determineSyncType(Landroid/os/Bundle;Landroid/accounts/Account;Landroid/content/ContentProviderClient;[Lcom/google/android/syncadapters/calendar/SyncHooks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_0
    invoke-static {}, Lcom/google/android/syncadapters/calendar/SyncLog;->clearDeletionValues()V

    .line 352
    sget-object v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sStartTimesMs:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 354
    sput v7, Lcom/google/android/syncadapters/calendar/SyncLog;->sRemoteApiCalls:I

    .line 355
    sput-wide v4, Lcom/google/android/syncadapters/calendar/SyncLog;->sRemoteApiCallStart:J

    .line 356
    sput-wide v4, Lcom/google/android/syncadapters/calendar/SyncLog;->sRemoteApiTimeMs:J

    .line 358
    sput v7, Lcom/google/android/syncadapters/calendar/SyncLog;->sLocalDbQueries:I

    .line 359
    sput-wide v4, Lcom/google/android/syncadapters/calendar/SyncLog;->sLocalDbQueryStart:J

    .line 360
    sput-wide v4, Lcom/google/android/syncadapters/calendar/SyncLog;->sLocalDbTimeMs:J

    .line 362
    sput-object v6, Lcom/google/android/syncadapters/calendar/SyncLog;->sCachedStartTimeLog:Ljava/lang/String;

    .line 364
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sSyncStartTimeMs:J

    .line 367
    invoke-static {}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->getInstance()Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    move-result-object v1

    .line 368
    const-string v0, "DEFAULT"

    sget-object v2, Lcom/google/android/syncadapters/calendar/SyncLog;->sSyncType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    const/16 v0, 0x15

    sget-object v2, Lcom/google/android/syncadapters/calendar/SyncLog;->sContext:Landroid/content/Context;

    .line 370
    invoke-static {v2, p1}, Lcom/google/android/syncadapters/calendar/PendingSyncTracker;->isSyncAlwaysPending(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 369
    invoke-virtual {v1, v0, v2}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setCustomDimension(ILjava/lang/String;)V

    .line 371
    const-string v0, "com.android.calendar"

    .line 372
    invoke-static {p1, v0}, Landroid/content/ContentResolver;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 373
    const/16 v2, 0x16

    .line 375
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->hasDefaultPeriodic(Ljava/lang/Iterable;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 373
    invoke-virtual {v1, v2, v3}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setCustomDimension(ILjava/lang/String;)V

    .line 376
    const/16 v2, 0x19

    .line 378
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->hasTimelyPeriodic(Ljava/lang/Iterable;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-virtual {v1, v2, v0}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setCustomDimension(ILjava/lang/String;)V

    .line 380
    :cond_0
    const-string v2, "Start"

    sget-object v3, Lcom/google/android/syncadapters/calendar/SyncLog;->sSyncType:Ljava/lang/String;

    move-object v7, v6

    move-object v8, v6

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logSyncLogEvent(Ljava/lang/String;Ljava/lang/String;JLandroid/content/SyncResult;Landroid/util/SparseArray;Landroid/util/SparseLongArray;)V

    .line 395
    return-void

    .line 343
    :catch_0
    move-exception v0

    .line 345
    sget-object v1, Lcom/google/android/syncadapters/calendar/SyncLog;->TAG:Ljava/lang/String;

    const-string v2, "Could not determine sync type."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 346
    invoke-static {}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->getInstance()Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    move-result-object v1

    const-string v2, "SyncLog#determineSyncType"

    .line 347
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-virtual {v1, v2, v0}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logSyncError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static stop(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 714
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/SyncLog;->classifyTimingTag(Ljava/lang/String;)I

    move-result v0

    .line 715
    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 744
    :goto_0
    return-void

    .line 718
    :cond_0
    sget-object v1, Lcom/google/android/syncadapters/calendar/SyncLog;->START_STOP_LOG_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 719
    if-ne v0, v2, :cond_2

    .line 720
    :try_start_0
    sget v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sLocalDbQueries:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sLocalDbQueries:I

    if-nez v0, :cond_1

    .line 721
    sget-wide v2, Lcom/google/android/syncadapters/calendar/SyncLog;->sLocalDbTimeMs:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget-wide v6, Lcom/google/android/syncadapters/calendar/SyncLog;->sLocalDbQueryStart:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    sput-wide v2, Lcom/google/android/syncadapters/calendar/SyncLog;->sLocalDbTimeMs:J

    .line 743
    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 723
    :cond_2
    if-ne v0, v3, :cond_1

    .line 724
    :try_start_1
    sget v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sRemoteApiCalls:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/google/android/syncadapters/calendar/SyncLog;->sRemoteApiCalls:I

    if-nez v0, :cond_1

    .line 725
    sget-wide v2, Lcom/google/android/syncadapters/calendar/SyncLog;->sRemoteApiTimeMs:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget-wide v6, Lcom/google/android/syncadapters/calendar/SyncLog;->sRemoteApiCallStart:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    sput-wide v2, Lcom/google/android/syncadapters/calendar/SyncLog;->sRemoteApiTimeMs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
