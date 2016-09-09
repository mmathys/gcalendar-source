.class final Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;
.super Ljava/lang/Object;
.source "StartupQueueMetricTransmitter.java"

# interfaces
.implements Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;


# instance fields
.field delegatedTransmitter:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;

.field hasFailure:Z

.field final mutex:Ljava/lang/Object;

.field overflowCallback:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$QueueOverflowCallback;

.field queue:Lcom/google/android/libraries/performance/primes/transmitter/StartupQueue;


# direct methods
.method constructor <init>(ILcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$QueueOverflowCallback;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;->mutex:Ljava/lang/Object;

    .line 29
    new-instance v0, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueue;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueue;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;->queue:Lcom/google/android/libraries/performance/primes/transmitter/StartupQueue;

    .line 30
    iput-object p2, p0, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;->overflowCallback:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$QueueOverflowCallback;

    .line 31
    return-void
.end method


# virtual methods
.method disable()V
    .locals 2

    .prologue
    .line 77
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;->hasFailure:Z

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;->queue:Lcom/google/android/libraries/performance/primes/transmitter/StartupQueue;

    .line 80
    monitor-exit v1

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public send(Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;)V
    .locals 3

    .prologue
    .line 56
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;->hasFailure:Z

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "StartupQueueTransmitter"

    const-string v2, "send() called despite failure"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    monitor-exit v1

    .line 74
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;->delegatedTransmitter:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;->delegatedTransmitter:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;->send(Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;)V

    .line 64
    monitor-exit v1

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 66
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;->queue:Lcom/google/android/libraries/performance/primes/transmitter/StartupQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueue;->add(Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 68
    invoke-virtual {p0}, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;->disable()V

    .line 69
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;->overflowCallback:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$QueueOverflowCallback;

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;->overflowCallback:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$QueueOverflowCallback;

    invoke-interface {v0}, Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$QueueOverflowCallback;->onQueueOverflow()V

    .line 73
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method setDelegatedTransmitter(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;)V
    .locals 3

    .prologue
    .line 37
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 39
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;->hasFailure:Z

    if-eqz v0, :cond_0

    .line 40
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :goto_0
    return-void

    .line 43
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;->queue:Lcom/google/android/libraries/performance/primes/transmitter/StartupQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueue;->flush(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;)V

    .line 44
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;->delegatedTransmitter:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;->queue:Lcom/google/android/libraries/performance/primes/transmitter/StartupQueue;

    .line 52
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;->disable()V

    .line 47
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 50
    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;->queue:Lcom/google/android/libraries/performance/primes/transmitter/StartupQueue;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
