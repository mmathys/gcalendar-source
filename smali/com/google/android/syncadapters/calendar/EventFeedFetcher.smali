.class public Lcom/google/android/syncadapters/calendar/EventFeedFetcher;
.super Lcom/google/android/apiary/FeedFetcher;
.source "EventFeedFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apiary/FeedFetcher",
        "<",
        "Lcom/google/api/services/calendar/model/Event;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccessRole:Ljava/lang/String;

.field private volatile mDefaultAllDayReminders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventReminder;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mDefaultReminders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventReminder;",
            ">;"
        }
    .end annotation
.end field

.field private final mFeedSyncState:Lcom/google/android/syncadapters/calendar/FeedState;

.field private volatile mLastUpdated:Ljava/lang/String;

.field private mMaxAttendees:I

.field private final mMaxResults:I

.field private final mPrimary:Z

.field private final mThreadStatsTag:I

.field private volatile mTimeZone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/services/calendar/Calendar$Events$List;Ljava/util/concurrent/BlockingQueue;Lcom/google/api/services/calendar/model/Event;Ljava/lang/String;Lcom/google/android/syncadapters/calendar/FeedState;IIZI)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/json/JsonFactory;",
            "Lcom/google/api/services/calendar/Calendar$Events$List;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/api/services/calendar/model/Event;",
            ">;",
            "Lcom/google/api/services/calendar/model/Event;",
            "Ljava/lang/String;",
            "Lcom/google/android/syncadapters/calendar/FeedState;",
            "IIZI)V"
        }
    .end annotation

    .prologue
    .line 58
    const-string v4, "items"

    const-class v5, Lcom/google/api/services/calendar/model/Event;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/google/android/apiary/FeedFetcher;-><init>(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;Ljava/lang/String;Ljava/lang/Class;Ljava/util/concurrent/BlockingQueue;Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mDefaultReminders:Ljava/util/List;

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mDefaultAllDayReminders:Ljava/util/List;

    .line 59
    iput-object p6, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mFeedSyncState:Lcom/google/android/syncadapters/calendar/FeedState;

    .line 60
    move/from16 v0, p7

    iput v0, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mMaxAttendees:I

    .line 61
    move/from16 v0, p8

    iput v0, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mMaxResults:I

    .line 62
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mPrimary:Z

    .line 63
    move/from16 v0, p10

    iput v0, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mThreadStatsTag:I

    .line 65
    invoke-virtual {p0, p2}, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->setRequestParams(Lcom/google/api/services/calendar/Calendar$Events$List;)V

    .line 66
    return-void
.end method

.method private setBaseParams(Lcom/google/api/services/calendar/Calendar$Events$List;Lcom/google/android/syncadapters/calendar/FeedState;Z)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 183
    iget v0, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mMaxResults:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/api/services/calendar/Calendar$Events$List;->setMaxResults(Ljava/lang/Integer;)Lcom/google/api/services/calendar/Calendar$Events$List;

    .line 185
    invoke-virtual {p2}, Lcom/google/android/syncadapters/calendar/FeedState;->getDoIncrementalSync()Z

    move-result v0

    .line 186
    invoke-virtual {p2}, Lcom/google/android/syncadapters/calendar/FeedState;->getUpdatedTime()Ljava/lang/String;

    move-result-object v1

    .line 188
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mLogTag:Ljava/lang/String;

    const-string v3, "EventFeedFetcher#setBaseParams doIncSync: %b noInc: %b feedUpdTime: %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 189
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    aput-object v1, v4, v5

    .line 188
    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 191
    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 192
    if-eqz v1, :cond_0

    .line 194
    invoke-static {v1}, Lcom/google/api/client/util/DateTime;->parseRfc3339(Ljava/lang/String;)Lcom/google/api/client/util/DateTime;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/api/services/calendar/Calendar$Events$List;->setUpdatedMin(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/calendar/Calendar$Events$List;

    .line 198
    :cond_0
    iget v0, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mMaxAttendees:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/api/services/calendar/Calendar$Events$List;->setMaxAttendees(Ljava/lang/Integer;)Lcom/google/api/services/calendar/Calendar$Events$List;

    .line 199
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/api/services/calendar/Calendar$Events$List;->setSupportsAllDayReminders(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$List;

    .line 200
    return-void
.end method


# virtual methods
.method protected executeUnparsed(Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;)Lcom/google/api/client/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    :try_start_0
    const-string v0, "API: Get Events List"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 83
    invoke-super {p0, p1}, Lcom/google/android/apiary/FeedFetcher;->executeUnparsed(Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;)Lcom/google/api/client/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 85
    const-string v1, "API: Get Events List"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 83
    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    const-string v1, "API: Get Events List"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public getAccessRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mAccessRole:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultAllDayReminders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventReminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mDefaultAllDayReminders:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultReminders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventReminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mDefaultReminders:Ljava/util/List;

    return-object v0
.end method

.method public getLastUpdated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mLastUpdated:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method protected onExecute(Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;)V
    .locals 4

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mLogTag:Ljava/lang/String;

    const-string v1, "Saving inProgress state: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 205
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mFeedSyncState:Lcom/google/android/syncadapters/calendar/FeedState;

    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/Utils;->getMapFromRequest(Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/calendar/FeedState;->setInProgressParams(Ljava/util/Map;)V

    .line 206
    return-void
.end method

.method protected parseField(Lcom/google/api/client/json/JsonParser;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 91
    const-string v0, "timeZone"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mTimeZone:Ljava/lang/String;

    move v0, v1

    .line 112
    :goto_0
    return v0

    .line 95
    :cond_0
    const-string v0, "updated"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mLastUpdated:Ljava/lang/String;

    move v0, v1

    .line 97
    goto :goto_0

    .line 99
    :cond_1
    const-string v0, "defaultReminders"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mDefaultReminders:Ljava/util/List;

    .line 101
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mDefaultReminders:Ljava/util/List;

    const-class v2, Lcom/google/api/services/calendar/model/EventReminder;

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/api/client/json/JsonParser;->parseArray(Ljava/util/Collection;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V

    move v0, v1

    .line 102
    goto :goto_0

    .line 104
    :cond_2
    const-string v0, "defaultAllDayReminders"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mDefaultAllDayReminders:Ljava/util/List;

    const-class v2, Lcom/google/api/services/calendar/model/EventReminder;

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/api/client/json/JsonParser;->parseArray(Ljava/util/Collection;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V

    move v0, v1

    .line 106
    goto :goto_0

    .line 108
    :cond_3
    const-string v0, "accessRole"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mAccessRole:Ljava/lang/String;

    move v0, v1

    .line 110
    goto :goto_0

    .line 112
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mThreadStatsTag:I

    or-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 72
    invoke-super {p0}, Lcom/google/android/apiary/FeedFetcher;->run()V

    .line 73
    iget v0, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mThreadStatsTag:I

    or-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 75
    return-void
.end method

.method protected setRequestParams(Lcom/google/api/services/calendar/Calendar$Events$List;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mFeedSyncState:Lcom/google/android/syncadapters/calendar/FeedState;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/FeedState;->getInProgressParams()Ljava/util/Map;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_1

    .line 140
    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mLogTag:Ljava/lang/String;

    const-string v4, "Resuming inProgress sync: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v3, v4, v1}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 141
    invoke-static {v0, p1}, Lcom/google/android/syncadapters/calendar/Utils;->setRequestFromMap(Ljava/util/Map;Lcom/google/api/services/calendar/Calendar$Events$List;)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mFeedSyncState:Lcom/google/android/syncadapters/calendar/FeedState;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/FeedState;->getUpgradeMinStart()J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mFeedSyncState:Lcom/google/android/syncadapters/calendar/FeedState;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/FeedState;->getUpgradeMinStart()J

    move-result-wide v4

    .line 147
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mFeedSyncState:Lcom/google/android/syncadapters/calendar/FeedState;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/FeedState;->getUpgradeMaxStart()J

    move-result-wide v6

    .line 148
    new-instance v0, Lcom/google/api/client/util/DateTime;

    invoke-direct {v0, v4, v5, v2}, Lcom/google/api/client/util/DateTime;-><init>(JI)V

    invoke-virtual {p1, v0}, Lcom/google/api/services/calendar/Calendar$Events$List;->setTimeMin(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/calendar/Calendar$Events$List;

    .line 149
    new-instance v0, Lcom/google/api/client/util/DateTime;

    invoke-direct {v0, v6, v7, v2}, Lcom/google/api/client/util/DateTime;-><init>(JI)V

    invoke-virtual {p1, v0}, Lcom/google/api/services/calendar/Calendar$Events$List;->setTimeMax(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/calendar/Calendar$Events$List;

    .line 150
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/api/services/calendar/Calendar$Events$List;->setSupportsAllDayReminders(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$List;

    .line 151
    iget v0, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mMaxAttendees:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/api/services/calendar/Calendar$Events$List;->setMaxAttendees(Ljava/lang/Integer;)Lcom/google/api/services/calendar/Calendar$Events$List;

    goto :goto_0

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mFeedSyncState:Lcom/google/android/syncadapters/calendar/FeedState;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/FeedState;->getWindowEnd()J

    move-result-wide v6

    .line 156
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mFeedSyncState:Lcom/google/android/syncadapters/calendar/FeedState;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/FeedState;->getMoveWindowEnd()J

    move-result-wide v8

    .line 158
    cmp-long v0, v6, v10

    if-lez v0, :cond_4

    move v4, v1

    .line 159
    :goto_1
    cmp-long v0, v8, v10

    if-eqz v0, :cond_5

    move v0, v1

    .line 161
    :goto_2
    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->mFeedSyncState:Lcom/google/android/syncadapters/calendar/FeedState;

    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->setBaseParams(Lcom/google/api/services/calendar/Calendar$Events$List;Lcom/google/android/syncadapters/calendar/FeedState;Z)V

    .line 163
    invoke-virtual {p1}, Lcom/google/api/services/calendar/Calendar$Events$List;->getUpdatedMin()Lcom/google/api/client/util/DateTime;

    move-result-object v3

    if-eqz v3, :cond_6

    move v3, v1

    .line 165
    :goto_3
    if-nez v0, :cond_7

    .line 166
    if-eqz v4, :cond_3

    .line 167
    new-instance v0, Lcom/google/api/client/util/DateTime;

    invoke-direct {v0, v6, v7, v2}, Lcom/google/api/client/util/DateTime;-><init>(JI)V

    invoke-virtual {p1, v0}, Lcom/google/api/services/calendar/Calendar$Events$List;->setTimeMax(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/calendar/Calendar$Events$List;

    .line 169
    :cond_3
    if-nez v3, :cond_0

    .line 170
    new-instance v0, Landroid/text/format/Time;

    const-string v3, "UTC"

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 172
    iget v3, v0, Landroid/text/format/Time;->year:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Landroid/text/format/Time;->year:I

    .line 173
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 174
    new-instance v3, Lcom/google/api/client/util/DateTime;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    invoke-direct {v3, v0, v1, v2}, Lcom/google/api/client/util/DateTime;-><init>(JI)V

    invoke-virtual {p1, v3}, Lcom/google/api/services/calendar/Calendar$Events$List;->setTimeMin(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/calendar/Calendar$Events$List;

    goto/16 :goto_0

    :cond_4
    move v4, v2

    .line 158
    goto :goto_1

    :cond_5
    move v0, v2

    .line 159
    goto :goto_2

    :cond_6
    move v3, v2

    .line 163
    goto :goto_3

    .line 177
    :cond_7
    new-instance v0, Lcom/google/api/client/util/DateTime;

    invoke-direct {v0, v6, v7, v2}, Lcom/google/api/client/util/DateTime;-><init>(JI)V

    invoke-virtual {p1, v0}, Lcom/google/api/services/calendar/Calendar$Events$List;->setTimeMin(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/calendar/Calendar$Events$List;

    .line 178
    new-instance v0, Lcom/google/api/client/util/DateTime;

    invoke-direct {v0, v8, v9, v2}, Lcom/google/api/client/util/DateTime;-><init>(JI)V

    invoke-virtual {p1, v0}, Lcom/google/api/services/calendar/Calendar$Events$List;->setTimeMax(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/calendar/Calendar$Events$List;

    goto/16 :goto_0
.end method
