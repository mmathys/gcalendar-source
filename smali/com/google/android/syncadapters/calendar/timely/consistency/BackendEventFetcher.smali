.class public Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;
.super Ljava/lang/Object;
.source "BackendEventFetcher.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/api/services/calendar/model/Event;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final FIELDS:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCalendarId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mEndTimeMs:J

.field private mExecutedRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/client/util/GenericData;",
            ">;"
        }
    .end annotation
.end field

.field private final mNoLimit:Z

.field private final mStartTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const-class v0, Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;->TAG:Ljava/lang/String;

    .line 38
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "nextPageToken"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "items/id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "items/end"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "items/status"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "items/organizer"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "items/recurringEventId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "items/start"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "items/endTimeUnspecified"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "items/originalStartTime"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "items/sequence"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "items/location"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "items/etag"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "items/updated"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "items/phantom"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "items/description"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "items/summary"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "items/privateEventData/smartMailInfo/source"

    aput-object v2, v0, v1

    .line 56
    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ",items/habitInstance/parentId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;->FIELDS:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JJZ)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;->mCalendarId:Ljava/lang/String;

    .line 81
    iput-wide p3, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;->mStartTimeMs:J

    .line 82
    iput-wide p5, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;->mEndTimeMs:J

    .line 83
    iput-boolean p7, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;->mNoLimit:Z

    .line 84
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/Event;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    new-instance v0, Lcom/google/android/apiary/GoogleRequestInitializer;

    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;->mContext:Landroid/content/Context;

    const-string v4, "oauth2:https://www.googleapis.com/auth/calendar"

    sget-object v5, Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;->TAG:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5}, Lcom/google/android/apiary/GoogleRequestInitializer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/google/android/syncadapters/calendar/Utils;->setUserAgentFromContext(Lcom/google/android/apiary/GoogleRequestInitializer;Landroid/content/Context;)V

    .line 105
    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;->mCalendarId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/apiary/GoogleRequestInitializer;->setEmail(Ljava/lang/String;)V

    .line 106
    new-instance v4, Lcom/google/api/services/calendar/Calendar;

    new-instance v3, Lcom/google/api/client/http/javanet/NetHttpTransport;

    invoke-direct {v3}, Lcom/google/api/client/http/javanet/NetHttpTransport;-><init>()V

    new-instance v5, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;

    invoke-direct {v5}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;-><init>()V

    invoke-direct {v4, v3, v5, v0}, Lcom/google/api/services/calendar/Calendar;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    .line 110
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 111
    new-instance v5, Lcom/google/android/calendar/builders/ListBuilder;

    invoke-direct {v5}, Lcom/google/android/calendar/builders/ListBuilder;-><init>()V

    .line 114
    :try_start_0
    invoke-virtual {v4}, Lcom/google/api/services/calendar/Calendar;->events()Lcom/google/api/services/calendar/Calendar$Events;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;->mCalendarId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/google/api/services/calendar/Calendar$Events;->list(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$List;

    move-result-object v0

    .line 115
    new-instance v4, Lcom/google/api/client/util/DateTime;

    iget-wide v6, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;->mStartTimeMs:J

    const/4 v8, 0x0

    invoke-direct {v4, v6, v7, v8}, Lcom/google/api/client/util/DateTime;-><init>(JI)V

    .line 116
    invoke-virtual {v0, v4}, Lcom/google/api/services/calendar/Calendar$Events$List;->setTimeMin(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/calendar/Calendar$Events$List;

    move-result-object v0

    new-instance v4, Lcom/google/api/client/util/DateTime;

    iget-wide v6, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;->mEndTimeMs:J

    const/4 v8, 0x0

    invoke-direct {v4, v6, v7, v8}, Lcom/google/api/client/util/DateTime;-><init>(JI)V

    .line 117
    invoke-virtual {v0, v4}, Lcom/google/api/services/calendar/Calendar$Events$List;->setTimeMax(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/calendar/Calendar$Events$List;

    move-result-object v0

    const-string v4, "UTC"

    .line 118
    invoke-virtual {v0, v4}, Lcom/google/api/services/calendar/Calendar$Events$List;->setTimeZone(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$List;

    move-result-object v0

    const/4 v4, 0x1

    .line 119
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/api/services/calendar/Calendar$Events$List;->setMaxAttendees(Ljava/lang/Integer;)Lcom/google/api/services/calendar/Calendar$Events$List;

    move-result-object v0

    const/4 v4, 0x1

    .line 120
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/api/services/calendar/Calendar$Events$List;->setSingleEvents(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$List;

    move-result-object v0

    const/16 v4, 0xc8

    .line 121
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/api/services/calendar/Calendar$Events$List;->setMaxResults(Ljava/lang/Integer;)Lcom/google/api/services/calendar/Calendar$Events$List;

    move-result-object v0

    sget-object v4, Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;->FIELDS:Ljava/lang/String;

    .line 122
    invoke-virtual {v0, v4}, Lcom/google/api/services/calendar/Calendar$Events$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$List;

    move-result-object v6

    .line 124
    :goto_0
    invoke-virtual {v6}, Lcom/google/api/services/calendar/Calendar$Events$List;->clone()Lcom/google/api/client/util/GenericData;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/android/calendar/builders/ListBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/ListBuilder;

    .line 125
    invoke-virtual {v6}, Lcom/google/api/services/calendar/Calendar$Events$List;->execute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Events;

    .line 126
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Events;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v4, v1

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/calendar/model/Event;

    .line 127
    if-nez v1, :cond_0

    .line 128
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;->TAG:Ljava/lang/String;

    const-string v8, "Fetched null object from the server."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    :try_start_1
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;->TAG:Ljava/lang/String;

    const-string v3, "Exception while fetching events for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;->TAG:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;->mCalendarId:Ljava/lang/String;

    .line 168
    invoke-static {v7, v8}, Lcom/android/calendarcommon2/LogUtils;->sanitizeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 167
    invoke-static {v1, v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    invoke-virtual {v5}, Lcom/google/android/calendar/builders/ListBuilder;->buildImmutable()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;->mExecutedRequests:Ljava/util/List;

    move-object v0, v2

    .line 173
    :goto_2
    return-object v0

    .line 131
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/Event;->getId()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    .line 132
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;->TAG:Ljava/lang/String;

    const-string v8, "Fetched object with null id from the server."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 171
    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Lcom/google/android/calendar/builders/ListBuilder;->buildImmutable()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;->mExecutedRequests:Ljava/util/List;

    throw v0

    .line 139
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/Event;->getPrivateEventData()Lcom/google/api/services/calendar/model/PrivateEventData;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 140
    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/Event;->getPrivateEventData()Lcom/google/api/services/calendar/model/PrivateEventData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/api/services/calendar/model/PrivateEventData;->getSmartMailInfo()Lcom/google/api/services/calendar/model/SmartMailInfo;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 141
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/google/api/services/calendar/model/Event;->setDescription(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    .line 146
    :cond_2
    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/Event;->getHabitInstance()Lcom/google/api/services/calendar/model/EventHabitInstance;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 147
    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/Event;->getHabitInstance()Lcom/google/api/services/calendar/model/EventHabitInstance;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/api/services/calendar/model/EventHabitInstance;->getParentId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 148
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/google/api/services/calendar/model/Event;->setDescription(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    .line 151
    :cond_3
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v1, v4, 0x1

    .line 153
    iget-boolean v4, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;->mNoLimit:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_4

    const/16 v4, 0x190

    if-lt v1, v4, :cond_4

    .line 171
    invoke-virtual {v5}, Lcom/google/android/calendar/builders/ListBuilder;->buildImmutable()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;->mExecutedRequests:Ljava/util/List;

    move-object v0, v2

    .line 155
    goto :goto_2

    :cond_4
    move v4, v1

    .line 157
    goto/16 :goto_1

    .line 160
    :cond_5
    :try_start_4
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Events;->getNextPageToken()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 161
    if-nez v0, :cond_6

    .line 171
    invoke-virtual {v5}, Lcom/google/android/calendar/builders/ListBuilder;->buildImmutable()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;->mExecutedRequests:Ljava/util/List;

    move-object v0, v3

    .line 173
    goto :goto_2

    .line 164
    :cond_6
    :try_start_5
    invoke-virtual {v6, v0}, Lcom/google/api/services/calendar/Calendar$Events$List;->setPageToken(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$List;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v1, v4

    .line 165
    goto/16 :goto_0
.end method

.method public getExecutedRequests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/client/util/GenericData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;->mExecutedRequests:Ljava/util/List;

    return-object v0
.end method
