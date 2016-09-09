.class public Lcom/google/android/libraries/performance/primes/ServiceFlags;
.super Ljava/lang/Object;
.source "ServiceFlags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/performance/primes/ServiceFlags$GServicesBroadcastReceiver;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/google/android/libraries/performance/primes/ServiceFlags;


# instance fields
.field private volatile gServicesEnabled:Z

.field private final initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile leakDetectionEnabled:Z

.field private volatile leakDetectionV2Enabled:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/performance/primes/ServiceFlagsChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile memorySummaryDisabled:Z

.field private volatile shutdown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/google/android/libraries/performance/primes/ServiceFlags;

    invoke-direct {v0}, Lcom/google/android/libraries/performance/primes/ServiceFlags;-><init>()V

    sput-object v0, Lcom/google/android/libraries/performance/primes/ServiceFlags;->instance:Lcom/google/android/libraries/performance/primes/ServiceFlags;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/ServiceFlags;->listeners:Ljava/util/List;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/performance/primes/ServiceFlags;->gServicesEnabled:Z

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/ServiceFlags;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    return-void
.end method

.method public static getInstance()Lcom/google/android/libraries/performance/primes/ServiceFlags;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/android/libraries/performance/primes/ServiceFlags;->instance:Lcom/google/android/libraries/performance/primes/ServiceFlags;

    return-object v0
.end method

.method private readBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 174
    iget-boolean v0, p0, Lcom/google/android/libraries/performance/primes/ServiceFlags;->gServicesEnabled:Z

    if-nez v0, :cond_0

    .line 184
    :goto_0
    return p3

    .line 178
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    const-string v1, "PrimesGservices"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    const-string v1, "PrimesGservices"

    const-string v2, "Fail to read GServices."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    :cond_1
    iput-boolean v3, p0, Lcom/google/android/libraries/performance/primes/ServiceFlags;->gServicesEnabled:Z

    goto :goto_0
.end method


# virtual methods
.method public isLeakDetectionEnabled()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/android/libraries/performance/primes/ServiceFlags;->leakDetectionEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/libraries/performance/primes/ServiceFlags;->leakDetectionV2Enabled:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLeakDetectionV2Enabled()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/google/android/libraries/performance/primes/ServiceFlags;->leakDetectionV2Enabled:Z

    return v0
.end method

.method public isMemorySummaryDisabled()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/google/android/libraries/performance/primes/ServiceFlags;->memorySummaryDisabled:Z

    return v0
.end method

.method public isShutdown()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/google/android/libraries/performance/primes/ServiceFlags;->shutdown:Z

    return v0
.end method

.method onPrimesInitialized(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 67
    const-string v0, "ServiceFlags-initialize"

    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/trace/PrimesTrace;->beginSection(Ljava/lang/String;)V

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/ServiceFlags;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "primes::shutdown_primes"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->readBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_0
    invoke-static {}, Lcom/google/android/libraries/performance/primes/trace/PrimesTrace;->endSection()V

    .line 78
    return-void

    .line 76
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/android/libraries/performance/primes/trace/PrimesTrace;->endSection()V

    throw v0
.end method

.method public declared-synchronized registerChangeListener(Lcom/google/android/libraries/performance/primes/ServiceFlagsChangeListener;)V
    .locals 2

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/libraries/performance/primes/ServiceFlags;->shutdown:Z

    if-nez v0, :cond_0

    .line 190
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/ServiceFlags;->listeners:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/ServiceFlagsChangeListener;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :cond_0
    monitor-exit p0

    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized shutdown()V
    .locals 2

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/libraries/performance/primes/ServiceFlags;->shutdown:Z

    if-nez v0, :cond_1

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/performance/primes/ServiceFlags;->shutdown:Z

    .line 102
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/ServiceFlags;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/ServiceFlagsChangeListener;

    .line 103
    invoke-interface {v0, p0}, Lcom/google/android/libraries/performance/primes/ServiceFlagsChangeListener;->onChange(Lcom/google/android/libraries/performance/primes/ServiceFlags;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 105
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/ServiceFlags;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :cond_1
    monitor-exit p0

    return-void
.end method

.method declared-synchronized updateFlags(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 126
    monitor-enter p0

    :try_start_0
    const-string v2, "ServiceFlags-updateFlags"

    invoke-static {v2}, Lcom/google/android/libraries/performance/primes/trace/PrimesTrace;->beginSection(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/libraries/performance/primes/ServiceFlags;->gServicesEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    .line 169
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/libraries/performance/primes/trace/PrimesTrace;->endSection()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :goto_0
    monitor-exit p0

    return-void

    .line 131
    :cond_1
    :try_start_2
    const-string v2, "primes::shutdown_primes"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->readBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    invoke-virtual {p0}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->shutdown()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 169
    :try_start_3
    invoke-static {}, Lcom/google/android/libraries/performance/primes/trace/PrimesTrace;->endSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 136
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 138
    const-string v3, "primes:"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ":enable_leak_detection_v2"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, p1, v3, v4}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->readBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    .line 140
    iget-boolean v4, p0, Lcom/google/android/libraries/performance/primes/ServiceFlags;->leakDetectionV2Enabled:Z

    if-eq v4, v3, :cond_3

    .line 141
    iput-boolean v3, p0, Lcom/google/android/libraries/performance/primes/ServiceFlags;->leakDetectionV2Enabled:Z

    move v1, v0

    .line 145
    :cond_3
    const-string v3, "primes:"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ":enable_leak_detection"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->readBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 147
    iget-boolean v3, p0, Lcom/google/android/libraries/performance/primes/ServiceFlags;->leakDetectionEnabled:Z

    if-eq v3, v2, :cond_4

    .line 148
    iput-boolean v2, p0, Lcom/google/android/libraries/performance/primes/ServiceFlags;->leakDetectionEnabled:Z

    move v1, v0

    .line 156
    :cond_4
    const-string v2, "primes:disable_memory_summary_metrics"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->readBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 158
    iget-boolean v3, p0, Lcom/google/android/libraries/performance/primes/ServiceFlags;->memorySummaryDisabled:Z

    if-eq v3, v2, :cond_6

    .line 159
    iput-boolean v2, p0, Lcom/google/android/libraries/performance/primes/ServiceFlags;->memorySummaryDisabled:Z

    .line 163
    :goto_1
    if-eqz v0, :cond_5

    .line 164
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/ServiceFlags;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/ServiceFlagsChangeListener;

    .line 165
    invoke-interface {v0, p0}, Lcom/google/android/libraries/performance/primes/ServiceFlagsChangeListener;->onChange(Lcom/google/android/libraries/performance/primes/ServiceFlags;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 169
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/google/android/libraries/performance/primes/trace/PrimesTrace;->endSection()V

    throw v0

    :cond_5
    invoke-static {}, Lcom/google/android/libraries/performance/primes/trace/PrimesTrace;->endSection()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method updateFlagsAndRegisterReceiver(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/libraries/performance/primes/ServiceFlags;->gServicesEnabled:Z

    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->updateFlags(Landroid/content/Context;)V

    .line 117
    new-instance v0, Lcom/google/android/libraries/performance/primes/ServiceFlags$GServicesBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/performance/primes/ServiceFlags$GServicesBroadcastReceiver;-><init>(Lcom/google/android/libraries/performance/primes/ServiceFlags$1;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method
