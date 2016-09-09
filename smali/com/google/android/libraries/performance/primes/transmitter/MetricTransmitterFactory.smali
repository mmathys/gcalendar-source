.class public final Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory;
.super Ljava/lang/Object;
.source "MetricTransmitterFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$QueueOverflowCallback;,
        Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$ProviderFailureCallback;
    }
.end annotation


# direct methods
.method public static final scheduleBackgroundInitialization(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterProvider;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$ProviderFailureCallback;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$QueueOverflowCallback;IJ)Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;
    .locals 8

    .prologue
    .line 38
    invoke-static {}, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;->getInstance()Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;->get()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    .line 37
    invoke-static/range {v1 .. v7}, Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory;->scheduleBackgroundInitialization(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterProvider;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$ProviderFailureCallback;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$QueueOverflowCallback;IJ)Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;

    move-result-object v0

    return-object v0
.end method

.method public static final scheduleBackgroundInitialization(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterProvider;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$ProviderFailureCallback;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$QueueOverflowCallback;IJ)Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;
    .locals 3

    .prologue
    .line 50
    new-instance v0, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;

    invoke-direct {v0, p4, p3}, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;-><init>(ILcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$QueueOverflowCallback;)V

    .line 53
    new-instance v1, Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$1;

    invoke-direct {v1, p1, v0, p2}, Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$1;-><init>(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterProvider;Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$ProviderFailureCallback;)V

    .line 72
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, p5, p6, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 74
    return-object v0
.end method
