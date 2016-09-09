.class public Lcom/google/android/syncadapters/calendar/timely/GrooveSync;
.super Ljava/lang/Object;
.source "GrooveSync.java"

# interfaces
.implements Lcom/google/android/syncadapters/calendar/SyncHooks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState;
    }
.end annotation


# static fields
.field private static final JSON_FACTORY:Lcom/google/api/client/json/JsonFactory;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

.field private mContext:Landroid/content/Context;

.field private final mDeferredEventIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHabitAPI:Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;

.field private final mHabitIdsAffectedBySync:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHabitIdsOfSyncedInstances:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHabitIdsOfSyncedParents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

.field private mStore:Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

.field private mTrackedSyncStartMillis:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->TAG:Ljava/lang/String;

    .line 116
    new-instance v0, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;

    invoke-direct {v0}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->JSON_FACTORY:Lcom/google/api/client/json/JsonFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;

    new-instance v1, Lcom/google/android/calendar/api/HabitApiStoreImpl;

    invoke-direct {v1}, Lcom/google/android/calendar/api/HabitApiStoreImpl;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;-><init>(Lcom/google/android/calendar/api/CrudApi;)V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mHabitAPI:Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;

    .line 124
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mHabitIdsOfSyncedInstances:Ljava/util/HashSet;

    .line 125
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mHabitIdsAffectedBySync:Ljava/util/HashSet;

    .line 126
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mDeferredEventIds:Ljava/util/HashSet;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mHabitIdsOfSyncedParents:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->JSON_FACTORY:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method

