.class final Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$1;
.super Ljava/lang/Object;
.source "MetricTransmitterFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory;->scheduleBackgroundInitialization(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterProvider;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$ProviderFailureCallback;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$QueueOverflowCallback;IJ)Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$provider:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterProvider;

.field final synthetic val$providerFailureCallback:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$ProviderFailureCallback;

.field final synthetic val$transmitterWithStartupQueue:Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterProvider;Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$ProviderFailureCallback;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$1;->val$provider:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterProvider;

    iput-object p2, p0, Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$1;->val$transmitterWithStartupQueue:Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;

    iput-object p3, p0, Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$1;->val$providerFailureCallback:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$ProviderFailureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$1;->val$provider:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterProvider;

    invoke-interface {v0}, Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterProvider;->getTransmitter()Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$1;->val$transmitterWithStartupQueue:Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;->setDelegatedTransmitter(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$1;->val$transmitterWithStartupQueue:Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;

    invoke-virtual {v1}, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueueMetricTransmitter;->disable()V

    .line 63
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$1;->val$providerFailureCallback:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$ProviderFailureCallback;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$1;->val$providerFailureCallback:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$ProviderFailureCallback;

    invoke-interface {v1, v0}, Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$ProviderFailureCallback;->onProviderFailure(Ljava/lang/Exception;)V

    goto :goto_0

    .line 66
    :cond_0
    const-string v1, "TransmitterFactory"

    const-string v2, "provider failed, but no callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
