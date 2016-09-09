.class public Lcom/android/calendar/groove/GrooveSyncTracker;
.super Ljava/lang/Object;
.source "GrooveSyncTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/groove/GrooveSyncTracker$Listener;
    }
.end annotation


# static fields
.field private static sDeferredEvents:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sHabitCreationListeners:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/groove/GrooveSyncTracker$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static sHabitOperations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/calendar/groove/GrooveSyncTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    sput-object v0, Lcom/android/calendar/groove/GrooveSyncTracker;->sHabitCreationListeners:Landroid/support/v4/util/SimpleArrayMap;

    .line 33
    invoke-static {}, Lcom/android/calendar/Utils;->isMOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 34
    :goto_0
    sput-object v0, Lcom/android/calendar/groove/GrooveSyncTracker;->sHabitOperations:Ljava/util/Set;

    .line 35
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    sput-object v0, Lcom/android/calendar/groove/GrooveSyncTracker;->sDeferredEvents:Landroid/support/v4/util/SimpleArrayMap;

    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createAlarm(Landroid/content/Context;JLcom/google/android/calendar/api/HabitDescriptor;Ljava/lang/String;ZI)V
    .locals 8

    .prologue
    .line 174
    invoke-static {p1}, Lcom/android/calendar/alerts/AlertUtils;->createAlarmManager(Landroid/content/Context;)Lcom/android/calendar/alerts/AlarmManagerInterface;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v0, p4, Lcom/google/android/calendar/api/HabitDescriptor;->habitId:Ljava/lang/String;

    move-object v1, p5

    move-object v2, p1

    move-object v3, p4

    move v4, p6

    move v5, p7

    .line 177
    invoke-static/range {v0 .. v5}, Lcom/android/calendar/groove/GrooveSyncTracker;->getForceSyncPendingIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/google/android/calendar/api/HabitDescriptor;ZI)Landroid/app/PendingIntent;

    move-result-object v0

    .line 174
    invoke-interface {v6, v7, p2, p3, v0}, Lcom/android/calendar/alerts/AlarmManagerInterface;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 179
    return-void
.end method

.method private static getForceSyncPendingIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/google/android/calendar/api/HabitDescriptor;ZI)Landroid/app/PendingIntent;
    .locals 6

    .prologue
    .line 184
    if-nez p1, :cond_0

    move-object v1, p0

    :goto_0
    move-object v0, p2

    move-object v2, p3

    move-object v3, p1

    move v4, p4

    move v5, p5

    .line 185
    invoke-static/range {v0 .. v5}, Lcom/android/calendar/alerts/HabitsIntentService;->createForceSyncIntent(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/calendar/api/HabitDescriptor;Ljava/lang/String;ZI)Landroid/content/Intent;

    move-result-object v0

    .line 189
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/high16 v2, 0x8000000

    invoke-static {p2, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 191
    return-object v0

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/calendar/groove/GrooveSyncTracker;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/android/calendar/groove/GrooveSyncTracker;->sInstance:Lcom/android/calendar/groove/GrooveSyncTracker;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/android/calendar/groove/GrooveSyncTracker;

    invoke-direct {v0}, Lcom/android/calendar/groove/GrooveSyncTracker;-><init>()V

    sput-object v0, Lcom/android/calendar/groove/GrooveSyncTracker;->sInstance:Lcom/android/calendar/groove/GrooveSyncTracker;

    .line 169
    :cond_0
    sget-object v0, Lcom/android/calendar/groove/GrooveSyncTracker;->sInstance:Lcom/android/calendar/groove/GrooveSyncTracker;

    return-object v0
.end method


# virtual methods
.method public complete(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 83
    sget-object v0, Lcom/android/calendar/groove/GrooveSyncTracker;->sHabitCreationListeners:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/calendar/groove/GrooveSyncTracker$Listener;

    .line 84
    if-eqz v6, :cond_0

    .line 85
    invoke-static {p1}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/16 v2, 0x18

    invoke-interface {v0, v2, p2}, Lcom/android/calendar/latency/LatencyLogger;->markAt(ILjava/lang/String;)V

    .line 87
    sget-object v0, Lcom/android/calendar/groove/GrooveSyncTracker;->sHabitCreationListeners:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {p1}, Lcom/android/calendar/alerts/AlertUtils;->createAlarmManager(Landroid/content/Context;)Lcom/android/calendar/alerts/AlarmManagerInterface;

    move-result-object v7

    move-object v0, p2

    move-object v2, p1

    move-object v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/groove/GrooveSyncTracker;->getForceSyncPendingIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/google/android/calendar/api/HabitDescriptor;ZI)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/android/calendar/alerts/AlarmManagerInterface;->cancel(Landroid/app/PendingIntent;)V

    .line 92
    invoke-interface {v6}, Lcom/android/calendar/groove/GrooveSyncTracker$Listener;->onInstanceCreationSyncComplete()V

    .line 102
    :goto_0
    return v5

    .line 95
    :cond_0
    sget-object v0, Lcom/android/calendar/groove/GrooveSyncTracker;->sHabitOperations:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    sget-object v0, Lcom/android/calendar/groove/GrooveSyncTracker;->sHabitOperations:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 98
    invoke-static {p1}, Lcom/android/calendar/alerts/AlertUtils;->createAlarmManager(Landroid/content/Context;)Lcom/android/calendar/alerts/AlarmManagerInterface;

    move-result-object v6

    move-object v0, p2

    move-object v2, p1

    move-object v3, v1

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/groove/GrooveSyncTracker;->getForceSyncPendingIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/google/android/calendar/api/HabitDescriptor;ZI)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-interface {v6, v0}, Lcom/android/calendar/alerts/AlarmManagerInterface;->cancel(Landroid/app/PendingIntent;)V

    :cond_1
    move v5, v4

    .line 102
    goto :goto_0
