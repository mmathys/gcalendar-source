.class public Lcom/google/android/libraries/performance/primes/PrimesJankConfigurations;
.super Ljava/lang/Object;
.source "PrimesJankConfigurations.java"

# interfaces
.implements Lcom/google/android/libraries/performance/primes/MetricConfigurations;


# static fields
.field static final DEFAULT:Lcom/google/android/libraries/performance/primes/PrimesJankConfigurations;


# instance fields
.field private final enabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lcom/google/android/libraries/performance/primes/PrimesJankConfigurations;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/performance/primes/PrimesJankConfigurations;-><init>(Z)V

    sput-object v0, Lcom/google/android/libraries/performance/primes/PrimesJankConfigurations;->DEFAULT:Lcom/google/android/libraries/performance/primes/PrimesJankConfigurations;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p1, p0, Lcom/google/android/libraries/performance/primes/PrimesJankConfigurations;->enabled:Z

    .line 19
    return-void
.end method


# virtual methods
.method public getSampleRatePerSecond()I
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0xa

    return v0
.end method

.method public recordMetricPerProcess()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method
