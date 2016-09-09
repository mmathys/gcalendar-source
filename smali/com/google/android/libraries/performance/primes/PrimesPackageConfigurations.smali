.class public final Lcom/google/android/libraries/performance/primes/PrimesPackageConfigurations;
.super Ljava/lang/Object;
.source "PrimesPackageConfigurations.java"

# interfaces
.implements Lcom/google/android/libraries/performance/primes/MetricConfigurations;


# static fields
.field public static final DEFAULT:Lcom/google/android/libraries/performance/primes/PrimesPackageConfigurations;


# instance fields
.field private final enabled:Z

.field private final manualCapture:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/libraries/performance/primes/PrimesPackageConfigurations;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/performance/primes/PrimesPackageConfigurations;-><init>(Z)V

    sput-object v0, Lcom/google/android/libraries/performance/primes/PrimesPackageConfigurations;->DEFAULT:Lcom/google/android/libraries/performance/primes/PrimesPackageConfigurations;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/performance/primes/PrimesPackageConfigurations;-><init>(ZZ)V

    .line 27
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean p1, p0, Lcom/google/android/libraries/performance/primes/PrimesPackageConfigurations;->enabled:Z

    .line 35
    iput-boolean p2, p0, Lcom/google/android/libraries/performance/primes/PrimesPackageConfigurations;->manualCapture:Z

    .line 36
    return-void
.end method


# virtual methods
.method public getSampleRatePerSecond()I
    .locals 1

    .prologue
    .line 51
    const v0, 0x7fffffff

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/android/libraries/performance/primes/PrimesPackageConfigurations;->enabled:Z

    return v0
.end method

.method public isManualCapture()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/google/android/libraries/performance/primes/PrimesPackageConfigurations;->manualCapture:Z

    return v0
.end method

.method public recordMetricPerProcess()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method
