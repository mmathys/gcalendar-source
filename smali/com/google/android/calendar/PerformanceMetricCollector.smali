.class public Lcom/google/android/calendar/PerformanceMetricCollector;
.super Ljava/lang/Object;
.source "PerformanceMetricCollector.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field protected static collector:Lcom/google/android/calendar/PerformanceMetricCollector;


# instance fields
.field protected primesClient:Lcom/google/android/libraries/performance/primes/Primes;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/google/android/calendar/PerformanceMetricCollector;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/PerformanceMetricCollector;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/libraries/performance/primes/Primes;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/calendar/PerformanceMetricCollector;->primesClient:Lcom/google/android/libraries/performance/primes/Primes;

    .line 30
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/calendar/PerformanceMetricCollector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/google/android/calendar/PerformanceMetricCollector;
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/calendar/PerformanceMetricCollector;->collector:Lcom/google/android/calendar/PerformanceMetricCollector;

    if-nez v0, :cond_1

    .line 34
    sget-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->PRIMES_MEMORY_INSTRUMENTATION:Lcom/google/android/calendar/experiments/Experiment;

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/experiments/Experiment;->isActive(Landroid/content/Context;)Z

    move-result v0

    .line 36
    sget-object v1, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->PRIMES_UI_LATENCY_INSTRUMENTATION:Lcom/google/android/calendar/experiments/Experiment;

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/calendar/experiments/Experiment;->isActive(Landroid/content/Context;)Z

    move-result v1

    .line 38
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 42
    new-instance v0, Lcom/google/android/calendar/PerformanceMetricCollector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/calendar/PerformanceMetricCollector;-><init>(Lcom/google/android/libraries/performance/primes/Primes;)V

    .line 46
    :goto_0
    return-object v0

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The performance metric collector has not been initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    sget-object v0, Lcom/google/android/calendar/PerformanceMetricCollector;->collector:Lcom/google/android/calendar/PerformanceMetricCollector;

    goto :goto_0
.end method

.method public static recordMemory(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public static declared-synchronized start(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 72
    const-class v1, Lcom/google/android/calendar/PerformanceMetricCollector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/calendar/PerformanceMetricCollector;->collector:Lcom/google/android/calendar/PerformanceMetricCollector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 119
    :goto_0
    monitor-exit v1

    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    .line 76
    :try_start_1
    sget-object v2, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->PRIMES_MEMORY_INSTRUMENTATION:Lcom/google/android/calendar/experiments/Experiment;

    invoke-virtual {v2, p0}, Lcom/google/android/calendar/experiments/Experiment;->isActive(Landroid/content/Context;)Z

    move-result v2

    .line 77
    sget-object v3, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->PRIMES_UI_LATENCY_INSTRUMENTATION:Lcom/google/android/calendar/experiments/Experiment;

    .line 78
    invoke-virtual {v3, p0}, Lcom/google/android/calendar/experiments/Experiment;->isActive(Landroid/content/Context;)Z

    move-result v3

    .line 79
    if-nez v2, :cond_1

    if-eqz v3, :cond_4

    .line 80
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 81
    new-instance v4, Lcom/google/android/calendar/PerformanceMetricCollector$1;

    invoke-direct {v4, v0}, Lcom/google/android/calendar/PerformanceMetricCollector$1;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-static {}, Lcom/google/android/libraries/performance/primes/PrimesConfigurations;->newBuilder()Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;

    move-result-object v5

    .line 90
    if-eqz v2, :cond_2

    .line 91
    sget-object v2, Lcom/google/android/calendar/PerformanceMetricCollector;->TAG:Ljava/lang/String;

    const-string v6, "Start memory usage monitoring."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v6, v7}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 92
    new-instance v2, Lcom/google/android/calendar/PerformanceMetricCollector$2;

    invoke-direct {v2}, Lcom/google/android/calendar/PerformanceMetricCollector$2;-><init>()V

    invoke-virtual {v5, v2}, Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;->setMemoryConfigurations(Lcom/google/android/libraries/performance/primes/PrimesMemoryConfigurations;)Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;

    .line 100
    :cond_2
    if-eqz v3, :cond_3

    .line 101
    sget-object v2, Lcom/google/android/calendar/PerformanceMetricCollector;->TAG:Ljava/lang/String;

    const-string v3, "Start UI latency monitoring."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v6}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 102
    new-instance v2, Lcom/google/android/calendar/PerformanceMetricCollector$3;

    invoke-direct {v2}, Lcom/google/android/calendar/PerformanceMetricCollector$3;-><init>()V

    invoke-virtual {v5, v2}, Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;->setTimerConfigurations(Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;)Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;

    .line 110
    :cond_3
    check-cast v0, Landroid/app/Application;

    .line 115
    invoke-virtual {v5}, Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;->build()Lcom/google/android/libraries/performance/primes/PrimesConfigurations;

    move-result-object v2

    .line 112
    invoke-static {v0, v4, v2}, Lcom/google/android/libraries/performance/primes/PrimesApiProvider;->newInstance(Landroid/app/Application;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Lcom/google/android/libraries/performance/primes/PrimesConfigurations;)Lcom/google/android/libraries/performance/primes/ApiProvider;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/Primes;->initialize(Lcom/google/android/libraries/performance/primes/ApiProvider;)Lcom/google/android/libraries/performance/primes/Primes;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/Primes;->startMemoryMonitor()V

    .line 118
    :cond_4
    new-instance v2, Lcom/google/android/calendar/PerformanceMetricCollector;

    invoke-direct {v2, v0}, Lcom/google/android/calendar/PerformanceMetricCollector;-><init>(Lcom/google/android/libraries/performance/primes/Primes;)V

    sput-object v2, Lcom/google/android/calendar/PerformanceMetricCollector;->collector:Lcom/google/android/calendar/PerformanceMetricCollector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public initializeTimer()Lcom/google/android/libraries/performance/primes/TimerEvent;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/calendar/PerformanceMetricCollector;->primesClient:Lcom/google/android/libraries/performance/primes/Primes;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/android/calendar/PerformanceMetricCollector;->primesClient:Lcom/google/android/libraries/performance/primes/Primes;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/Primes;->startTimer()Lcom/google/android/libraries/performance/primes/TimerEvent;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/libraries/performance/primes/TimerEvent;->newTimer()Lcom/google/android/libraries/performance/primes/TimerEvent;

    move-result-object v0

    goto :goto_0
.end method

.method public logTime(Lcom/google/android/libraries/performance/primes/TimerEvent;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/calendar/PerformanceMetricCollector;->primesClient:Lcom/google/android/libraries/performance/primes/Primes;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/android/calendar/PerformanceMetricCollector;->primesClient:Lcom/google/android/libraries/performance/primes/Primes;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/performance/primes/Primes;->stopTimer(Lcom/google/android/libraries/performance/primes/TimerEvent;Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method
