.class final Lcom/google/android/libraries/performance/primes/PrimesApiImpl$3;
.super Ljava/lang/Object;
.source "PrimesApiImpl.java"

# interfaces
.implements Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$QueueOverflowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->newInstance(Landroid/app/Application;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterProvider;Lcom/google/android/libraries/performance/primes/PrimesConfigurations;)Lcom/google/android/libraries/performance/primes/PrimesApiImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueueOverflow()V
    .locals 2

    .prologue
    .line 117
    const-string v0, "Primes"

    const-string v1, "Startup queue overflow - shutting down Primes"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->getInstance()Lcom/google/android/libraries/performance/primes/ServiceFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->shutdown()V

    .line 119
    return-void
.end method
