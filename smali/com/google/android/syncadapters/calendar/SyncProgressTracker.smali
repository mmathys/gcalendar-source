.class public Lcom/google/android/syncadapters/calendar/SyncProgressTracker;
.super Ljava/lang/Object;
.source "SyncProgressTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/calendar/SyncProgressTracker$SyncProgressCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/syncadapters/calendar/SyncProgressTracker$SyncProgressCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/google/android/syncadapters/calendar/SyncProgressTracker;


# instance fields
.field private mPendingIndividualSyncs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/accounts/Account;",
            "Lcom/google/android/syncadapters/calendar/SyncProgressTracker$SyncProgressCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSyncs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/support/v4/util/Pair",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->sCallbacks:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->mPendingSyncs:Ljava/util/Set;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->mPendingIndividualSyncs:Ljava/util/Map;

    return-void
.end method

.method public static addCallback(Lcom/google/android/syncadapters/calendar/SyncProgressTracker$SyncProgressCallback;)V
    .locals 2

    .prologue
    .line 53
    sget-object v1, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->sCallbacks:Ljava/util/Set;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->sCallbacks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    monitor-exit v1

    .line 56
    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private canSync(Landroid/accounts/Account;)Z
    .locals 2

    .prologue
    .line 136
    const-string v0, "com.google"

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.calendar"

    .line 137
    invoke-static {p1, v0}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 136
    :goto_0
    return v0

    .line 137
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getCalendarName(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "feed"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    if-nez v0, :cond_0

    .line 74
    const-string v0, "feed_internal"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_0
    if-eqz v0, :cond_1

    .line 77
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/Utils;->parseFeedId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_1
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/google/android/syncadapters/calendar/SyncProgressTracker;
    .locals 2

    .prologue
    .line 65
    const-class v1, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->sInstance:Lcom/google/android/syncadapters/calendar/SyncProgressTracker;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->sInstance:Lcom/google/android/syncadapters/calendar/SyncProgressTracker;

    .line 68
    :cond_0
    sget-object v0, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->sInstance:Lcom/google/android/syncadapters/calendar/SyncProgressTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private logTotalSyncs()V
    .locals 4

    .prologue
    .line 132
    sget-object v0, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->mPendingSyncs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Num Syncs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 133
    return-void
.end method

.method public static removeCallback(Lcom/google/android/syncadapters/calendar/SyncProgressTracker$SyncProgressCallback;)V
    .locals 2

    .prologue
    .line 59
    sget-object v1, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->sCallbacks:Ljava/util/Set;

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v0, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->sCallbacks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 61
    monitor-exit v1

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addPendingIndividualSync(Landroid/accounts/Account;Lcom/google/android/syncadapters/calendar/SyncProgressTracker$SyncProgressCallback;)V
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->canSync(Landroid/accounts/Account;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 129
    :goto_0
    monitor-exit p0

    return-void

    .line 127
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->mPendingIndividualSyncs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-interface {p2}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker$SyncProgressCallback;->onSyncPending()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addPendingSync(Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 99
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->canSync(Landroid/accounts/Account;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 112
    :goto_0
    monitor-exit p0

    return-void

    .line 103
    :cond_0
    :try_start_1
    sget-object v2, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->sCallbacks:Ljava/util/Set;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    :try_start_2
    sget-object v0, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->sCallbacks:Ljava/util/Set;

    sget-object v3, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->sCallbacks:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/syncadapters/calendar/SyncProgressTracker$SyncProgressCallback;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/syncadapters/calendar/SyncProgressTracker$SyncProgressCallback;

    .line 105
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    :try_start_3
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 107
    invoke-interface {v3}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker$SyncProgressCallback;->onSyncPending()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 105
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 99
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 109
    :cond_1
    :try_start_6
    sget-object v0, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xe

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Adding sync: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 110
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->mPendingSyncs:Ljava/util/Set;

    new-instance v1, Landroid/support/v4/util/Pair;

    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->getCalendarName(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->logTotalSyncs()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0
.end method

.method public declared-synchronized hasPendingSyncs()Z
    .locals 1

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->mPendingSyncs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPendingAccountSync(Landroid/accounts/Account;)Z
    .locals 3

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->mPendingSyncs:Ljava/util/Set;

    new-instance v1, Landroid/support/v4/util/Pair;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removePendingSync(Landroid/accounts/Account;Landroid/os/Bundle;Z)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 151
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->mPendingIndividualSyncs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->mPendingIndividualSyncs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/syncadapters/calendar/SyncProgressTracker$SyncProgressCallback;

    .line 153
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->mPendingIndividualSyncs:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0, p3}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker$SyncProgressCallback;->onSyncCompleted(Z)V

    .line 161
    :cond_0
    new-instance v0, Landroid/support/v4/util/Pair;

    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->getCalendarName(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 162
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->mPendingSyncs:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-nez v2, :cond_2

    .line 183
    :cond_1
    monitor-exit p0

    return-void

    .line 165
    :cond_2
    if-eqz p3, :cond_3

    .line 169
    :cond_3
    :try_start_1
    sget-object v2, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x10

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Removing sync: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 170
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->mPendingSyncs:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 171
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->logTotalSyncs()V

    .line 172
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->mPendingSyncs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    sget-object v0, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->TAG:Ljava/lang/String;

    const-string v2, "Notify that sync is completed."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 176
    sget-object v2, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->sCallbacks:Ljava/util/Set;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 177
    :try_start_2
    sget-object v0, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->sCallbacks:Ljava/util/Set;

    sget-object v3, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->sCallbacks:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/syncadapters/calendar/SyncProgressTracker$SyncProgressCallback;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/syncadapters/calendar/SyncProgressTracker$SyncProgressCallback;

    .line 178
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    :try_start_3
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 180
    invoke-interface {v3, p3}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker$SyncProgressCallback;->onSyncCompleted(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 151
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
