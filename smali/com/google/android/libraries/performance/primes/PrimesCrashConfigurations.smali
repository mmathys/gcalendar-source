.class public Lcom/google/android/libraries/performance/primes/PrimesCrashConfigurations;
.super Ljava/lang/Object;
.source "PrimesCrashConfigurations.java"

# interfaces
.implements Lcom/google/android/libraries/performance/primes/MetricConfigurations;


# static fields
.field static final DEFAULT:Lcom/google/android/libraries/performance/primes/PrimesCrashConfigurations;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/google/android/libraries/performance/primes/PrimesCrashConfigurations;

    invoke-direct {v0}, Lcom/google/android/libraries/performance/primes/PrimesCrashConfigurations;-><init>()V

    sput-object v0, Lcom/google/android/libraries/performance/primes/PrimesCrashConfigurations;->DEFAULT:Lcom/google/android/libraries/performance/primes/PrimesCrashConfigurations;

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
    const v0, 0x7fffffff

    return v0
.end method

.method public getStartupSamplePercentage()F
    .locals 1

    .prologue
    .line 43
    const/high16 v0, 0x42c80000    # 100.0f

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public recordMetricPerProcess()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method