.end method

.method public completeInstanceDeferral(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)I
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 114
    sget-object v0, Lcom/android/calendar/groove/GrooveSyncTracker;->sDeferredEvents:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p3}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Long;

    .line 115
    if-eqz v6, :cond_1

    .line 116
    invoke-static {p1}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-interface {v0, v1, p3}, Lcom/android/calendar/latency/LatencyLogger;->markAt(ILjava/lang/String;)V

    .line 118
    sget-object v0, Lcom/android/calendar/groove/GrooveSyncTracker;->sDeferredEvents:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p3}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {p1}, Lcom/android/calendar/alerts/AlertUtils;->createAlarmManager(Landroid/content/Context;)Lcom/android/calendar/alerts/AlarmManagerInterface;

    move-result-object v7

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p3

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/groove/GrooveSyncTracker;->getForceSyncPendingIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/google/android/calendar/api/HabitDescriptor;ZI)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/android/calendar/alerts/AlarmManagerInterface;->cancel(Landroid/app/PendingIntent;)V

    .line 122
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p4

    if-nez v0, :cond_0

    .line 124
    :goto_0
    return v5

    .line 122
    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v4

    .line 124
    goto :goto_0
.end method

.method public creationForceSyncFinished(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 69
    invoke-static {p1}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/16 v1, 0x17

    invoke-interface {v0, v1, p2}, Lcom/android/calendar/latency/LatencyLogger;->markAt(ILjava/lang/String;)V

    .line 71
    return-void
.end method

.method public deferForceSyncFinished(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 74
    invoke-static {p1}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-interface {v0, v1, p2}, Lcom/android/calendar/latency/LatencyLogger;->markAt(ILjava/lang/String;)V

    .line 76
    return-void
.end method

.method public requestGrooveCreationSyncIfNecessary(Landroid/content/Context;Lcom/android/calendar/groove/GrooveSyncTracker$Listener;Lcom/google/android/calendar/api/HabitDescriptor;)V
    .locals 3

    .prologue
    .line 59
    invoke-static {p1}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/16 v1, 0x12

    iget-object v2, p3, Lcom/google/android/calendar/api/HabitDescriptor;->habitId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/calendar/latency/LatencyLogger;->markAt(ILjava/lang/String;)V

    .line 61
    sget-object v0, Lcom/android/calendar/groove/GrooveSyncTracker;->sHabitCreationListeners:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v1, p3, Lcom/google/android/calendar/api/HabitDescriptor;->habitId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public requestGrooveOperationSyncIfNecessary(Lcom/google/android/calendar/api/HabitDescriptor;)V
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/android/calendar/groove/GrooveSyncTracker;->sHabitOperations:Ljava/util/Set;

    iget-object v1, p1, Lcom/google/android/calendar/api/HabitDescriptor;->habitId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public startForceSyncTimer(Landroid/content/Context;Lcom/google/android/calendar/api/HabitDescriptor;Landroid/content/Intent;)V
    .locals 10

    .prologue
    .line 134
    iget-object v6, p2, Lcom/google/android/calendar/api/HabitDescriptor;->habitId:Ljava/lang/String;

    .line 136
    const-string v0, "groove_operation"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 138
    sget-object v0, Lcom/android/calendar/groove/GrooveSyncTracker;->sHabitCreationListeners:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v6}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    invoke-static {p1}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->analytics_category_groove:I

    .line 140
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/android/calendar/R$string;->analytics_action_request_creation_sync:I

    .line 141
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v1, "tracked_sync_duration"

    const-wide/16 v8, 0x0

    .line 142
    invoke-virtual {p3, v1, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p1

    .line 139
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 143
    invoke-static {p1}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/16 v1, 0x14

    invoke-interface {v0, v1, v6}, Lcom/android/calendar/latency/LatencyLogger;->markAt(ILjava/lang/String;)V

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1676

    add-long/2addr v2, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/calendar/groove/GrooveSyncTracker;->createAlarm(Landroid/content/Context;JLcom/google/android/calendar/api/HabitDescriptor;Ljava/lang/String;ZI)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    sget-object v0, Lcom/android/calendar/groove/GrooveSyncTracker;->sHabitOperations:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v2, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/calendar/groove/GrooveSyncTracker;->createAlarm(Landroid/content/Context;JLcom/google/android/calendar/api/HabitDescriptor;Ljava/lang/String;ZI)V

    goto :goto_0

    .line 154
    :cond_2
    const-string v0, "upsync_instance_tracking_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 156
    if-eqz v5, :cond_0

    sget-object v0, Lcom/android/calendar/groove/GrooveSyncTracker;->sDeferredEvents:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v5}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    invoke-static {p1}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-interface {v0, v1, v5}, Lcom/android/calendar/latency/LatencyLogger;->markAt(ILjava/lang/String;)V

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v2, v0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/calendar/groove/GrooveSyncTracker;->createAlarm(Landroid/content/Context;JLcom/google/android/calendar/api/HabitDescriptor;Ljava/lang/String;ZI)V

    goto :goto_0
.end method

.method public trackInstanceDeferral(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 106
    invoke-static {p1}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/16 v1, 0x19

    invoke-interface {v0, v1, p2}, Lcom/android/calendar/latency/LatencyLogger;->markAt(ILjava/lang/String;)V

    .line 108
    sget-object v0, Lcom/android/calendar/groove/GrooveSyncTracker;->sDeferredEvents:Landroid/support/v4/util/SimpleArrayMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-void
.end method
