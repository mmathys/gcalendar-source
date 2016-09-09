.class public Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;
.super Ljava/lang/Object;
.source "PrimesTimerConfigurations.java"

# interfaces
.implements Lcom/google/android/libraries/performance/primes/MetricConfigurations;


# static fields
.field static final DEFAULT:Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;

    invoke-direct {v0}, Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;-><init>()V

    sput-object v0, Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;->DEFAULT:Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSampleRatePerSecond()I
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0xa

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public recordMetricPerProcess()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method
