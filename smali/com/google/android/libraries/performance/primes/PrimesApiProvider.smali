.class public final Lcom/google/android/libraries/performance/primes/PrimesApiProvider;
.super Ljava/lang/Object;
.source "PrimesApiProvider.java"

# interfaces
.implements Lcom/google/android/libraries/performance/primes/ApiProvider;


# instance fields
.field private final application:Landroid/app/Application;

.field private final configurations:Lcom/google/android/libraries/performance/primes/PrimesConfigurations;

.field private final metricTransmitter:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;

.field private final metricTransmitterProvider:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterProvider;


# direct methods
.method private constructor <init>(Landroid/app/Application;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterProvider;Lcom/google/android/libraries/performance/primes/PrimesConfigurations;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiProvider;->application:Landroid/app/Application;

    .line 22
    iput-object p2, p0, Lcom/google/android/libraries/performance/primes/PrimesApiProvider;->metricTransmitter:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;

    .line 23
    iput-object p3, p0, Lcom/google/android/libraries/performance/primes/PrimesApiProvider;->metricTransmitterProvider:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterProvider;

    .line 24
    invoke-static {p4}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/PrimesConfigurations;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiProvider;->configurations:Lcom/google/android/libraries/performance/primes/PrimesConfigurations;

    .line 25
    return-void
.end method

.method public static newInstance(Landroid/app/Application;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Lcom/google/android/libraries/performance/primes/PrimesConfigurations;)Lcom/google/android/libraries/performance/primes/ApiProvider;
    .locals 2

    .prologue
    .line 37
    invoke-static {p1}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v0, Lcom/google/android/libraries/performance/primes/PrimesApiProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/google/android/libraries/performance/primes/PrimesApiProvider;-><init>(Landroid/app/Application;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterProvider;Lcom/google/android/libraries/performance/primes/PrimesConfigurations;)V

    return-object v0
.end method


# virtual methods
.method public getPrimesApi()Lcom/google/android/libraries/performance/primes/PrimesApi;
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiProvider;->metricTransmitter:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiProvider;->application:Landroid/app/Application;

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/PrimesApiProvider;->metricTransmitter:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;

    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/PrimesApiProvider;->configurations:Lcom/google/android/libraries/performance/primes/PrimesConfigurations;

    invoke-static {v0, v1, v2}, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->newInstance(Landroid/app/Application;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Lcom/google/android/libraries/performance/primes/PrimesConfigurations;)Lcom/google/android/libraries/performance/primes/PrimesApiImpl;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiProvider;->metricTransmitterProvider:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterProvider;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiProvider;->application:Landroid/app/Application;

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/PrimesApiProvider;->metricTransmitterProvider:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterProvider;

    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/PrimesApiProvider;->configurations:Lcom/google/android/libraries/performance/primes/PrimesConfigurations;

    invoke-static {v0, v1, v2}, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->newInstance(Landroid/app/Application;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterProvider;Lcom/google/android/libraries/performance/primes/PrimesConfigurations;)Lcom/google/android/libraries/performance/primes/PrimesApiImpl;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Transmitter or transmitter provider is not defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
