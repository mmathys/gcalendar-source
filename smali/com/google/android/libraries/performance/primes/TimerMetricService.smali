.class final Lcom/google/android/libraries/performance/primes/TimerMetricService;
.super Lcom/google/android/libraries/performance/primes/AbstractMetricService;
.source "TimerMetricService.java"


# static fields
.field private static volatile service:Lcom/google/android/libraries/performance/primes/TimerMetricService;


# instance fields
.field private final timerEvents:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/performance/primes/TimerEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Landroid/app/Application;Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;I)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/libraries/performance/primes/AbstractMetricService;-><init>(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Landroid/app/Application;Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;I)V

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/TimerMetricService;->timerEvents:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    return-void
.end method

.method private static getMetric(Lcom/google/android/libraries/performance/primes/TimerEvent;)Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;
    .locals 4

    .prologue
    .line 23
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/TimerMetric;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/TimerMetric;-><init>()V

    .line 24
    invoke-virtual {p0}, Lcom/google/android/libraries/performance/primes/TimerEvent;->getDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Llogs/proto/wireless/performance/mobile/nano/TimerMetric;->durationMs:Ljava/lang/Long;

    .line 25
    new-instance v1, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;

    invoke-direct {v1}, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;-><init>()V

    .line 26
    iput-object v0, v1, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->timerMetric:Llogs/proto/wireless/performance/mobile/nano/TimerMetric;

    .line 27
    return-object v1
.end method

.method static getService(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Landroid/app/Application;Lcom/google/android/libraries/performance/primes/MetricConfigurations;)Lcom/google/android/libraries/performance/primes/TimerMetricService;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;->BACKGROUND_THREAD:Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/libraries/performance/primes/TimerMetricService;->getService(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Landroid/app/Application;Lcom/google/android/libraries/performance/primes/MetricConfigurations;Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;)Lcom/google/android/libraries/performance/primes/TimerMetricService;

    move-result-object v0

    return-object v0
.end method

.method static getService(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Landroid/app/Application;Lcom/google/android/libraries/performance/primes/MetricConfigurations;Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;)Lcom/google/android/libraries/performance/primes/TimerMetricService;
    .locals 3

    .prologue
    .line 34
    sget-object v0, Lcom/google/android/libraries/performance/primes/TimerMetricService;->service:Lcom/google/android/libraries/performance/primes/TimerMetricService;

    if-nez v0, :cond_1

    .line 35
    const-class v1, Lcom/google/android/libraries/performance/primes/TimerMetricService;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/performance/primes/TimerMetricService;->service:Lcom/google/android/libraries/performance/primes/TimerMetricService;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/google/android/libraries/performance/primes/TimerMetricService;

    .line 38
    invoke-interface {p2}, Lcom/google/android/libraries/performance/primes/MetricConfigurations;->getSampleRatePerSecond()I

    move-result v2

    invoke-direct {v0, p0, p1, p3, v2}, Lcom/google/android/libraries/performance/primes/TimerMetricService;-><init>(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Landroid/app/Application;Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;I)V

    sput-object v0, Lcom/google/android/libraries/performance/primes/TimerMetricService;->service:Lcom/google/android/libraries/performance/primes/TimerMetricService;

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    sget-object v0, Lcom/google/android/libraries/performance/primes/TimerMetricService;->service:Lcom/google/android/libraries/performance/primes/TimerMetricService;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected shutdownService()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/TimerMetricService;->timerEvents:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 151
    return-void
.end method

.method start()Lcom/google/android/libraries/performance/primes/TimerEvent;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/google/android/libraries/performance/primes/TimerMetricService;->shouldRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Lcom/google/android/libraries/performance/primes/TimerEvent;

    invoke-direct {v0}, Lcom/google/android/libraries/performance/primes/TimerEvent;-><init>()V

    .line 78
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/libraries/performance/primes/TimerEvent;->EMPTY_TIMER:Lcom/google/android/libraries/performance/primes/TimerEvent;

    goto :goto_0
.end method

.method stop(Lcom/google/android/libraries/performance/primes/TimerEvent;Ljava/lang/String;Llogs/proto/wireless/performance/mobile/nano/MetricExtension;)V
    .locals 2

    .prologue
    .line 114
    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/android/libraries/performance/primes/TimerEvent;->EMPTY_TIMER:Lcom/google/android/libraries/performance/primes/TimerEvent;

    if-eq p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 117
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    :cond_0
    const-string v0, "TimerMetricService"

    const-string v1, "Can\'t stop an event that was never started or has been stopped already"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    :goto_0
    return-void

    .line 122
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/libraries/performance/primes/TimerEvent;->stop()Lcom/google/android/libraries/performance/primes/TimerEvent;

    .line 123
    invoke-virtual {p0}, Lcom/google/android/libraries/performance/primes/TimerMetricService;->shouldRecord()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-static {p1}, Lcom/google/android/libraries/performance/primes/TimerMetricService;->getMetric(Lcom/google/android/libraries/performance/primes/TimerEvent;)Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p3}, Lcom/google/android/libraries/performance/primes/TimerMetricService;->recordSystemHealthMetric(Ljava/lang/String;Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;Llogs/proto/wireless/performance/mobile/nano/MetricExtension;)V

    goto :goto_0
.end method