.method private broadcastHabitSyncCompleteIfNecessary(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 248
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->isHabitsSupportedForCalendar(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    const-string v0, "force_sync_tracking_groove_id"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mHabitIdsAffectedBySync:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mDeferredEventIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.calendar.intent.action.GROOVE_SYNCED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "account"

    .line 259
    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "calendarId"

    .line 260
    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "idsOfParentsAffected"

    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mHabitIdsAffectedBySync:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mHabitIdsAffectedBySync:Ljava/util/HashSet;

    .line 262
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 261
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "parentIdsOfInstancesSynced"

    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mHabitIdsOfSyncedInstances:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mHabitIdsOfSyncedInstances:Ljava/util/HashSet;

    .line 264
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 263
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "idsOfDeferredEvents"

    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mDeferredEventIds:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mDeferredEventIds:Ljava/util/HashSet;

    .line 266
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 265
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "groove_operation"

    const-string v3, "groove_operation"

    .line 267
    invoke-virtual {p3, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 269
    if-eqz v1, :cond_4

    const-string v2, "force_sync_log_time"

    invoke-virtual {p3, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 270
    const-string v2, "force_sync_log_time"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 271
    const-string v2, "force_sync_tracking_groove_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string v2, "force_sync_create_success"

    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mHabitIdsOfSyncedInstances:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 274
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mTrackedSyncStartMillis:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mTrackedSyncStartMillis:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 276
    const-string v1, "tracked_sync_duration"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 277
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mTrackedSyncStartMillis:Ljava/lang/Long;

    .line 281
    :cond_3
    const-string v1, "force_sync_instance_tracking_id"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 282
    const-string v2, "force_sync_instance_tracking_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const-string v2, "force_sync_defer_success"

    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mDeferredEventIds:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 285
    :cond_4
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_0
.end method

.method private broadcastUpSyncCompleteIfNecessary(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 290
    const-string v0, "upsync_tracking_id"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_2

    .line 294
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.calendar.intent.action.GROOVE_REQUEST_UPSYNCED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 295
    const-string v2, "upsync_tracking_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "account"

    .line 296
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "calendarId"

    .line 297
    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const-string v0, "upsync_instance_tracking_id"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_0

    .line 300
    const-string v2, "upsync_instance_tracking_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mTrackedSyncStartMillis:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mTrackedSyncStartMillis:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 304
    const-string v0, "tracked_sync_duration"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mTrackedSyncStartMillis:Ljava/lang/Long;

    .line 307
    :cond_1
    const-string v0, "groove_operation"

    const-string v2, "groove_operation"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 311
    :cond_2
    return-void
.end method

.method private clearHabitStore()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 603
    new-instance v0, Lcom/google/android/calendar/api/HabitFilterOptions;

    invoke-direct {v0}, Lcom/google/android/calendar/api/HabitFilterOptions;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->listLocalHabits(Lcom/google/android/calendar/api/HabitFilterOptions;)[Lcom/google/android/calendar/api/Habit;

    move-result-object v1

    .line 604
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 605
    invoke-interface {v3}, Lcom/google/android/calendar/api/Habit;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->deleteLocalHabit(Lcom/google/android/calendar/api/HabitDescriptor;)Z

    .line 604
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 607
    :cond_0
    return-void
.end method

.method private clearSyncedIdSets()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mHabitIdsOfSyncedInstances:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 481
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mHabitIdsAffectedBySync:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 482
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mHabitIdsOfSyncedParents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 483
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mDeferredEventIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 484
    return-void
.end method

.method private createLocalHabitFromServerHabit(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Lcom/google/api/services/calendar/model/Habit;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 672
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mHabitAPI:Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;

    .line 673
    invoke-static {p1, p2}, Lcom/google/android/calendar/api/HabitSyncUtils;->serverHabitToApi(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Lcom/google/api/services/calendar/model/Habit;)Lcom/google/android/calendar/api/HabitModifications;

    move-result-object v1

    const/4 v2, 0x0

    .line 672
    invoke-virtual {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;->create(Lcom/google/android/calendar/api/HabitModifications;Z)Lcom/google/android/calendar/api/HabitDescriptor;

    .line 674
    return-void
.end method

.method private deleteLocalHabit(Lcom/google/android/calendar/api/HabitDescriptor;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 662
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mHabitAPI:Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;->delete(Lcom/google/android/calendar/api/HabitDescriptor;Z)Z

    move-result v0

    return v0
.end method

.method private deleteRemoteHabitAndThenDeleteLocal(Lcom/google/api/services/calendar/Calendar$Habits;Lcom/google/android/calendar/api/Habit;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 689
    invoke-interface {p2}, Lcom/google/android/calendar/api/Habit;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v1

    .line 691
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v2, "API: calendar.habits.delete"

    iget-object v3, v1, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 692
    invoke-virtual {v3}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/calendar/api/HabitDescriptor;->habitId:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/google/api/services/calendar/Calendar$Habits;->delete(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Habits$Delete;

    move-result-object v3

    .line 691
    invoke-virtual {v0, v2, v3}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->deleteLocalHabit(Lcom/google/android/calendar/api/HabitDescriptor;)Z

    .line 701
    return-void

    .line 693
    :catch_0
    move-exception v0

    .line 694
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponseException;->getStatusCode()I

    move-result v2

    const/16 v3, 0x194

    if-ne v2, v3, :cond_0

    .line 695
    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->TAG:Ljava/lang/String;

    const-string v3, "tried to delete non-existent entry, just deleting locally"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 697
    :cond_0
    throw v0
.end method

.method private downSyncHabits(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Lcom/google/api/services/calendar/Calendar$Habits;Landroid/content/SyncResult;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 556
    const-string v0, "Download Habits to the local store"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->getAccountSyncState(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState;

    move-result-object v2

    .line 560
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->getOrCreateCalendarSyncState(Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState;Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState$CalendarSyncState;

    move-result-object v3

    .line 562
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->TAG:Ljava/lang/String;

    const-string v1, "Down-sync Habits for %s/%s %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v5

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v4, v6

    const/4 v5, 0x1

    .line 563
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v3}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState$CalendarSyncState;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 562
    invoke-static {v0, v1, v4}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 568
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/api/services/calendar/Calendar$Habits;->list(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Habits$List;

    move-result-object v0

    iget-object v1, v3, Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState$CalendarSyncState;->nextSyncToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/Calendar$Habits$List;->setSyncToken(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Habits$List;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 572
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v1, "API: calendar.habits.list"

    invoke-virtual {v0, v1, v4}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Habits;
    :try_end_1
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    .line 583
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/Habits;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Habit;

    .line 584
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->saveHabitLocally(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Lcom/google/api/services/calendar/model/Habit;Landroid/content/SyncResult;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 593
    :catch_0
    move-exception v0

    .line 594
    :goto_2
    :try_start_3
    const-string v1, "downSyncHabits"

    invoke-direct {p0, v0, v1, p3}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->registerException(Ljava/lang/Exception;Ljava/lang/String;Landroid/content/SyncResult;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 596
    const-string v0, "Download Habits to the local store"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 597
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState$CalendarSyncState;->lastSynced:Ljava/lang/Long;

    .line 598
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->saveAccountSyncState(Landroid/accounts/Account;Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState;)V

    .line 600
    :goto_3
    return-void

    .line 573
    :catch_1
    move-exception v0

    .line 574
    :try_start_4
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponseException;->getStatusCode()I

    move-result v1

    const/16 v5, 0x19a

    if-ne v1, v5, :cond_1

    .line 575
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->TAG:Ljava/lang/String;

    const-string v5, "Full sync required."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 576
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/google/api/services/calendar/Calendar$Habits$List;->setSyncToken(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Habits$List;

    .line 577
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v1, "API: calendar.habits.list"

    invoke-virtual {v0, v1, v4}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Habits;

    .line 578
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->clearHabitStore()V

    move-object v1, v0

    goto :goto_0

    .line 580
    :cond_1
    throw v0

    .line 593
    :catch_2
    move-exception v0

    goto :goto_2

    .line 586
    :cond_2
    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/Habits;->getNextPageToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/api/services/calendar/Calendar$Habits$List;->setPageToken(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Habits$List;

    .line 587
    invoke-virtual {v4}, Lcom/google/api/services/calendar/Calendar$Habits$List;->getPageToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 588
    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/Habits;->getNextSyncToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState$CalendarSyncState;->nextSyncToken:Ljava/lang/String;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 596
    const-string v0, "Download Habits to the local store"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 597
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState$CalendarSyncState;->lastSynced:Ljava/lang/Long;

    .line 598
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->saveAccountSyncState(Landroid/accounts/Account;Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState;)V

    goto :goto_3

    .line 596
    :catchall_0
    move-exception v0

    const-string v1, "Download Habits to the local store"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 597
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState$CalendarSyncState;->lastSynced:Ljava/lang/Long;

    .line 598
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->saveAccountSyncState(Landroid/accounts/Account;Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState;)V

    throw v0
.end method

.method private extractHabitParentId(Lcom/google/api/services/calendar/model/Event;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getHabitInstance()Lcom/google/api/services/calendar/model/EventHabitInstance;

    move-result-object v0

    if-nez v0, :cond_1

    .line 488
    :cond_0
    const/4 v0, 0x0

    .line 490
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getHabitInstance()Lcom/google/api/services/calendar/model/EventHabitInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/EventHabitInstance;->getParentId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getCalendarId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 648
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getFeedId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 649
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->isGrooveTickle(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 650
    invoke-virtual {p0, v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->extractCalendarIdFromSubscriptionUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 649
    :goto_0
    return-object v0

    .line 651
    :cond_0
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/Utils;->parseFeedId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getOrCreateCalendarSyncState(Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState;Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState$CalendarSyncState;
    .locals 2

    .prologue
    .line 733
    iget-object v0, p1, Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState;->calendars:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState$CalendarSyncState;

    .line 734
    if-nez v0, :cond_0

    .line 735
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState$CalendarSyncState;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState$CalendarSyncState;-><init>()V

    .line 736
    iget-object v1, p1, Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState;->calendars:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    :cond_0
    return-object v0
.end method

.method private habitExistsLocally(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 667
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mHabitAPI:Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;

    new-instance v1, Lcom/google/android/calendar/api/HabitDescriptor;

    invoke-direct {v1, p1, p2}, Lcom/google/android/calendar/api/HabitDescriptor;-><init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;->read(Lcom/google/android/calendar/api/HabitDescriptor;)Lcom/google/android/calendar/api/Habit;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasAnyHabitParentsOrInstances(Landroid/accounts/Account;Landroid/content/ContentProviderClient;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 456
    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->TAG:Ljava/lang/String;

    const-string v3, "Checking for parents or instances"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 457
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mHabitAPI:Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;

    new-instance v3, Lcom/google/android/calendar/api/HabitFilterOptions;

    invoke-direct {v3}, Lcom/google/android/calendar/api/HabitFilterOptions;-><init>()V

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/calendar/api/HabitFilterOptions;->setAccountName(Ljava/lang/String;)Lcom/google/android/calendar/api/HabitFilterOptions;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;->count(Lcom/google/android/calendar/api/HabitFilterOptions;)I

    move-result v2

    if-lez v2, :cond_0

    .line 458
    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->TAG:Ljava/lang/String;

    const-string v3, " ... parents found"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 476
    :goto_0
    return v0

    .line 461
    :cond_0
    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->TAG:Ljava/lang/String;

    const-string v3, " ... no parents found"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 464
    :try_start_0
    sget-object v2, Lcom/google/android/syncadapters/calendar/Utils;->WHERE_ACCOUNT_AND_TYPE:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "com.google"

    aput-object v5, v3, v4

    invoke-static {p2, v2, v3}, Lcom/google/android/calendar/api/HabitSyncUtils;->countHabitInstances(Landroid/content/ContentProviderClient;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 467
    if-lez v2, :cond_1

    .line 468
    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->TAG:Ljava/lang/String;

    const-string v3, " ... instances found"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 473
    :catch_0
    move-exception v0

    .line 474
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->TAG:Ljava/lang/String;

    const-string v2, " ... could not count the instances"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    move v0, v1

    .line 476
    goto :goto_0

    .line 471
    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->TAG:Ljava/lang/String;

    const-string v2, " ... no instances found"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private insertRemoteHabitThenUpdateLocal(Lcom/google/api/services/calendar/Calendar$Habits;Lcom/google/android/calendar/api/Habit;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 705
    invoke-interface {p2}, Lcom/google/android/calendar/api/Habit;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v1

    .line 706
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v2, "API: calendar.habits.insert"

    iget-object v3, v1, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 708
    invoke-virtual {v3}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/google/android/calendar/api/HabitSyncUtils;->apiToServerHabit(Lcom/google/android/calendar/api/Habit;)Lcom/google/api/services/calendar/model/Habit;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/google/api/services/calendar/Calendar$Habits;->insert(Ljava/lang/String;Lcom/google/api/services/calendar/model/Habit;)Lcom/google/api/services/calendar/Calendar$Habits$Insert;

    move-result-object v3

    .line 706
    invoke-virtual {v0, v2, v3}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Habit;

    .line 710
    iget-object v1, v1, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-direct {p0, v1, v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->updateLocalHabitFromServerHabit(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Lcom/google/api/services/calendar/model/Habit;)V

    .line 711
    return-void
.end method

.method private static isGrooveTickle(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 410
    if-eqz p0, :cond_0

    const-string v0, "http://calendar.google.com/"

    .line 411
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/habits"

    .line 412
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 410
    :goto_0
    return v0

    .line 412
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHabitsSupportedForCalendar(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->isCalendarPrimary(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private listLocalHabits(Lcom/google/android/calendar/api/HabitFilterOptions;)[Lcom/google/android/calendar/api/Habit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 657
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mHabitAPI:Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;

    invoke-virtual {v0, p1}, Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;->list(Lcom/google/android/calendar/api/HabitFilterOptions;)[Lcom/google/android/calendar/api/Habit;

    move-result-object v0

    return-object v0
.end method

.method private registerException(Ljava/lang/Exception;Ljava/lang/String;Landroid/content/SyncResult;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    .line 628
    const-string v1, "Exception in "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 629
    instance-of v0, p1, Lcom/google/api/client/http/HttpResponseException;

    if-eqz v0, :cond_1

    .line 630
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    move-object v0, p1

    check-cast v0, Lcom/google/api/client/http/HttpResponseException;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponseException;->getStatusCode()I

    move-result v0

    invoke-virtual {v1, p2, v0}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logSyncError(Ljava/lang/String;I)V

    .line 637
    :goto_1
    instance-of v0, p1, Lcom/google/android/apiary/AuthenticationException;

    if-eqz v0, :cond_2

    .line 638
    iget-object v0, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 644
    :goto_2
    return-void

    .line 628
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logSyncError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 639
    :cond_2
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_3

    .line 640
    iget-object v0, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_2

    .line 642
    :cond_3
    iget-object v0, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numParseExceptions:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numParseExceptions:J

    goto :goto_2
.end method

.method private saveHabitLocally(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Lcom/google/api/services/calendar/model/Habit;Landroid/content/SyncResult;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x1

    .line 612
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mHabitIdsOfSyncedParents:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/Habit;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mHabitIdsAffectedBySync:Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/Habit;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 614
    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/Habit;->getDeleted()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/Habit;->getDeleted()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    new-instance v0, Lcom/google/android/calendar/api/HabitDescriptor;

    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/Habit;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/calendar/api/HabitDescriptor;-><init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->deleteLocalHabit(Lcom/google/android/calendar/api/HabitDescriptor;)Z

    .line 616
    iget-object v0, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numDeletes:J

    .line 624
    :goto_0
    iget-object v0, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numEntries:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numEntries:J

    .line 625
    return-void

    .line 617
    :cond_0
    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/Habit;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->habitExistsLocally(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 618
    invoke-direct {p0, p1, p2}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->createLocalHabitFromServerHabit(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Lcom/google/api/services/calendar/model/Habit;)V

    .line 619
    iget-object v0, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numInserts:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numInserts:J

    goto :goto_0

    .line 621
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->updateLocalHabitFromServerHabit(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Lcom/google/api/services/calendar/model/Habit;)V

    .line 622
    iget-object v0, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numUpdates:J

    goto :goto_0
.end method

.method private scheduleHabitsSync(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 444
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 445
    const-string v1, "feed"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 446
    const-string v1, "force_sync_tracking_groove_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 447
    const-string v1, "force_sync_instance_tracking_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 448
    const-string v1, "groove_operation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 449
    const-string v1, "only_groove"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 450
    const-string v1, "feed_internal"

    invoke-virtual {p0, p1, p2}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->getPrimarySyncId(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v1, "com.android.calendar"

    invoke-static {p2, v1, v0}, Lcom/google/android/calendar/SyncUtil;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 452
    return-void
.end method

.method private scheduleHabitsSyncIfNeeded(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 427
    const-string v0, "Check for local habits"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 428
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->TAG:Ljava/lang/String;

    const-string v1, "Determining whether to sync for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 430
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->hasAnyHabitParentsOrInstances(Landroid/accounts/Account;Landroid/content/ContentProviderClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->TAG:Ljava/lang/String;

    const-string v1, "Scheduling the hook specific sync"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 432
    invoke-direct {p0, p3, p1, p2}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->scheduleHabitsSync(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    :goto_0
    const-string v0, "Check for local habits"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 441
    :goto_1
    return-void

    .line 434
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->TAG:Ljava/lang/String;

    const-string v1, "Not scheduling the hook specific sync"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    :goto_2
    :try_start_2
    const-string v1, "hasAnyHabitParentsOrInstances"

    invoke-direct {p0, v0, v1, p4}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->registerException(Ljava/lang/Exception;Ljava/lang/String;Landroid/content/SyncResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 439
    const-string v0, "Check for local habits"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "Check for local habits"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    throw v0

    .line 436
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private sendHabitToServer(Lcom/google/api/services/calendar/Calendar$Habits;Lcom/google/android/calendar/api/Habit;Landroid/content/SyncResult;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    .line 521
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/calendar/api/Habit;->getFingerprint()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    .line 522
    invoke-interface {p2}, Lcom/google/android/calendar/api/Habit;->getDeletionStatus()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 523
    if-nez v0, :cond_0

    .line 524
    invoke-direct {p0, p1, p2}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->deleteRemoteHabitAndThenDeleteLocal(Lcom/google/api/services/calendar/Calendar$Habits;Lcom/google/android/calendar/api/Habit;)V

    .line 528
    :goto_0
    iget-object v0, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numDeletes:J

    .line 547
    :goto_1
    iget-object v0, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numEntries:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numEntries:J

    .line 552
    :goto_2
    return-void

    .line 526
    :cond_0
    invoke-interface {p2}, Lcom/google/android/calendar/api/Habit;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->deleteLocalHabit(Lcom/google/android/calendar/api/HabitDescriptor;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 549
    :catch_0
    move-exception v0

    .line 550
    :goto_3
    const-string v1, "sendHabitToServer"

    invoke-direct {p0, v0, v1, p3}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->registerException(Ljava/lang/Exception;Ljava/lang/String;Landroid/content/SyncResult;)V

    goto :goto_2

    .line 529
    :cond_1
    if-eqz v0, :cond_3

    .line 531
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->insertRemoteHabitThenUpdateLocal(Lcom/google/api/services/calendar/Calendar$Habits;Lcom/google/android/calendar/api/Habit;)V

    .line 532
    iget-object v0, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numInserts:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numInserts:J
    :try_end_1
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 533
    :catch_1
    move-exception v0

    .line 534
    :try_start_2
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponseException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x199

    if-ne v1, v2, :cond_2

    .line 535
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->TAG:Ljava/lang/String;

    const-string v2, "tried to insert already exiting entry, updating instead"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 536
    invoke-direct {p0, p1, p2}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->updateRemoteHabitThenUpdateLocal(Lcom/google/api/services/calendar/Calendar$Habits;Lcom/google/android/calendar/api/Habit;)V

    .line 537
    iget-object v0, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numUpdates:J

    goto :goto_1

    .line 549
    :catch_2
    move-exception v0

    goto :goto_3

    .line 539
    :cond_2
    throw v0

    .line 544
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->updateRemoteHabitThenUpdateLocal(Lcom/google/api/services/calendar/Calendar$Habits;Lcom/google/android/calendar/api/Habit;)V

    .line 545
    iget-object v0, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numUpdates:J
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1
.end method

.method private upSyncHabits(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Lcom/google/api/services/calendar/Calendar$Habits;Landroid/content/SyncResult;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 500
    const-string v1, "Upload Habits to server"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 502
    :try_start_0
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->TAG:Ljava/lang/String;

    const-string v2, "Up-sync Habits for %s/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 503
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v5

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 502
    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 504
    new-instance v1, Lcom/google/android/calendar/api/HabitFilterOptions;

    invoke-direct {v1}, Lcom/google/android/calendar/api/HabitFilterOptions;-><init>()V

    .line 505
    invoke-virtual {v1}, Lcom/google/android/calendar/api/HabitFilterOptions;->setAnd()Lcom/google/android/calendar/api/HabitFilterOptions;

    move-result-object v1

    const/4 v2, 0x1

    .line 506
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/calendar/api/HabitFilterOptions;->setDirty(Ljava/lang/Boolean;)Lcom/google/android/calendar/api/HabitFilterOptions;

    move-result-object v1

    .line 507
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/calendar/api/HabitFilterOptions;->setAccountName(Ljava/lang/String;)Lcom/google/android/calendar/api/HabitFilterOptions;

    move-result-object v1

    .line 508
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/calendar/api/HabitFilterOptions;->setCalendarId(Ljava/lang/String;)Lcom/google/android/calendar/api/HabitFilterOptions;

    move-result-object v1

    .line 504
    invoke-direct {p0, v1}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->listLocalHabits(Lcom/google/android/calendar/api/HabitFilterOptions;)[Lcom/google/android/calendar/api/Habit;

    move-result-object v1

    .line 509
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 510
    invoke-direct {p0, p2, v3, p3}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->sendHabitToServer(Lcom/google/api/services/calendar/Calendar$Habits;Lcom/google/android/calendar/api/Habit;Landroid/content/SyncResult;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 515
    :cond_0
    const-string v0, "Upload Habits to server"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 517
    :goto_1
    return-void

    .line 512
    :catch_0
    move-exception v0

    .line 513
    :try_start_1
    const-string v1, "upSyncHabits"

    invoke-direct {p0, v0, v1, p3}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->registerException(Ljava/lang/Exception;Ljava/lang/String;Landroid/content/SyncResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    const-string v0, "Upload Habits to server"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "Upload Habits to server"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method private updateLocalHabitFromServerHabit(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Lcom/google/api/services/calendar/model/Habit;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 678
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mHabitAPI:Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;

    .line 679
    invoke-static {p1, p2}, Lcom/google/android/calendar/api/HabitSyncUtils;->serverHabitToApi(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Lcom/google/api/services/calendar/model/Habit;)Lcom/google/android/calendar/api/HabitModifications;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 678
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;->update(Lcom/google/android/calendar/api/HabitModifications;Ljava/lang/Void;Z)Z

    .line 681
    return-void
.end method

.method private updateRemoteHabitThenUpdateLocal(Lcom/google/api/services/calendar/Calendar$Habits;Lcom/google/android/calendar/api/Habit;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 715
    invoke-interface {p2}, Lcom/google/android/calendar/api/Habit;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v1

    .line 716
    iget-object v0, v1, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 718
    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/calendar/api/HabitDescriptor;->habitId:Ljava/lang/String;

    .line 719
    invoke-static {p2}, Lcom/google/android/calendar/api/HabitSyncUtils;->apiToServerHabit(Lcom/google/android/calendar/api/Habit;)Lcom/google/api/services/calendar/model/Habit;

    move-result-object v3

    .line 718
    invoke-virtual {p1, v0, v2, v3}, Lcom/google/api/services/calendar/Calendar$Habits;->patch(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/calendar/model/Habit;)Lcom/google/api/services/calendar/Calendar$Habits$Patch;

    move-result-object v0

    .line 722
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v3, "API: calendar.habits.update"

    .line 723
    invoke-virtual {v2, v3, v0}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Habit;

    .line 724
    iget-object v1, v1, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-direct {p0, v1, v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->updateLocalHabitFromServerHabit(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Lcom/google/api/services/calendar/model/Habit;)V

    .line 725
    return-void
.end method


# virtual methods
.method public extractCalendarIdFromSubscriptionUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 418
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->isGrooveTickle(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    const/4 v0, 0x0

    .line 421
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://calendar.google.com/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 422
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "/habits"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    .line 421
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public generateSubscriptionUrl(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 399
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "isPrimary"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 400
    if-nez v0, :cond_0

    .line 401
    const/4 v0, 0x0

    .line 404
    :goto_0
    return-object v0

    .line 403
    :cond_0
    const-string v0, "cal_sync1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    const-string v1, "http://calendar.google.com/"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 405
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/habits"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getAccountSyncState(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState;
    .locals 4

    .prologue
    .line 742
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mStore:Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    invoke-virtual {v0, p1}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getAccountSyncState(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    .line 743
    if-nez v0, :cond_0

    .line 744
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState;-><init>()V

    .line 750
    :goto_0
    return-object v0

    .line 747
    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->JSON_FACTORY:Lcom/google/api/client/json/JsonFactory;

    const-class v2, Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState;

    invoke-virtual {v1, v0, v2}, Lcom/google/api/client/json/JsonFactory;->fromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 748
    :catch_0
    move-exception v0

    .line 749
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->TAG:Ljava/lang/String;

    const-string v2, "Error loading account sync state"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 750
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState;-><init>()V

    goto :goto_0
.end method

.method public getHookSyncTypePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string v0, "GROOVE"

    return-object v0
.end method

.method getPrimarySyncId(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 765
    .line 767
    :try_start_0
    invoke-static {}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "cal_sync1"

    aput-object v4, v3, v1

    sget-object v4, Lcom/google/android/syncadapters/calendar/Utils;->WHERE_ACCOUNT_AND_TYPE_AND_IS_PRIMARY:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v6, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v5, v1

    const/4 v1, 0x1

    iget-object v6, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v6, v5, v1

    const/4 v1, 0x2

    const-string v6, "1"

    aput-object v6, v5, v1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/apiary/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 773
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 774
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/apiary/ParseException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 779
    if-eqz v1, :cond_0

    .line 780
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 783
    :cond_0
    :goto_0
    return-object v0

    .line 779
    :cond_1
    if-eqz v1, :cond_2

    .line 780
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 783
    :cond_2
    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    .line 776
    :catch_0
    move-exception v0

    move-object v0, v7

    :goto_1
    move-object v7, v0

    .line 777
    :goto_2
    :try_start_2
    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 779
    if-eqz v7, :cond_0

    .line 780
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 779
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_3

    .line 780
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 779
    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_3

    .line 776
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v7, v1

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public initialize(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;)V
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mContext:Landroid/content/Context;

    .line 153
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/calendar/api/CalendarApi;->initialize(Landroid/content/Context;)V

    .line 154
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->initialize(Landroid/content/Context;)V

    .line 155
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getInstance()Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mStore:Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    .line 156
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->initialize(Landroid/content/Context;)V

    .line 157
    invoke-static {}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->getInstance()Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    .line 158
    invoke-virtual {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getRequestExecutor()Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    .line 159
    return-void
.end method

.method isCalendarPrimary(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 789
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    :cond_0
    :goto_0
    return v8

    .line 794
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "COALESCE(isPrimary,account_name=ownerAccount) AS isPrimary"

    aput-object v4, v3, v1

    sget-object v4, Lcom/google/android/syncadapters/calendar/Utils;->WHERE_ACCOUNT_AND_TYPE_AND_CALENDAR_SYNC_ID:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v6, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v5, v1

    const/4 v1, 0x1

    iget-object v6, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v6, v5, v1

    const/4 v1, 0x2

    aput-object p3, v5, v1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/apiary/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 800
    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/apiary/ParseException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-ne v0, v7, :cond_3

    move v0, v7

    .line 804
    :goto_1
    if-eqz v1, :cond_2

    .line 805
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move v8, v0

    .line 800
    goto :goto_0

    :cond_3
    move v0, v8

    goto :goto_1

    .line 801
    :catch_0
    move-exception v0

    move-object v0, v9

    .line 804
    :goto_2
    if-eqz v0, :cond_0

    .line 805
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 804
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v9, :cond_4

    .line 805
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 804
    :catchall_1
    move-exception v0

    move-object v9, v1

    goto :goto_3

    .line 801
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v0, v9

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method public isHookSpecificSync(Landroid/accounts/Account;Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 168
    const-string v1, "only_groove"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getFeedId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->isGrooveTickle(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 168
    :cond_1
    return v0
.end method

.method public onAfterConvertEntityToEvent(Landroid/content/Entity;Lcom/google/api/services/calendar/model/Event;Z)V
    .locals 5

    .prologue
    .line 356
    invoke-virtual {p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 357
    const-string v1, "sync_data8"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/calendar/api/HabitIdTypeUtil;->parseHabitId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 359
    if-nez v1, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    new-instance v2, Lcom/google/api/services/calendar/model/HabitInstanceData;

    invoke-direct {v2}, Lcom/google/api/services/calendar/model/HabitInstanceData;-><init>()V

    .line 366
    new-instance v3, Lcom/google/api/services/calendar/model/EventHabitInstance;

    invoke-direct {v3}, Lcom/google/api/services/calendar/model/EventHabitInstance;-><init>()V

    .line 367
    invoke-virtual {v3, v2}, Lcom/google/api/services/calendar/model/EventHabitInstance;->setData(Lcom/google/api/services/calendar/model/HabitInstanceData;)Lcom/google/api/services/calendar/model/EventHabitInstance;

    .line 368
    invoke-virtual {v3, v1}, Lcom/google/api/services/calendar/model/EventHabitInstance;->setParentId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventHabitInstance;

    .line 369
    const-string v1, "sync_data9"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 370
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0x80

    invoke-static {v1, v4}, Lcom/google/android/syncadapters/calendar/Utils;->getEventExtrasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 371
    const-string v0, "complete"

    invoke-virtual {v2, v0}, Lcom/google/api/services/calendar/model/HabitInstanceData;->setStatus(Ljava/lang/String;)Lcom/google/api/services/calendar/model/HabitInstanceData;

    .line 377
    :goto_1
    invoke-virtual {p2, v3}, Lcom/google/api/services/calendar/model/Event;->setHabitInstance(Lcom/google/api/services/calendar/model/EventHabitInstance;)Lcom/google/api/services/calendar/model/Event;

    .line 381
    if-nez p3, :cond_0

    .line 382
    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/Event;->getReminders()Lcom/google/api/services/calendar/model/Event$Reminders;

    move-result-object v0

    .line 385
    if-nez v0, :cond_2

    .line 386
    new-instance v0, Lcom/google/api/services/calendar/model/Event$Reminders;

    invoke-direct {v0}, Lcom/google/api/services/calendar/model/Event$Reminders;-><init>()V

    .line 388
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/Event$Reminders;->setOverrides(Ljava/util/List;)Lcom/google/api/services/calendar/model/Event$Reminders;

    .line 389
    invoke-virtual {p2, v0}, Lcom/google/api/services/calendar/model/Event;->setReminders(Lcom/google/api/services/calendar/model/Event$Reminders;)Lcom/google/api/services/calendar/model/Event;

    .line 392
    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/Event$Reminders;->setUseDefault(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/Event$Reminders;

    goto :goto_0

    .line 372
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/Utils;->getEventExtrasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 373
    const-string v0, "deferralRequested"

    invoke-virtual {v2, v0}, Lcom/google/api/services/calendar/model/HabitInstanceData;->setStatus(Ljava/lang/String;)Lcom/google/api/services/calendar/model/HabitInstanceData;

    goto :goto_1

    .line 375
    :cond_4
    const-string v0, "active"

    invoke-virtual {v2, v0}, Lcom/google/api/services/calendar/model/HabitInstanceData;->setStatus(Ljava/lang/String;)Lcom/google/api/services/calendar/model/HabitInstanceData;

    goto :goto_1
.end method

.method public onAfterDownSync(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Lcom/google/api/services/calendar/Calendar;Landroid/content/SyncResult;)V
    .locals 1

    .prologue
    .line 237
    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getFeedId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/Utils;->parseFeedId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-direct {p0, p3, p1, p2, v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->broadcastHabitSyncCompleteIfNecessary(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 239
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->clearSyncedIdSets()V

    .line 240
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 241
    :goto_0
    if-eqz v0, :cond_0

    .line 242
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->scheduleHabitsSyncIfNeeded(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    .line 244
    :cond_0
    return-void

    .line 240
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAfterUpSync(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Lcom/google/api/services/calendar/Calendar;Landroid/content/SyncResult;)V
    .locals 1

    .prologue
    .line 316
    invoke-direct {p0, p2}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->getCalendarId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->broadcastUpSyncCompleteIfNecessary(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 317
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->clearSyncedIdSets()V

    .line 318
    return-void
.end method

.method public onBeforeApplyEventToEntity(Lcom/google/api/services/calendar/model/Event;Landroid/content/Entity;Landroid/content/ContentValues;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 323
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->extractHabitParentId(Lcom/google/api/services/calendar/model/Event;)Ljava/lang/String;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_2

    .line 325
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mHabitIdsOfSyncedInstances:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mHabitIdsAffectedBySync:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 327
    const-string v0, "sync_data9"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 328
    if-nez v0, :cond_0

    .line 329
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 331
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, p3, v0}, Lcom/google/android/syncadapters/calendar/Utils;->setGrooveValuesFromEvent(Lcom/google/api/services/calendar/model/Event;Landroid/content/ContentValues;I)V

    .line 332
    if-eqz p1, :cond_1

    .line 333
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getHabitInstance()Lcom/google/api/services/calendar/model/EventHabitInstance;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 334
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getHabitInstance()Lcom/google/api/services/calendar/model/EventHabitInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/EventHabitInstance;->getData()Lcom/google/api/services/calendar/model/HabitInstanceData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 335
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getHabitInstance()Lcom/google/api/services/calendar/model/EventHabitInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/EventHabitInstance;->getData()Lcom/google/api/services/calendar/model/HabitInstanceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/HabitInstanceData;->getStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 336
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getHabitInstance()Lcom/google/api/services/calendar/model/EventHabitInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/EventHabitInstance;->getData()Lcom/google/api/services/calendar/model/HabitInstanceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/HabitInstanceData;->getStatus()Ljava/lang/String;

    move-result-object v0

    .line 339
    const-string v1, "active"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 340
    invoke-virtual {p2}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "sync_data9"

    .line 341
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 340
    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/Utils;->getEventExtrasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mDeferredEventIds:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_1
    :goto_0
    return-void

    .line 345
    :cond_2
    if-eqz p2, :cond_1

    .line 346
    invoke-virtual {p2}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "sync_data8"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 350
    const-string v1, "sync_data8"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBeforeDownSync(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Lcom/google/api/services/calendar/Calendar;Landroid/content/SyncResult;)V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->clearSyncedIdSets()V

    .line 226
    return-void
.end method

.method public onBeforeUpSync(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Lcom/google/api/services/calendar/Calendar;Landroid/content/SyncResult;)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->clearSyncedIdSets()V

    .line 232
    return-void
.end method

.method public onInitializeSync(Landroid/accounts/Account;Landroid/content/ContentProviderClient;)V
    .locals 2

    .prologue
    .line 219
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    invoke-direct {p0, p2, p1, v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->scheduleHabitsSync(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 220
    return-void
.end method

.method public onSyncInitiated(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Lcom/google/api/services/calendar/Calendar;Landroid/content/SyncResult;)V
    .locals 2

    .prologue
    .line 205
    const-string v0, "upsync_tracking_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "force_sync_tracking_groove_id"

    .line 206
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mTrackedSyncStartMillis:Ljava/lang/Long;

    .line 208
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.calendar.intent.action.TRACKING_SYNC_INITIATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 210
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 212
    :cond_1
    return-void
.end method

.method public performHookSpecificSync(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Lcom/google/api/services/calendar/Calendar;Landroid/content/SyncResult;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 175
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->TAG:Ljava/lang/String;

    const-string v1, "Hook specific sync with extras %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 177
    invoke-direct {p0, p2}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->getCalendarId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 178
    const-string v1, "upload"

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 179
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->clearSyncedIdSets()V

    .line 181
    invoke-direct {p0, p3, p1, v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->isHabitsSupportedForCalendar(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 182
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->TAG:Ljava/lang/String;

    const-string v1, "Habits-only sync with not supported options"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    new-instance v2, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v0, v3}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/Long;)V

    .line 190
    invoke-virtual {p4}, Lcom/google/api/services/calendar/Calendar;->habits()Lcom/google/api/services/calendar/Calendar$Habits;

    move-result-object v3

    invoke-direct {p0, v2, v3, p5}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->upSyncHabits(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Lcom/google/api/services/calendar/Calendar$Habits;Landroid/content/SyncResult;)V

    .line 192
    invoke-virtual {v2}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, p2}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->broadcastUpSyncCompleteIfNecessary(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 194
    if-nez v1, :cond_0

    .line 195
    invoke-virtual {p4}, Lcom/google/api/services/calendar/Calendar;->habits()Lcom/google/api/services/calendar/Calendar$Habits;

    move-result-object v1

    invoke-direct {p0, v2, v1, p5}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->downSyncHabits(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Lcom/google/api/services/calendar/Calendar$Habits;Landroid/content/SyncResult;)V

    .line 196
    invoke-direct {p0, p3, p1, p2, v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->broadcastHabitSyncCompleteIfNecessary(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 197
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->clearSyncedIdSets()V

    goto :goto_0
.end method

.method saveAccountSyncState(Landroid/accounts/Account;Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState;)V
    .locals 2

    .prologue
    .line 755
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->mStore:Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    invoke-virtual {p2}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->setAccountSyncState(Landroid/accounts/Account;Ljava/lang/String;)J

    .line 756
    return-void
.end method
