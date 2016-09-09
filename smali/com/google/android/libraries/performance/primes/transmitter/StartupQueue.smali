.class final Lcom/google/android/libraries/performance/primes/transmitter/StartupQueue;
.super Ljava/lang/Object;
.source "StartupQueue.java"


# instance fields
.field private final maxSize:I

.field private final queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueue;->maxSize:I

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueue;->queue:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method add(Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;)Z
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueue;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueue;->maxSize:I

    if-ge v0, v1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueue;->queue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    const/4 v0, 0x1

    .line 30
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method flush(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;)V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/transmitter/StartupQueue;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;

    .line 35
    invoke-interface {p1, v0}, Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;->send(Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;)V

    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method
