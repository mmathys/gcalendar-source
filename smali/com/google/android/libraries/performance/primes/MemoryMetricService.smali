.class final Lcom/google/android/libraries/performance/primes/MemoryMetricService;
.super Lcom/google/android/libraries/performance/primes/AbstractMetricService;
.source "MemoryMetricService.java"


# static fields
.field private static volatile service:Lcom/google/android/libraries/performance/primes/MemoryMetricService;


# instance fields
.field private metricMonitor:Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;

.field private final recordMemoryPerProcess:Z


# direct methods
.method constructor <init>(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Landroid/app/Application;IZ)V
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;->SAME_THREAD:Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/libraries/performance/primes/AbstractMetricService;-><init>(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Landroid/app/Application;Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;I)V

    .line 51
    iput-boolean p4, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricService;->recordMemoryPerProcess:Z

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/performance/primes/MemoryMetricService;)Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricService;->recordMemoryPerProcess:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/libraries/performance/primes/MemoryMetricService;Ljava/lang/String;ILlogs/proto/wireless/performance/mobile/nano/MetricExtension;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/performance/primes/MemoryMetricService;->recordMemoryPerProcess(Ljava/lang/String;ILlogs/proto/wireless/performance/mobile/nano/MetricExtension;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/libraries/performance/primes/MemoryMetricService;Ljava/lang/String;ILlogs/proto/wireless/performance/mobile/nano/MetricExtension;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/performance/primes/MemoryMetricService;->recordMemory(Ljava/lang/String;ILlogs/proto/wireless/performance/mobile/nano/MetricExtension;)V

    return-void
.end method

.method static getService(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Landroid/app/Application;Lcom/google/android/libraries/performance/primes/MetricConfigurations;)Lcom/google/android/libraries/performance/primes/MemoryMetricService;
    .locals 4

    .prologue
    .line 32
    sget-object v0, Lcom/google/android/libraries/performance/primes/MemoryMetricService;->service:Lcom/google/android/libraries/performance/primes/MemoryMetricService;

    if-nez v0, :cond_1

    .line 33
    const-class v1, Lcom/google/android/libraries/performance/primes/MemoryMetricService;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/performance/primes/MemoryMetricService;->service:Lcom/google/android/libraries/performance/primes/MemoryMetricService;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/google/android/libraries/performance/primes/MemoryMetricService;

    .line 36
    invoke-interface {p2}, Lcom/google/android/libraries/performance/primes/MetricConfigurations;->getSampleRatePerSecond()I

    move-result v2

    invoke-interface {p2}, Lcom/google/android/libraries/performance/primes/MetricConfigurations;->recordMetricPerProcess()Z

    move-result v3

    invoke-direct {v0, p0, p1, v2, v3}, Lcom/google/android/libraries/performance/primes/MemoryMetricService;-><init>(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Landroid/app/Application;IZ)V

    sput-object v0, Lcom/google/android/libraries/performance/primes/MemoryMetricService;->service:Lcom/google/android/libraries/performance/primes/MemoryMetricService;

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    sget-object v0, Lcom/google/android/libraries/performance/primes/MemoryMetricService;->service:Lcom/google/android/libraries/performance/primes/MemoryMetricService;

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private recordMemory(Ljava/lang/String;ILlogs/proto/wireless/performance/mobile/nano/MetricExtension;)V
    .locals 3

    .prologue
    .line 106
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;-><init>()V

    .line 109
    invoke-virtual {p0}, Lcom/google/android/libraries/performance/primes/MemoryMetricService;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 110
    invoke-static {}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->getInstance()Lcom/google/android/libraries/performance/primes/ServiceFlags;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->isMemorySummaryDisabled()Z

    move-result v2

    .line 107
    invoke-static {p2, v1, v2}, Lcom/google/android/libraries/performance/primes/metriccapture/MemoryUsageCapture;->getMemoryUsageMetric(ILandroid/content/Context;Z)Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;

    move-result-object v1

    iput-object v1, v0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->memoryUsageMetric:Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;

    .line 111
    invoke-virtual {p0, p1, v0, p3}, Lcom/google/android/libraries/performance/primes/MemoryMetricService;->recordSystemHealthMetric(Ljava/lang/String;Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;Llogs/proto/wireless/performance/mobile/nano/MetricExtension;)V

    .line 112
    return-void
.end method

.method private recordMemoryPerProcess(Ljava/lang/String;ILlogs/proto/wireless/performance/mobile/nano/MetricExtension;)V
    .locals 7

    .prologue
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/google/android/libraries/performance/primes/MemoryMetricService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/metriccapture/ProcessStats;->getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/google/android/libraries/performance/primes/MemoryMetricService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 129
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-gt v3, v4, :cond_1

    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    :cond_1
    new-instance v3, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;

    invoke-direct {v3}, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;-><init>()V

    .line 131
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Lcom/google/android/libraries/performance/primes/MemoryMetricService;->getApplication()Landroid/app/Application;

    move-result-object v5

    .line 136
    invoke-static {}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->getInstance()Lcom/google/android/libraries/performance/primes/ServiceFlags;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->isMemorySummaryDisabled()Z

    move-result v6

    .line 131
    invoke-static {p2, v4, v0, v5, v6}, Lcom/google/android/libraries/performance/primes/metriccapture/MemoryUsageCapture;->getMemoryUsageMetric(IILjava/lang/String;Landroid/content/Context;Z)Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;

    move-result-object v0

    iput-object v0, v3, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->memoryUsageMetric:Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;

    .line 137
    invoke-virtual {p0, p1, v3, p3}, Lcom/google/android/libraries/performance/primes/MemoryMetricService;->recordSystemHealthMetric(Ljava/lang/String;Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;Llogs/proto/wireless/performance/mobile/nano/MetricExtension;)V

    goto :goto_0

    .line 141
    :cond_2
    return-void
.end method


# virtual methods
.method recordEvent(Ljava/lang/String;ILlogs/proto/wireless/performance/mobile/nano/MetricExtension;)V
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/android/libraries/performance/primes/MemoryMetricService;->shouldRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;->getInstance()Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;->get()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/performance/primes/MemoryMetricService$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/libraries/performance/primes/MemoryMetricService$2;-><init>(Lcom/google/android/libraries/performance/primes/MemoryMetricService;Ljava/lang/String;ILlogs/proto/wireless/performance/mobile/nano/MetricExtension;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 102
    :cond_0
    return-void
.end method

.method protected declared-synchronized shutdownService()V
    .locals 1

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricService;->metricMonitor:Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricService;->metricMonitor:Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->stop()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricService;->metricMonitor:Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_0
    monitor-exit p0

    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized startMonitoring()V
    .locals 3

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/performance/primes/MemoryMetricService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricService;->metricMonitor:Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/google/android/libraries/performance/primes/MemoryMetricService$1;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/performance/primes/MemoryMetricService$1;-><init>(Lcom/google/android/libraries/performance/primes/MemoryMetricService;)V

    .line 66
    new-instance v1, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;

    invoke-virtual {p0}, Lcom/google/android/libraries/performance/primes/MemoryMetricService;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;-><init>(Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$Callback;Landroid/app/Application;)V

    iput-object v1, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricService;->metricMonitor:Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;

    .line 67
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricService;->metricMonitor:Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_0
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
