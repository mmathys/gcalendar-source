.class public Lcom/google/android/libraries/performance/primes/PrimesNetworkConfigurations;
.super Ljava/lang/Object;
.source "PrimesNetworkConfigurations.java"

# interfaces
.implements Lcom/google/android/libraries/performance/primes/MetricConfigurations;


# static fields
.field static final DEFAULT:Lcom/google/android/libraries/performance/primes/PrimesNetworkConfigurations;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/google/android/libraries/performance/primes/PrimesNetworkConfigurations;

    invoke-direct {v0}, Lcom/google/android/libraries/performance/primes/PrimesNetworkConfigurations;-><init>()V

    sput-object v0, Lcom/google/android/libraries/performance/primes/PrimesNetworkConfigurations;->DEFAULT:Lcom/google/android/libraries/performance/primes/PrimesNetworkConfigurations;

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
    .line 26
    const v0, 0x7fffffff

    return v0
.end method

.method public recordMetricPerProcess()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method
