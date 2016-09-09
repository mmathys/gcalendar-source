.class final Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;
.super Ljava/lang/Object;
.source "MemoryLeakMetricService.java"

# interfaces
.implements Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityDestroyed;
.implements Lcom/google/android/libraries/performance/primes/ServiceFlagsChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver;,
        Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;,
        Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$PrimesLeakListener;
    }
.end annotation


# static fields
.field private static service:Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;


# instance fields
.field private final appLifecycleMonitor:Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;

.field private final application:Landroid/app/Application;

.field private dumpFutureTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final dumpScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final executorServiceSupplier:Lcom/google/android/libraries/performance/primes/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/performance/primes/Supplier",
            "<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final heapDumpEligible:Z

.field private final lastSent:Ljava/util/concurrent/atomic/AtomicLong;

.field private final leakWatcher:Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;

.field private final serviceFlags:Lcom/google/android/libraries/performance/primes/ServiceFlags;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/performance/primes/ServiceFlags;Landroid/app/Application;Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;Lcom/google/android/libraries/performance/primes/Supplier;Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;Lcom/google/android/libraries/performance/primes/MetricRecorder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/performance/primes/ServiceFlags;",
            "Landroid/app/Application;",
            "Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;",
            "Lcom/google/android/libraries/performance/primes/Supplier",
            "<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;",
            "Lcom/google/android/libraries/performance/primes/MetricRecorder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->lastSent:Ljava/util/concurrent/atomic/AtomicLong;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->dumpScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    invoke-static {p6}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {p1}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/ServiceFlags;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->serviceFlags:Lcom/google/android/libraries/performance/primes/ServiceFlags;

    .line 90
    invoke-static {p2}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->application:Landroid/app/Application;

    .line 91
    invoke-static {p3}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->appLifecycleMonitor:Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;

    .line 92
    invoke-static {p4}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/Supplier;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->executorServiceSupplier:Lcom/google/android/libraries/performance/primes/Supplier;

    .line 93
    invoke-static {p5}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->leakWatcher:Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;

    .line 94
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->leakWatcher:Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;

    new-instance v1, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$PrimesLeakListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p6, v2}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$PrimesLeakListener;-><init>(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;Lcom/google/android/libraries/performance/primes/MetricRecorder;Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;->setLeakListener(Lcom/google/android/libraries/performance/primes/leak/LeakListener;)V

    .line 95
    invoke-virtual {p1, p0}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->registerChangeListener(Lcom/google/android/libraries/performance/primes/ServiceFlagsChangeListener;)V

    .line 97
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->isDeviceEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->heapDumpEligible:Z

    .line 98
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$1002(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->dumpFutureTask:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;)Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->leakWatcher:Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;)Lcom/google/android/libraries/performance/primes/Supplier;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->executorServiceSupplier:Lcom/google/android/libraries/performance/primes/Supplier;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->heapDumpEligible:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;)Lcom/google/android/libraries/performance/primes/ServiceFlags;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->serviceFlags:Lcom/google/android/libraries/performance/primes/ServiceFlags;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->lastSent:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->dumpScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;)Landroid/app/Application;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->application:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->cancelDumpTaskIfAny()V

    return-void
.end method

.method private cancelDumpTaskIfAny()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->dumpFutureTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->dumpFutureTask:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->dumpFutureTask:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 311
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->dumpFutureTask:Ljava/util/concurrent/ScheduledFuture;

    .line 313
    :cond_1
    return-void
.end method

.method static declared-synchronized getService(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Landroid/app/Application;Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;)Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;
    .locals 8

    .prologue
    .line 115
    const-class v7, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->service:Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;

    if-nez v0, :cond_0

    .line 117
    new-instance v6, Lcom/google/android/libraries/performance/primes/MetricRecorder;

    .line 118
    invoke-static {p1}, Lcom/google/android/libraries/performance/primes/MetricStamper;->getSupplier(Landroid/app/Application;)Lcom/google/android/libraries/performance/primes/Supplier;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;->BACKGROUND_THREAD:Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;

    const v2, 0x7fffffff

    invoke-direct {v6, p0, v0, v1, v2}, Lcom/google/android/libraries/performance/primes/MetricRecorder;-><init>(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Lcom/google/android/libraries/performance/primes/Supplier;Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;I)V

    .line 120
    new-instance v0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;

    invoke-static {}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->getInstance()Lcom/google/android/libraries/performance/primes/ServiceFlags;

    move-result-object v1

    .line 121
    invoke-static {}, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;->getInstance()Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;

    move-result-object v4

    new-instance v5, Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;

    invoke-direct {v5}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;-><init>()V

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;-><init>(Lcom/google/android/libraries/performance/primes/ServiceFlags;Landroid/app/Application;Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;Lcom/google/android/libraries/performance/primes/Supplier;Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;Lcom/google/android/libraries/performance/primes/MetricRecorder;)V

    sput-object v0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->service:Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;

    .line 124
    :cond_0
    sget-object v0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->service:Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-object v0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method private isDeviceEncrypted()Z
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->application:Landroid/app/Application;

    const-string v1, "device_policy"

    .line 181
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 182
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 182
    :goto_0
    return v0

    .line 183
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized startOrStopMonitorIfNecessary()V
    .locals 2

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->serviceFlags:Lcom/google/android/libraries/performance/primes/ServiceFlags;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->serviceFlags:Lcom/google/android/libraries/performance/primes/ServiceFlags;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->isLeakDetectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->leakWatcher:Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;

    invoke-virtual {v1}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;->isStarted()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->leakWatcher:Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;->isStarted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->leakWatcher:Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;->start()V

    .line 163
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->appLifecycleMonitor:Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;->register(Lcom/google/android/libraries/performance/primes/AppLifecycleListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 159
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 165
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->appLifecycleMonitor:Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;->unregister(Lcom/google/android/libraries/performance/primes/AppLifecycleListener;)V

    .line 166
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->leakWatcher:Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;->stop()V

    .line 167
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->cancelDumpTaskIfAny()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->serviceFlags:Lcom/google/android/libraries/performance/primes/ServiceFlags;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->serviceFlags:Lcom/google/android/libraries/performance/primes/ServiceFlags;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->isLeakDetectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->leakWatcher:Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;->watch(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    :cond_0
    return-void
.end method

.method public onChange(Lcom/google/android/libraries/performance/primes/ServiceFlags;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->startOrStopMonitorIfNecessary()V

    .line 143
    return-void
.end method

.method public startMonitoring()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->startOrStopMonitorIfNecessary()V

    .line 147
    return-void
.end method
