.class final Lcom/google/android/libraries/performance/primes/NoopPrimesApi;
.super Ljava/lang/Object;
.source "NoopPrimesApi.java"

# interfaces
.implements Lcom/google/android/libraries/performance/primes/PrimesApi;


# instance fields
.field private final noopTransmitter:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/google/android/libraries/performance/primes/NoopPrimesApi$1;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/performance/primes/NoopPrimesApi$1;-><init>(Lcom/google/android/libraries/performance/primes/NoopPrimesApi;)V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/NoopPrimesApi;->noopTransmitter:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;

    return-void
.end method


# virtual methods
.method public startMemoryMonitor()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public startTimer()Lcom/google/android/libraries/performance/primes/TimerEvent;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/android/libraries/performance/primes/TimerEvent;->EMPTY_TIMER:Lcom/google/android/libraries/performance/primes/TimerEvent;

    return-object v0
.end method

.method public stopTimer(Lcom/google/android/libraries/performance/primes/TimerEvent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method
